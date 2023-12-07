k_j = 1.380649e-23;
k_ev = 	8.6173e-5;
e_0cm = 8.854187817e-14; % C²/(N * cm^1)
e_0 = 8.854187817e-12; % C²/(N * m^1)
e_r = 11.8;
q = 1.602176634e-19; % C
e_cm = e_0cm*e_r;
VT = k_j*300/q;
%VT = 26e-3;

%% Question 3
NDE = 3e18;
NAB = 2e17;
NDC = 5e15;
tao = 1e-6; % sec
VBE = 0.6;
XB = 0.5; % um - width of base
CArea = 1; % mm^2
mu_pE = 54.3 + (407)/(1 + (0.374e-17 * NDE));
DpE = mu_pE * VT;
PnE = (2.25e20)/NDE;
LpE = sqrt(DpE*tao);
JpE = (q*DpE*PnE*(exp(VBE/VT) - 1))/LpE;
IpE = JpE*(CArea * 1e-2);

% Collecter current
mu_nB = 88 + (1252)/(1 + (0.698e-17*NAB));
DnB = mu_nB * VT;
npB = (2.25e20)/(NAB);
LnB = sqrt(DnB * tao);
JnC = (q*DnB*npB*(exp(VBE/VT) - 1))/(LnB);
InC = JnC * (CArea * 1e-2);


%% Question 4
DB = 25;
nB = 2.25e20/1e17;
tao = 1e-7;
XB = 0.7e-4; % cm
LB = sqrt(10 * tao);
Jr0 = 2e-9; % A/cm^2
Js0 = (q*DB*nB)/(LB*tanh(XB/LB));
VBE = 0.2;
recomb = 1/(1 + (Jr0/Js0)*exp((-VBE/(2*VT))));
