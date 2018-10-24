function x = sistemacholesky(A,b)
  L=Cholesky(A);
  U=transpose(L);
  y=sustad(L,b);
  x=sustat(U,y);
endfunction
