clear all;
close all;
clc;

%% Field Definition
syms theta phi
ks = pi;
AF(theta, phi) = 2*(cos(ks*sin(theta)*sin(phi)) - cos(ks*sin(theta)*cos(phi)));
E(theta, phi) = sin(theta) * AF(theta, phi);

%% Directivity
U_inten = matlabFunction( E(theta, phi) ^ 2 );
Prad = matlabFunction(abs(U_inten * sin(theta)));
Prad_value = integral2(Prad, 0, pi, 0, 2*pi);
[theta_max, phi_max, Umax1] = find_max_U(U_inten);
Umax = U_inten(pi/2, 0);

D0 = (4*pi*Umax)/Prad_value;
disp(D0);

%% E Plane
%E(theta, phi) = sin(theta) + 1e-100*sin(phi);

phi = pi/2;
theta = linspace(-pi, pi, 1000);

E_eval = abs(eval(E(theta, phi) .^ 2));
E_plot = 10.0 * log10(E_eval ./ max(E_eval));
E_plot(E_plot < -30) = -30;
%subplot(2, 1, 1);
polarplot(theta, E_plot);
rlim([-30, 0]);
title("Question 1, Part A) E Plane, phi=pi/2");

%% H Plane
figure
phi = linspace(0, 2*pi, 200);
theta = pi/2;

Hplane_eval = abs(eval(E(theta, phi)));
Hplane_plot = 20 .* log10(Hplane_eval / max(Hplane_eval));
Hplane_plot(Hplane_plot < -30) = -30;
%subplot(2, 1, 2);
polarplot(phi, Hplane_plot);
title("Question 1, Part A) H Plane, theta=pi/2");
rlim([-30, 0]);

function [theta_max, phi_max, U_max] = find_max_U(U_func)
    % Define a nested function to be minimized
    neg_U_func = @(x) -U_func(x(1), x(2));

    % Initial guess for theta and phi
    x0 = [0, 0];

    % Perform the optimization
    [x_max, U_max] = fminsearch(neg_U_func, x0);

    % Extract theta_max and phi_max
    theta_max = x_max(1);
    phi_max = x_max(2);
    U_max = -U_max;

    % Display the result
    %disp('Maximum value of U:');
    %disp(U_max);
    %disp('Theta and Phi at maximum value:');
    %disp(x_max);
end