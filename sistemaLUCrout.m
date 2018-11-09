function x = sistemaLUCrout(A,b)
  n=length(A);
  lu=LU(A);
  L=tril(lu,-1)+eye(n);
  U=triu(lu);
  L = L';
  U = U';
  y=sust_adel(U,b);
  x=sustat(L,y);
 endfunction