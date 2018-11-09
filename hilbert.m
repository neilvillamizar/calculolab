function [H,h]=hilbert(n)
   
   for i=1:1:n;
    for j=1:1:n;
      H(i,j) = 1/(i+j-1);
    endfor
   endfor
   x=1:1:n;
   h=H*(x');
end