clear all;
clc;
close all;


Fs = 4000;            % Sampling frequency                    
T = 1/Fs;             % Sampling period       
L = 1500;             % Length of signal
t = (0:L-1)*T;        % Time vector
f = 100;              % Signal frequency
fc = 1000;            % carrier frequency
m = 0.5;              % Modulation Factor

%% Signals
X = sin (2*pi*f*t);        % Message signal 
% X = square(2*f*t*pi);        % Message signal (square wave)
% X = sinc(2*f*(t-10));          % Message signal (sinc Function)

plot(X);
title("Message Signal")

A = abs(min(X))/m;          % Required dc offset from modulation index de?nition 
car_sig = sin(2*pi*fc*t);   % Carrier Signal
x1 = (X+A).*car_sig;        % Modulated signal

figure;
plot(x1);
title("Modulated signal");

delta = 0;      % Frequency error
Phi = 0;        % Phase shift
carrier2=sin(2 * pi * (fc+delta) * t + Phi);   % Carrier at the receiver end

x2 = x1.*carrier2;                  % Demodulated signal

num_harmonic = 1;               % Number of harmonic you want to see
cutoff = 4* num_harmonic* f;    % Cutoff frequency of the lowpass filter


[b,a] = butter(5,cutoff/Fs);      % Low pass filter
x_demod = filtfilt(b,a,x2);     % Get the message signal
         
figure;
plot(x_demod);
title("Demodulated signal");

%% Plot the spectrum of signal, carrier and modulated signal
figure;
P = plot_fft(X,L, Fs);   
title("Message Signal (Transmitter) in Frequency Domain.");
xlabel("Frequency (Hz)");
ylabel("Magnitude of |FFT|");

figure;
p1 = plot_fft(car_sig, L, Fs);
title("Carrier Signal (Transmitter) in Frequency Domain.");
xlabel("Frequency (Hz)");
ylabel("Magnitude of |FFT|");

figure;
p3 = plot_fft(x1, L,Fs); 
title("Modulated Signal (Transmitter) in Frequency Domain.");
xlabel("Frequency (Hz)");
ylabel("Magnitude of |FFT|");

figure;
p4 = plot_fft(carrier2, L, Fs);
title("Carrier Signal (Receiver) in Frequency Domain.");
xlabel("Frequency (Hz)");
ylabel("Magnitude of |FFT|");

figure;
p5 = plot_fft(x_demod, L,Fs); 
title("Demodulated Signal (Receiver) in Frequency Domain.");
xlabel("Frequency (Hz)");
ylabel("Magnitude of |FFT|");


%% Function for FFT
function [P1] = plot_fft(X, L, Fs)
Y = fft(X);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(L/2))/L;
plot(f,P1) 
end
