clear; close all; clc;
% create a sinusoidal function
T = 2;  % period = 2 sec
t = linspace(0, 5, 501); % create linear space from x1 to x2 with step n
x = sin(2 * pi * t / T);

figure('Position', [150 150 800 400]) % Position of figure is (150, 150); size (800x400)
plot(t, x, 'r--', 'LineWidth', 1.5);    % dash line, width 1.5
xlabel('time (sec)');
ylabel('distance (m)');
title('This is a title');
grid on;
set(gca, 'FontSize', 12);    % 'gca' is everything related in the plot (text height, weight,...)
set(gca, 'FontWeight', 'Bold');
savefig('plot_01.fig')