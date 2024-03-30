U = @(theta, phi) ( (cos(pi/2 .* cos(theta)))./sin(theta) .* (1 + exp(1j*1.2*pi*cos(theta)) + exp(2j*1.2*pi*cos(theta))) ).^2;
UPrad = @(theta, phi) sin(theta) .* ( cos( (pi/2) .* cos(theta) )./sin(theta) .* (1 + 2*cos((1.2*pi).*cos(theta))) ).^2;
Prad = 2*pi*integral(UPrad, 0, pi)
Umax_xcoordinate = fminbnd(@(x) -U(x), 0, pi)
Umax = U(Umax_xcoordinate)
D0 = (4*pi*Umax)/Prad