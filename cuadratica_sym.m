function [solutions] = cuadratica_sym(polinomio)
    syms x
    eq = polinomio;
    [solutions] = solve(eq);
end