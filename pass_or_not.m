function pass_or_not(x)
    for i=1:length(x)
        if (x(i) < 0 || x(i) > 5.0)
            disp('nota no válida')
        elseif (x(i) >= 3.0 && x(i) <= 5.0)
            disp('El estudiante pasa')
        elseif (x(i) >= 0 && x(i) < 3.0)
            disp('no pasa') 
        end
    end
end