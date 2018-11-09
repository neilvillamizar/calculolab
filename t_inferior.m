function x=t_inferior(A,b)
[m,n]=size(A);
  for i=1:1:n
      suma=0.0;
      for j=1:1:i-1
          suma=suma+A(i,j)*x(j);
      end
      if(A(i,i)==0)
          printf('Error')
          return
      end
      x(i)=(b(i)-suma)/A(i,i);
  end
end
