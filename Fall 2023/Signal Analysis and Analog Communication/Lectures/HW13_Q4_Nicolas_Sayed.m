clear
clc
q = 1.602e-19;
k = 1.3806e-23;
T = 300;
eo = 8.85e-14;
esi = 11.8; % For Silicon
eox = 3.9; % For SiO2

% N channel mosfet in enhancement mode I think 
% Non saturated
VGS1 = 1.5;
VGS2 = 2.5;
VDS = 0.1;
id1 = 35e-6;
id2 = 75e-6;
W = 15e-4; %cm
L = 2e-4; %cm
Cox = 6.9e-8; % cm

% Find Kn and Vtn :3
syms Kn VTN
eq1 = id1 == Kn * (2*(VGS1 - VTN)*VDS - VDS^2);
eq2 = id2 == Kn * (2*(VGS2 - VTN)*VDS - VDS^2);
KnVTN = solve([eq1 eq2], [Kn VTN])
Kn = vpa(KnVTN.Kn,3)
VTN = vpa(KnVTN.VTN,3)
% Find un 
syms un
eq3 = Kn == un * W / L * Cox;
un_cm = vpa(solve(eq3,un),3)
