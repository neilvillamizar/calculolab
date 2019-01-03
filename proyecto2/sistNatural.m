function c = sistNatural(h,a)
%Funcion que resuelve el sistema para encontrar los coeficientes
% c, de los polinomios de un spline cubico de frontera libre.

  n = length(a);
  n--;
  %Se crea la matriz A del sistema.
  A(1,1)=1;
  A(n+1,n+1)=1;
  %Se rellena la matriz A.
  for i = 2:n
    A(i,i+1) = h(i);
    A(i,i-1) = h(i-1);
    A(i,i) = 2*(h(i)+h(i-1));
  end
  
  %Se crea el vector b del sistema.
  b = zeros(n+1,1);
  b(1)=0;
  b(n+1)=0;
  %Se rellena el vector b.
  for i=2:n
    b(i) = (6/h(i))*(a(i+1)-a(i)) - (6/h(i-1))*(a(i)-a(i-1));
  end
  
  %Se resuelve el sistema.
  c = A\b;
  c = c/2;
  

endfunction