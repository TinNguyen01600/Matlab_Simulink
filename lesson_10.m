clear; close all; clc;
x = linspace(0,1,100);
y = linspace(0,2,200);
z = sin(2 * pi * x' / 0.5) * cos(2 * pi * y / 0.3);

[Y, X] = meshgrid(y, x);

figure('Position', [200 200 600 600]);
% mesh(z);
% surf(z);    % on the plot, x: 1->100; y: 1->200
surf(X,Y,z);    % on the plot, x: 1->1; y: 1->2, z changes
xlabel('X (m)');    ylabel('Y (m)');    zlabel('Z (m)');
set(gca, 'FontSize', 12);
set(gca, 'FontWeight', 'Bold');
colormap jet;   % the plot color more interating ?
colorbar;

%%
contour(X,Y,z); % look at the 3D plot from top

xlabel('X (m)');    ylabel('Y (m)');
set(gca, 'FontSize', 12);
set(gca, 'FontWeight', 'Bold');
colormap jet;
colorbar;