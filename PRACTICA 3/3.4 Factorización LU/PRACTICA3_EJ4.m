%DAVIDSEIJAS
%PRACTICA 3 EJ 4
%Factorizacion LU

%n=input('Dame numero de columnas: ');
%A=randi(n,n);

n = input('Dame numero de columnas: ');
A = zeros(n,n);
for i=1:n
     s = sprintf('Dame los %d elementos de la fila %d de A ',n,i);
     A(i,:) = input(s);
end

resp = 1;
B = factorizacionLU(A);

while resp==1
    s = sprintf('Dame los %d elementos de b: ',n);
    b = input(s);
    b = b';
    
    w = trinf1(B,b);
    u = trisup(B,w);
    disp('La solucion del sistema Au=b con A')
    disp(A)
    disp('y b')
    disp(b)
    disp('usando la factorizacion LU es: ')
    disp(u)
    disp('Las matrices L y U (en una sola) son:')
    disp(B)
    
    %Utilizando comando lu
    [M,O]=lu(A);
    disp('Matrices M y O:')
    disp(M)
    disp(O)
    z = M\b;
    v = O\z;
    disp('La solucion del mismo sistema usando el comando LU es:')
    disp(v)
    
    resp=input('Si desea continuar con esta matriz introduzca 1: ');
end