k_j = 1.380649e-23;
k_ev = 	8.6173e-5;
e_0cm = 8.854187817e-14; % C²/(N * cm^1)
e_0 = 8.854187817e-12; % C²/(N * m^1)
e_r = 11.8;
q = 1.602176634e-19; % C
e_cm = e_0cm*e_r;
VT = k_j*300/q;
h = 6.62607015e-31;

Ne = 5e18;
Nb = 2e17;
Nc = 6e15;

Va = VT*log(Ne*Nb/(2.25e20));
Vb = VT*log(Nc*Nb/(2.25e20));

Xp0_1 = sqrt(2*e_cm*(Va - 0.625) * (Ne/Nb)/(q*(Ne+Nb)));
Xp0_2 = sqrt(2*e_cm*(Vb - -5) * (Nc/Nb)/(q*(Nc+Nb)));
W_net = 0.8e-4 - Xp0_2 - Xp0_1;

[W1, xp01, xn01] = PNSize(Nb, Ne, 0.625);
[W2, xp02, xn02] = PNSize(Nb, Nc, -5);

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