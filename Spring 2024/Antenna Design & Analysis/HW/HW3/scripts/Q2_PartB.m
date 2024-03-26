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
 syms theta phi
 f = figure;
 f.Position = [0, 0, 1280, 720];
 centerfig(f);

k_0 = (2*pi)/lambda;
L_0 = sqrt(S^2 + C^2);
p = (L_0/lambda)/(S/lambda + 1);
psi = k_0 * (S * cos(theta) - L_0/p);

des = linspace(0.7, 1.2, 6);

for i=1:1:length(des)
    d = des(i);
    kd = (2*pi)*(d/2);

    syms theta phi
    
    
    AF(theta, phi) = 2*cos(pi*d*sqrt(2) * sin(theta)*cos(phi)) + 2*cos(pi*d*sqrt(2)*sin(theta)*sin(phi));
        
    phi = 0;
    
    E(theta) = sin(pi/(2*N))*cos(theta)*( (sin((N/2)*psi)) / (sin(psi/2))  ) * AF(theta, phi);
    
    U_inten = matlabFunction( E ^ 2 );
    Prad = matlabFunction(abs(U_inten * sin(theta)));
    Prad_value = 2*pi*integral(Prad, 0, pi);
    [theta_max, Umax] = find_max_U(U_inten);
    
    D0 = (4*pi*Umax)/Prad_value;

    theta = linspace(-pi, pi, 1000);
    E_eval = eval(E) .^ 2;
    E_eval = 10.0 .*log10(E_eval ./ max(E_eval));
    E_eval(E_eval < -30) = -30;
    polarplot(theta, E_eval, "DisplayName", sprintf("d = %.2f, D0 = %.2fdB", d, D0));
    hold on
end
rlim([-30, 0]);
title("Directivity Design Plot");
legend();

function [theta_max, U_max] = find_max_U(U_func)
    % Define a nested function to be minimized
    neg_U_func = @(x) -U_func(x(1));

    % Initial guess for theta and phi
    x0 = [0];

    % Perform the optimization
    [x_max, U_max] = fminsearch(neg_U_func, x0);

    % Extract theta_max and phi_max
    theta_max = x_max(1);
    U_max = -U_max;

end
