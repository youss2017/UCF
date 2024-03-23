clear all;
close all;
clc;

Tb = 1;
f1 = 1000/Tb;
f2 = 2*f1 + 1/Tb;
phi = pi/4; % delay tranmission
N=5000;
Bits = 5;

u1 = @(t) cos(2*pi*f1*t);
u2 = @(t) cos(2*pi*f2*t);
v1 = @(t) sin(2*pi*f1*t);
v2 = @(t) sin(2*pi*f2*t);

t = linspace(0, Bits, N);

message = linspace(0, 1, N);

last_bit = 1;
for b=1:1:Bits
    len = N / Bits;
    offset = ((b - 1) * len) + 1;
    last_bit = ~last_bit;
    fprintf("%d %d %d\n", b, offset, length(message));
    for i=offset:1:min((len+offset), N)
        message(i) = last_bit;
    end
end

subplot(2,1,1);
plot(t, message);
ylim([-0.2, 1.2]);
title("Message Signal");
xlabel("time");
ylabel("Amplitude");

modulated_signal = linspace(0, 1, N);

for i=1:1:length(message)
    time = i/1000;
    if message(i)==1
        fprintf("(on) t=%f\n", time);
        modulated_signal(i) = u2(time*2);
    else
        fprintf("(off) t=%f\n", time);
        modulated_signal(i) = u2(time);
    end
end

subplot(2,1,2);
plot(t, modulated_signal);
ylim([-1.2, 1.2]);


