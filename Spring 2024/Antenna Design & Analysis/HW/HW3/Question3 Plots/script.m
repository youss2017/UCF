clear all
close all
clc

syms theta

Element_Factor(theta) = cos(theta);
Array_Factor(theta) = 0.9*exp(j*0.4*pi*(-cos(theta) + 1)) + ...
    1 + ...
    0.7*exp(j*0.6*pi*(cos(theta) - 1)) + ...
    0.5*exp(j*pi*(cos(theta) - 1));

Electric_Trans(theta) = Element_Factor(theta) * Array_Factor(theta);

theta = linspace(-pi, pi, 1000);

E_eval = abs(eval(Electric_Trans));
E_eval = E_eval ./ max(E_eval);
E_eval = 20.0 .* log10(E_eval);
E_eval(E_eval < -20) = -20;
polarplot(theta, E_eval);
rlim([-20, 0]);