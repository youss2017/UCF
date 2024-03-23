clear all
close all
clc

syms phi theta

alpha = -1.26;
beta = -1.88;
lil_gamma = 1.26;

AF(theta, phi) = 1 + 0.9*exp(-1j*0.4*pi*cos(theta) + lil_gamma) ...
    + 0.7*exp(1j*1.4*pi*cos(theta) + alpha) + 0.5*exp(1j*pi*cos(theta)+beta);

E(theta, phi) = AF(theta, phi) * sin(theta);

    %% Plot E Plane
phi = 0;
theta = linspace(0, pi, 1000);
E_eval = abs(eval(E));
E_eval = E_eval ./ max(E_eval);
E_eval = 10.0.*log10(E_eval);
E_eval(E_eval < -40) = -40;
polarplot(theta, E_eval);
title("E plane phi=pi/2");
hold on;
rlim([-40, 0])
Erad = E_eval .^ 2;
