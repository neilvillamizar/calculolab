function x=t_superior(A,b)
[m,n]=size(A);
  for i=n:-1:1
      suma=0.0;
      for j=i+1:1:n
          suma=suma+A(i,j)*x(j);
      end
      if(A(i,i)==0)
          printf('Error')
          return
      end
      x(i)=(b(i)-suma)/A(i,i);
  end
end
