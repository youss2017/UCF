clear all;
close all;
clc;
syms theta beta
psi = 1.2*pi*cos(theta);

AF = 1 + exp(1j*psi) + exp(2j*psi);

theta = linspace(-pi, pi, 300);

beta = 0;
AF_eval = abs(eval(AF));
AF_eval = AF_eval ./ max(AF_eval);
polarplot(theta, AF_eval);
hold on

rho = zeros(length(AF_eval), 1) + 1/sqrt(2);
polarplot(theta, rho);
title("Array Factor Pattern");

figure
syms theta phi
E(theta, phi)=(cos(pi/2 .* cos(theta)))./sin(theta);
theta = linspace(-pi, pi, 300);
phi = 0;
E_eval = abs(eval(E));
E_eval = E_eval ./ max(E_eval);
polarplot(theta, E_eval);
hold on;
polarplot(theta, rho);
title("Radiation Pattern of Dipole");

figure;
RAD = E_eval .* AF_eval;
polarplot(theta, RAD);
title("Radiation Pattern of Cell Tower");
hold on;
polarplot(theta, rho);
%syms theta phi
%RAD2 = abs(eval(E * AF));
%x = RAD2*sin(theta)*cos(phi);
%y = RAD2*sin(theta)*sin(phi);
%z = RAD2*cos(theta);
%figure
%fsurf(x, y, z, [0 pi 0 2*pi])

% compute directivity
% Wrad
syms theta phi
RAD = E * AF;
U = @(theta, phi) RAD * conj(RAD);
Prad = integral2(U, 0, pi, 0, 2*pi);
Umax = fminbnd(@(x) -U(x), 0, pi);
D0 = (4*pi*Umax)/Prad;
10*log(D0)