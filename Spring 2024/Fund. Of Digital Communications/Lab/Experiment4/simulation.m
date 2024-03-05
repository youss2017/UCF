clear
close all
clc

% Set the length of the binary signal
signalLength = 10000;

% Generate a random binary signal
binarySignal = randi([0 1], 1, signalLength);

PulseWidth = 1000e-3; % 100 ms
time_step = 450e-3; % 10 ms

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

grid on;

subplot(3, 1, 2);
plot(time, x2);
xlim([0, 10/signalLength]);
ylim([-1.2, 1.2]);
grid on;

data = [transpose(time), x2];
writematrix(data, 'message_manchester.csv');

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
