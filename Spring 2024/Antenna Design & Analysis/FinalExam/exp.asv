clear all
close all
clc

syms lambda n theta

%% Test 1
element(n) = exp(n*lambda*1j*2*pi*cos(theta)/lambda);

AF(theta) = sum(element(1:1:11));
AF = matlabFunction(AF);

theta1 = linspace(-pi/2, pi/2, 1000);

AFpts = AF(theta1);
AFpts = abs(AFpts);
AFpts = AFpts ./ max(AFpts);
AFpts = 20.*log10(AFpts);
plot(rad2deg(theta1), AFpts);

%% Test 2
element(n) = sin(n*lambda*2*pi/lambda)