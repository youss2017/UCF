close all
% kf dataset
Vin = [0, 1, 2, 3, 4, 5, 6];
Fout = [83.5, 80.3, 77.6, 74.5, 71.5, 68.7, 65.6];
curve_fit = polyfit(Vin,Fout,1);
f = figure;
f.Position = [50, 50, 960, 720];
plot(Vin, Fout, '.', 'MarkerSize', 15);
hold on;
title("VCO f_{out} (KHz) change with respect to V_{in}");
xlabel("V_{in} (Volts)");
ylabel("Output Frequency (KHz)");

% Annotating a specific X value point (for example, X = 3)
specific_X = 3;
specific_Y = Fout(Vin == specific_X); % Finding the corresponding Y value

text(3, 76.4, "k_f = " + curve_fit(1));
text(3, 77, "f(x) = " + curve_fit(1) + "x + " + curve_fit(2));

Fout_fit = curve_fit(1) .* Vin + curve_fit(2);
plot(Vin, Fout_fit, '--');