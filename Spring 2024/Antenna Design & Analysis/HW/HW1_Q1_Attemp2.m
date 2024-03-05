clear all
clc
close all
E = @(theta) sin(theta);
AF = @(theta) (1 + 2*cos(1.2*pi*cos(theta)));

theta = linspace(-pi, pi, 100);

ERad = abs(E(theta) .* AF(theta));
ERad = ERad ./ max(ERad);
half_pwr = zeros(length(ERad), 1) + 1/sqrt(2);

polarplot(theta, ERad);
hold on;
polarplot(theta, half_pwr);

U = @(theta, phi) abs( (E(theta) .* AF(theta) .* conj(E(theta) .* AF(theta))) .* sin(theta));
Prad = integral2(U, 0, pi, 0, 2*pi);
Umax = fminbnd(@(x) -U(x), 0, pi);
D0 = (4*pi*Umax)/Prad;