close all
clear all
clc
syms n theta z
lambda = 1;
d = 0.62 * lambda;
l = 0.62 * lambda * 6 * 2;
u = cos(theta) * (pi*d)/lambda;

%SF_cosine_squared(theta) = (  pi^2 / (pi^2 - u^2) ) * (l/2)*sin(u)/u;
%SF_uniform(theta) = l * sin(u)/u;


% t = linspace(0.1, 0.5, 100);
t = [0.258, 0.258];
betas = [55, 55];
SLLs = zeros(1, length(t));
previous_max = 0;
ideal_SF = [];
digitied_SF = [];
for i=1:1:2
    E = t(i);
    n = -6:1:6;
    Amp(z) = (E + (1-E)*(cos(z*pi/l))^2);
    k = (2*pi)/lambda;
    beta = -k*d*n*cos(deg2rad(betas(i)));
    A = Amp(d*n);
    if i == 2
        for idx=1:1:length(beta)
            beta(idx) = deg2rad(digitizedPhase(rad2deg(beta(idx))));
            A(idx) = lossFactor(rad2deg(beta(idx))) * A(idx);
        end
    end
    AF(theta) = sum(A .* exp(1j*k*d*n*cos(theta) + 1j*beta) );
    SF = matlabFunction(AF);

    D0 = compute_directivity(AF)
    
    theta1 = linspace(0, pi, 2048);
    SF_points = (SF(theta1));

    if i == 1
        previous_max = max(SF_points);
    end
    SF_points = SF_points ./ previous_max; %max(SF_points);

    SF_points = 20.0 .* log10(vpa(abs(SF_points), 9));

    half_power = eval(max(SF_points) - 3);

    if i == 1
        ideal_SF = SF_points;
    elseif i == 2
        digitied_SF = SF_points;
    end

    %polarplot(theta1, SF_points);
    %plot(rad2deg(theta1), SF_points, "DisplayName", sprintf("%d^\\circ", betas(i)));
    plot(rad2deg(theta1), SF_points);
    if i == 2
        yline(half_power, '--', 'Half Power', 'HandleVisibility', 'off', 'Color', '#D95319');
    else
        yline(half_power, '--', 'Half Power', 'HandleVisibility', 'off', 'Color', '#0072BD');
    end
    yline(-27, '--', 'DisplayName', 'Desired SLL', 'LineWidth', 2, 'HandleVisibility', 'off');
    title('Array Factor Pattern', 'FontSize', 18)
    xlabel("\theta\circ (deg)", 'FontSize', 16);
    ylabel("dBi", 'FontSize', 16);
    ylim([-40, 0]);
    xlim([0, 180]);
    grid on;
    hold on

    SLL = findLobelLevel(eval(SF_points));
    SLLs(i) = SLL;
    disp(SLL);

end

figure;
theta1 = linspace(0, pi, 2048);
pattern_error = abs(ideal_SF - digitied_SF);
plot(rad2deg(theta1), pattern_error);
title('Pattern Error due to digitizer when scanning to 55\circ', 'FontSize', 18)
xlabel("\theta\circ (deg)", 'FontSize', 16);
ylabel("Error (dBi)", 'FontSize', 16);
grid on

figure
plot(t, SLLs, 'LineWidth', 2);

grid on
title('|I_{0}| Affect on SLL', 'FontSize', 18);
xlabel('|I_{0}| value', 'FontSize', 14)
ylabel('SLL (dBi)', 'FontSize', 14)
yline(-27, '--', 'LineWidth', 2)

figure
i=-6:1:6;
plot(i, Amp(d*n))
grid on
title("Amplitude Tapering", 'FontSize', 18)
xlabel("Array Element Index", 'FontSize', 14)
ylabel("Normalized Amplitude", 'FontSize', 14)

function x = lossFactor(phi)
    phi = mod(phi, 360) - 360;
    if phi < -359
        phi = 0;
    end
    fprintf("phi=%f ", phi);
    x = (2/315) * abs(phi);
    x = 10^(-x/20);
    fprintf("x=%f\n", x);
end

function phase = digitizedPhase(phi)
    fprintf("in(before mode): %f ", phi);
    phi = mod(phi, 360) - 360;
    if phi < -359
        phi = 0;
    end
    allowed_phase = linspace(0, 315, 8);
    allowed_phase = [-allowed_phase, allowed_phase];
    % Calculate absolute differences
    current_min = 360;
    idx = 1;
    for i=1:1:length(allowed_phase)
        if abs(allowed_phase(i) - phi) < current_min
            idx = i;
            current_min = abs(allowed_phase(i) - phi);
        end
    end
    phase = allowed_phase(idx);
    fprintf("in: %f out: %f\n", phi, phase);
end

function lobeLevel = findLobelLevel(E_eval)
    % Find the regional maximums
    maxima_indices = islocalmax(E_eval);
    % Extract the regional maximums
    regional_maximums = E_eval(maxima_indices);
    % Sort the regional maximums in descending order
    sorted_regional_maximums = sort(regional_maximums, 'descend');
    % Select the second highest value
    second_highest = sorted_regional_maximums(2);
    lobeLevel = second_highest;
end

function [theta_max, phi_max, U_max] = findUmax(U_func)
    if nargin(U_func) == 2
        % Define a nested function to be minimized
        neg_U_func = @(x) -U_func(x(1), x(2));
        % Initial guess for theta and phi
        x0 = [0, 0];
        % Perform the optimization
        [x_max, U_max] = fminsearch(neg_U_func, x0);
        % Extract theta_max and phi_max
        theta_max = x_max(1);
        phi_max = x_max(2);
        U_max = -U_max;
    elseif nargin(U_func) == 1
        % Define a nested function to be minimized
        neg_U_func = @(x) -U_func(x(1));
        % Perform the optimization
        options = optimset('Display','iter');
        %  Bug in MATLAB
        xValue = fminbnd(neg_U_func, -pi, pi, options);
        % Extract theta_max and phi_max
        theta_max = xValue;
        U_max = U_func(xValue);
        phi_max = 0;
    else
        error('Incorrect number of input arguments.');
    end
end

function D0 = compute_directivity(field)
    if nargin(matlabFunction(field)) == 2
        syms theta phi
        U_inten = matlabFunction(abs(field) .^ 2);
        Prad = matlabFunction(U_inten(theta, phi) * sin(theta), 'Vars', {theta, phi});
        Prad_value = integral2(Prad, 0, pi, 0, 2*pi);
        [~, ~, Umax] = findUmax(U_inten);

        D0 = (4*pi*Umax)/Prad_value;
    elseif nargin(matlabFunction(field)) == 1
        syms theta
        U_inten = matlabFunction(abs(field) .^ 2);
        Prad = matlabFunction(U_inten(theta) * sin(theta), 'Vars', {theta});
        Prad_value = 2*pi*integral(Prad, 0, pi);
        [~, ~, Umax] = findUmax(U_inten);

        D0 = (4*pi*Umax)/Prad_value;
    else
        error('Incorrect number of input arguments.');
    end
end