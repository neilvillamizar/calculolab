function Longitud = LongitudLineaCosta()
%Funcion que calcula la Longitud aproximada de la costa de 
% la peninsula de paraguana usando una aproximacion de esta
% hecha con spline cubicos. 

  %Se toman las coordenadas de los puntos de cada uno de los 
  % spline cubicos con la funcion captura_puntos.
  [x1,y1] = captura_puntos('paraguana_escala1.bmp');
  [x2,y2] = captura_puntos('paraguana_escala2.bmp');
  [x3,y3] = captura_puntos('paraguana_escala3.bmp');
  [x4,y4] = captura_puntos('paraguana_escala4.bmp');
  [x5,y5] = captura_puntos('paraguana_escala5.bmp');
  [x6,y6] = captura_puntos('paraguana_escala6.bmp');
  [x7,y7] = captura_puntos('paraguana_escala7.bmp');
  [x8,y8] = captura_puntos('paraguana_escala8.bmp');
  [x9,y9] = captura_puntos('paraguana_escala9.bmp');
  [x10,y10] = captura_puntos('paraguana_escala10.bmp');
  
  %Se crean los Spline cubicos necesarios para aproximar la 
  %peninsula a partir de los puntos leidos anteriormente.
  S1 = SplineCubico(x1,y1);
  S2 = SplineCubico(x2,y2);
  S3 = SplineCubico(x3,y3);
  S4 = SplineCubico(x4,y4);
  S5 = SplineCubico(x5,y5);
  S6 = SplineCubico(x6,y6);
  S7 = SplineCubico(x7,y7);
  S8 = SplineCubico(x8,y8);
  S9 = SplineCubico(x9,y9);
  S10 = SplineCubico(x10,y10);
  
  %Aqui se acumulara la sumatoria de las longitudes de cada polinomio cubico.
  Longitud = 0;
  %Cada longitud de las curvas, se calculara con la funcion LongitudArco.
  %Suma de longitudes de los polinomios del primer Spline cubico.
  for i=1:length(x1)-1
    Longitud+=LongitudArco(x1(i),x1(i+1),S1(i,:));
  end
  
  %Suma de longitudes de los polinomios del segundo Spline cubico.
  for i=1:length(x2)-1
    Longitud+=LongitudArco(x2(i),x2(i+1),S2(i,:));
  end
  
  %Suma de longitudes de los polinomios del tercer Spline cubico.
  for i=1:length(x3)-1
    Longitud+=LongitudArco(x3(i),x3(i+1),S3(i,:));
  end
  
  %Suma de longitudes de los polinomios del cuarto Spline cubico.
  for i=1:length(x4)-1
    Longitud+=LongitudArco(x4(i),x4(i+1),S4(i,:));
  end
  
  %Suma de longitudes de los polinomios del quinto Spline cubico.
  for i=1:length(x5)-1
    Longitud+=LongitudArco(x5(i),x5(i+1),S5(i,:));
  end
  
  %Suma de longitudes de los polinomios del sexto Spline cubico.
  for i=1:length(x6)-1
    Longitud+=LongitudArco(x6(i),x6(i+1),S6(i,:));
  end
  
  %Suma de longitudes de los polinomios del septimo Spline cubico.
  for i=1:length(x7)-1
    Longitud+=LongitudArco(x7(i),x7(i+1),S7(i,:));
  end
  
  %Suma de longitudes de los polinomios del octavo Spline cubico.
  for i=1:length(x8)-1
    Longitud+=LongitudArco(x8(i),x8(i+1),S8(i,:));
  end
  
  %Suma de longitudes de los polinomios del noveno Spline cubico.
  for i=1:length(x9)-1
    Longitud+=LongitudArco(x9(i),x9(i+1),S9(i,:));
  end
  
  %Suma de longitudes de los polinomios del decimo Spline cubico.
  for i=1:length(x10)-1
    Longitud+=LongitudArco(x10(i),x10(i+1),S10(i,:));
  end
  
  %Una vez calculada la longitud en pixeles, se pasa a kilometros:
  Longitud = (Longitud/33)*5; %regla de tres (66 pixeles == 10 km)
  %Da 250.78 km.

endfunction