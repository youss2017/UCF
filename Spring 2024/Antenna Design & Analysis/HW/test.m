clear all
clc
close all

syms theta
E(theta) = (sin(theta))^2; %(cos(pi/4 * cos(theta)) - cos(pi/4))./sin(theta);

 theta = linspace(0, pi, 90);
 phi = linspace(0, 2*pi, 46);
 [theta, phi] = meshgrid(theta, phi);
 A = eval(E);
 [x,y,z] = sph2cart(theta, phi, A);
 mesh(x, y, z);