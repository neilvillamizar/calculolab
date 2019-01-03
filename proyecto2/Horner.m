function evaluacion = Horner(coef, x, xi)
%Funcion Horner para evaluar el spline en x, en el polinomio
% de coeficientes "coef" y que comienza en xi.
  n = length(coef);
  evaluacion = coef(n);
  for i = n-1:-1:1
    evaluacion = (evaluacion*(x-xi)) + coef(i);
  endfor
endfunction