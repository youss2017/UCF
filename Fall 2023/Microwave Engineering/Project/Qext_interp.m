close all;
clc;
offset = [6, 8, 10, 12];
Qext = [5.201834862, 14.3625, 47.08695652, 26.18699187];

plot(offset, Qext, '--');
title("Q_{extA} vs Feedline position.");
xlabel("Feedline Position mm");
ylabel("Q_{extA}");
hold on;
plot(offset, Qext, '.', 'MarkerSize', 15);

% Value for interpolation
desired_Qext = 13.4835;

% Interpolate the offset value for the given Qext
interpolated_offset = interp1(Qext, offset, desired_Qext);

stem(interpolated_offset, desired_Qext);
yline(desired_Qext, '-', 'Desired Q_{ext}');

disp(['Interpolated Offset for Qext = ', num2str(desired_Qext), ' is ', num2str(interpolated_offset)]);