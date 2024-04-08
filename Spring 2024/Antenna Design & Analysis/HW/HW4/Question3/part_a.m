close all
clear all
clc
syms n theta
lambda = 1;
d = 0.62 * lambda;
l = 0.62 * lambda * 6 * 2;
u = cos(theta) * (pi*l)/lambda;

SF_cosine_squared(theta) = (  pi^2 / (pi^2 - u^2) ) * (l/2)*sin(u)/u;
SF_uniform(theta) = l * sin(u)/u;

t = [0.38];
for i=1:1:length(t)
    SF(theta) = t(i)*SF_uniform(theta) + SF_cosine_squared(theta);
    
    theta1 = linspace(0, pi, 1000);
    SF_points = eval(SF(theta1));
    SF_points = SF_points ./ max(SF_points);
    SF_points = 20.0 .* log10(vpa(abs(SF_points), 9));
    %SF_points(SF_points < -40) = -40;
    %polarplot(theta1, SF_points);
    plot(theta1, SF_points);
    %rlim([-40, 0]);
    hold on

    db3 = zeros(1, length(SF_points)) - 3;
    polarplot(theta1, db3);

    SLL = findLobelLevel(eval(SF_points));
    disp(SLL);

    [peakIndex, leftIndex, rightIndex, hpbw] = findPoints(theta1, eval(SF_points))
    
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