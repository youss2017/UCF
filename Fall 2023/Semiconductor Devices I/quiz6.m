k_j = 1.380649e-23;
k_ev = 	8.6173e-5;
e_0cm = 8.854187817e-14; % C²/(N * cm^1)
e_0 = 8.854187817e-12; % C²/(N * m^1)
e_r = 11.7;
q = 1.602176634e-19; % C

T=300;
A = 10e-4*10e-4; % 1x1 cm^2
ni = 1.5e10;
Na=1e17;
Nd=1e16;

V_T = (k_j*T)/q;
V_0=V_T*log((Na*Nd)/ni^2);

W = sqrt( ((2*e_r*e_0cm)/(q)) * ((Na+Nd)/(Na*Nd))*(V_0+2)  );

x_p0 = (Nd*W)/(Na+Nd);
x_n0 = (Na*W)/(Na+Nd);

Q_nside = q*Nd*A*x_n0;
Q_pside = q*Na*A*x_p0;

% V/m
E_0 = (-q/(e_r*e_0))*Nd*x_n0;

% total charge n-side
Q_total_nside = q*Nd;
% total charge p-side
Q_total_pside = -q*Na;

% Ef - Ei
fermi_nside = log(Nd/ni) * k_ev*T;
% Ei - Ef
fermi_pside = log(Na/ni) * k_ev*T;