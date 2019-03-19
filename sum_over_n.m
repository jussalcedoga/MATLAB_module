prompt1 = 'ingrese el valor de n ';
prompt2 = 'ingrese el valor de x ';
n = input(prompt1);
x = input(prompt2);

suma = 0;
for i=1:n
    suma = suma + i*x^(i-1);
end

disp(suma)