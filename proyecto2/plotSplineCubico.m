function plotSplineCubico(x,y,S)
%
% grafica un spline cubico cuyos nodos 
% estan en las coordenadas (x,y)
% usando Horner para las evaluaciones.

n = length(x);
inner_points = 20;

%itera sobre los polinomios del spline.
for i=1:n-1

    xx = linspace(x(i),x(i+1),inner_points);
    %Para cada polinomio evalua 20 ptos con Horner.
    for j = 1:inner_points
      yy(j) = Horner(S(i,:),xx(j),x(i));
    end
    %Y grafica.
    hold on
    plot(xx,yy,'b');
    hold on
    plot(x(i),y(i),'r');
end

plot(x(n),y(n),'r');

endfunction