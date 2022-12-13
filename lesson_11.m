clear; close all; clc;

func1 = @(d,t,w)  (exp(d * t) .* sin(w * t));

time = linspace(0,2,2001);
freq = 100; omega = 2 * pi * freq;
decay = -2;

p = func1(decay, time, omega);  % call the inline function

plot(time, p);