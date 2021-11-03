%DAVID SEIJAS EJ8


%Calculando la secuencia con la definicion dada no da bien del todo 
%(algoritmo inestable, en algun momento da terminos negativos)
x0 = 1;
x1 = 1/7;
disp('Los 100 primeros terminos de la sucesion (con algoritmo inestable):')
disp(x0)
disp(x1)
z = x0;
y = x1;
for i=1:98
   aux = y;
   x = 22/7*y - 3/7*z;
   z = aux;
   y = x;
   disp(x)
end

%Calculando la secuencia con (1/7)^n que es lo que es de vdd da una 
%solucion mejor (algoritmo estable)
disp('Los 100 primeros terminos de la sucesion (con algoritmo inestable):')
for n=0:100   
    suc = (1/7)^n;
    disp(suc)
end
