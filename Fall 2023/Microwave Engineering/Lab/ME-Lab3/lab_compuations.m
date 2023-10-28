%% rectangular guided wavelength
e_0 = 8.854187817e-12; % C²/(N * m^1)
u = 4*pi*1e-7;
w = (10*10^9)*2*pi;
k = w * sqrt(u*e_0);
a = 22.86e-3;
b = 10e-3;
n = 0;
m = 1;
kc = sqrt( (m*pi/a)^2 - (n*pi/b)^2 );
beta = sqrt(k^2 - kc^2);
guided_wavelength = 2*pi/beta; % meters

%% computing port impedance
% 8 GHz
w = 8*1e9*2*pi;
k = w*sqrt(u*e_0);
n = 0;
m = 1;
a = 22.86e-3;
b = 10e-3;
kc = sqrt( (m*pi/a)^2 - (n*pi/b)^2 );
beta = sqrt(k^2 - kc^2);
Z_TE = (k * 120*pi)/beta;
Z_TM = (beta*120*pi)/k;
disp(Z_TE);
disp(Z_TM);

%% coaxial cut off frequency
c = 299792458;
a = 1.27e-3; % meter (original is 50mil)
b = 4.318e-3; % meter (original is 170mil)
k_c = 2 / (a + b);
e_r = 2.1; % teflon
% cut off frequency for TE11
f_c = (c*k_c)/(2*pi*sqrt(e_r));
f_c = f_c/1e9;
disp(f_c);

%% circular wave guied
a = 0.005; % radius - meters
f_c = (c*11.62)/(2*pi*a); % TE01
f_c = f_c/1e9;
disp(f_c);