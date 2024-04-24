clear all
close all
clc
syms theta phi lambda
a=5*lambda;
b=8*lambda;
k=(2*pi)/lambda;

X(theta, phi) = (k*a/2) * sin(theta) * cos(phi);
Y(theta, phi) = (k*b/2) * sin(theta) * sin(phi);
%C = 1j * a * b * k / (2*pi);

E_theta(theta, phi) = sin(pi/2) * ...
                        ( cos(  X(theta, phi)  ) / ( (X(theta, phi)) ^ 2 - (pi/2)^2 ) ) * ...
                        (  sin(Y(theta, phi)) / Y(theta, phi) );

E_phi(theta, phi) = cos(theta) * cos(phi) * ...
                    (  cos(X(theta, phi)) / ( (X(theta, phi))^2 - (pi/2)^2  )  ) * ...
                    (  sin(Y(theta, phi)) / Y(theta, phi) );

AF(theta, phi) = 2j*sin(8*pi*sin(theta)*cos(phi));
E(theta, phi) = sqrt( abs(E_theta(theta, phi))^2 + abs(E_phi(theta, phi))^2 ) * AF(theta, phi);
E1 = matlabFunction(E);
% E-Plane
phi1 = linspace(0.01, .99*pi, 1000);
theta1 = zeros(1, length(phi1)) + deg2rad(90);
EPlane = E1(theta1, phi1);
EPlane = abs(EPlane) ./ max(abs(EPlane));
EPlane = abs(EPlane) .^ 2;
EPlane = 10 .* log10(EPlane);
EPlane(EPlane < -31) = -31;
plot(rad2deg(phi1), EPlane, "DisplayName", "E-Plane");
ylim([-30, 0]);
hold on;

% H-Plane
theta1 = linspace(0.01, .99*pi, 1000);
phi1 = zeros(1, length(theta1)) + deg2rad(90);
HPlane = E1(theta1, phi1);
HPlane = abs(HPlane) ./ max(abs(HPlane));
HPlane = abs(HPlane) .^ 2;
HPlane = 10 .* log10(HPlane);
HPlane(HPlane < -31) = -31;
plot(rad2deg(theta1), HPlane, "DisplayName", "H-Plane");
ylim([-30, 0]);
grid on
title("E and H Plane", "FontSize", 18);
legend();

D0 = 10 * log10(compute_directivity(AF));


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