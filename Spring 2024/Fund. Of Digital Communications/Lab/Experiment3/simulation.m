fs = 2000;
tn = 0:1/fs:1/2;
StepSize = 1/15;
m = 0.5 .* sin(2*pi*50*tn);

s = DM_Encod(m, StepSize);

function s = DM_Encod(m, stepsize)
    xlen = length(m);
    accum = 0;
    s = zeros(1, xlen);
    accumm_array = zeros(1, xlen);

    for i=1:1:xlen
        accum = accum + m(i);
        if m(i) > accum
            s(i) = 1;
            accum = accum + stepsize;
        else
            s(i) = -1;
            accum = accum - stepsize;
        end
        accumm_array(i) = accum;
    end

end