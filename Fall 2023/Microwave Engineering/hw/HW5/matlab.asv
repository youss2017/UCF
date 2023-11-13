% parameters
close all
clc
file = "Open_Sol2.csv";
s11_title = "Open Stub Matching; Solution 2";
% plot generation
data = table2array(readtable(file));
x = data(:,1);
y = data(:,2);
% Plot S11 db
f = figure;
f.Position = [100, 100, 960, 720];
plot(x, y);
xlabel("Frequency (GHz)");
ylabel("S11 dB");
title(s11_title + " --- S11 dB");
yline(-10,'','-10 dB Bandwidth');
xline(6,'',interpolateYValue(x, y, 6) + "dB");
% convert S11 db to magnitude
y = 10.^(y./20);
y = y .* y;
% convert S11 mag to db
y = 20 .* log(y);
f = figure;
f.Position = [100, 100, 960, 720];
plot(x, y);
title(s11_title + " --- |S11|^2 dB");
ylabel("|S11|^2 dB");
xlabel("Frequency (GHz)");

function interpolatedY = interpolateYValue(X, Y, requestedX)
    % Check if the requested X value is in the range of the known X values
    if requestedX >= min(X) && requestedX <= max(X)
        % If the requested X value exists in the X array, find the corresponding Y value
        if any(X == requestedX)
            % Get the exact Y value for the requested X
            index = find(X == requestedX);
            interpolatedY = Y(index);
        else
            % Interpolate the Y value for the requested X
            interpolatedY = interp1(X, Y, requestedX, 'linear');
        end
    else
        error('Requested X value is outside the range of known X values.');
    end
end