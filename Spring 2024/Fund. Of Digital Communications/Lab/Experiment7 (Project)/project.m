clear all
close all
clc
A = sqrt(2);

data = zeros(1, 1e6);
qpsk_symbols = [(1-1j), (1+1j), (-1-1j), (-1+1j)];
for i=1:1:length(data)
    data(i) = A * qpsk_symbols(randi(length(qpsk_symbols)));
end

AWGN = awgn(data, 12, 2, 'dB');
data = data + AWGN;
plot(real(data), imag(data), '.');
grid on;

figure;
g = [1 0 0 0.65];
ych = conv(data, g, 'same');
y = ych + AWGN;

plot(real(ych), imag(ych), '.');

grid on;
hold off;

figure

plot(real(y), imag(y), '.');

