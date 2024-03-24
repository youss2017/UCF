close all
clear all
clc
syms theta phi
syms lambda 

x = [0.5];
for i=1:length(x)
    v = x(i)
    k = 2 * pi / lambda;
    k = k / v;
    s = lambda / 2;
    
    % Plotting
    th = linspace(-pi, pi, 720);
    ph = linspace(0, 2*pi, 720);
    
    EF(theta, phi) = sin(theta);
    AF(theta, phi) = 2 * ( cos(s * k * sin(theta) * sin(phi)) - cos(s * k * sin(theta) * cos(phi)) );
    Et(theta, phi) = EF(theta, phi) * AF(theta, phi)
    
    % Finding D0
    intensity(theta,phi) = Et(theta,phi)^2;
    U = matlabFunction(Et(theta,phi)^2);
    UPrad = matlabFunction(Et(theta,phi)^2 * sin(theta));
    Prad = integral2(UPrad, 0, 2*pi, 0, pi)
    Umax1 = intensity(pi/2, 0);
    D0 = vpa(4 * pi *  Umax1/ Prad,3)
    
    % Plotting E plane
    Eplane(theta) = abs(Et(theta,pi/2))
    Eplaneplot = abs(Eplane(th));
    Eplanemax = max(Eplaneplot);
    EplanedB = 20 * log10 (Eplaneplot / Eplanemax);
    EplanedB(EplanedB < -15) = -15;
    
    %figure();
    vstring = string(v)
    polarplot(th, EplanedB, 'displayname', vstring)
    hold on
    rlim([-15 0])
    title("Normalized Eplane")
end