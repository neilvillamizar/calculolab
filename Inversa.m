function Inv = Inversa(A)
%inversa pro
  
  n = length(A);
  Lu = LU(A);
  L = tril(Lu,-1) + eye(n);
  U = triu(Lu);
  Inv = [];
  for k=1:1:n
    e = 0*ones(n,1);
    e(k)=1;
    y=sust_adel(L,e);
    x=sustat(U,y);
    Inv=[Inv,x];
  endfor
endfunction
  
%inversa no pro  
%  n = length(A);
%  e = 0*ones(n,1);
%  Inv =[];
%  for k = 1:1:n
%    e = 0*ones(n,1);
%    e(k)=1;
%    x = sistemaLU(A,e);
%    Inv = [Inv,x];
%  endfor
%endfunction
  