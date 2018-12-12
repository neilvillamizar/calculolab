function evaluacion = HornerdezplaHer(coef, x, X)
  n = length(coef);
  evaluacion = coef(n);
  
  z = zeros(1, n);
  z(1:2:n-1) = X;
  z(2:2:n) = X;
  
  for i = n-1: -1: 1
    evaluacion = (evaluacion*(x-z(i))) + coef(i);
  endfor
endfunction