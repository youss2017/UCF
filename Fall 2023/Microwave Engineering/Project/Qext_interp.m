close all;
clc;
offset = [0;
0.1;
0.2;
0.3;
0.4;
0.5
];
Q = [11.77966102;
12.1754386;
12.61818182;
13.25;
13.84;
14.35416667;
];

x = min(offset):0.0005:max(offset);
y = interp1(offset, Q, x, 'linear');
plot(x, y, '-');
title("External Couling Coefficient vs Spacing", "FontSize", 16);
xlabel("Offset (mm)","FontSize",14);
ylabel("Q_{ext}", "FontSize", 14);
hold on;

plot(offset, Q, '.', 'MarkerSize', 15);

% Value for interpolation
desired_Q  = 13.484;

% Interpolate the offset value for the given Qext
interpolated_offset = interp1(Q, offset, desired_Q, 'linear');

stem(interpolated_offset, desired_Q);
yline(desired_Q, '-', "Offset = " + interpolated_offset + " mm for Q_{ext} = " + desired_Q);

disp(['Interpolated Offset for Q = ', num2str(desired_Q), ' is ', num2str(interpolated_offset), ' mm.']);
