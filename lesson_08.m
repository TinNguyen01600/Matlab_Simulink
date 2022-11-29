clear; close all; clc;
% create a sinusoidal function
T = 2;  % period = 2 sec
t = linspace(0, 5, 501); % create linear space from x1 to x2 with step n
x = sin(2 * pi * t / T);
y = cos(2 * pi * t / T);

z = zeros(2, length(t));    % create a 2x501 arrays of 0s
z(1,:) = x; % give values to them
z(2,:) = y;
label = {'sin(\theta)', 'cos(\theta)'};

% figure('Position', [150 150 800 400]) % Position of figure is (150, 150); size (800x400)
% plot(t, x, 'r--', 'LineWidth', 1.5);    % dash line, width 1.5
% hold on;
% plot(t, y, 'b-', 'LineWidth', 1.5);
% xlabel('time (sec)');
% ylabel('distance (m)');
% title('This is a title');
% grid on;
% set(gca, 'FontSize', 12);    % 'gca' is everything related in the plot (text height, weight,...)
% set(gca, 'FontWeight', 'Bold');
% % legend('sin(\theta)', 'cos(\theta)', 'Location','best');    % find the best place to put legends
% legend('sin(\theta)', 'cos(\theta)', 'Location','southoutside', ...
%     'Orientation','Horizontal');    % under the plot
% savefig('plot_01.fig')

figure('Position', [150 150 800 800]);
for cnt = 1:2
    subplot(2, 1, cnt);
    plot(t, z(cnt,:), 'b-', 'LineWidth', 1.5);
    ylabel(label(cnt));
    set(gca, 'FontSize', 12);
    set(gca, 'FontWeight', 'Bold');
    grid on;
end
subplot(2,1,1);
title('Title');
subplot(2,1,2);
xlabel('time (sec)');
savefig('plot_02.fig')

% subplot(2, 1, 1);   % @rows, @cols, @what we're looking at
% h1 = plot(t, z(1,:), 'b-', 'LineWidth', 1.5);
% ylabel('sin(\theta)');
% set(gca, 'FontSize', 12);
% set(gca, 'FontWeight', 'Bold');
% grid on;
% 
% subplot(2, 1, 2);
% h2 = plot(t, z(2,:), 'b-', 'LineWidth', 1.5);
% ylabel('cos(\theta)');
% xlabel('time (sec)');
% set(gca, 'FontSize', 12);
% set(gca, 'FontWeight', 'Bold');
% grid on;
%%
clear; close all; clc;
f(1) = openfig('plot_01.fig');
f(2) = openfig('plot_02.fig');
for cnt = 1:2
    saveas(f(cnt), num2str(cnt, 'plot_0%d.tif'));   % high resolution file
end
close all;

