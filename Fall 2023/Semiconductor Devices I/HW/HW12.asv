k_j = 1.380649e-23;
k_ev = 	8.6173e-5;
e_0cm = 8.854187817e-14; % C²/(N * cm^1)
e_0 = 8.854187817e-12; % C²/(N * m^1)
e_r = 11.8;
q = 1.602176634e-19; % C
e_cm = e_0cm*e_r;
VT = ((k_j*300)/q);

%% Quesiton 1
Na = 1e18; % cm^-3
Nd = 2e16; % cm^-3
Vp = -2.5; % V
V0 = BuiltinVoltage(Na, Nd);
[Width, xp0, xn0] = PNSize(Na, Nd, Vp);
% convert from cm to um
xn0 = (xn0 * 1e-2)*1e6;

%% Question 2
Na = 1e16;
Nd = 1e18;
W = 0.8; % um
xp0 = (W/2)*1e-4; % convert to cm
V0 = BuiltinVoltage(Na, Nd);
V = ((xp0^2)*q*(Na+Nd)/(2*e_cm*(Nd/Na))) - V0;

%% functions
function V0 = BuiltinVoltage(Na, Nd)
    k_j = 1.380649e-23;
    q = 1.602176634e-19; % C
    VT = ((k_j*300)/q);
    V0 = VT*log(Na*Nd/(2.25e20));
end

function [W, xp0, xn0] = PNSize(Na, Nd, V)
    e_0cm = 8.854187817e-14; % C²/(N * cm^1)
    e_r = 11.8;
    q = 1.602176634e-19; % C
    e_cm = e_0cm*e_r;
    V0 = BuiltinVoltage(Na,Nd);
    W = sqrt( ((2*e_cm*(V0-V))*(1/Na + 1/Nd))/q );
    xn0 = (Na*W)/(Na+Nd);
    xp0 = (Nd*W)/(Na+Nd);
end