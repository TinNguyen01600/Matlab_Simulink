clear; close all; clc;
a = 0;
for cnt = 1:10
    a = a + cnt;
    fprintf('step %2d\t\ta = %d\n', cnt, a)
    if a<30
        continue;   % whatever cmd after dont run
    else
        break;  % if a >= 30, break the loop
    end
    fprintf("this is end\n")
end
%%
clear; close all; clc;
a = 0; cnt = 0;
while cnt <= 100
    a = a + rand(1);
    if a >= 25
        break
    else
        cnt = cnt + 1;
    end
end
fprintf('step %3d \t a = %6.4f\n', cnt, a)   % 6 digits before and 4 digits after decimal point