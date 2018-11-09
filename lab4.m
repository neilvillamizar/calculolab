%Laboratorio 4
%Neil Villamizar
%15-11523

%Ejercicio 1:

A0 = ones(1000,1000);

for i=1:1:1000
  for j=1:1:1000
    if (i==j)
      A0(i,j) = -500000;
    else
      A0(i,j) = min(i,j);
    endif
  endfor
endfor

b0 = ones(1000,1);

for i=1:1:1000
  b0(i)=i;  
endfor

%parte a:

printf("Ejercicio 1:\nParte a:\nSolucion al sistema generado usando gauss sin pivoteo:\n")
tic;
[A0,b0] = gauss(A0,b0);
x1 = sustat(A0,b0)
printf("tiempo de ejecucion:\n")
toc %1247

%parte b:
printf("\nParte b:\nSolucion al sistema generado usando descomposicion LU:\n")
tic;
x1 = sistemaLUCrout(A0,b0)
printf("tiempo de ejecucion:\n")
toc %833

%Ejercicio 2:
printf("Ejercicio 2:\n")

Y = ones(250,250);

for i=1:1:250
  for j=1:1:250
    Y(i,j)=rand()*(10)-5;
  endfor
endfor

B = Y*Y';

A = B + (min(eig(B)))*eye(250);

e = ones(250,1);

for i=1:1:250
  e(i)=(-1)^i;
endfor

b=A*e;

%parte a:
printf("Parte a:\n")
if(A==A')
  printf("Es simetrica.\n")
else
  printf("No es simetrica.\n")
endif
min(eig(A))
%que sea definida positiva es quivalente a que todos sus autovalores son positivos y es simetrica.
if(min(eig(A))>0)
  printf("Es definida positiva. Sus autovalores son positivos.\n")
else
  printf("No es definida positiva\n.")
endif 
 
%parte b,c:
printf("Parte b y c:\n")

A1 = B + (10^(-12) - min(eig(B)))*eye(250);
b1 = A1*e;

printf("Solucion A1 LU Crout:\n")
tic;
x1=sistemaLUCrout(A1,b1)
printf("tiempo:\n")
toc %132
printf("Error relativo:\n")
norm(x1-e,Inf)/norm(e,Inf)

printf("Solucion A1 Cholesky:\n")
tic;
x1=sistemacholesky(A1,b1)
printf("tiempo:\n")
toc %42
printf("Error relativo:\n")
norm(x1-e,Inf)/norm(e,Inf)

printf("Condicion:\n")
cond(A1,Inf)
printf("Mnimo autovalor:\n")
min(eig(A1))

A2 = B + (10^(-8) - min(eig(B)))*eye(250);
b2 = A2*e;

printf("Solucion A2 LU Crout:\n")
tic;
x2=sistemaLUCrout(A2,b2)
printf("tiempo:\n")
toc %135
printf("Error relativo:\n")
norm(x2-e,Inf)/norm(e,Inf)

printf("Solucion A2 Cholesky:\n")
tic;
x2=sistemacholesky(A2,b2)
printf("tiempo:\n")
toc%46
printf("Error relativo:\n")
norm(x2-e,Inf)/norm(e,Inf)

printf("Condicion:\n")
cond(A2,Inf)
printf("Mnimo autovalor:\n")
min(eig(A2))


A3 = B + (10^(-4) - min(eig(B)))*eye(250);
b3 = A3*e;

printf("Solucion A3 LU Crout:\n")
tic;
x3=sistemaLUCrout(A3,b3)
printf("tiempo:\n")
toc %137
printf("Error relativo:\n")
norm(x3-e,Inf)/norm(e,Inf)

printf("Solucion A3 Cholesky:\n")
tic;
x3=sistemacholesky(A3,b3)
printf("tiempo:\n")
toc %48
printf("Error relativo:\n")
norm(x3-e,Inf)/norm(e,Inf)

printf("Condicion:\n")
cond(A3,Inf)
printf("Mnimo autovalor:\n")
min(eig(A3))

%parte d
% El metodo mas eficiente resulto  ser el metodo de cholesky,
% como era de esperarse por lo visto en clases.
% El tamano de e, esta directamente relacionado con el del minimo autovalor de A.
% Entre mas grande es e, parece que la exactitud es menor, es decir, el 
% error relativo aumenta, y tambien se nota que la condicion de 
% la matriz aumenta conforme lo hace e.