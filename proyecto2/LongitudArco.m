function L = LongitudArco(a,b,p)
%Funcion que calcula la longitud de arco de un polinomio de grado 3
% Dado los coeficientes del polinomio (p), y el intervalo en el que 
% se desea realizar el calculo.
  
  %Funcion a integrar para calcular la longitud deseada.
  P = @(x) sqrt(1 + (p(2) + 2*p(3)*(x-a) + 3*p(4)*(x-a).^2).^2);
  %Se usa quad para integrar como se especifico en el enunciado.
  L = quad(P,a,b);

endfunction