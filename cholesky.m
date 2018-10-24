function L=cholesky(A)
  n = length(A);
  L = 0*ones(n,n);
  for k=1:1:n
    suma = 0;
    for i=1:1:k-1
      suma = suma + L(k,i)^2;
    endfor
    L(k,k) = (A(k,k)-suma) ^ (1/2);
    for i=k+1:1:n
      suma2=0;
      for m=1:1:k-1
        suma2=suma2+L(i,m)*L(k,m);
      endfor
      L(i,k) = (A(i,k)-suma2)/L(k,k);
    endfor
  endfor  
endfunction
