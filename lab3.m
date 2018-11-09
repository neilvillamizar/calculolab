%Laboratorio 3
%Neil Villamizar
%15-11523

%Ejercicio 1:

A = ones(1000,1000);

for i=1:1:1000
  for j=1:1:1000
    if (i==j)
      A(i,j) = -500000;
    else
      A(i,j) = min(i,j);
    endif
  endfor
endfor

b = ones(1,1000);

for i=1:1:1000
  b(i)=i;  
endfor

%parte a:

printf("Ejercicio 1:\nParte a:\nSolucion al sistema generado usando gauss sin pivoteo:\n")
tic;
[A1,b1] = gauss(A,b);
x1 = sustat(A1,b1)
printf("tiempo de ejecucion:\n")
toc

%parte b:
printf("\nParte b:\nSolucion al sistema generado usando descomposicion LU:\n")
tic;
x1 = sistemaLU(A,b)
printf("tiempo de ejecucion:\n")
toc

