function x = sistemaLU(A,b)
  n=length(A);
  lu=LU(A);
  L=tril(lu,-1)+eye(n);
  U=triu(lu);
  y=sust_adel(L,b);
  x=sustat(U,y);
 endfunction