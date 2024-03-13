clear
close all
clc

% Set the length of the binary signal
signalLength = 10000;

% Generate a random binary signal
binarySignal = randi([0 1], 1, signalLength);

PulseWidth = 10e-3; % 100 ms
time_step = 1e-3; % 10 ms

x = zeros(signalLength * (PulseWidth / time_step), 1);
x2 = x;
j = 1;
for i=1:1:signalLength
    for t = 0:time_step:PulseWidth
        x(j) = binarySignal(i);
        if binarySignal(i) == 1
            if t >= PulseWidth / 2
                x2(j) = -1;
            else
                x2(j) = 1;
            end
        else
            if t >= PulseWidth / 2
                x2(j) = 1;
            else
                x2(j) = -1;
            end
        end
        j = j + 1;
    end
end

%time = linspace(0, (PulseWidth) * signalLength, length(x));
time = linspace(0, 1, length(x));
subplot(3, 1, 1);
plot(time, x);
xlim([0, 10/signalLength]);
ylim([-.2, 1.2]);
title("Message Signal");
xlabel("time (sec)");
ylabel("Amplitude");

grid on;

subplot(3, 1, 2);
plot(time, x2);
xlim([0, 10/signalLength]);
ylim([-1.2, 1.2]);
title("Manchester Encoded Signal");
xlabel("time (sec)");
ylabel("Amplitude");
grid on;

data = [transpose(time), x2];
%writematrix(data, 'message_manchester.csv');

x2 = x2 ./ max(x2);
Fs = (2*signalLength);            % Sampling frequency                    
T = 1;             % Sampling period       
L = length(x2);             % Length of signal
t = (0:L-1)*T;        % Time vector
M = fftshift(fft(x2));

subplot(3, 1, 3);
plot(Fs/L*(0:L-1),abs(M),"LineWidth",3)
title("Complex Magnitude of fft Spectrum")
xlabel("f (Hz)")
ylabel("|fft(X)|")

% compute PSD
figure
Tb = time_step/16;
total_time = PulseWidth * signalLength;
S = (abs(M) .^ 2) ./ total_time;
subplot(2,1,1);
plot(Fs/L*(0:L-1), S, "LineWidth",3);
title("S_{g}(f) -- Pulse Width 10 ms with 10k random bits");
xlabel("Frequency (Hz)");
ylabel("Amplitude");
subplot(2,1,2);
f = linspace(-2e4, 2e4, 10e3);
Sg = (Tb/4) .* (sinc(pi*f*Tb/2) .^ 2) .* (sin(pi*f*Tb) .^ 2);
plot(f, Sg);
title("Theoretical S_{g}(f) of 1 bit");
xlabel("Frequency (Hz)");
ylabel("Amplitude");