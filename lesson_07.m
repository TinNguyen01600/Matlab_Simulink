clear; close all; clc;
a = cos(pi);    % radian angle
a1 = cosd(180);  % degree angle
b = tan(pi/4);
b1 = tand(45);
c = rad2deg(pi/3);   % radian to degree
c1 = deg2rad(45);    % pi/4
d = atan(1) ;        % arctan(1) = pi/4 = 45 deg
d1 = atand(1);
e = atan2(sqrt(3), 1);   % arctan(y, x) -> pi/3
e1 = atan2d(sqrt(3), 1); % 60 degree

f = cosh(2);    % hyperbolic cos
g = sinh(2);    % hyperbolic sin

%%
clear; close all; clc;
c = 2 + 3i;
r = real(c);
im = imag(c);
ab = abs(c);    % sqrt(2^2 + 3^2)
an = angle(c);   % phase angle
an1 = rad2deg(an);

e = exp(2i); % exponential form z = r*e^(iθ)
            % r = 1, θ = 2
r = abs(e);  
theta = angle(e);
