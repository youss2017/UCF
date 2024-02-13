clear;
clc;
close all;
syms t n

%% Define message signals
m1(t) = cos(2*pi*200*t);
m2(t) = cos(2*pi*400*t);

%% Define clock parameters
Ap = 1;
An = -1;
a(n) = 2*((Ap*sin(pi * n / 2))/(pi * n) - (An*sin(pi * n / 2))/(pi * n));
f0 = 4000;
a0 = Ap/2 + An/2;
n = 1:2:1001;
a_eval = eval(a);
a_terms = a_eval .* cos(2*pi*f0*n.*t);
c(t) = a0 + sum(a_terms);

fig = figure;
fig.Position = [0, 0, 1280, 720];
centerfig(fig);

t = 0:1/(100*f0):0.01;
m1_eval = eval(m1);
m2_eval = eval(m2);
c_eval = eval(c);

subplot(2,2,1),plot(t*1e3, m1_eval); grid on;
title("200 Hz Signal", "FontSize", 14);
subplot(2,2,2),plot(t*1e3, m2_eval); grid on;
title("400 Hz Signal", "FontSize", 14);
subplot(2,2,3);
stem([-200, 200], [1/2, 1/2]);
xlim([-500, 500]);
title("Frequency Spectrum of 200 Hz Signal", "FontSize", 14);
xlabel("Frequency (Hz)", "FontSize", 13);
ylabel("Amplitude", "FontSize", 13);
grid on;
subplot(2,2,4);
stem([-400, 400], [1/2, 1/2]);
xlim([-500, 500]);
title("Frequency Spectrum of 400 Hz Signal", "FontSize", 14);
xlabel("Frequency (Hz)", "FontSize", 13);
ylabel("Amplitude", "FontSize", 13);
grid on;

%% Compute TDM Signal
TDM = zeros(1, length(t));
m1_rcv = zeros(1, length(t));
m2_rcv = zeros(1, length(t));

for i=1:1:length(t)
    if c_eval(i) > 0
        TDM(i) = m1_eval(i);
        m1_rcv(i) = TDM(i);
        m2_rcv(i) = 0;
    else
        TDM(i) = m2_eval(i);
        m2_rcv(i) = TDM(i);
        m1_rcv(i) = 0;
    end
end

fig2 = figure;
fig2.Position = [0, 0, 1280, 720];
centerfig(fig2);

subplot(2,2,1), plot(t*1e3, c_eval);
grid on;
xlabel("time (ms)", "FontSize", 13);
title("Clock Signal (2.5 kHz)", "FontSize", 14);
subplot(2,2,2), plot(t*1e3, TDM);
grid on;
xlabel("time (ms)", "FontSize", 13);
title("TDM Signal", "FontSize", 14);
subplot(2,2,3);
c_fft = fft(c_eval);
L = length(c_eval);
Fs = 100*f0;
frequencies = linspace(-Fs/2, Fs/2, L);
plot(frequencies, abs(fftshift(c_fft)));
xlabel("Frequency (Hz)", "FontSize", 13);
ylabel("Magnitude", "FontSize", 13);
title("FFT of c(t)", "FontSize", 14);
grid on;

subplot(2,2,4);
TDM_fft = fft(TDM);
L = length(TDM);
Fs = 100*f0;
frequencies = linspace(-Fs/2, Fs/2, L);
plot(frequencies, abs(fftshift(TDM_fft)));
xlabel("Frequency (Hz)", "FontSize", 13);
ylabel("Magnitude", "FontSize", 13);
title("FFT of TDM Signal", "FontSize", 14);
grid on;

figure
subplot(2,2,1), plot(t*1e3, m1_rcv);
title("m_{1}(t) Signal --- 200 Hz", "FontSize", 14);
xlabel("time (ms)", "FontSize", 13);
subplot(2,2,2), plot(t*1e3, m2_rcv);
title("m_{2}(t) Signal --- 400 Hz", "FontSize", 14);
xlabel("time (ms)", "FontSize", 13);
Fs = 100*f0; % sampling frequency
m1_rcv_fft = fft(m1_rcv); % fft
L = length(m1_rcv); % length of signal

frequencies = linspace(-Fs/2, Fs/2, L);
subplot(2,2,3);
plot(frequencies, abs(fftshift(m1_rcv_fft)));
xlabel('Frequency (Hz)', "FontSize", 13);
ylabel('Magnitude', "FontSize", 13);
title('FFT of m_{1}(t) Signal', "FontSize", 14);
grid on;

subplot(2,2,4);
m2_rcv_fft = fft(m2_rcv); % fft
plot(frequencies, abs(fftshift(m2_rcv_fft)));
xlabel('Frequency (Hz)', "FontSize", 13);
ylabel('Magnitude', "FontSize", 13);
title('FFT of m_{2}(t) Signal', "FontSize", 14);
grid on;
