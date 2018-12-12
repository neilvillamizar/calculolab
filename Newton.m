function c = Newton(X,Y)
  c =Y;
  n = length(X);
  for j=2:n
    for i=n:-1:j
      c(i) = (c(i)-c(i-1)) / (X(i) - X(i-j+1));
    end
  end
endfunction