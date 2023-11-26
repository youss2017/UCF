syms Z0

zeq = parallel(Z0, 0.5*Z0);
S11 = (zeq - Z0)/(zeq+Z0);

function result = parallel(R1, R2)
    result = (1/R1 + 1/R2)^-1;
end