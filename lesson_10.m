clear; close all; clc;
x = linspace(0,1,100);
y = linspace(0,2,200);
t = linspace(0,1,60); % for time - 3s animation
z = zeros(length(x), length(y), length(t));

for cnt = 1:length(t)
    z(:,:,cnt) = sin(2 * pi * x' / 0.5) * cos(2 * pi * y / 0.3) * t(cnt);
end

[Y, X] = meshgrid(y, x);
obj = VideoWriter('Animation.avi');
obj.Quality = 100;
obj.FrameRate = 20; % 20 fps
open(obj);

figure('Position', [200 200 600 600]);
% mesh(z);
% surf(z);    % on the plot, x: 1->100; y: 1->200

for cnt = 1:length(t)
    surf(X,Y,z(:,:,cnt));    % on the plot, x: 1->1; y: 1->2, z changes
    xlabel('X (m)');    ylabel('Y (m)');    zlabel('Z (m)');
    zlim([-1 1]);
    set(gca, 'FontSize', 12);
    set(gca, 'FontWeight', 'Bold');
    colormap jet;   % the plot color more interesting ?
    title(num2str(t(cnt), 'time = %4.3f (sec)'));
    caxis([-1 1])   % the value of the colormap is consistent in [-1 1]
    hold off;
    colorbar;
    pause(0.1);
    f = getframe(gcf);
    writeVideo(obj, f);
end
obj.close();

%%
contour(X,Y,z); % look at the 3D plot from top

xlabel('X (m)');    ylabel('Y (m)');
set(gca, 'FontSize', 12);
set(gca, 'FontWeight', 'Bold');
colormap jet;
colorbar;