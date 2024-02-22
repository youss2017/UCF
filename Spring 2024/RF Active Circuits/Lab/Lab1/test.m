clear all
clc
% Load 1-port S-parameters for capacitor
s_capacitor = sparameters('S Measurements/SOLT/CAP21PF.s1p');

% Extract frequency and S11 parameter
frequency_capacitor = s_capacitor.Frequencies;
s11_capacitor = squeeze(s_capacitor.Parameters(1, 1, :));


% Calculate capacitance from S11 parameter
capacitance = 1./(50.*2 .* pi .* frequency_capacitor .* imag(s11_capacitor));

% Plot
figure;
plot(frequency_capacitor/1e9, capacitance*1e12, 'LineWidth', 2);  % Convert capacitance to pF for better scale
title('Capacitance vs Frequency');
xlabel('Frequency (GHz)');
ylabel('Capacitance (pF)');
ylim([-10,10]);
grid on;
