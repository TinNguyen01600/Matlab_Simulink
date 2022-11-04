clear; close all; clc;
a = {[100 150 800]; 'name'; true; eye(5)} % cell
b = a{4}(1:3, 2:5);  % get values of eye(5) rol 1->3, col 2->5
c = a{1}(1:2);  % 100 150
d = a{2}(3:end);    % 'me'