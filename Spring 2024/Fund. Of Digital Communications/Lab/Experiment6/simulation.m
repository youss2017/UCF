clear all;
close all;
clc;

Tb = 0.1;
N=5000;
Bits = 10;

t = linspace(0, Bits*Tb, N);

last_bit = 1;
for b=1:1:Bits
    len = N / Bits;
    offset = ((b - 1) * len) + 1;
    last_bit = ~last_bit;
    for i=offset:1:min((len+offset), N)
        message(i) = last_bit;
    end
end

subplot(4,1,1);
plot(t, message);
ylim([-0.2, 1.2]);
xlim([0, 1]);
title("Message Signal");
xlabel("time");
ylabel("Amplitude");

%% Generating BSK signal
E = 1;
M = 2;
fc = 10;
phi = sqrt(2)*cos(2*pi*fc*t);
s1 = sqrt(2*E)*phi;
s2 = -sqrt(2*E)*phi;
% noise
N0 = (10^(0/10) * E);
sigma = sqrt(N0/2);

noise_matrix = randn(length(t), 1) * sigma;

modulated_signal = linspace(0, 1, N);
for i=1:1:length(modulated_signal)
    time = t(i);
    value = 0;
    if message(i) == 1
        value = s1(i);
    else
        value = s2(i);
    end
    modulated_signal(i) = value;
end
subplot(4,1,2);
plot(t, modulated_signal);
ylim([-2.5, 2.5]);
xlim([0, 1]);
title("Modulated Signal (BSK)");
xlabel("time");
ylabel("Amplitude");

modulated_signal_with_noise = modulated_signal + transpose(noise_matrix);

subplot(4,1,3);
plot(t, modulated_signal_with_noise);
ylim([-2.5, 2.5]);
xlim([0, 1]);
title("Modulated Signal (BSK) with Noise");
xlabel("time");
ylabel("Amplitude");

%% Demodulation

demodulated_signal = modulated_signal - modulated_signal;
bit_sum = 0;
time_counter = 0;
time_step = (Bits*Tb)/N;
demodulated_bits = [];
for i=1:1:length(demodulated_signal)
    time = t(i);
    time_counter = time_counter + time_step;
    r_mul_phi = modulated_signal_with_noise(i) * phi(i);

    bit_sum = bit_sum + r_mul_phi;
    %plot(time, bit_sum, '.');
    %hold on;
    if time_counter >= (Tb - 0.001)  
        if(bit_sum > 1)
            bit_value = 1;
        else
            bit_value = 0;
        end
        demodulated_bits(length(demodulated_bits) + 1) = bit_value;
        bit_sum = 0;
        time_counter = 0;
    end
end

bit_index = 1;
for i=1:1:length(demodulated_signal)
    time = t(i);
    time_counter = time_counter + time_step;
    demodulated_signal(i) = demodulated_bits(min(bit_index, length(demodulated_bits)));
    if time_counter >= (Tb)
        bit_index = bit_index + 1;
        time_counter = 0;
    end
end

subplot(4,1,4);
plot(t, demodulated_signal);
ylim([-0.2, 1.2]);
xlim([0, 1]);
title("Demodulated Signal (BSK) with Noise");
xlabel("time");
ylabel("Amplitude");
