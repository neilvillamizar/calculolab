function [A,b]=elim_gauss_pivot(A,b);
 
  [m,n]=size(A);
  
  for k=1:1:n-1;      
      
      index = k;
      for i=k+1:1:n;
        if(abs(A(i,k))>abs(A(index,k)));
           index=i;
        end
      end      
      
      if(index!=k);
        for j=k:1:n;
          temp=A(index,j);
          A(index,j)=A(k,j);
          A(k,j)=temp;
        end
        temp=b(index);
        b(index)=b(k);
        b(k)=temp; 
      end  
            
      for i=k+1:1:n
          x=A(i,k)/A(k,k);
          for j=k:1:n
              A(i,j)=A(i,j)-(x*A(k,j));
          end
          b(i)=b(i)-(x*b(k));
      end
      
  end
end     
        