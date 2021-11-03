function A=factorizacionCholesky(A)
n = size(A,1);

for i=1:n
    k = norm(A(i,(1:i-1))); %la norma es la suma de los cuadrados de los valores absolutos de esos elementos
    k = k^2;
    if A(i,i)<=k
        error ('No se puede aplicar el metodo de Cholesky');
    end
    
    A(i,i) = sqrt(A(i,i) - k);
    for j=i+1:n
        v = A(i,(1:i-1));
        w = A(j,(1:i-1));
        A(j,i) = (1/A(i,i)) * (A(i,j) - v*w');
   end
end
