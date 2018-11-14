function [x,k,r] = potencia(A,error,x,itmax) % para sacar el autovalor maximo
  for k=1:1:itmax
    y = A*x;
    r = y(1)/x(1);
    if norm(x-(y/norm(y,inf)),inf)<error
      return
    end
    x = y/norm(y,inf);
  end
end