clear all
close all
clc
% https://www.desmos.com/calculator/7dmxksal1e
%% Design Parameters
lambda = 299792458/800e6;
C = lambda;
alpha = 13.5;
S = C * tan(deg2rad(alpha));
N = 5;
D_0 = 10*log10(15*N*(C^2*S)/(lambda^3));
HPBW = ((52*lambda^(3/2))/(C*sqrt(N*S)));

f = figure;
f.Position = [0,0,1280,720];
centerfig(f);

%% E-Plane Plot
syms theta
k_0 = (2*pi)/lambda;
L_0 = sqrt(S^2 + C^2);
p = (L_0/lambda)/(S/lambda + 1);
psi = k_0 * (S * cos(theta) - L_0/p);

E(theta) = sin(pi/(2*N))*cos(theta)*( (sin((N/2)*psi)) / (sin(psi/2))  );
theta = linspace(-pi, pi, 1000);
E_eval = eval(E) .^ 2;
E_eval = 10.0 .*log10(E_eval ./ max(E_eval));
E_eval(E_eval < -30) = -30;
polarplot(theta, E_eval);
rlim([-30, 0]);
title("E Plane, phi=pi/2")
