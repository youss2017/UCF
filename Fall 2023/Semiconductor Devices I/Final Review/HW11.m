clear all;
clc;
k_j = 1.380649e-23;
k_ev = 	8.6173e-5;
e_0cm = 8.854187817e-14; % C²/(N * cm^1)
e_0 = 8.854187817e-12; % C²/(N * m^1)
e_r = 11.8;
q = 1.602176634e-19; % C
e_cm = e_0cm*e_r;
VT = k_j*300/q;
%VT = 26e-3;

%% Question 1


%% Question 2
xp0 = 0.5e-4;
syms Nd
Na = 1e16;
eq1 = xp0 == sqrt(2*e_cm*(25)*(Nd/Na)/(q*(Na+Nd)));
Nd = solve(eq1, Nd);
disp(PNSizeXn0(Na, Nd, -25));

function V0 = BuiltinVoltage(Na, Nd)
    k_j = 1.380649e-23;
    q = 1.602176634e-19; % C
    VT = ((k_j*300)/q);
    V0 = VT*log(Na*Nd/(2.25e20));
end

% cm
function W = PNSizeW(Na, Nd, V)
    e_0cm = 8.854187817e-14; % C²/(N * cm^1)
    e_r = 11.8;
    q = 1.602176634e-19; % C
    e_cm = e_0cm*e_r;
    V0 = BuiltinVoltage(Na,Nd);
    W = sqrt( ((2*e_cm*(V0-V))*(1/Na + 1/Nd))/q );
end

% cm
function xp0 = PNSizeXp0(Na, Nd, V)
    W = PNSizeW(Na, Nd, V);
    xp0 = (Nd*W)/(Na+Nd);
end

% cm
function xn0 = PNSizeXn0(Na, Nd, V)
    W = PNSizeW(Na, Nd, V);
    xn0 = (Na*W)/(Na+Nd);
end