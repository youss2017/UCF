clear all
close all
clc

W1 = 46; % mm
Le1 = 64.4; % mm
a1 = W1; % mm 
b1 = Le1; % mm


W2 = 21.4; % mm
Le2 = 29.9; % mm
a2 = W2; % mm 
b2 = Le2; % mm

W = W1; % mm
Le = Le1; % mm
a = W1; % mm 
b = Le1; % mm

lambda = (3e8/1.58e9) * 1e3; % lambda in mm
k0 = (2*pi)/lambda;
h = (1/100) * lambda;
syms theta phi

%% Part C
% E-Plane
E(phi) = sin(k0 * h * cos(phi) / 2) * cos(k0 * b * sin(phi) / 2) / (k0 * h * cos(phi) / 2);
phi1 = linspace(0, 2*pi, 100);
EPlane = E(phi1);
EPlane = EPlane ./ max(EPlane);
EPlane = abs(EPlane) .^ 2;
EPlane = 10.0 .* log10(EPlane);
polarplot(phi1, EPlane);
rlim([-30, 0]);
title("E-Plane (\epsilon=10.2) \theta=90\circ", "FontSize", 18);
grid on;
D_Eplane = 10.0*log10(compute_directivity(E));
disp(D_Eplane);
% H-Plane
figure;
E(theta) = sin(theta) * sin(k0*h*sin(theta)/2)*sin(k0*W*cos(theta)/2)/(k0*k0*h*W*sin(theta)*cos(theta)/4);
theta1 = linspace(0, pi, 100);
HPlane = E(theta1);
HPlane = HPlane ./ max(HPlane);
HPlane = abs(HPlane) .^ 2;
HPlane = 10 .* log10(HPlane);
polarplot(theta1, HPlane);
rlim([-30, 0]);
title("H-Plane (\epsilon=10.2) \phi=52\circ", "FontSize", 18);
grid on;
D_Hplane = 10.0*log10(compute_directivity(E));
disp(D_Hplane);

%% Utilites
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
        % Perform the optimization
        options = optimset('Display','iter');
        %  Bug in MATLAB
        xValue = fminbnd(neg_U_func, -pi, pi, options);
        % Extract theta_max and phi_max
        theta_max = xValue;
        U_max = U_func(xValue);
        phi_max = 0;
    else
        error('Incorrect number of input arguments.');
    end
end

function D0 = compute_directivity(field)
    if nargin(matlabFunction(field)) == 2
        syms theta phi
        U_inten = matlabFunction(abs(field) .^ 2);
        Prad = matlabFunction(U_inten(theta, phi) * sin(theta), 'Vars', {theta, phi});
        Prad_value = integral2(Prad, 0, pi, 0, 2*pi);
        [~, ~, Umax] = findUmax(U_inten);

        D0 = (4*pi*Umax)/Prad_value;
    elseif nargin(matlabFunction(field)) == 1
        syms theta
        U_inten = matlabFunction(abs(field) .^ 2);
        Prad = matlabFunction(U_inten(theta) * sin(theta), 'Vars', {theta});
        Prad_value = 2*pi*integral(Prad, 0, pi);
        [~, ~, Umax] = findUmax(U_inten);

        D0 = (4*pi*Umax)/Prad_value;
    else
        error('Incorrect number of input arguments.');
    end
end