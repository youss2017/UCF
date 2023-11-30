clear all
clc
% HW 10
k_j = 1.380649e-23; % J/K
k_ev = 	8.6173e-5;
e_0cm = 8.854187817e-14; % C²/(N * cm^1)
e_0 = 8.854187817e-12; % C²/(N * m^1)
e_r = 11.8;
q = 1.602176634e-19; % C
e_cm = e_0cm*e_r;
VT = ((k_j*300)/q);

%% Question 3
Nde = 3e18;
Nab = 2e17;
Ndc = 5e15;
tao = 1e-6; % seconds
VBE = 0.6;
CrossSection = 1e-2; % mm^2 -> cm^2

mu_n = 88 + 1252/(1 + (6.98e-18*Nab));
mu_p = 54.3 + (407)/(1 + 0.374e-17*Nde);

Dn = mu_n*VT;
Dp = mu_p*VT;
Ln = sqrt(Dn*tao);
Lp = sqrt(Dp*tao);

Pne = (2.25e20)/(Nde);
JpE = q*(Dp*Pne)*(exp(VBE/VT) - 1)/(Lp);
IpE = JpE*CrossSection;
disp("Base Current: " + [IpE*1e6] + " uA");

Npb = (2.25e20)/(Nab);
JnE = q*(Dn*Npb)*(exp(VBE/VT) - 1)/(Ln);
InE = JnE*CrossSection;
disp("Collector Current: " + [InE*1e6] + " uA");
