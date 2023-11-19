clear all;
clc;

wo = 3.6e9*2*pi;
BW = 0.24e9*2*pi;
g = [0.8989, 1.2843, 1.5410, 0.7491];
% scale to Z0
g_scaled = g .* [50, 1/50, 50, 1/50];
% scale to wc (low pass filter)
g_lowpass = g ./ wo;
fprintf("g1 %e nH\n", g_lowpass(1)*1e9);
fprintf("g2 %e pC\n", g_lowpass(2)*1e12);
fprintf("g3 %e nH\n", g_lowpass(3)*1e9);
fprintf("g4 %e pH\n", g_lowpass(4)*1e12);
% scale to wo (bandpass)

g_bandpass = [
    g_scaled(1)/BW BW/(wo^2*g_scaled(1));
    g_scaled(2)/BW BW/(wo^2*g_scaled(2));
    g_scaled(3)/BW BW/(wo^2*g_scaled(3));
    g_scaled(4)/BW BW/(wo^2*g_scaled(4));
];

fprintf("series   L -> L=%.8f nH +  C=%.8f pF\n", g_bandpass(1,1)*1e9, g_bandpass(1,2)*1e12);
fprintf("parallel C -> C=%.8f pF || L=%.8f pH\n", g_bandpass(2,1)*1e12, g_bandpass(2,2)*1e12);
fprintf("series   L -> L=%.8f nH +  C=%.8f pF\n", g_bandpass(3,1)*1e9, g_bandpass(3,2)*1e12);
fprintf("parallel C -> C=%.8f pF || L=%.8f pH\n", g_bandpass(4,1)*1e12, g_bandpass(4,2)*1e12);

% coupling coefficient k
fractionalBW = BW/wo;
k12 = fractionalBW/wo * (1/sqrt(g_scaled(1) * g_scaled(2)));
k23 = fractionalBW/wo * (1/sqrt(g_scaled(2) * g_scaled(3)));
k34 = fractionalBW/wo * (1/sqrt(g_scaled(3) * g_scaled(4)));
k45 = fractionalBW/wo * (1/sqrt(g_scaled(4) * 1.1999*50));
k = [k12 k23; k34 k45];
disp(k);
