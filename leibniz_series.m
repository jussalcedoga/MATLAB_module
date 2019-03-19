pi = 4;
iterations = 2000000;
for i=0:iterations
    if mod(i,2) == 0;
        pi = pi - 4/(2*i + 3);
    else
        pi = pi + 4/(2*i + 3);
    end
end
disp(pi)