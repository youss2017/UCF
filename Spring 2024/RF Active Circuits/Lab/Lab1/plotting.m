close all;
clear all;
clc;
% S Measurements/SOLT/INDUCTOR1.8NH.S1P
%SL15 = sparameters('S Measurements/Unmatched/IND_1_5_NH.S1P');
%SL18 = sparameters('S Measurements/Unmatched/IND_1_8_NH.S1P');
%SC27 = sparameters('S Measurements/Unmatched/CAP_2_7PF.S1P');
%SC21 = sparameters('S Measurements/Unmatched/CAP_21_PF.S1P');
%SR50 = sparameters('S Measurements/Unmatched/RESISTOR.S1P');

%SL15 = sparameters('S Measurements/SOLT/INDUCTOR1.5NH.S1P');
%SL18 = sparameters('S Measurements/SOLT/INDUCTOR1.8NH.S1P');
%SC27 = sparameters('S Measurements/SOLT/CAP2.7PF.S1P');
%SC21 = sparameters('S Measurements/SOLT/CAP21PF.S1P');
%SR50 = sparameters('S Measurements/SOLT/RESISTOR.S1P');

SL15 = sparameters('S Measurements/TRL/New Folder/R.S1P'); % Resistor
SL18 = sparameters('S Measurements/TRL/1.8NH.S1P');
SC27 = sparameters('S Measurements/TRL/New Folder/2.7PF.S1P');
SC21 = sparameters('S Measurements/TRL/New Folder/21PF.S1P');
SR50 = sparameters('S Measurements/TRL/New Folder/R.S1P');

% Extract frequency and impedance data
fSL15 = SL15.Frequencies;
zSL15 = squeeze(SL15.Parameters(1, 1, :)); % Assuming a 1-port S-parameter (1, 1)
zSL15 = (50 .* imag(zSL15)) ./ (2*pi*fSL15);
% Extract frequency and impedance data
fSL18 = SL18.Frequencies;
zSL18 = squeeze(SL18.Parameters(1, 1, :)); % Assuming a 1-port S-parameter (1, 1)
zSL18 = (50 .* imag(zSL18)) ./ (2*pi*zSL18);
% Extract frequency and impedance data
fSC27 = SC27.Frequencies;
zSC27 = squeeze(SC27.Parameters(1, 1, :)); % Assuming a 1-port S-parameter (1, 1)
zSC27 = 1./(50.*2j .* pi .* fSC27 .* imag(zSC27) .* 1j);
% Extract frequency and impedance data
fSC21 = SC21.Frequencies;
zSC21 = squeeze(SC21.Parameters(1, 1, :)); % Assuming a 1-port S-parameter (1, 1)
zSC21 = 1./(50.*2j .* pi .* fSC21 .* imag(zSC21) .* 1j);
% Extract frequency and impedance data
fSR50 = SR50.Frequencies;
zSR50 = squeeze(SR50.Parameters(1, 1, :));
zSR50 = real(50 ./ (1 + zSR50) ./ (1 - zSR50));

% Plot
f = figure;
f.Position = [0, 0, 800, 600];
centerfig(f);
subplot(2, 2, 1);
%plot(fSL15/1e9, zSL15*1e9, 'LineWidth', 2);
%title('1.5 nH Impedence vs Frequency (TRL)');
%xlabel('Frequency (GHz)');
%ylabel('Inductance (nH)');
%xlim([0.1,2]);
%ylim([-10,10]);
plot(fSR50/1e9, zSR50, 'LineWidth', 2);
title('50 \Omega Impedence vs Frequency (TRL)');
xlabel('Frequency (GHz)');
ylabel('Resistance (\Omega)');
xlim([0.1,2]);
ylim([0,60]);
grid on;

subplot(2, 2, 2);
plot(fSL18/1e9, 1e9*zSL15, 'LineWidth', 2);
title('1.8 nH Impedence vs Frequency (TRL)');
xlabel('Frequency (GHz)');
ylabel('Inductance (nH)');
xlim([0.1,2]);
ylim([-2,2]);
grid on;

subplot(2, 2, 3);
plot(fSC27/1e9, 1e12*zSC27, 'LineWidth', 2);
title('21 pF Impedence vs Frequency (TRL)');
xlabel('Frequency (GHz)');
ylabel('Capacitance (pF)');
xlim([0.1,2]);
ylim([-50,10]);
grid on;

subplot(2, 2, 4);
plot(fSC21/1e9, 1e12*zSC21, 'LineWidth', 2);
title('2.7 pF Impedence vs Frequency (TRL)');
xlabel('Frequency (GHz)');
ylabel('Capacitance (pF)');
xlim([0.1,2]);
ylim([-10,10]);
grid on;

f = figure;
f.Position = [0, 0, 800, 600];
centerfig(f);
plot(fSR50/1e9, zSR50, 'LineWidth', 2);
title('50 \Omega Impedence vs Frequency (TRL)');
xlabel('Frequency (GHz)');
ylabel('Resistance (\Omega)');
xlim([0.1,2]);
ylim([0,60]);
grid on;