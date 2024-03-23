clear all
close all
clc

ratios = [0.66, 0.8, 1.2, 1.5];
legend_str = cell(length(ratios), 1);
plot_handles = gobjects(length(ratios), 1);

for i = 1:length(ratios)
    syms theta phi % k d
    syms lambda
    d = lambda / 2;
    d = d / ratios(i);
    kd = (2*pi/lambda) * d;
    
    AF_xterm(theta, phi) = kd*sin(theta)*cos(phi);
    AF_yterm(theta, phi) = kd*sin(theta)*sin(phi);
    
    AF(theta, phi) = exp(-j*AF_xterm(theta, phi)) + exp(j*AF_yterm(theta, phi)) + exp(-j*AF_xterm(theta, phi)) + exp(j*AF_yterm(theta, phi));
    E(theta, phi) = AF(theta, phi) * sin(theta);
    
    %% Plot E Plane
    phi = pi/2;
    theta = linspace(0, pi, 1000);
    E_eval = abs(eval(E));
    E_eval = E_eval ./ max(E_eval);
    E_eval = 10.0.*log10(E_eval);
    E_eval(E_eval <-15) = -15;
    plot_handles(i) = polarplot(theta, E_eval);
    title("E plane phi=pi/2");
    hold on;
    rlim([-15, 0]);
    
    legend_str{i} = sprintf('%.2ff_{0}', ratios(i));
end

legend(plot_handles, legend_str);
