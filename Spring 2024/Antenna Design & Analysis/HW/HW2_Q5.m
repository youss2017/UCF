clear all
clc
close all
syms theta phi lambda

k = (2*pi);
dx = 1/4;
dy = 1/4;
xterm = dx*sin(theta)*cos(phi);
yterm = dy*sin(theta)*sin(phi);

AF = (1/1.8383)*abs((-1 - exp(1j*k*xterm) + exp(2j*k*yterm) + exp(1j*k*(xterm + 2*yterm))) * sin(theta));
AF = (AF .^ 2);
AF2 = (AF .* 4*pi)./(22.14);
x = AF2*sin(theta)*cos(phi);
y = AF2*sin(theta)*sin(phi);
z = AF2*cos(theta);

S = fsurf(x,y,z,[0 pi 0 2*pi]);

theta = linspace(0, pi, 300);

%AF_eval = abs(eval(AF));
%AF_eval = AF_eval ./ max(AF_eval);
%polarplot(theta, AF_eval);
