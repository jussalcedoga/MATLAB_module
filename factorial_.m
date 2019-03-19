prompt = 'Ingrese un número: ';
n = input(prompt);

factorial = 1;
for i=1:n
    factorial = factorial*i;
end

disp('El factorial del número es: ')
disp(factorial)
    