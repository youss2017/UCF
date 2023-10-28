k_j = 1.380649e-23;
k_ev = 	8.6173e-5;
e_0cm = 8.854187817e-14; % C²/(N * cm^1)
e_0 = 8.854187817e-12; % C²/(N * m^1)
e_r = 11.7;
q = 1.602176634e-19; % C


%% EXAM Question 2
Na = 1e16;
Nd = 1e17;
V_0 = 0.75;
V = -3;
% A = 2 * 2; % um^2
A = 4.0000e-08; % cm^2
W = sqrt( (2*e_r*e_0cm*(Na+Nd)*(V_0-V))/(q * Na* Nd) );

C = (A/2)*sqrt((2*q*e_r*e_0cm*Nd*Na)/((V_0-V)*(Nd+Na)));

%% EXAM Question 3
m=2.8e4/2e-5;

%% EXAM Question 4
Nd = 5e16;
t_p = 0.1e-6;
g_op = 5e21;
p_0 = (2.25e20)/Nd;
sigma = q*( (Nd*1000) + (4500*420) );
delta_p = t_p*g_op;
sigma2 = q*( (Nd*1000) + (delta_p*420) );

%% Question 6
T = 300;
Na = 1e18;
Nd = 1e16;
A = 1.0000e-07;
V_0 = ((k_j*T)/q)*log((Na*Nd)/(2.25e20));
W = sqrt((2*e_0cm*e_r * (Na+Nd)*V_0)/(q*Na*Nd));
x_n0 = (Na*W)/(Na+Nd);
x_p0 = (Nd*W)/(Na+Nd);
Jn = q * Nd * x_n0;
Jp = q * Na * x_p0;
Qn = Jn * A;
Qp = Jp * A;
E_0 = (-q * Nd * x_n0)/(e_r*e_0cm)





%% Question 7
T=300;
up = 250;
un = 1300;
tp = 0.01e-6;
tn = 10e-6;
V = 0.6;
Dp = (k_j*T*up)/q;
Dn = (k_j*T*un)/q;
Lp = sqrt(Dp*tp);
Ln = sqrt(Dn*tn);
A = 1.0000e-07;
pn = 2.25e3;
np = 2.25e5;
I_0 = q*A*((Dp/Lp)*pn + (Dn/Ln)*np);
I = I_0*(exp(q*V/(k_j*T)) - 1);
V_0 = (k_j * T)/q * log(Na*Nd/(2.25e20));
W_new = sqrt((2*e_r*e_0cm * (V_0 - V) * (Na+Nd)) / (q * Na * Nd));
W_old = sqrt((2*e_r*e_0cm * (V_0)* (Na+Nd)) / (q * Na * Nd));


%% Question 8










