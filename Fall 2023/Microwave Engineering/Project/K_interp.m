close all;
clc;
spacing = [
0;
0.25;
0.5;
0.75;
0.92248;
0.92843;
0.93031;
0.93208;
0.9327;
1

];
coupling = [
0.396211275;
0.18746698;
0.102661752;
0.081404923;
0.05971762;
0.06328726;
0.063917006;
0.060885153;
0.063213793;
0.053347023;

];

x = min(spacing):0.001:max(spacing);
y = interp1(spacing, coupling, x, 'linear');
plot(x, y, '-');
title("k_{12} vs Spacing");
xlabel("Spacing (mm)","FontSize",14);
ylabel("k_{12}", "FontSize", 14);
hold on;

plot(spacing, coupling, '.', 'MarkerSize', 15);

% Value for interpolation
desired_k = 0.047388633;
desired_k23 = 0.047388633;

% Interpolate the offset value for the given Qext
interpolated_spacing = interp1(coupling, spacing, desired_k, 'linear');

stem(interpolated_spacing, desired_k);
yline(desired_k, '-', 'Desired k_{12}');

disp(['Interpolated Spacing for k12 = ', num2str(desired_k), ' is ', num2str(interpolated_spacing), ' mm.']);
