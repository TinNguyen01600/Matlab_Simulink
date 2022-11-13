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