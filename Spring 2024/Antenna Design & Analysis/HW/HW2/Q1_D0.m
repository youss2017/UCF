clear all;
close all;
clc;
syms theta phi
AF(theta) = (1 + exp(1j*1.2*pi*cos(theta)) + exp(2j*1.2*pi*cos(theta)));
E(theta, phi)=((cos(pi/2 .* cos(theta)))./sin(theta));

% compute directivity
U = @(theta, phi) ...
    abs( ...
        (((cos(pi/2 .* cos(theta)))./sin(theta)) .* ...
        (1 + exp(1j*1.2*pi*cos(theta)) + exp(2j*1.2*pi*cos(theta)))) .^ 2);

% Perform the double integration using numerical quadrature
Prad = integral2(@(theta, phi) U(theta, phi), 0, pi, 0, 2*pi);

disp(['Prad: ', num2str(Prad)]);
%Prad = integral(U, 0, pi);
Umax = fminbnd(@(x) -U(x), 0, pi);
D0 = (4*pi*Umax)/Prad;
