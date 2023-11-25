close all;
clc;
spacing = [
0.15;
0.175;
0.2;
0.225;
0.25;
0.275;
0.3;
];
f0 = [
3.798;
3.573;
3.404;
3.349;
3.256;
3.207;
3.17;
];

spacing = spacing .* 24.98641211;

x = min(spacing):0.001:max(spacing);
y = interp1(spacing, f0, x, 'linear');
plot(x, y, '-');
title("Center Frequency vs Spacing");
xlabel("Spacing (mm)","FontSize",14);
ylabel("Center Frequency (GHz)", "FontSize", 14);
ylim([3, 4]);
hold on;

plot(spacing, f0, '.', 'MarkerSize', 15);

% Value for interpolation
desired_f0 = 3.6;

% Interpolate the offset value for the given Qext
interpolated_spacing = interp1(f0, spacing, desired_f0, 'linear');

stem(interpolated_spacing, desired_f0);
yline(desired_f0, '-', "Spacing = " + interpolated_spacing + " mm, for f_{0} = 3.6 GHz");

disp(['Interpolated Spacing for f0 = ', num2str(desired_f0), ' is ', num2str(interpolated_spacing), ' mm.']);
