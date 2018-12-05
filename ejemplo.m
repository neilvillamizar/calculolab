x=linspace(0,4*pi,10);
y1=sin(x);
van=vander(x);
a = van \ sin(x)';
x1 =0:0.1:4*pi;
subplot(3,2,[1,2])
plot(x1,sin(x1))
title('vander')
hold on
plot(x1,polyval(a,x1));
legend('function','vander')
subplot(3,2,[3,4])
plot(x1,sin(x1));
title("lagrange")
hold on
vector = zeros(0,length(x1));
k=1;
for i=0;0.1;4*PI
  vector(k)=Lagrange(x,sin(x),i);
  k++;
end
plot(x1,vector)
hold off
legend("function","lagrange")