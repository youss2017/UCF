clear all;
close all;
clc;
syms theta beta


AF = 1 + 2*cos(1.2*pi*cos(theta))

theta = linspace(-pi+eps, pi-eps, 300);

beta = 0;
subplot(2,2,1);
AF_eval = abs(eval(AF));
AF_eval = AF_eval ./ max(AF_eval);
polarplot(theta, AF_eval);
hold on

rho = zeros(length(AF_eval), 1) + 1/sqrt(2);
polarplot(theta, rho);
title("Array Factor Pattern");

syms theta phi
subplot(2,2,2);
E(theta, phi)=(cos(pi/2 .* cos(theta)))./sin(theta);
theta = linspace(-pi+eps, pi-eps, 300);
phi = 0;
E_eval = abs(eval(E));
E_eval = E_eval ./ max(E_eval);
polarplot(theta, E_eval);
hold on;
polarplot(theta, rho);
title("Radiation Pattern of Dipole");

subplot(2,2,3);
RAD = E_eval .* AF_eval;
polarplot(theta, RAD);
title("Radiation Pattern of Cell Tower");
hold on;
polarplot(theta, rho);
syms theta phi
subplot(2,2,4);
RAD2 = abs(eval(E * AF));
x = RAD2*sin(theta)*cos(phi);
y = RAD2*sin(theta)*sin(phi);
z = RAD2*cos(theta);
fsurf(x, y, z, [0 pi 0 2*pi])

% compute directivity
% Wrad
syms theta phi
U = @(theta, phi) real((E(theta, phi) * AF(theta, phi)) .^ 2);
Prad = integral(U, 0, pi);
Umax = fminbnd(@(x) -U(x), 0, pi);
D0 = (4*pi*Umax)/Prad;
10*log(D0)