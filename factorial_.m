prompt = 'Ingrese un n�mero: ';
n = input(prompt);

factorial = 1;
for i=1:n
    factorial = factorial*i;
end

disp('El factorial del n�mero es: ')
disp(factorial)
    