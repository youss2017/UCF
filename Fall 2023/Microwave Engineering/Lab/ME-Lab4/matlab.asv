%% wider substrate
W = 10e-3;
d = 2e-3;
e_r = 2.1; % teflon
wz_0 = calculateZ0(W, d, e_r);
fprintf("[wider substrate] Z_0 %f\n", wz_0);

%% smaller substrate
W = 2e-3;
d = 2e-3;
e_r = 2.1; % teflon
sz_0 = calculateZ0(W, d, e_r);
fprintf("[smaller substrate] Z_0 %f\n", sz_0);

%% quarter wavelength matching
z_l = sqrt(wz_0 * sz_0);
fprintf("[quarter wavelength] Z_0 %f\n", z_l);
A = ((z_l)/60)*sqrt((e_r + 1)/2) + ((e_r -1)/(e_r+1))*(0.23 + 0.11/e_r);
B = (377*pi)/(2*z_l*sqrt(e_r));
%Wd_ratio = (2/pi) * (B - 1 - log(2*B-1) + ((e_r -1)/(2*e_r))*(log(B - 1) + 0.39 - 0.61/e_r));
Wd_ratio = (8*exp(A))/(exp(2*A) - 2);
% d value must stay the same because that the height of the dielectric
% since we know d, we can solve W using the W/d ratio
W = Wd_ratio * d;
e_e = ((e_r + 1)/2 + (e_r - 1) /2)*(1/sqrt(1 + 12*(1/Wd_ratio)));
length = sqrt(e_e)*(2*pi*12e9/3e8);
fprintf("[quarter wavelength] W = %f mm\n", W * 1e3);
fprintf("[quarter wavelength] Z_0 = %f \n", calculateZ0(W, d, e_r));

function impedance = calculateZ0(W, d, e_r)
    e_e = ((e_r + 1)/2 + (e_r - 1) /2)*(1/sqrt(1 + 12*d/W));
    impedance = (120*pi)/(sqrt(e_e)*(W/d + 1.393 + 0.667*log(W/d + 1.444)));
end

