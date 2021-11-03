%DAVID SEIJAS
%PRACTICA 2 EJ 2

n = randi(5); %Numero entero aleatorio como mucho 5

%a
A = rand(n,n); %matriz aleatoria de n filas y n columnas
B = rand(n,n);
AB= A*B;
BA = B*A;
sol1 = det(AB);
disp('det(AB)')
disp(sol1)
sol2 = det(BA);
disp('det(BA)')
disp(sol2)
sol3 = det(A)*det(B);
disp('det(A)*det(B)')
disp(sol3)

%b
x = rand;
sol4 = det(x*A);
disp('det(xA)')
disp(sol4)
sol5 = (x^n)*det(A);
disp('(x^n)*det(A)')
disp(sol5)

%c
sol6 = A'; %A' es A*
disp('det(A*)')
disp(sol6)
sol7 = conj(det(A));
disp('conj(det(A))')
disp(sol7)

%d
sp = eig(A); %vector con todos los autovalores
sol8 = prod(sp);
disp('Producto de autovalores:')
disp(sol8)
sol9 = det(A);
disp('det(A)')
disp(sol9)