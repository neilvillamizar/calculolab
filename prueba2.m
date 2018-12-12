%Prueba 2

x = linspace(0,4*pi,10);
y = sin(x);
polNewton = Newton(x,y);
polHermit = hermite(x,y,cos(x)); 
x1 = 0:0.1:4*pi;
y1 = sin(x);
subplot(3,2,[1,2]);
plot(x1,sin(x1));
title("Newton");
hold on

vector = zeros(0,length(x1));
k=1;
for i=0:0.1:4*pi
  vector(k) = Hornerdespla(polNewton,i,x);
  k++;
end
plot(x1,vector,"y");
legend("function","Newton");

subplot(3,2,[3,4]);
plot(x1,sin(x1));
title("Hermit");
hold on
vector = zeros(0,length(x1));
k=1;
for i=0:0.1:4*pi
  vector(k) = HornerdezplaHer(polHermit,i,x);
  k++;
end
plot(x1,vector,"y");
hold off
legend("function","Hermit");

subplot(3,2,[5,6]);
plot(x1,sin(x1));
title("Newton puyadoooooo");
hold on
x = Chebyshev(0,4*pi,10);
y = sin(x);
polNewtonChe = Newton(x,y);
vector = zeros(0,length(x1));
k=1;
for i=0:0.1:4*pi
  vector(k) = Hornerdespla(polNewtonChe,i,x);
  k++;
end
plot(x1,vector,"y");
legend("function","Newton+Che");