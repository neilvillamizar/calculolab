function S = SplineCubico(x,y,k1,k2)
%Funcion que calcula un spline cubico dadas las coordenadas
% de los nodos. Puede ser natural o amarrado dependiendo de 
% la cantidad de argumentos recibidos por la funcion.
  
  n = length(x);
  h = zeros(n-1,1);
  %Se crea h para la limpieza del codigo
  % ya que se usara mucho los resultados en h.
  for j=1:n-1
    h(j) = x(j+1)-x(j);
  end
  
  c = zeros(n,1);
  %Los valores de c dependen de si es frontera libre o amarrada.
  if(nargin==2)
    c = sistNatural(h,y);
  else
    c = sistAmarrado(h,y,k1,k2);
  end
  
  b = zeros(n-1,1);
  d = zeros(n-1,1);
  %Se encuentran los valores de los coeficientes b y d.
  for j = 1:n-1
    b(j) = (y(j+1)-y(j))/h(j) - h(j)*(2*c(j)+c(j+1))/3;
    d(j) = (c(j+1)-c(j))/(3*h(j));
  end
   
  b = [b;0];
  d = [d;0];
  %Se guardan los coeficientes calculados en una matriz nx4 que representa el Spline cubico.
  S = [y',b,c,d];
  
endfunction
  
  