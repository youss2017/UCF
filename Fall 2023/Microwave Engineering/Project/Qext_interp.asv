close all;
clc;
offset = [20, 21.6173, 21.6812, 21.7313, 21.754, 21.85, 22, 24, 26, 28];
Qext = [63.11290323, 13.46688742, 12.99680511, 12.78301887, 12.63354037, 12.25301205, 11.41971831, 6.570715474, 4.886479592, 4.182217344];

x = min(offset):0.05:max(offset);
y = interp1(offset, Qext, x, 'makima');
plot(x, y, '--');
title("Q_{ext} vs Feedline position.");
xlabel("Position (mm)","FontSize",14);
ylabel("Q_{ext}", "FontSize", 14);
hold on;

plot(offset, Qext, '.', 'MarkerSize', 15);

% Value for interpolation
desired_Qext = 13.4835;

% Interpolate the offset value for the given Qext
interpolated_offset = interp1(Qext, offset, desired_Qext, 'makima');

stem(interpolated_offset, desired_Qext);
yline(desired_Qext, '-', 'Desired Q_{ext}');

disp(['Interpolated Offset for Qext = ', num2str(desired_Qext), ' is ', num2str(interpolated_offset), ' mm.']);
