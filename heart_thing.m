clear; clc;
x_range = linspace(-2,2,100);
y_range = linspace(-2,2,100);
z_range = linspace(-2,2,100);
[X_space, Y_space, Z_space] = meshgrid( x_range, y_range, z_range ); 

f = (Y_space.^2 + 9/4*X_space.^2 + Z_space.^2-1).^3 ...
    - Y_space.^2.*Z_space.^3 ... 
    - 9/80*X_space.^2.*Z_space.^3; 


[faces,verts] = isosurface(X_space, Y_space, Z_space, f,.0); 
patch('Vertices',verts,'Faces',faces, 'FaceColor', 'r', 'EdgeColor', 'none')
box on
view(49,23); 
camlight 