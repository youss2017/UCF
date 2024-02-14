#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <sstream>
#include <string_view>
#include <iomanip>
#include <map>

using namespace std;

vector<string> read_file(const string& filename) {

    // Open the file
    std::ifstream file(filename);

    // Check if the file is open successfully
    if (!file.is_open()) {
        std::cerr << "Error opening file: " << filename << std::endl;
        exit(-1);
    }

    // Read the file into a vector of strings
    vector<string> lines;
    string line;
    while (getline(file, line)) {
        lines.push_back(line);
    }

    // Close the file
    file.close();

    return lines;
}

vector<string> split_string(const std::string& input) {
    // Create an input string stream from the input string
    std::istringstream ss(input);

    // Vector to store the tokens
    std::vector<std::string> tokens;

    // Tokenize the string based on commas
    std::string token;
    while (getline(ss, token, ',')) {
        tokens.push_back(token);
    }

    return tokens;
}

vector<double> read_csv(const std::string& filename, int& outColumnCount) {
    outColumnCount = -1;
    auto lines = read_file(filename);
    outColumnCount = split_string(lines[0]).size();
    vector<double> data;
    for (const auto& line : lines) {
        try {
            const auto& cells = split_string(line);
            for (size_t i = 0; i < outColumnCount; i++) {
                data.push_back(stod(cells[i]));
            }
        }
        catch (...) {}
    }
    return data;
}

void save_file(const std::string& filename, const std::string& content) {
    // Open the file for writing
    std::ofstream outputFile(filename);

    // Check if the file is open successfully
    if (outputFile.is_open()) {
        // Write the string to the file
        outputFile << content;

        // Close the file
        outputFile.close();

        std::cout << "String successfully written to file: " << filename << std::endl;
    }
    else {
        std::cerr << "Error opening file for writing: " << filename << std::endl;
    }
}

int main() {

    auto column_count = 0;
    auto data = read_csv("S21_Resonator_Synthesis.csv", column_count);
    auto row_count = data.size() / column_count;

    // bridger2, legr1       frequency, S21 dB
    map<pair<double, double>, pair<double, double>> center_frequency;
    for (size_t i = 0; i < row_count; i++) {
        pair<double, double> parameter = { data[i * column_count + 0], data[i * column_count + 1] };
        double freq = data[i * column_count + 2];
        double s21 = data[i * column_count + 3];
        if (center_frequency.contains(parameter)) {
            auto& [current_freq, current_s21] = center_frequency[parameter];
            if (s21 > current_s21) {
                current_freq = freq;
                current_s21 = s21;
            }
        }
        else {
            center_frequency[parameter] = { freq, s21 };
        }
    }

    cout << fixed << showpoint;
    cout << setprecision(4);

    cout << "| Gap |  Length  |  f0  | S21 dB |\n";
    string csv = "Gap,Length,f0,S21 dB,\n";

    for (const auto& [parameters, peak] : center_frequency) {
        const auto& [bridge, leg] = parameters;
        const auto& [freq, s21] = peak;
        // exclude sweep range limited peaks
        if (freq == 4.0)
            continue;
        cout << bridge << ", " << leg << ", " << freq << ", " << s21 << ",\n";
        csv += to_string(bridge) + ", " + to_string(leg) + ", " + to_string(freq) + ", " + to_string(s21) + ",\n";
    }

    save_file("data.csv", csv);
}