%DAVIDSEIJAS
%PRACTICA 3 EJ 3
%Calcular inversa con Gauss-Jordan

n = input('Dame numero de columnas: ');
A = zeros(n,n);
for i=1:n
     s = sprintf('Dame los %d elementos de la fila %d de A ',n,i);
     A(i,:) = input(s);
end

punt = 1:1:n;
Ainv = zeros(n,n);
[B,punt] = AplicarGauss(A,punt);

for j=1:n
    b = zeros(n,1);
    b(j) = 1;
    Ainv(:,j) = resolverSistema(B,punt,b);
end

disp('La matriz A')
dsp(A)
disp('La inversa de A con Gauss es:')
disp(Ainv);
disp('La inversa de A con comando es:')
disp(inv(A));