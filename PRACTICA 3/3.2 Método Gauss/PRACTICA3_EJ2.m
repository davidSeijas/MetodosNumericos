%DAVIDSEIJAS
%PRATICA 3 EJ 2
%Resolver sistema aplicando Gauss

n = input('Dame numero de columnas: ');

for i=1:n
     s = sprintf('Dame los %d elementos de la fila %d de A ',n,i);
     A(i,:) = input(s);
end

resp = 1;
punt = 1:1:n;
[B,punt] = AplicarGauss(A,punt);

while resp==1
    s = sprintf('Dame los %d elementos de b: ',n);
    b = input(s);
    b = b';
    
    u = resolverSistema(B,punt,b);
    disp('La solucion del sistema lineal Au=b con A')
    disp(A)
    disp('y b')
    disp(b)
    disp('usando el metodo de Gauss es: ')
    disp(u)
    disp('La matriz de Gauss de A es: ')
    disp(B)
    
    v = A\b;
    disp('La solución del sistema linea usando el comando \ es:')
    disp(v)
    resp=input('Si desea continuar con esta matriz introduzca 1: ');
end