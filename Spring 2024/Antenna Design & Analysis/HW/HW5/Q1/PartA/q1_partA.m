clear all
close all
clc
syms lambda l x
k = (2*pi)/lambda;

a = 0.004*lambda;
Cin(x) = cosint(x);
Si(x) = sinint(x);

C(x) = log(2*x/(a*k)) - 0.5*Cin(2*x) - (1j/2)*Si(2*x);
S(x) = 0.5*Si(2*x) - (1j/2)*Cin(2*x) - k*a;

Z(l) = ((60j)/(sin(k*lambda*l)^2)) * ( ...
        4*(cos(k*lambda*l))^2 * S(k*lambda*l) ...
    - cos(2*k*lambda*l)*S(2*k*lambda*l) - ...
    sin(2*k*lambda*l) * ( 2*C(k*lambda*l) - C(2*k*lambda*l) )  );

% Z = (120*pi*120*pi)/(4*Z);

l1 = linspace(0.001, .9999, 1000);
Z_eval = matlabFunction(Z);
Z_eval = Z_eval(l1)
plot(l1, abs(real(Z_eval)) );
ylim([-300, 300]);
hold on
yyaxis right
plot(l1, imag(Z_eval));
ylim([-300, 300]);
%for t=1:1:length(l1)
%    l1(t)
%    Z_eval = eval(subs(Z, l, l1(t)))
%end