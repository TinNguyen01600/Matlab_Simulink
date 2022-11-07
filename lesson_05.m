clear; close all; clc;
a = 1;
b = 2;
c = 1;
if a==b
    fprintf('a equal to b\n');
else
    fprintf('a not equal to b\n');
end

if a==c
    fprintf('a equal to c\n');
else
    fprintf('a not equal to c\n');
end
%%
clear; close all; clc;
a = 1;
b = 2;
c = 3;
if a==b
    fprintf('a equal to b\n');
elseif a==c
    fprintf('a equal to c\n');
else
    fprintf('a not equal to b or c\n');
end
%%
clear; close all; clc;
a = 1;
b = 2;
c = 3;
if a==b && a==c
    fprintf('a is equal to both b and c\n');
elseif a==b || a==c
    fprintf('a is equal to either b or c\n');
else
    fprintf('a is neither equal to b nor c\n');
end