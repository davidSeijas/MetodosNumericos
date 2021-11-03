%DAVIDSEIJAS
%PRACTICA 3 EJ 5
%Metodo Cholesky

n = input('Dame numero de columnas: ');
A = zeros(n,n);

for i=1:n
     s = sprintf('Dame los %d elementos de la fila %d de la triangular superior de A ',n-i+1,i);
     A(i,(i:n)) = input(s);
    for j=i+1:n
        A(j,i) = A(i,j);
    end
end

resp = 1;
B = factorizacionCholesky(A);

while resp==1
    s = sprintf('Dame los %d elementos de b: ',n);
    b = input(s);
    b = b';
    
    w = trinf(B,b);
    u = trisup(B',w);
    disp('La solucion del sistema lineal Au=b con A')
    disp(A)
    disp('y b')
    disp(b)
    disp('usando el Metodo Cholesky es:')
    disp(u)
    disp('Las matrices B y B^T son:')
    disp(B)
    disp(B')
    
    %Aplicando comando chol
    R = chol(A);
    y = trinf(R',b);
    z = trisup(R,y);
    disp('La solución del mismo sistema usando el comando chol es:')
    disp(z)
    disp('con las matrices B y B^T:')
    disp(R')
    disp(R)
    
    resp=input('Si desea continuar con esta matriz introduzca 1: ');
end