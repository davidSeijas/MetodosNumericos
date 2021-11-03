%DAVID SEIJAS
%PRACTICA 2 EJ 1

A = rand(2,2); 
B = rand(2,3); %matriz aleatoria de 2 filas y 3 columnas
C = rand(3,2);
D = rand(3,3);
E = rand(2,2);
F = rand(2,3);
G = rand(3,2);
H = rand(3,3);
M = [A B; C D]; %`punto y coma separa filas
N = [E F; G H];
sol1 = M*N;
sol2 = [A*E + B*G A*F + B*H; C*E + D*G C*F + D*H];
norma = norm(sol1 - sol2,inf); %norma infinito de una matriz

disp('Resultado del producto normal:')
disp(sol1)
disp('Resultado del producto por bloques:')
disp(sol2)
disp('Norma de la diferencia de los resultados:')
disp(norma)