function [X]=ft(x,fs)
n2=length(x);
n=2^(max(nextpow2(fs), nextpow2(n2)));
X1=fft(x,n)/fs;
X=X1(1:n/8);