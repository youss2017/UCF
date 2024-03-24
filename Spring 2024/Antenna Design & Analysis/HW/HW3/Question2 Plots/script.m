clear all;
close all;
clc;

list = linspace(0.7, 1.0, 4);
f = figure;
f.Position = [0, 0, 1280, 720];
centerfig(f);

for i=1:1:length(list)
    d = list(i);
    kd = (2*pi)*d;
    %theta = 0.1;
    %phi = 0;
    
    clear AF
    syms theta phi
    
    AF(theta, phi) = exp((1j*kd/sqrt(2))*(sin(theta)*cos(phi) + sin(theta)*sin(phi))) + ...
        exp((1j*kd/sqrt(2))*(-sin(theta)*cos(phi) + sin(theta)*sin(phi))) + ...
        exp((-1j*kd/sqrt(2))*(sin(theta)*cos(phi) + sin(theta)*sin(phi))) + ...
        exp((1j*kd/sqrt(2))*(sin(theta)*cos(phi) - sin(theta)*sin(phi)));
    
    theta = linspace(-pi/4, pi/4, 1000);
    phi = 0;
    
    AF_eval = eval(AF) .^ 2;
    AF_eval = AF_eval ./ max(AF_eval);
    polarplot(theta,10.0.*log10(abs(AF_eval)),  "DisplayName", sprintf("d=%.2f", d));
    hold on;
    %AF_matlab = matlabFunction(eval(-AF));
    %x = fminbnd(AF_matlab, 0.5, 1.0);

end
rlim([-15, 0]);
legend();