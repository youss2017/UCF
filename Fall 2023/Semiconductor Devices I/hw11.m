clear all
clc

k_j = 1.380649e-23;
k_ev = 	8.6173e-5;
e_0cm = 8.854187817e-14; % C²/(N * cm^1)
e_0 = 8.854187817e-12; % C²/(N * m^1)
e_r = 11.8;
q = 1.602176634e-19; % C
e_cm = e_0cm*e_r;
VT = k_j*300/q;

%% Question 1
fprintf("================ QUESTION 1 ================\n");
NEA = 5e18;
NBD = 1e16;
NCA = 1e15;

Va = VT*log(NEA*NBD/(2.25e20));
Vb = VT*log(NCA*NBD/(2.25e20));
fprintf("Builtin Va = %f V\n", Va);
fprintf("Builtin Vb = %f V\n", Vb);

Xn0_EB = sqrt(2*e_cm*(Va-0.5)*(NEA/NBD)/(q*(NEA+NBD)));
Xn0_CB = sqrt(2*e_cm*(Vb--5.0)*(NCA/NBD)/(q*(NCA+NBD)));

fprintf("Xn0_EB = %f\n", Xn0_EB*1e4);
fprintf("Xn0_CB = %f\n", Xn0_CB*1e4);

W_netural = 1e-4 - Xn0_CB - Xn0_EB;

fprintf("a) Netural Width is %f um\n", W_netural * 1e4);

Xn0_pt = 1e-4 - Xn0_EB;
W_pt = (Xn0_pt)*(NCA+NBD)/NCA;
V = -(W_pt^2 *q * NCA*NBD)/(2*e_cm*(NCA+NBD)) + Vb;
fprintf("b) Upper Limit Voltage %f\n", V);
V2 = Vb - (Xn0_pt^2)*q*NBD*(NCA+NBD)/(2*e_cm*NCA);

%% Question 2
fprintf("================ QUESTION 2 ================\n");
V = -25;
Nd=1e16;
% V0 = VT*log(1e32/(2.25e20));
% Xn0_EB = sqrt(2*e_cm*V0/(q*2e16));
syms Na
Na_equ = 0.5e-4 == sqrt(2*e_cm*(-V)*(Na/Nd)/(q*(Na+Nd)));
Na = solve(Na_equ, Na);
fprintf("Na conc. %e / cm^3\n", Na);
V0 = VT*log(Na*Nd/(2.25e20));
W = sqrt(2*e_cm*(Na+Nd)*(V0-V2)/(q*Na*Nd));

%% Question 3














