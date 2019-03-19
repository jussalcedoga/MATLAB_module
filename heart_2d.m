x = linspace(-2, 2);
f = sqrt(1 - (abs(x)-1).^2);
g = acos(1 - abs(x)) - pi;
fill(x, f, 'r')
hold on
fill(x, g, 'r')
%%text(-0.4, -0.5, 'JSSG', 'fontsize', 20)
gtext('JSSG', 'fontsize', 50);

