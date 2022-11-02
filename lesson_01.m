clear; % clear workspace
close all;
clc;    % clear cmd window

% ----------------------------------------------------
% DATA TYPES AND CLASS

a = 2;
b = 3;
c = a ^ b;
fprintf('c = %3d\n', c);    % c =    8
fprintf('c = %2d\n', c);    % c =   8
fprintf('c = %d\n', c);     % c = 8
fprintf('c = %.2d\n', c);   % c = 08
whos a; % print info of variable a

d = 'a string';
a1 = int64(a);  % convert double to int 64 bits
e = 2.6;
e1 = uint64(e); % non-negative int
t = true;
f = false;
% ----------------------------------------------------
% ARRAY AND MATRIX

arr1 = [1 2 3 4 5 6];       % 1x6 row array
arr2 = [1; 2; 3; 4; 5; 6];  % 6x1 column array
arr1_t = arr1'; % transpose of arr1
arr3 = arr1(1, 3:end);  % 3 4 5 6
arr4 = arr1(1, 1:2:end);    % 1 3 5

arr5 = [1 2 3; 4 5 6; 7 8 9];

% row 2 to 3; col 2 to 3
arr6 = arr5(2:3, 2:3);  % 5 6; 8 9

% row 1 to 3, step 2; col 1 to 3, step 2
arr7 = arr5(1:2:3, 1:2:3);  % 1 3, 7 9

index = [1 3];
% row 1 AND 3, col 1 AND 3
arr8 = arr5(index, index); % == arr7

% row 1 AND 3, all cols
arr9 = arr5(index,:);    % 1 2 3, 7 8 9

% ----------------------------------------------------
%whos;   % print info of all variables