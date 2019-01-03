function ContornoCosta()
%Funcion que grafica el contorno de la costa de la 
% peninsula de Paraguana, usando varios splines cubicos.
  
  %Primero se extraen las coordenadas de los nodos
  % que se usaran para generar los splines cubicos.
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
  
  %Con la siguiente funcion se guardaron las coordenadas:
  %save('Coordenadas.mat');

  %Se procede a calcular los splines cubicos para cada curva
  % que conforman la costa que se desea aproximar
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
  
  %Se procede a graficar todos los Splines juntos
  figure
  hold on
  plotSplineCubico(x1,y1,S1);
  plotSplineCubico(x2,y2,S2);
  plotSplineCubico(x3,y3,S3);
  plotSplineCubico(x4,y4,S4);
  plotSplineCubico(x5,y5,S5);
  plotSplineCubico(x6,y6,S6);
  plotSplineCubico(x7,y7,S7);
  plotSplineCubico(x8,y8,S8);
  plotSplineCubico(x9,y9,S9);
  plotSplineCubico(x10,y10,S10);
  %como resultado se obtiene la aproxmimacion deseada.
  
  %La siguiente funcion guarda el plot en matlab, 
  % pero no esta implementada en octave:
  %savefig('AproximacionPeninsula.fig')
  %close(gcf)
  %Por lo que se suministra el plot adjunto en ofig en lugar de fig.
  % usando la siguiente funcion:
  %hgsave('aproxmimacionPeninsula')
  
endfunction