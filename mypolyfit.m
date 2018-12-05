linspace(0,4*pi,10);
x=linspace(0,4*pi,10);
y=sin(x);
van=vander(x);
a = inv(van)*(y');
x1 =linspace(0,4*pi);
y1 =polyval(a,x1);
figure
plot(x,y,'o');
hold on
plot(x1,y1);
hold off
