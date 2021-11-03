%DAVIDSEIJAS
%PRACTICA 3 EJ 6
%Resolucion Sitemas Tridiagonales

n = input('Dame tamaño de la matriz: ');
b = zeros(n,1); %diagonal
a = zeros(n-1,1); %diagonal de abajo
c = zeros(n-1,1); %diagonal de arriba
d = zeros(n,1);

s = sprintf('Dame los %d elementos de b %d de A ',n);
b = input(s);
s = sprintf('Dame los %d elementos de a %d de A ',n-1);
a = input(s);
s = sprintf('Dame los %d elementos de c %d de A ',n-1);
c = input(s);
s = sprintf('Dame los %d elementos de d %d de A ',n);
d = input(s);

x = tridiag(a,b,c,d);

disp('La solucion del sistema lineal tridiagonal Ax=d es: ')
disp(x)