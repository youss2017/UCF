data = readtable('c:\users\youss\desktop\fall 2023\microwaves\report.csv');
x = cell2mat(table2cell(data(:,"X")));
y = cell2mat(table2cell(data(:,"Y")));
mag = cell2mat(table2cell(data(:,"MAG")));

% Define a grid for interpolation
[Xq, Yq] = meshgrid(linspace(min(x), max(x), 5000), linspace(min(y), max(y), 5000));

% Interpolate the magnitude values onto the grid
mag_interp = griddata(x, y, mag, Xq, Yq, 'linear');

% Create a 2D colormap plot
figure;
colormap(jet); % You can choose a different colormap if desired
imagesc(Xq(1, :), Yq(:, 1), mag_interp);
colorbar; % Display a colorbar indicating the magnitude values
xlabel('X Position');
ylabel('Y Position');
title('2D Colormap Plot with Interpolation');
axis xy; % Ensure the y-axis is oriented correctly

%% 3D-Vector
data = readtable('c:\users\youss\desktop\fall 2023\microwaves\report.csv');
x = cell2mat(table2cell(data(:,"X")));
y = cell2mat(table2cell(data(:,"Y")));
z = cell2mat(table2cell(data(:,"Z")));
mx = cell2mat(table2cell(data(:,"MX")));
my = cell2mat(table2cell(data(:,"MY")));
mz = cell2mat(table2cell(data(:,"MZ")));
figure
q = quiver3(x, y, z, mx, my, mz);