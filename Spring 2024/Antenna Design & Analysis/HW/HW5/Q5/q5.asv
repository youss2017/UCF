clear all
close all
clc

syms x f lambda X

% Dimenions are in mm
a = 10.668;
b = 4.138;
f0 = 22e9;
G0_dbi = 23;
G0 = 10^(G0_dbi/10);
Lambda(f) = (3e8/f) * 1e3; % lambda in mm from frequency in Hz

f(X) = (sqrt(2*X) - b/Lambda(f0))^2*(2*X-1) - (G0/(2*pi) * sqrt(3/(2*pi)) * 1/sqrt(X) - a/Lambda(f0))^2 * (G0^2/(6*pi^3) * 1/X - 1);
f_eq = f(X) == 0;
optimalX = solve(f_eq, X);

a1 = 23.20;
b1 = 67.27;
pe = 166.04;
ph = 13.17;

C(x) = fresnelc(x);
S(x) = fresnels(x);

DE(lambda) = (64*a*pe)/(pi*lambda*b1) * ( (C(b1/sqrt(2*lambda*pe)))^2 + (S(b1/sqrt(2*lambda*pe)))^2 );

u(lambda) = (1/sqrt(2)) * ( sqrt(lambda*ph)/a1 + a1/sqrt(lambda*ph) );
v(lambda) = (1/sqrt(2)) * ( sqrt(lambda*ph)/a1 - a1/sqrt(lambda*ph) );
DH(lambda) = (4*pi*b*ph)/(a1*lambda) * (C(u(lambda)) - C(v(lambda)))^2 + (S(u(lambda)) - S(v(lambda)))^2;
DP(lambda) = (pi*lambda^2)/(32*a*b) * DE(lambda) * DH(lambda);
DP(lambda) = matlabFunction(DP);

f1 = linspace(14e9, 32e9, 1000);
lam1 = eval(Lambda(f1));

Dp1 = eval(DP(lam1));
plot(f1/1e9, 10.0.*log10(Dp1));
xlabel("freq (GHz)", "FontSize", 16);
ylabel("D_{p} (dBi)", "FontSize", 16);
title("Directivity from 14-32 GHz of Horn Antenna", "FontSize", 18);
grid on;