clear all;
close all;
clc;
f1 = figure;
f1.Position = [100, 100, 1280, 720];
movegui(f1, 'center');
xlabel("\alpha \rightarrow", "FontSize", 14);
ylabel("\beta \rightarrow", "FontSize", 14);
title("|b_{1}|^2", "FontSize", 15);
hold on;

b1 = (-j -j) * 10^(-0/10) * (1/sqrt(2));
b1_pwr = conj(b1) * b1;

beta = 0:0.0001:pi;
alpha = 0:1/(length(beta) - 1):1;

output = (-j + alpha.*exp(j*(beta - pi/2))) * 1/sqrt(2);
output_power = conj(output) .* output;
output_db = 10*log(output_power / b1_pwr);
plot3(alpha, beta, output_db);

xlabel("\alpha \rightarrow", "FontSize", 14);
ylabel("\beta \rightarrow", "FontSize", 14);
zlabel("Power (db)", "FontSize", 14);
grid on;
zline(-3);