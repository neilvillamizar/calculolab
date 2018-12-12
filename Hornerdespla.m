function eval = Hornerdespla(coef,x,X)
  n = length(coef);
  eval = coef(n);
  for i=n-1:-1:1
    eval = (eval*(x-X(i))) + coef(i);
  end
endfunction