clear all
clc
close all
syms theta phi

AF(theta, phi) = -1 - exp(1j*pi*sin(theta)*cos(phi)) + exp(1j*pi*sin(theta)*sin(phi)) + exp(1j*pi*(sin(theta)*cos(phi) + sin(theta)*sin(phi)));
E(theta, phi) = AF(theta, phi) .* sin(theta);

subplot(2,2,1);
theta = linspace(-pi, pi, 300);
E_plane1 = abs(E(theta, 0));
polarplot(theta, 20.*log(E_plane1));
title("E Plane, phi=0 (No Radiation)");

subplot(2,2,2);
theta = linspace(-pi, pi, 300);
E_plane1 = abs(E(theta, pi/2));
polarplot(theta, 20.*log(E_plane1));
title("E Plane, phi=pi/2");

subplot(2,2,3);
theta = linspace(-pi, pi, 300);
E_plane1 = abs(E(theta, pi));
polarplot(theta, 20.*log(E_plane1));
title("E Plane, phi=pi (No Radiation)");

subplot(2,2,4);
theta = linspace(-pi, pi, 300);
E_plane1 = abs(E(theta, 3*pi/2));
polarplot(theta, 20.*log(E_plane1));
title("E Plane, phi=3pi/2");

figure
phi = linspace(0, 2*pi, 300);
E_plane1 = abs(E(pi/2, phi));
polarplot(theta, 20.*log(E_plane1));
title("H Plane, theta=0");
