close all;
clc;
offset = [0.8;
0.8625;
0.925;
1.05;
1.0636;
1.1125;
1.2375;
];
K = [0.065134483;
0.058409536;
0.054341719;
0.053693976;
0.049346249;
0.040330893;
0.039400062;
];

x = min(offset):0.0005:max(offset);
y = interp1(offset, K, x, 'linear');
plot(x, y, '-');
title("Couling Coefficient vs Spacing");
xlabel("Spacing (mm)","FontSize",14);
ylabel("k", "FontSize", 14);
hold on;

plot(offset, K, '.', 'MarkerSize', 15);

% Value for interpolation
desired_K  = 0.062047;
desired_K2 = 0.047389;

% Interpolate the offset value for the given Qext
interpolated_offset = interp1(K, offset, desired_K, 'linear');
interpolated_offset2 = interp1(K, offset, desired_K2, 'linear');

stem(interpolated_offset, desired_K);
stem(1.0722, desired_K2);
yline(desired_K, '-', "Offset = " + interpolated_offset + " mm for k = " + desired_K);
yline(desired_K2, '-', "Offset = " +  1.0722 + " mm for k = " + desired_K2);

disp(['Interpolated Offset for K = ', num2str(desired_K), ' is ', num2str(interpolated_offset), ' mm.']);
disp(['Interpolated Offset for K = ', num2str(desired_K2), ' is ', num2str(interpolated_offset2), ' mm.']);
