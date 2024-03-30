clear all
close all
clc

syms theta

f = figure;
f.Position = [0,0,1280,720];
centerfig(f);

 Element_Factor(theta) = cos(theta);
%Element_Factor(theta, phi) = sqrt(cos(phi)^2*sin(theta)^2+cos(theta)^2);

Array_Factor(theta) = 0.9*exp(j*0.4*pi*(-cos(theta) + 1)) + ...
    1 + ...
    0.7*exp(j*0.6*pi*(cos(theta) - 1)) + ...
    0.5*exp(j*pi*(cos(theta) - 1));

Electric_Trans(theta) = Element_Factor(theta) * Array_Factor(theta);

% Find the front-to-back ratio in the radiation pattern. 
U_inten = matlabFunction( abs(Electric_Trans ^ 2) );
Prad = matlabFunction(abs(U_inten * sin(theta)));
Prad_value = 2*pi*integral(Prad, 0, pi);
[theta_max,  Umax] = find_max_U(U_inten);
U0 = (4*pi)/Prad_value;
Gain_0degree = abs(U_inten(0))/U0;
Gain_180degree = abs(U_inten(pi))/U0;
fprintf("Front to back ratio is %f\n", Gain_0degree/Gain_180degree);

D0 = (4*pi*Umax)/Prad_value;
fprintf("D0 = %.2f --- D0(dB) = %.2f\n", D0, 10*log10(D0));
theta = linspace(-pi, pi, 1000);

E_eval = abs(eval(Electric_Trans));
E_eval = E_eval ./ max(E_eval);
E_eval = 20.0 .* log10(E_eval);
E_eval(E_eval < -20) = -20;
polarplot(theta, E_eval);
rlim([-20, 0]);
title("E Plane Radiation Pattern " + sprintf("D_{0} = %.2f --- D_{0}(dB) = %.2f\n", D0, 10*log10(D0)));

function [theta_max, U_max] = find_max_U(U_func)
    % Define a nested function to be minimized
    neg_U_func = @(x) -U_func(x(1));

    % Initial guess for theta
    x0 = [0];

    % Perform the optimization
    [x_max, U_max] = fminsearch(neg_U_func, x0);

    % Extract theta_max and phi_max
    theta_max = x_max(1);
    U_max = -U_max;
end