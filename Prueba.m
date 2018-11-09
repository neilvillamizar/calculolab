Matriz_Prueba = hilbert(11)+1025*eye(11);

x=ones(11,1);
b = Matriz_Prueba * x;
t = cputime;
[x,k] = GaussSeidel(Matriz_Prueba,b,0*ones(11,1),1500,10^-7)
printf("%d\n",cputime-t);
