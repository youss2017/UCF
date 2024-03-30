clear all;
close all;
clc;

%% Field Definition
syms theta phi
ks = pi;
AF(theta, phi) = 2*(cos(pi*sin(theta)*sin(phi)) - cos(pi*sin(theta)*cos(phi)));
kl_2 = (2*pi) * 0.25;
Element_Factor(theta, phi) = (cos(kl_2 * cos(theta))) / sin(theta);
E(theta, phi) = Element_Factor(theta, phi) * AF(theta, phi);

%% Directivity
[Prad_value, D0] = compute_directivity(E);
disp(10*log10(D0));
disp(Prad_value);
disp(findUmax(matlabFunction(E)));

%% E Plane, phi=0, theta=[0, pi]
%E(theta, phi) = sin(theta) + 1e-100*sin(phi);

phi = 0;
theta = linspace(0.001, pi-0.001, 1000);

E_eval = abs(eval(E(theta, phi) .^ 2));
E_plot = 10.0 * log10(E_eval ./ max(E_eval));
E_plot(E_plot < -30) = -30;
%subplot(2, 1, 1);
polarplot(theta, E_plot);
rlim([-30, 0]);
title("Question 1, Part A) E-Plane, phi=0, theta=[0, pi]");

%% H Plane
figure
phi = linspace(0, 2*pi, 200);
theta = pi/2;

Hplane_eval = abs(eval(E(theta, phi)));
Hplane_plot = 20 .* log10(Hplane_eval / max(Hplane_eval));
Hplane_plot(Hplane_plot < -30) = -30;
%subplot(2, 1, 2);
polarplot(phi, Hplane_plot);
title("Question 1, Part A) H-Plane, phi=[0, 2pi] theta=pi/2");
rlim([-30, 0]);

function [theta_max, phi_max, U_max] = findUmax(U_func)
    if nargin(U_func) == 2
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
    elseif nargin(U_func) == 1
        % Define a nested function to be minimized
        neg_U_func = @(x) -U_func(x(1));
        % Initial guess for theta
        x0 = [0];
        % Perform the optimization
        [x_max, U_max] = fminsearch(neg_U_func, x0);
        % Extract theta_max and phi_max
        theta_max = x_max(1);
        U_max = -U_max;
    else
        error('Incorrect number of input arguments.');
    end
end

function [Prad_value, D0] = compute_directivity(field)
    if nargin(matlabFunction(field)) == 2
        syms theta phi
        U_inten = matlabFunction(field * conj(field));
        Prad = matlabFunction(U_inten(theta, phi) * sin(theta), 'Vars', {theta, phi});
        Prad_value = integral2(Prad, 0, pi, 0, 2*pi);
        [~, ~, Umax] = findUmax(U_inten);

        D0 = (4*pi*Umax)/Prad_value;
    elseif nargin(matlabFunction(field)) == 1
        syms theta
        U_inten = matlabFunction(field * conj(field));
        Prad = matlabFunction(U_inten(theta) * sin(theta), 'Vars', {theta});
        Prad_value = 2*pi*integral(Prad, 0, pi);
        [~, Umax] = findUmax(U_inten);

        D0 = (4*pi*Umax)/Prad_value;
    else
        error('Incorrect number of input arguments.');
    end
end
