clear all
close all
clc
% part A
figure;
t = -1:0.1:1;
g = t.^2;
plot(t, g);
xlabel("t");
ylabel("g(t)");
title("Problem 6 (a)")
% part B
figure;
n=-20:1:20;
D_n = ((2*(-1)^2)./(pi^2*n.^2));
x = -20:1:20;
stem(x, D_n, 'red');
hold on
D_0 = 1/3;
stem(0, D_0, 'red');
title("Problem 6 (b)")
xlabel("w");
ylabel("|D_n|");
% part C
figure;
gfourier = [];
x=-4:0.01:4;
for t = x
    g = 0;
    for n = 1:10
        Dn = (2*(-1)^n)/(pi^2*n^2);
        g = g + (Dn)*(exp(-j*n*t*pi) + exp(j*n*t*pi));
    end
    g = g + (1/3);
    gfourier = [gfourier; g];
end

plot(x, gfourier);
title("Problem 6 (c) - Approxmation of g(t) with n=10");
xlabel("t");
ylabel("g(t)");
% problem 7 part (a)
figure;
t = -2:0.01:2;
g1 = sin(2*pi.*t);
g2 = sin(2*pi.*t).*exp(-t);
g3 = sin(2*pi.*t) + 2.*sin(4*pi.*t) + 3.*sin(6*pi.*t);
plot(t, g1);
title("Problem 7; (a)");
xlabel("t ∈ [-2,2]");
ylabel("g_1(t)");
figure
plot(t, g2);
title("Problem 7; (b)");
xlabel("t ∈ [-2,2]");
ylabel("g_2(t)");
figure
plot(t, g3);
title("Problem 7; (c)");
xlabel("t ∈ [-2,2]");
ylabel("g_3(t)");
