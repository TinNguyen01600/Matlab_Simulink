clear; close all; clc
% create 100 frequency values between 2e1 and 2e4
freq = 2 * logspace(1,4,100); 
omega = 2 * pi * freq;

% orientation of source respect to array
theta = linspace(0, 2*pi, 361); % create 360 values <=> 306 degrees
% relative to 0 to 2*pi rad

d = 5e-3;   % 5ms - distance between mic
c = 343;    % speed of sound in air
p1 = ones(length(freq), length(theta)); % pressure at mic 1 (ref)

% pres at mic 2
p2 = exp(1i * d * omega' * cos(theta) / c); % omega transpose -> 100x1
% so that it can multiply with theta

pg = (p2 - p1) / d; % pres gradient
pg_dB = 20 * log10(abs(pg));    % pres gradient in decibel

%% Logarithmic plot
angles = deg2rad([0 15 30 45 60 75]);
figure('Position', [100 100 800 600]);
for cnt = 1:length(angles)
    ind = find(theta == angles(cnt));    % find the index where theta == angles
    semilogx(freq, pg_dB(:,ind), 'LineWidth',1.5);
    hold on;
end
xlabel('Freq (Hz)');    ylabel('Pres. Grad. (dB)');
title('Logarithmic Plot');
set(gca, 'Fontsize', 12);
set(gca, 'FontWeight', 'Bold');
xlim([min(freq) max(freq)]); % determine limits of x-axis
ylim([-25 55]);
grid minor;
legend('\theta = 0 deg','\theta = 15 deg','\theta = 30 deg',...
    '\theta = 45 deg','\theta = 60 deg','\theta = 75 deg',...
    'Location','southeast');

%% Polar plot
f = [20 200 2000 20000];
figure('Position',[100 100 900 900]);
for cnt = 1:length(f)
    ind = find(freq == f(cnt)); 
    subplot(2,2,cnt);
    polarplot(theta, abs(pg(ind,:)./(omega(ind))), 'LineWidth',1.5);
    title(num2str(f(cnt), 'Freq. = %d Hz'))
    set(gca, 'Fontsize', 12);
    set(gca, 'FontWeight', 'Bold');
end
rlim([0 3.5e-3]);