clear all
clc
close all
syms theta phi lambda

k = (2*pi);
dx = 1/4;
dy = 1/4;
xterm = dx*sin(theta)*cos(phi);
yterm = dy*sin(theta)*sin(phi);

AF = abs(-1 - exp(1j*k*xterm) + exp(2j*k*yterm) + exp(1j*k*(xterm + 2*yterm)));

x = AF*sin(theta)*cos(phi);
y = AF*sin(theta)*sin(phi);
z = AF*cos(theta);

fsurf(x,y,z,[0 pi 0 2*pi]);

%AF_eval = abs(eval(AF));
%AF_eval = AF_eval ./ max(AF_eval);
%polarplot(theta, AF_eval);
