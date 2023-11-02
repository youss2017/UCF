f = 100;
fc = 1000;
m = 0.5;
fs = 4000;
T = 1/fs;
t = (0:L-1)*T;
L = 1500;
signal = sin(2 * pi * f * t);
A = abs(min(signal))/m;
carrier1 = sin(2 * pi * fc * t);
x = (signal+A).*carrier1;

[S1]=ft(signal,fs);
[C1]=ft(carrier1,fs);
[X]=ft(x,fs);

delta = 0;
phi = 0;

carrier2=sin(2 * pi * (fc+delta) * t + phi);
x1 = x.*carrier2;

b=fir1(24,500/fs);
[x_demod]=conv2(x1,b,'same');

C2 = ft(carrier2, fs);
S2 = ft(x_demod, fs);

%% Plotting
% signal vs time
close all
figure
plot(t, signal);
xlabel("time");
ylabel("s(t)");
title("Signal");
figure
plot(t, x);
title("Modulated Signal");
xlabel("time");
ylabel("m(t)");
figure
plot(t, x_demod);
title("Demodulated Signal");
xlabel("time");
ylabel("m(t)");

%% Non sinusoidal carrier
syms n t
T = 0.1; % Period
a(n) = 2*(sin(pi*n/2)/(pi*n) + (sin(pi*n/2)/(pi*n)));
n=1:2:50;
coeff = eval(a);
cos_terms = cos((n*2*pi/T)*t);
f = sum(coeff.*cos_terms);
t=(-pi):0.01:(pi);
% t=(-2*T):0.001:(2*T);
figure
f = eval(f);
plot(t, f);
title("Carrier Signal (Square Wave, 25 terms)");
xlabel("time");
ylabel("c(t)");

% signal
figure
s = cos(t);
plot(t, s);
title("Message Signal (Cosine Wave)");
xlabel("time");
ylabel("s(t)");

figure
message = f.*s;
plot(t, message);
title("Modulated Signal (Transmitted)");
xlabel("time");
ylabel("m(t)");