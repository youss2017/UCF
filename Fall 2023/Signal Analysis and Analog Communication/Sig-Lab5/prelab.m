f = 100;
fc = 1000;
m = 0.5;
fs = 16384;
t = 0:1/fs:0.05;
signal = sin(2 * pi * f * t);
A = abs(min(signal))/m;
carrier1 = sin(2 * pi * fc * t);
x = (signal+A).*carrier1;

[S1]=ft(signal,fs);

function [X]=ft(x,fs)
n2=length(x);
n= 2^(max(nextpow2(fs), nextpow2(n2)));
X1=fft(x,n)/fs;
X=X1(1:n/8);
end

