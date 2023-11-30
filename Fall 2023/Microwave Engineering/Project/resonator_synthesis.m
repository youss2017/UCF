clear all;
close all;
clc;
% 0.15 bridge
ratio_15 = [0.34, 0.36, 0.38, 0.4] ./ .15;
% 0.20 bridge
ratio_20 = [0.34, 0.36, 0.38, 0.4] ./ .20;
% 0.25 bridge
ratio_25 = [0.4, 0.38, 0.36, 0.34, 0.32, 0.3, 0.28] ./ .25;
% 0.225 bridge
ratio_225 = [0.4,0.38,0.36,0.34,0.32] ./ 0.225;

% f0 for .15
f0_15 = [4.5319, 4.2628, 4.0861, 3.9015];
f0_20 = [3.7915, 3.62, 3.4733, 3.3182];
f0_25 = [2.9941, 3.1218, 3.2475, 3.3378, 3.548, 3.7149, 3.91];
f0_225 = [3.1178,3.2867,3.4033,3.5794,3.7574];

S11_15 = [-37.5452,-36.4113,-37.9227,-36.1951];
S11_20 = [-44.7524,-41.5915,-44.2861,-48.4041];
S11_25 = [-49.1382,-49.7284,-47.8211,-57.6769,-53.577,-42.7509,-41.1951];

f = figure;
hold on;
grid on;
title("Resonator Synthesis");
xlabel("Length/Width");
ylabel("Center Frequency (GHz)")
f.Position = [100, 100, 800, 600];
plot(ratio_15, f0_15, '.', 'MarkerSize', 15, 'Color', 'red');
plot(ratio_20, f0_20, '.', 'MarkerSize', 15, 'Color', 'magenta');
plot(ratio_225, f0_225, '.', 'MarkerSize', 15, 'Color', 'green');
plot(ratio_25, f0_25, '.', 'MarkerSize', 15, 'Color', 'blue');
yline(3.6, '-', "Target Center Frequency");

stem(.33755/.225, 3.6);
ylim([2.8, 4.6]);

