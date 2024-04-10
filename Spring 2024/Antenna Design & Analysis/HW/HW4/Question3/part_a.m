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


t = linspace(0.1, 0.5, 50);
t = [0.255, 0.255];
betas = [55, 55];
loss_factor = [1, 0.9676];
SLLs = zeros(1, length(t));
previous_max = 0;
for i=1:1:length(t)
    %SF(theta) = t(i)*SF_uniform(theta) + SF_cosine_squared(theta);
    E = t(i);
    n = -6:1:6;
    Amp(z) = loss_factor(i) * (E + (1-E)*(cos(z*pi/l))^2);
    k = (2*pi)/lambda;
    beta = -k*d*n*cos(deg2rad(betas(i)));
    A = Amp(d*n);
    if i == 2
        for idx=1:1:length(beta)
            A(idx) = lossFactor(rad2deg(beta(idx))) * A(idx);
            beta(idx) = deg2rad(digitizedPhase(rad2deg(beta(idx))));
        end
    end
    AF(theta) = sum(A .* exp(1j*k*d*n*cos(theta) + 1j*beta) );
    SF = matlabFunction(AF);
    
    theta1 = linspace(0, pi, 512);
    SF_points = (SF(theta1));
    if i == 1
        previous_max = max(SF_points);
    end
    SF_points = SF_points ./ previous_max;

    SF_points = 20.0 .* log10(vpa(abs(SF_points), 9));
    %SF_points(SF_points < -40) = -40;
    %polarplot(theta1, SF_points);
    %%plot(rad2deg(theta1), SF_points, "DisplayName", sprintf("%d^\\circ", betas(i)));
    plot(rad2deg(theta1), SF_points, "DisplayName", sprintf("%f loss\\circ", 20.0*log10(loss_factor(i))));
    yline(-3, '--', 'Half Power', 'HandleVisibility', 'off');
    yline(-27, '--', 'DisplayName', 'Target SLL', 'LineWidth', 2, 'HandleVisibility', 'off');
    title('Array Factor Pattern', 'FontSize', 18)
    xlabel("\theta\circ (deg)", 'FontSize', 16);
    ylabel("dBi", 'FontSize', 16);
    ylim([-40, 0]);
    %xlim([0, 180]);
    grid on;
    %rlim([-40, 0]);
    hold on

    % db3 = zeros(1, length(SF_points)) - 3;
    %polarplot(theta1, db3);

    SLL = findLobelLevel(eval(SF_points));
    SLLs(i) = SLL;
    disp(SLL);

    % [peakIndex, leftIndex, rightIndex, hpbw] = findPoints(theta1, eval(SF_points))
    
end
legend();
return;

figure
plot(t, SLLs, 'LineWidth', 2);

grid on
title('E Affect on SLL', 'FontSize', 18);
xlabel('E value')
ylabel('SLL')
xlabel('E value', 'FontSize', 14)
ylabel('SLL', 'FontSize', 14)

figure
i=-6:1:6;
plot(i, Amp(d*n))
grid on
title("Amplitude Tapering")
xlabel("Array Element Index")
ylabel("Normalized Amplitude")

function x_wrapped = wrapTo360(x)
    % Wrap x to the range [-360, 360]
    x_wrapped = mod(x, 360);
    
    % Convert negative values to their positive counterparts in the range [0, 360]
    x_wrapped(x_wrapped < 0) = x_wrapped(x_wrapped < 0) + 360;
end

function x = lossFactor(phi)
    phi = mod(phi, 360) - 360;
    if phi == -360
        phi = 0;
    end
    x = (2/315) * abs(phi);
    x = 10^(-x/20);
end

function phase = digitizedPhase(phi)
    fprintf("in(before mode): %f ", phi);
    phi = mod(phi, 360) - 360;
    if phi == -360
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
    maxima_indices = find(islocalmax(E_eval));
    % Extract the regional maximums
    regional_maximums = E_eval(maxima_indices);
    % Sort the regional maximums in descending order
    sorted_regional_maximums = sort(regional_maximums, 'descend');
    % Select the second highest value
    second_highest = sorted_regional_maximums(2);
    lobeLevel = second_highest;
end

function [peakIndex, leftIndex, rightIndex, hpbw] = findPoints(x, y)
    % Find peak index
    [~, peakIndex] = max(y);
    
    % Find left index with y closest to -3
    leftIndex = [];
    for i = peakIndex-1:-1:1
        if abs(y(i) + 3) < abs(y(peakIndex) + 3)
            leftIndex = i;
        else
            break;
        end
    end
    
    % Find right index with y closest to -3
    rightIndex = [];
    for i = peakIndex+1:length(x)
        if abs(y(i) + 3) < abs(y(peakIndex) + 3)
            rightIndex = i;
        else
            break;
        end
    end

    hpbw = abs((x(rightIndex)) - (x(leftIndex)));
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
        % Initial guess for theta
        x0 = 0;
        % Perform the optimization
        [x_max, U_max] = fminsearch(neg_U_func, x0);
        % Extract theta_max and phi_max
        theta_max = x_max(1);
        U_max = -U_max;
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

        D0 = (4*pi*U_inten(pi/2))/Prad_value;
    else
        error('Incorrect number of input arguments.');
    end
end