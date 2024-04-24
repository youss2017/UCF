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
EPlaneC = E(phi1);
EPlaneC = EPlaneC ./ max(EPlaneC);
EPlaneC = abs(EPlaneC) .^ 2;
EPlaneC = 10.0 .* log10(EPlaneC);
polarplot(phi1, EPlaneC);
rlim([-30, 0]);
title("E-Plane (\epsilon=10.2) \theta=90\circ", "FontSize", 18);
grid on;
D_Eplane = 10.0*log10(compute_directivity(E));
disp(D_Eplane);
% H-Plane
figure;
E(theta) = sin(theta) * sin(k0*h*sin(theta)/2)*sin(k0*W*cos(theta)/2)/(k0*k0*h*W*sin(theta)*cos(theta)/4);
theta1 = linspace(0, pi, 100);
HPlaneC = E(theta1);
HPlaneC = HPlaneC ./ max(HPlaneC);
HPlaneC = abs(HPlaneC) .^ 2;
HPlaneC = 10 .* log10(HPlaneC);
polarplot(theta1, HPlaneC);
rlim([-30, 0]);
title("H-Plane (\epsilon=10.2) \phi=52\circ", "FontSize", 18);
grid on;
D_Hplane = 10.0*log10(compute_directivity(E));
disp(D_Hplane);

W = 46; % mm
Le = 64.4; % mm
a = W; % mm 
b = Le; % mm
lambda = (3e8/1.58e9) * 1e3; % lambda in mm
k0 = (2*pi)/lambda;
h = (1/100) * lambda;
syms theta phi

%% Part D
% E-Plane
X(theta, phi) = (k0*h/2) * sin(theta) * cos(phi);
Y(theta, phi) = (k0 * W / 2) * sin(theta) * sin(phi);
E_phi(theta, phi) = ( (Y(theta, phi) * cos(theta) * sin(phi)) * ...
                    ( sin( X(theta, phi) ) / X(theta, phi) ) * ...
                    ( cos( Y(theta, phi) ) / ( (Y(theta, phi))^2 - (pi/2)^2 ) ) ) * ...
                    exp(1j*(  X(theta, phi) + Y(theta, phi) ));
D0 = 10*log10(compute_directivity(E_phi))
theta1 = linspace(0, pi, 100);
phi1 = zeros(1, length(theta1)) + deg2rad(52);
EPlane = E_phi(theta1, phi1);
EPlane = EPlane ./ max(EPlaneC);
EPlane = abs(EPlane) .^ 2;
EPlane = 10 .* log10(EPlane);
EPlane(EPlane < -30) = -30;

figure
polarplot(theta1, EPlane);
hold on
polarplot(theta1, EPlaneC);
rlim([-30, 0]);

figure
polarplot(theta1, HPlaneC);
hold on
polarplot(theta1, EPlaneC);
rlim([-30, 0]);

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