clear all
close all
clc
syms f
lambda = 299792458/f;
%length = 0.233 * 3e8/600e6;
length = 0.238 * 299792458/600e6;
alpha = 0.006;
k(f) = (2*pi)/lambda;
R(f) = 122.65 - 204.1*k(f)*length + 110*(k(f)*length)^2;
X(f) = -1*( 120*(log(2*length/alpha - 1) * cot(k(f)*length)) - 162.5 + 140*k(f)*length - 40*(k(f)*length)^2 );
f1 = linspace(470e6, 750e6, 20);
F = figure;
F.Position = [0,0,800,600];
centerfig(F);
yyaxis left
plot(f1./1e6, R(f1), "DisplayName", "Ohmic Resistance");
ylabel("R(f) \Omega", "FontSize", 14);
hold on;
yyaxis right
ylabel("X(f) \Omega", "FontSize", 14)
plot(f1./1e6, X(f1), "DisplayName", "Reactance");
title("Plot of R(f) and X(f) from 470MHz to 750MHz", "FontSize", 18);
xlabel("Frequency (MHz)", "FontSize", 14);
grid on;
xline(540, '--', 'LineWidth', 2);
xline(660, '--', 'LineWidth', 2);
legend();

F2 = figure;
F2.Position = [0,0,800,600];
centerfig(F2);
plot(f1/1e6, k(f1).*length);
grid on;
title("kl factor from 470MHz to 750MHz", "FontSize", 18);
ylabel("kl factor");
xlabel("Frequency (MHz)");
text(536, 1.8, {"Frequency range is mostly within the", "function domain of 1.3 <= kl <= 1.7"}, "FontSize", 15);
yline(1.3, '--', 'color', 'red', 'LineWidth', 2);
yline(1.7, '--', 'color', 'red', 'LineWidth', 2);
xline(532.8, '--', 'color', '#D95319', 'LineWidth', 2);
xline(696.73, '--', 'color', '#D95319', 'LineWidth', 2);
pca = gca;
pca.GridAlpha = 0.35;
return;
%% Find new resonant length
clear all
close all
clc
syms l
lambda = 299792458/600e6;
k = (2*pi)/lambda;
alpha = 0.006*lambda;
X(l) = -1*( 120*(log(2*l/alpha) - 1) * cot(k * l) - 162.5 + 140*k*l - 40*(k*l)^2 );
l1 = linspace(0, 0.8, 100) .* lambda;
y1 = X(l1);
plot(l1/lambda, y1);
yline(12, '--', 'LineWidth', 2);
ylim([-20, 20]);
xlim([0.15, 0.3]);
title("Reactance with Respect to Dipole Length, l_{r}", 'FontSize', 18);
xlabel('l_{r}/\lambda_{0}', 'FontSize', 16);
ylabel('X \Omega', 'FontSize', 16);
grid on;
