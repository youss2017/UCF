clear all
close all
clc

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
EPlane = EPlane ./ max(EPlane);
EPlane = abs(EPlane) .^ 2;
EPlane = 10 .* log10(EPlane);
EPlane(EPlane < -30) = -30;

polarplot(theta1, EPlane);
rlim([-30, 0]);
title("E-Plane (\epsilon=2.2) (\theta=90\circ)", "FontSize", 18);

figure
polarplot(theta1, EPlane);
rlim([-30, 0]);
title("H-Plane (\epsilon=2.2) (\phi=90\circ)", "FontSize", 18);

figure
polarplot(theta1, EPlane);
rlim([-30, 0]);
title("E-Plane (\epsilon=10.2) (\theta=90\circ)", "FontSize", 18);

figure
polarplot(theta1, EPlane);
rlim([-30, 0]);
title("H-Plane (\epsilon=10.2) (\phi=52\circ)", "FontSize", 18);

% H-Plane
E_theta(theta, phi) = ( Y(theta, phi) * cos(phi) * ...
                        ( sin(X(theta, phi)) / X(theta, phi) ) * ...
                        ( cos(Y(theta, phi)) / ( (Y(theta, phi))^2 - (pi/2)^2 )  ) ) * ...
                        exp(1j*(X(theta,phi) + Y(theta, phi)));

phi2 = linspace(0, 2*pi, 100);
theta2 = zeros(1, length(phi2)) + deg2rad(90);

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