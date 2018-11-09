function [A,b]=elim_gauss_spivot(A,b)
[m,n]=size(A);
  for k=1:1:n-1;               
      for i=k+1:1:n
          x=A(i,k)/A(k,k);
          for j=k:1:n
              A(i,j)=A(i,j)-(x*A(k,j));
          end
          b(i)=b(i)-(x*b(k));
      end
  end
end

        
        