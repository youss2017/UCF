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

%% E-Plane Plot
syms theta
k_0 = (2*pi)/lambda;
L_0 = sqrt(S^2 + C^2);
p = (L_0/lambda)/(S/lambda + 1);
psi = k_0 * (S * cos(theta) - L_0/p);

E(theta) = sin(pi/(2*N))*cos(theta)*( (sin((N/2)*psi)) / (sin(psi/2))  );

list = linspace(0.7, 1.0, 4);
f = figure;
f.Position = [0, 0, 1280, 720];
centerfig(f);

for i=1:1:length(list)
    d = list(i);
    kd = (2*pi)*(d/2);
    %theta = 0.1;
    %phi = 0;
    
    clear AF
    syms theta phi
    
    AF(theta, phi) = 2*cos( (kd*sqrt(2)) * ( sin(theta)*cos(phi) + sin(theta)*sin(phi) ) ) + ...
        2*cos( (kd*sqrt(2)) * ( -sin(theta)*cos(phi) + sin(theta)*sin(phi) ) );
    
    Electric_Trans(theta) = E(theta);

    theta = linspace(-pi, pi, 1000);
    phi = pi/2;
    
    AF_eval = abs(eval(Electric_Trans) .^ 2);
    AF_eval = AF_eval ./ max(AF_eval);
    AF_eval = 10.0 .* log10(AF_eval);
    AF_eval(AF_eval < -15) = -15;
    polarplot(theta, AF_eval,  "DisplayName", sprintf("d=%.2f", d));
    hold on;
    %AF_matlab = matlabFunction(eval(-AF));
    %x = fminbnd(AF_matlab, 0.5, 1.0);

end
rlim([-15, 0]);
legend();