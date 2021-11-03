%DAVIDSEIJAS
%PRACTICA 4 EJ 2
%Metodo Relajacion puntos

n = input('Dame numero de columnas: ');
A = zeros(n,n);
b = zeros(n,1);

stop = 0;
while(stop == 0)
    for i=1:n
         s = sprintf('Dame los %d elementos de la fila %d de la matriz A: ',n,i);
         A(i,(1:n)) = input(s);
    end
    
    stop = 1;
    for i=1:n
         if(A(i,i) == 0)
             stop = 0;
         end
    end
    if(stop == 0)
        disp('Matriz A no valida para el metodo: algun elemento de la diagonal es nulo')
        disp('Volver a intriducir matriz A')
    end
end

s = sprintf('Dame los %d elementos de b: ',n);
b = input(s);

w = 0;
while(w == 0)
    s = sprintf ('Introduce factor de peso (w!=0) del m�todo: ');
    w = input(s); %se puede w = input('Introduce factor de peso (w!=0) del m�todo: ');
end
iter = input('Dame el n� m�ximo de iteraciones que desea: ');
prec = input('Dame la precisi�n que desea: ');

[sol,k] = metodoRelajacion(A, b, iter, prec, w);

disp('METODO DE RELAJACION del sistema lineal Au=b con A:')
disp(A)
disp('y b: ')
disp(b)
disp('y factor de peso w: ')
disp(w)
disp('�')
disp('�')
disp('�')
    
if(k==iter)
    disp('Hemos alacanzado el m�ximo de iteraciones')
    disp('La �ltima soluci�n aproximada (erronea) fue: ')
    disp(sol)
else 
    disp('METODO CONVERGENTE')
    disp('Test de parada alcanzado en k = ')
    disp(k)
    disp('La soluci�n aproximada obtenida del sistema es:')
    disp(sol)
end
