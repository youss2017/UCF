clear all;
close all;
clc;
% 0.15 bridge
offset = [0,0.6,1.2,1.6,2.4,3];

% f0 for .15
Qext = [17.6965812, 12.83841463, 10.66497462, 9.258351893, 8.03875969, 7.603703704];

f = figure;
hold on;
grid on;
title("Q_{ext} Synthesis");
xlabel("Offset (mm)");
ylabel("Q_{ext}")
f.Position = [900, 500, 1280, 720];
plot(offset, Qext, '.', 'MarkerSize', 15, 'Color', 'red');


