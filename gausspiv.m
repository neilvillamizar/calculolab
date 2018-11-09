
function [A, b] = gausspiv(A, b)
    n = length(A);
    for k=1:1:n-1
      maximo = abs(A(k,k));
      imaximo = k;
      for i =k+1:1:n
        if (abs(A(i,k))> maximo)
           maximo = abs(A(i, k));
           imaximo=i;
        endif
      endfor

      for j = k:1:n
        temp = A(imaximo, j);
        A(imaximo,j)=A(k,j);
        A(k,j) = temp;
      endfor
      temp=b(imaximo);
      b(imaximo)=b(k);
      b(k) = temp;

      for i=k+1:n
        m = A(i, k)/A(k,k);
        for j = k:1:n
          A(i,j) = A(i,j)- m*A(k,j);
        end
        
        b(i)=b(i)-m*b(k);
      end
        
    endfor
endfunction