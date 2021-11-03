%DAVIDSEIJAS
%PRACTICA 4 EJ 2
%Metodo Relajacion puntos

function [sol, k] = metodoRelajacion(A, b, iter, prec, w)
    n = size(A,1);
    u_k = zeros(n,1);
    u_k1 = zeros(n,1); %sera el u_(k+1) de cada iteracion y que usaremos 
                       %para atualziar el u_k al final
    norma = norm(b);
    
    k = 1;
    while (k < iter)
        x(k) = k;
    %definicion del libro (componente a componente pues depende de k y k+1)
        r_k(1) = b(1) - (A(1, 1:n) * u_k); %u_k(1:n) es lo mismo
        d_k(1) = w * (r_k(1) / A(1,1));
        u_k1(1) = u_k(1) + d_k(1);
        
        for(i = 2:n)
            r_k(i) = b(i) - (A(i, 1:i-1) * u_k1(1:i-1)) - (A(i, i:n) * u_k(i:n));
            d_k(i) = w * (r_k(i) / A(i,i));
            u_k1(i) = u_k(i) + d_k(i);
        end
        
        y(k) = norm(r_k) / norma;
        if(y(k) < prec)
            break; % paramos aqui para quedanos con 
        end 
  
        u_k = u_k1; %actualizamos el u_k para pasar de iteracion
        k = k + 1;
    end
    
    sol = u_k1;
    plot(x, y)
end