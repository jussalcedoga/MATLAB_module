x = -5:.2:5;
y = -5:.2:5;

[X, Y] = meshgrid(x, y);
Z = sin(X) + cos(Y);
surf(X, Y, Z)
xlabel('X', 'fontsize', 20)
ylabel('Y', 'fontsize', 20)
zlabel('Z', 'fontsize', 20)
colormap('gray')
colorbar
view(20, 50)
grid
axes equal