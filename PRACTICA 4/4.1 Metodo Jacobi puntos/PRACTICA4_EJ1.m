%DAVIDSEIJAS
%PRACTICA 4 EJ 1
%Metodo Jacobi puntos

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

iter = input('Dame el nº máximo de iteraciones que desea: ');
prec = input('Dame la precisión que desea: ');

[sol,k] = metodoJacobi(A, b, iter, prec);

disp('METODO DE JACOBI del sistema lineal Au=b con A:')
disp(A)
disp('y b:')
disp(b)
disp('·')
disp('·')
disp('·')
    
if(k==iter)
    disp('Hemos alacanzado el máximo de iteraciones')
    disp('La última solución aproximada (erronea) fue: ')
    disp(sol)
else 
    disp('METODO CONVERGENTE')
    disp('Test de parada alcanzado en k = ')
    disp(k)
    disp('La solución aproximada obtenida del sistema es:')
    disp(sol)
end
