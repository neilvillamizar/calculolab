function [A,b]=elim_gauss(A,b,type)
   if(type==0)
    [A,b]=elim_gauss_spivot(A,b);
   else
    [A,b]=elim_gauss_pivot(A,b);
   end
end