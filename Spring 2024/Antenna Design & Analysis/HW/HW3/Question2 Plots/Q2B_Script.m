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

k_0 = (2*pi)/lambda;
L_0 = sqrt(S^2 + C^2);
p = (L_0/lambda)/(S/lambda + 1);
psi = k_0 * (S * cos(theta) - L_0/p);

des = linspace(0, 2, 200);
Directivity = zeros([1, length(des)]);
DirectivityLobes = zeros([1, length(des)]);

%% Plot E-Plane
f = figure;
f.Position = [0, 0, 1280, 720];
centerfig(f);
d = 0.91;
syms theta phi
AF(theta, phi) = 2*cos(pi*d*sqrt(2) * sin(theta)*cos(phi)) + 2*cos(pi*d*sqrt(2)*sin(theta)*sin(phi));
ElementFactor(theta) = sin(pi/(2*N))*cos(theta)*( (sin((N/2)*psi)) / (sin(psi/2))  );
E(theta) = ElementFactor(theta) * AF(theta, phi);
% Plot E-Plane of Element Factor
theta = linspace(-pi, pi, 500);
E_eval = eval(ElementFactor);
E_eval = real(E_eval .* conj(E_eval));
E_eval = E_eval ./ max(E_eval);
E_eval = 10.0 .* log10(E_eval);
E_eval(E_eval < -40) = -40;
polarplot(theta, E_eval, "DisplayName", "Single Element");
rlim([-40, 0]);
hold on
phi = 0;
E_eval = eval(E);
E_eval = real(E_eval .* conj(E_eval));
E_eval = E_eval ./ max(E_eval);
E_eval = 10.0 .* log10(E_eval);
E_eval(E_eval < -40) = -40;
polarplot(theta, E_eval, "DisplayName", "Array Factor * Element");
rlim([-40, 0]);
title("Radiation Pattern of Single Element vs Array System");
legend();

%% Create Design Curve for Directivity
for i=1:1:length(des)
    d = des(i);
    kd = (2*pi)*(d/2);
    fprintf("%d: d=%.2f ", i, d);
    syms theta phi
    
    
    AF(theta, phi) = 2*cos(pi*d*sqrt(2) * sin(theta)*cos(phi)) + 2*cos(pi*d*sqrt(2)*sin(theta)*sin(phi));
        
    phi = 0;
    
    E(theta) = sin(pi/(2*N))*cos(theta)*( (sin((N/2)*psi)) / (sin(psi/2))  ) * AF(theta, phi);
    
    U_inten = matlabFunction( E ^ 2 );
    Prad = matlabFunction(abs(U_inten * sin(theta)));
    Prad_value = 2*pi*integral(Prad, 0, pi);
    [theta_max, Umax] = find_max_U(U_inten);
    
    D0 = 10.*log10((4*pi*Umax)/Prad_value);
    Directivity(i) = D0;
    fprintf("D0=%.2f ", D0);
    theta = linspace(-pi, pi, 500);
    E_eval = eval(E) .^ 2;
    E_eval = 10.0 .*log10(E_eval ./ max(E_eval));
    DirectivityLobes(i) = findLobelLevel(E_eval);
    fprintf("D(sideLobe)=%.2f\n", DirectivityLobes(i));
    %E_eval(E_eval < -30) = -30;
    %polarplot(theta, E_eval, "DisplayName", sprintf("d = %.2f, D0 = %.2fdB", d, D0));
    %hold on
end
 f = figure;
 f.Position = [0, 0, 1280, 720];
 centerfig(f);
yyaxis left
plot(des, Directivity, "DisplayName", "Max Directivity (dB)");
xlabel("d (in lambda)");
ylabel("D_{0} (dB)");
title("Directivity with respect to array spacing factor d");
hold on
yyaxis right
plot(des, DirectivityLobes, "DisplayName", "Sidelobe Directivity (dB)");
grid on
hold off
%rlim([-30, 0]);
%title("Directivity Design Plot");
legend("FontSize", 14)
yline(-40, '--', 'HandleVisibility','off');
xline(0.91, '--', 'HandleVisibility','off');
%yline(-20, "label", "Max Allowable Sidelobe level", "FontSize", 14)
function [theta_max, U_max] = find_max_U(U_func)
    % Define a nested function to be minimized
    neg_U_func = @(x) -U_func(x(1));

    % Initial guess for theta and phi
    x0 = 0;

    % Perform the optimization
    [x_max, U_max] = fminsearch(neg_U_func, x0);

    % Extract theta_max and phi_max
    theta_max = x_max(1);
    U_max = -U_max;

end

function lobeLevel = findLobelLevel(E_eval)
	% Find the regional maximums
    maxima_indices = find(islocalmax(E_eval));
    % Extract the regional maximums
    regional_maximums = E_eval(maxima_indices);
    % Sort the regional maximums in descending order
    sorted_regional_maximums = sort(regional_maximums, 'descend');
    % Select the second highest value
    second_highest = sorted_regional_maximums(2);
    lobeLevel = second_highest;
end
