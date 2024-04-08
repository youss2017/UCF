clear all
clc
close all
data = table2array(readtable("P1dB_curve_layout_measured.csv"));
Pin = data(:, 1);
Pout = data(:, 2);
plot(Pin, Pout, "DisplayName", "Simulated Gain");
xlabel("Pin", "FontSize", 14);
ylabel("Pout", "FontSize", 14);
grid on
hold on
p1 = [-23.939, -11.985];
p2 = [1.919, 14.52];
coeff = polyfit([p1(1) p2(1)], [p1(2) p2(2)], 1);
syms x
f(x) = coeff(1)*x + coeff(2);
f_eval = eval(subs(f, x, Pin));
plot(Pin, f_eval, "DisplayName", "Best fit curve");

yyaxis right
gain = f_eval - Pout;
plot(Pin, gain, "DisplayName", "Difference between fit line and simulation.");
yyaxis right
yline(1, "--", 'HandleVisibility','off');
xline(3.787, "--", "DisplayName", "P1dB Compression", "Color", "magenta");
legend();
title("Input Power vs Output Power", "FontSize", 18);