number_of_points = 1000000;
x = rand(1, number_of_points);
y = rand(1, number_of_points);

points_inside = 0;

for i=1:number_of_points
    dist = sqrt(x(i).^2 + y(i).^2);
    if dist <= 1;
        points_inside = points_inside + 1;
    end
end

pi_ = 4*points_inside/number_of_points;

disp(pi_)
        