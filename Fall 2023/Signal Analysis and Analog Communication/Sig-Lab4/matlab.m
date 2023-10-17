clc;
clear all;
close all;

RC = 1.6e3 * 0.01e-6;
w = 0:100:100000;

%% 1st-order Low Pass Filter 
b1 = [1];
a1 = [RC, 1];
figure;
freqs(b1,a1,w);
title("1st-order Low Pass Filter");

%% 4th-order Low pass filter
b2 =  2.2*1.5;
a2 = [RC^4, 2.65*RC^3, 3.48*RC^2, 2.65*RC, 1];
figure;
freqs(b2,a2,w);
title("4st-order Low Pass Filter");

close all
clear all
figure
syms n
Ap = 1;
An = -1;
T = pi;
a(n) = 2*( (Ap*sin(pi*n/2))/(pi*n) - (An*sin(pi*n/2))/(pi*n) );
a0 = (Ap/2) + (An/2);
w(n) = (n * ((2*pi)/T));
n = 1e-2:1e-2:10;
sol_n = eval(a(n));
sol_n = [sol_n];
sol_w = eval(w(n));
sol_w = [sol_w];
plot(sol_w, sol_n);
hold on
n = 1:1:10;
sol_n = eval(a(n));
sol_n = [a0, sol_n];
sol_w = eval(w(n));
sol_w = [0, sol_w];
stem(sol_w, sol_n, 'red');

title("Fourier Spectrum |C_n|; {A_p=1, A_n=-1, T_0=π}");
xlabel("Frequency (rad/s)", 'FontSize', 14);
ylabel("|C_n|", 'FontSize', 14)
xline((2*pi)/T,'-','w_c (Cut-off Frequency)', 'FontSize', 12)
grid on;