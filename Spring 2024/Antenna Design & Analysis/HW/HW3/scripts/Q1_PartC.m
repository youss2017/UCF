clear all;
close all;
clc;

%% E Plane
f = figure;
f.Position = [0, 0, 1280, 720];
spacing = [0.66, 0.8, 1.2, 1.5];
centerfig(f);

for i=1:1:length(spacing)
    %% Field Definition
    syms theta phi

    v = spacing(i);
    k = 2 * pi / 1;
    k = k / v;
    s = 1 / 2;
    ks = k * s;
    %ks = 2*pi*spacing(i);

    AF(theta, phi) = 2*(cos(ks*sin(theta)*sin(phi)) - cos(ks*sin(theta)*cos(phi)));
    E(theta, phi) = sin(theta) * AF(theta, phi);

    phi = pi/2;
    theta = linspace(0, pi, 1000);
    
    E_eval = abs(eval(E(theta, phi) .^ 2));
    E_plot = 10.0 * log10(E_eval ./ max(E_eval));
    E_plot(E_plot < -15) = -15;
    polarplot(theta, E_plot, 'DisplayName', sprintf("%.2ff_{0}", spacing(i)));
    hold on;
end
title("Question 1, Part C) E Plane(s), phi=pi/2");
rlim([-15, 0]);
legend();

half_pwr = zeros([1, length(theta)]) - 3;
polarplot(theta, half_pwr, "DisplayName", "Half Power");
