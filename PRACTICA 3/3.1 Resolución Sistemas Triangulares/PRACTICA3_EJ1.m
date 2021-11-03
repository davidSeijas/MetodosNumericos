%DAVIDSEIJAS
%PRATICA 3 EJ 1

n = input('Dame numero de columnas: ');
A = zeros(n,n);
for i=1:n
     s = sprintf('Dame los %d elementos de la fila %d de A: ',n,i);
     A(i,:) = input(s);
end
s = sprintf('Dame los %d elementos de b: ',n);
b = input(s);
b = b';

B = tril(A); %matriz triang inf a partir de A
D = B;
for i=1:n
    D(i,i) = 1; %matriz triang inf con 1´s en la diagonal
end

C = triu(A); %matriz triang sup a partir de A
E = C;
for i=1:n
    E(i,i) = 1; %matriz triang sup con 1´s en la diagonal
end
 
%si envias la matriz A a todas las funciones hace lo mismi, pues en la
%propia funcion solo tuiliza los elementos que se requieren
u1 = trinf1(D,b);
disp('Sistema Au=b con A (triang inf con 1s en la diag):')
disp(D);
disp('y b:')
disp(b);
disp('La solucion del sistema es: ');
disp(u1);

u2 = trinf(B,b);
disp('Sistema Au=b con A (triang inf):')
disp(B);
disp('y b:')
disp(b);
disp('La solucion del sistema es: ');
disp(u2);

u3 = trisup1(E,b);
disp('Sistema Au=b con A (triang sup con 1s en la diag):')
disp(E);
disp('y b:')
disp(b);
disp('La solucion del sistema es: ');
disp(u3);

u4 = trisup(C,b);
disp('Sistema Au=b con A (triang sup):')
disp(C);
disp('y b:')
disp(b);
disp('La solucion del sistema es: ');
disp(u4);
