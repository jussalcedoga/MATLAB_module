x=13;


y=2; %Contador
while rem(x,y)~=0
    y = y + 1;
end

if y == x
    disp('The number is prime');
else
    disp('The number is not prime');
end