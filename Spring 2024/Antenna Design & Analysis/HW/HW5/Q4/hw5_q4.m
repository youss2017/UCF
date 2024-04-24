clear all
close all
clc

syms theta phi lambda
X(theta, phi) = 6*pi*sin(theta)*sin(phi);
Y(theta, phi) = 8*pi*sin(theta)*sin(phi);
a = 6*lambda;
k = 2*pi/lambda;

alpha = (pi/4) / (a/2)^2;

fx(theta, phi) = sin(X(theta, phi))/X(theta, phi) * sin(Y(theta, phi))/Y(theta, phi) + ...
    alpha*1j* sin(Y(theta, phi))/Y(theta, phi) * ...
    ((2-X(theta, phi)^2)*sin(X(theta, phi)) - 2*X(theta, phi)*cos(X(theta, phi)))/(k^2 * X(theta, phi));

Etheta(theta, phi) = 1j * fx(theta, phi) * sin(phi);
Ephi(theta, phi) = 1j * fx(theta, phi) * cos(theta) * cos(phi);
E(theta, phi) = sqrt( abs(Etheta(theta, phi))^2 + abs(Ephi(theta, phi))^2 );
E1 = matlabFunction(E);

% H-Plane (theta=0)
phi1 = linspace(0.01, 1.99*pi, 1000);
theta1 = zeros(1, length(phi1)) + pi/3;
HPlane = E1(theta1, phi1);
HPlane = abs(HPlane) ./ max(abs(HPlane));
HPlane = abs(HPlane) .^ 2;
HPlane = 10 .* log10(HPlane);
HPlane(HPlane < -31) = -31;
polarplot(phi1, HPlane);
rlim([-30, 0]);
