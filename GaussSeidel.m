function [xn,k] = GaussSeidel(A,b,xv,maxt,tole)
  n =length(b);
  xn = NaN*ones(n,1);
  for k = 0:1:maxt
    for i = 1:1:n
      suma1  = 0;
      for j=1:1:i-1
        suma1  = suma1 + A(i,j) * xn(j);
      end
      suma2 = 0;
      for j =i+1:1:n
        suma2 = suma2 + A(i,j) * xv(j);
      end
      xn(i) = (b(i)-suma1-suma2)/A(i,i);
    end
    if(norm(xv-xn,inf)<tole)
      return
    end
    xv = xn;
  end
endfunction
