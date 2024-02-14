close all;
clc;
spacing = [
0.05;
0.29;
0.53;
0.77;
1.01;
1.25
];
k = [
0.334857986;
0.147263776;
0.089978213;
0.062896923;
0.045596258;
0.033186339;
];

f = figure;
%f.Position = [100, 100, 1280, 720];
centerfig(f);

x = min(spacing):0.001:max(spacing);
y = interp1(spacing, k, x, 'makima');
plot(x, y, '-');
title("Couling K vs Spacing", "FontSize", 16);
xlabel("Spacing (mm)","FontSize",14);
ylabel("Coupling K", "FontSize", 14);
%ylim([3, 4]);
hold on;
grid on;
ylim([0.025,0.15]);
xlim([0.0, 1.25]);

plot(spacing, k, '.', 'MarkerSize', 15);

% Value for interpolation
desired_k = 0.06204686;
desired_k2 = 0.047388633;

% Interpolate the offset value for the given Qext
interpolated_spacing = interp1(k, spacing, desired_k, 'makima');
interpolated_spacing2 = interp1(k, spacing, desired_k2, 'makima');

stem(interpolated_spacing, desired_k);
yline(desired_k, '-', "Spacing = " + interpolated_spacing + " mm, for k_{ij} = " + desired_k);
stem(interpolated_spacing2, desired_k2);
yline(desired_k2, '-', "Spacing = " + interpolated_spacing2 + " mm, for k_{ij} = " + desired_k2);

disp(['Interpolated Spacing for k = ', num2str(desired_k), ' is ', num2str(interpolated_spacing), ' mm.']);
disp(['Interpolated Spacing for k = ', num2str(desired_k2), ' is ', num2str(interpolated_spacing2), ' mm.']);
