%% problem 1
% x1(t)
t = -10:0.01:10;
x1 = n.^2; - 2.*t + 3;
plot(n, x1);
xlabel("t");
ylabel("x_1(n)");
title("Plot of x_1(t).");
% x2(t)
t = -2:0.01:2;
x2 = 4*cos(2*pi.*t - pi/8) + 3*sin(2*pi.*t);
plot(t, x2);
xlabel("t");
ylabel("x_2(t)");
title("Plot of x_2(t).");
% x3(t)
t = (-2*pi):0.01:(2*pi);
x3 = sin(t)./t;
plot(t, x3);
xlabel("t");
ylabel("x_3(t)");
title("Plot of x_3(t).");
% x4(t)
t = 0:0.01:10;
a = 0.1;
x4 = exp(-a.*t);
xlabel("t");
ylabel("x_4(t, a)");
plot(t, x4);
hold on;
a = 1;
x4 = exp(-a.*t);
plot(t, x4);
a = 3;
x4 = exp(-a.*t);
plot(t, x4);
title("Plot of x_4(t) w/ multiple values of 'a'.");

%% problem 2
% x1(n)
n = -10:1:10;
x1 = n.^2; - 2.*n + 3;
plot(n, x1);
xlabel("n (Discrete Steps)");
ylabel("x_1(n)");
title("Plot of x_1(n) with discrete steps.");
% x2(n)
n = -2:1:2;
x2 = 4*cos(2*pi.*n - pi/8) + 3*sin(2*pi.*n);
plot(n, x2);
xlabel("n (Discrete Steps)");
ylabel("x_2(n)");
title("Plot of x_2(n) with discrete steps.");
% x3(n)
n = (-2*pi):1:(2*pi);
x3 = sin(n)./n;
plot(n, x3);
xlabel("n (Discrete Steps)");
ylabel("x_3(n)");
title("Plot of x_3(n) with discrete steps.");
% x4(n)
n = 0:1:10;
a = 0.1;
x4 = exp(-a.*n);
xlabel("n (Discrete Steps)");
ylabel("x_4(n, a)");
plot(n, x4);
hold on;
a = 1;
x4 = exp(-a.*n);
plot(n, x4);
a = 3;
x4 = exp(-a.*n);
plot(n, x4);
title("Plot of x_4(n) w/ multiple values of 'a' and discrete steps.");


%% Problem 3
i = 1;
% pre allocate memory
y = -4:0.01:4;
for t=-4:0.01:4
    if t < -2
        y(i) = t^2 + 2*t + 3;
    elseif t < 2
        y(i) = 4*cos(2*pi*t - pi/8) + 3*sin(2*pi*t);
    else
        y(i) = sin(t)/t;
    end
    i = i + 1;
end
t=-4:0.01:4;
plot(t, y);
xlabel("t");
ylabel("y(t)");
title("Plot of y(t) piece-wise function");

% vector method
t1=-4:0.01:-2;
x1 = t1.^2 + 2.*t1 + 3;
t2=-2:0.01:2;
x2 = 4*cos(2*pi*t2 - pi/8) + 3*sin(2*pi.*t2);
t3=2:0.01:4;
x3 = sin(t3)./t3;
plot(t1, x1, t2, x2, t3, x3);
xlabel("t");
ylabel("y(t)");
title("Plot of y(t) piece-wise function");



