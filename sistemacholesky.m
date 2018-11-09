function x = sistemacholesky(A,b)
  L=cholesky(A);
  U=transpose(L);
  y=sust_adel(L,b);
  x=sustat(U,y);
endfunction
