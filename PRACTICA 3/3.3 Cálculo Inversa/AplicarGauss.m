function [A,punt]=AplicarGauss(A,punt);
n = size(punt,2);
for j = 1:n-1
    %Calcular la permutacion de filas (se modifica el vector punt que es el
    %que lleva el orden de las filas)
    [m,ind] = max(abs(A(punt(j:n),j)));
    aux = punt(j);
    punt(j) = punt(j+ind-1);
    punt(j+ind-1) = aux;
    if A(punt(j),j)<0
        m = -m;
    end
    
    %Operar con las filas
    for i = j+1:n
        %Colocamos el multiplicador en la posicion correspondiente(sera el
        %elemento (de cada fila) de la columna en la que estamos y todas 
        %las filas que estan por debajo de por la que vamos (coincide con 
        %la columna) dividido entre el pivote (elemento que esta en la 
        %posicion de la fila y columna por la que estamos)
        A(punt(i),j) = A(punt(i),j)/m;
        
        %Tenemos que modificar A(punt(i),k) para k=j+1...n, que serán el
        %elemento que esta en esa posicion menos los elementos de la fila 
        %por la que vamos por el multiplicador
            for k = j+1:n
                A(punt(i),k) = A(punt(i),k) - (A(punt(i),j) * A(punt(j),k));
            end
    end 
end