%DAVIDSEIJAS
%PRACTICA 4 EJ 1
%Metodo Jacobi puntos

function [sol, k] = metodoJacobi(A, b, iter, prec)
    n = size(A,1);
    u_k = zeros(n,1);
    norma = norm(b);
    
    k = 1;
    while (k < iter)
        x(k) = k;
        r_k = b' - A*u_k;   %vector residuo
        
        y(k) = norm(r_k) / norma;
        if(y(k) < prec)
            break;      %paramos el bucle y nos quedamos con la solucion 
                        %aproximada anterior y la k en la que hemos parado
        end 
        
        d_k = r_k./diag(A); %esto es la componente i de r_k por 1/aii pues 
                            %D^-1 es una matriz diagonal ccuyos elementos 
                            %son los inversos de la diagonal de A 
        u_k = u_k + d_k;    %u_(k+1)=u_k + d_k
        k = k + 1;    
    end
     
    sol = u_k;
    plot(x, y)
end