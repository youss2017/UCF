clear all
close all
clc
fs = 2000;
ts = 1/fs;
tn = 0:ts:1/25;
StepSize = 1/15;
m = 0.5 .* sin(2*pi*50*tn);

s = DM_Encod(m, StepSize);

So = LowPassFilter(100, 0.1, s);

subplot(3,1,1);
plot(tn, m);
title("Message Signal");
subplot(3,1,2);
plot(tn, s);
title("Modulated Signal");
subplot(3,1,3);
plot(tn, So * 0.5);
title("Demodulated Signal");

function s = DM_Encod(m, stepsize)
    xlen = length(m);
    accum = 0;
    s = zeros(1, xlen);
    for i=1:1:xlen
        if m(i) > accum
            s(i) = 1;
            accum = accum + stepsize;
        else
            s(i) = -1;
            accum = accum - stepsize;
        end
    end

end

function So = LowPassFilter(fod, cf, Si)
    b = fir1(fod, cf);
    So = conv2(Si, b, 'same');
end
