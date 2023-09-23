#include <iostream>
#include <vector>
#include <cmath>
#include <algorithm>
#include <limits>
#include <sstream>
#include <fstream>
#include <cstring>
#include "color.hpp"
using namespace std;

int main(int argc, char **pargv)
{

    size_t POINT_COUNT = 100;
    double Z_LEVEL = 1.0;
    double RADIUS = 1.0f;
    double Y_MIN = -1.0;
    double Y_MAX = 1.0;
    double X_MIN = -1.0;
    double X_MAX = 1.0;
    double STEP_RATE = 0.01;
    double CURRENT = 1.0;
    bool REPORT_VECTOR = false;

    if (argc > 1)
    {
        int mode = 0;
        // 0   : undefined
        // 1   : -n 100
        // 2   : -z 1.0
        // 3   : -r 1.0
        // 4   : -x -1.0x1.0
        // 5   : -y -1.0x1.0
        // 6   : -d 0.01
        // 7   : -i 1.0
        // N/A : -vec
        for (int argi = 1; argi < argc; argi++)
        {
            const char *arg = pargv[argi];
            if (mode != 0)
            {
                if (mode == 1)
                {
                    if (sscanf(arg, "%zu", &POINT_COUNT) != 1)
                    {
                        cout << "coil: " << dye::red("error:") << " invalid -n value '" << arg << "', only integers are allowed for line segment count.\n";
                        cout << "coil: " << dye::aqua("info:") << " setting -n 100\n";
                        POINT_COUNT = 100;
                    }
                    mode = 0;
                }
                else if (mode == 2)
                {
                    if (sscanf(arg, "%lf", &Z_LEVEL) != 1)
                    {
                        cout << "coil: " << dye::red("error:") << " invalid -z value '" << arg << "', only numerical are allowed for z level.\n";
                        cout << "coil: " << dye::aqua("info:") << " setting -z 1.0\n";
                        Z_LEVEL = 1.0;
                    }
                    mode = 0;
                }
                else if (mode == 3)
                {
                    if (sscanf(arg, "%lf", &RADIUS) != 1)
                    {
                        cout << "coil: " << dye::red("error:") << " invalid -r value '" << arg << "', only numerical are allowed for radius.\n";
                        cout << "coil: " << dye::aqua("info:") << " setting -r 1.0\n";
                        RADIUS = 1.0;
                    }
                    mode = 0;
                }
                else if (mode == 4)
                {
                    if (sscanf(arg, "%lfx%lf", &X_MIN, &X_MAX) != 2 &&
                        sscanf(arg, "%lf:%lf", &X_MIN, &X_MAX) != 2)
                    {
                        cout << "coil: " << dye::red("error:") << " invalid -x value '" << arg << "', only numerical values are allowed in the following format 3.14x2.1.\n";
                        cout << "coil: " << dye::aqua("info:") << " setting -x -1.0x1.0\n";
                        X_MIN = -1.0;
                        X_MAX = 1.0;
                    }
                    mode = 0;
                }
                else if (mode == 5)
                {
                    if (sscanf(arg, "%lfx%lf", &Y_MIN, &Y_MAX) != 2 &&
                        sscanf(arg, "%lf:%lf", &Y_MIN, &Y_MAX) != 2)
                    {
                        cout << "coil: " << dye::red("error:") << " invalid -y value '" << arg << "', only numerical values are allowed in the following format 3.14x2.1.\n";
                        cout << "coil: " << dye::aqua("info:") << " setting -y -1.0x1.0\n";
                        Y_MIN = -1.0;
                        Y_MAX = 1.0;
                    }
                    mode = 0;
                }
                else if (mode == 6)
                {
                    if (sscanf(arg, "%lf", &STEP_RATE) != 1)
                    {
                        cout << "coil: " << dye::red("error:") << " invalid -d value '" << arg << "', only numerical values are allowed.\n";
                        cout << "coil: " << dye::aqua("info:") << " setting -d 0.01\n";
                        STEP_RATE = 0.01;
                    }
                    mode = 0;
                }
                else if (mode == 7)
                {
                    if (sscanf(arg, "%lf", &CURRENT) != 1)
                    {
                        cout << "coil: " << dye::red("error:") << " invalid -i value '" << arg << "', only numerical values are allowed.\n";
                        cout << "coil: " << dye::aqua("info:") << " setting -i 1.0\n";
                        CURRENT = 1.0;
                    }
                    mode = 0;
                }
                else
                {
                    cout << "coil: " << dye::red("error:") << " invalid program state.";
                    mode = 0;
                    return 1;
                }
            }
            else
            {
                if (strnicmp("-n", arg, 2) == 0)
                {
                    mode = 1;
                }
                else if (strnicmp("-z", arg, 2) == 0)
                {
                    mode = 2;
                }
                else if (strnicmp("-r", arg, 2) == 0)
                {
                    mode = 3;
                }
                else if (strnicmp("-x", arg, 2) == 0)
                {
                    mode = 4;
                }
                else if (strnicmp("-y", arg, 2) == 0)
                {
                    mode = 5;
                }
                else if (strnicmp("-d", arg, 2) == 0)
                {
                    mode = 6;
                }
                else if (strnicmp("-vec", arg, 4) == 0)
                {
                    REPORT_VECTOR = true;
                    mode = 0;
                }
                else if (strnicmp("-h", arg, 2) == 0 ||
                         strnicmp("-help", arg, 5) == 0)
                {
                    cout << "coil: ==== Help Menu ====\n";
                    cout << "-n \t - The number of line segements to represent the coil.\n";
                    cout << "-z \t - The plane at z to collect measurements\n";
                    cout << "-r \t - Radius of coil.\n";
                    cout << "-x \t - Describes the bounding range for x to collect data, ex: -2:2 or -2x2.\n";
                    cout << "-y \t - Describes the bounding range for y to collect data, ex: -2:2 or -2x2.\n";
                    cout << "-d \t - Determines the step size for -x and -y.\n";
                    cout << "-i \t - Set current value, default -i (1.0).\n";
                    return 0;
                }
                else if (strnicmp("-i", arg, 2) == 0)
                {
                    mode = 7;
                }
                else
                {
                    cout << "coil: " << dye::red("error:") << " unknown parameter '" << arg << "'\n";
                    mode = 0;
                }
            }
        }
    }

    const double pi = 4.0 * atan2(1, 1);
    const double mu = 4.0 * pi * 1e-7;

    cout << "coil: " << dye::aqua("info:") << " n=" << POINT_COUNT << ", r=" << RADIUS << ", z=" << Z_LEVEL << ", d=" << STEP_RATE << ", x=[" << X_MIN << "," << X_MAX << "]"
         << ", y=[" << Y_MIN << "," << Y_MAX << "], -i=" << CURRENT << endl;

    if (REPORT_VECTOR)
    {
        cout << "coil: " << dye::aqua("info:") << " report is in vector mode.\n";
    }

    struct pp
    {
        double x, y;
    };

    struct pp3
    {
        double x, y, z;
    };

    vector<pp> points;

    double dt = (2.0 * pi) / double(POINT_COUNT);
    for (double t = 0; t <= (2.0 * pi); t += dt)
    {
        double x = RADIUS * cos(t);
        double y = RADIUS * sin(t);
        points.push_back({x, y});
    }
    if (points.size() > 1)
    {
        points.push_back(points[0]);
    }

    // simulation, sweep xy plane
    vector<pp3> magnetic;
    cout << "coil: computing magnetic field...";
    magnetic.reserve(((Y_MAX - Y_MIN + STEP_RATE) / STEP_RATE) * ((X_MAX - X_MIN + STEP_RATE) / STEP_RATE));
    for (double y = Y_MIN; y <= Y_MAX; y += STEP_RATE)
    {
        for (double x = X_MIN; x <= X_MAX; x += STEP_RATE)
        {
            double magnetic_field[3] = {};
            for (size_t i = 0; i < points.size() - 1; i++)
            {
                const auto &p = points[i];
                const auto &p2 = points[i + 1];

                double line_seg_length = sqrt(
                    (((p2.x - p.x) * (p2.x - p.x))) +
                    (((p2.y - p.y) * (p2.y - p.y))));

                line_seg_length /= STEP_RATE;

                double r[3] = {
                    x - p.x,
                    y - p.y,
                    Z_LEVEL - 0};
                double mag2 = (r[0] * r[0]) + (r[1] * r[1]) + (r[2] * r[2]);
                double mag = sqrt(mag2);

                // cross product cross(dl, dr)
                // TODO: missing constant
                double temp_mf[3] = {
                    p.y * r[2] - Z_LEVEL * r[1],
                    Z_LEVEL * r[0] - p.x * r[2],
                    p.x * r[1] - p.y * r[1],
                };
                temp_mf[0] /= (4.0 * pi * mag * mag * mag);
                temp_mf[1] /= (4.0 * pi * mag * mag * mag);
                temp_mf[2] /= (4.0 * pi * mag * mag * mag);
                magnetic_field[0] += temp_mf[0] * mu * line_seg_length;
                magnetic_field[1] += temp_mf[1] * mu * line_seg_length;
                magnetic_field[2] += temp_mf[2] * mu * line_seg_length;
            }
            magnetic.push_back({magnetic_field[0], magnetic_field[1], magnetic_field[2]});
        }
    }
    cout << "done.\n";
    cout << "coil: generating csv report...";
    ofstream report("report.csv", ios_base::ate);
    if (REPORT_VECTOR)
    {
        report << "X, Y, Z, MX, MY, MZ,\n";
    }
    else
    {
        report << "X, Y, MAG,\n";
    }

    size_t point_index = 0;
    for (double y = Y_MIN; y <= Y_MAX; y += STEP_RATE)
    {
        for (double x = X_MIN; x <= X_MAX; x += STEP_RATE)
        {
            const auto &p = magnetic[point_index++];
            if (REPORT_VECTOR)
            {
                report << x << "," << y << "," << Z_LEVEL << "," << p.x << "," << p.y << "," << p.z << ",\n";
            }
            else
            {
                double mag2 = (p.x * p.x) + (p.y * p.y) + (p.z * p.z);
                double mag = sqrt(mag2);
                report << x << "," << y << "," << mag << ",\n";
            }
        }
    }

    cout << "done.\n";
    cout << "coil: saving report...";

    report.close();

    cout << "done.\n";

    return 0;
}