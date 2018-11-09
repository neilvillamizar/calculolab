function [A,b] = gauss(A,b)
 [m, n] = size(A);
 for k=1:1:n-1
  for i=k+1:1:n
    alpha = A(i,k)/A(k,k);
    for j=k:1:n
      A(i,j)=A(i,j)-(alpha*A(k,j));
    end
    b(i)=b(i)-(alpha * b(k));
  end
 end
endfunction