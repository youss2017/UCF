k_j = 1.380649e-23;
k_ev = 	8.6173e-5;
e_0cm = 8.854187817e-14; % C²/(N * cm^1)
e_0 = 8.854187817e-12; % C²/(N * m^1)
e_r = 11.8;
q = 1.602176634e-19; % C
e_cm = e_0cm*e_r;
VT = ((k_j*300)/q);

%% Question 1
Naemitter = 5e18;
Nacollector = 1e15;
Nd = 1e16;
V0_EB = BuiltinVoltage(Naemitter,Nd);
V0_CB = BuiltinVoltage(Nacollector,Nd);
W_EB =  PNSize(Naemitter, Nd, 0.5);
W_CB =  PNSize(Nacollector, Nd, -5.0);

xn0_EB = (Naemitter*W_EB)/(Naemitter + Nd);
xn0_CB = (Nacollector*W_CB)/(Nacollector + Nd);

W_netural = 1 - (xn0_EB*1e4) - xn0_CB*1e4;
disp(W_netural) % W NETURAL

xn0_target = 1 - (xn0_EB*1e4);
W_target = (xn0_target)*(Nacollector + Nd)/(Nacollector);
syms V
f = (W_target*1e-4) == sqrt( ((2*e_cm*(V0_CB-V))*(1/Nacollector + 1/Nd))/q );
V = vpa(solve(f, V))

PNSize(830414116915955.93672176612101116, 1e16, -25)

%% Question 2
Nd = 1e16;
Na = 1e16;
x_n0 = Na*0.5*1e-4/(Na+Nd);
W=0.5*1e-4;
x_n0_collector = W - x_n0;
syms Ne


BuiltinVoltage(1e16,1e16)

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