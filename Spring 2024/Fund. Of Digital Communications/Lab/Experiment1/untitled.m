syms t
T0 = pi;
a_0 = 1/T0;

% g(t) = a_0 + sum(2/T0 .* cos(n*2*pi/(T0)*t));

% t = -2*pi:0.01:2*pi;
g_eval = zeros(1, length(-2*pi:0.01:2*pi));

i=1;
for t=-2*pi:0.0001:2*pi
    tmp = a_0;
    for n=1:1:10000
        tmp = tmp + (2/T0 * cos(t*n*2*pi/T0));
    end
    g_eval(i) = tmp;
    i = i + 1;
end
t=-2*pi:0.0001:2*pi;
plot(t, g_eval);