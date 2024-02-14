clear;
clc;
close all;
%% Simulation Parameters
Smax = 1;
Smin = -1;
Omega = 1;

%% Generate Signal
t = 0:0.1:10;
signal = sin(Omega.*t);

%% Quanziation

f = figure;
f.Position = [0, 0, 1280, 720];
centerfig(f);

index = 1;
for n = 1:1:4
    quantized_signal = QuantizeSignal(signal, Smax, Smin, n);
    subplot(2,2,index);
    plot(t, signal);
    hold on;
    grid on;
    pwr = ComputeSignalPower(signal);
    error = ComputeQuantizationError(signal, quantized_signal);
    SNR = 10*log10(pwr/error);
    leg = sprintf("Quantization Error = %.2f", error);
    leg = leg + " --- SNR: " + SNR;
    qp = plot(t, quantized_signal, 'DisplayName', leg);
    title("Signal vs Quantized Signal using " + n + "-bits or " + (2^(n)) + " levels", 'FontSize', 14);
    xlabel("time (sec) \rightarrow", 'FontSize', 13);
    ylabel("Amplitude", 'FontSize', 13);
    ylim([-1.5,1.5]);
    legend(qp);
    levels = 2^(n) - 1;
    quant_step = (Smax - Smin) / levels;

    for level=0:1:levels
        yline(Smin + (level * quant_step), '--', dec2bin(level, n), 'HandleVisibility','off');
    end

    index = index + 1;
end

quantized8_signal = QuantizeSignal(signal, Smax, Smin, 3);
figure;
plot(t, signal - quantized8_signal);
title('Quantization Error for 3-bits or 8 levels', 'FontSize', 14);
xlabel("time (sec) \rightarrow",  'FontSize', 13)
ylabel("Amplitude", 'FontSize', 13);

function qs = QuantizeSignal(source, smax, smin, bits)
    % Determine level step
    levelCount = 2^(bits);
    n = levelCount;
    qs = source;
    qs_len = length(source);
    for i = 1:1:qs_len
       a = qs(i);
       b = a + smax;
       c = (n - 1) * (b / (2 * smax));
       d = round(c);
       a_quan = 2 * smax * d / ( (n - 1)) - smax;
       a_error = a - a_quan;
       qs(i) = a_quan;
    end
end

function error = ComputeQuantizationError(sourceSignal, quantizedSignal)
    err = sourceSignal - quantizedSignal;
    err = err .^ 2;
    error = sum(err);
end

function pwr = ComputeSignalPower(sourceSignal)
    pwr = sum(sourceSignal .* sourceSignal);
end



