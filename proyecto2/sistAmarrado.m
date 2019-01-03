function c = sistAmarrado(h,a,k1,k2)
%Funcion que resuelve el sistema para encontrar los coeficientes
% c, de los polinomios de un spline cubico de frontera amarrada.

  n = length(a);
  n--;
  %Se crea la matriz A del sistema.
  A(1,1) = 2*h(1);
  A(1,2) = h(1);
  A(n+1,n) = h(n);
  A(n+1,n+1)=2*h(n);
  %Se rellena la matriz A.
  for i = 2:n
    A(i,i+1) = h(i);
    A(i,i-1) = h(i-1);
    A(i,i) = 2*(h(i)+h(i-1));
  end
  
  %Se crea el vector b del sistema.
  b = zeros(1,n+1);
  b(1) = (3/h(1))*(a(2)-a(1)) - 3*k1;
  b(n+1) = 3*k2 - (3/h(n))*(a(n+1)-a(n));
  %Se rellena el vector b.
  for i=2:n
    b(i) = (6/h(i))*(a(i+1)-a(i)) - (6/h(i-1))*(a(i)-a(i-1));
  end
  
  %Se resuelve el sistema.
  c = A\b;
  c = c/2;

endfunction