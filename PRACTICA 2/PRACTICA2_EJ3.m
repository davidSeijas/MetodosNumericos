%DAVID SEIJAS
%PRACTICA 2 EJ 3

n = randi(5);
A = rand(n,n); 
norma1 = norm(A,1);
normaInf = norm(A,inf);
normaFro = norm(A,'fro');
disp('Con comandos')
disp('Norma 1:')
disp(norma1)
disp('Norma Infinito:')
disp(normaInf)
disp('Norma Frobenius:')
disp(normaFro)

for j=1:n
    suma1(j) = sum(abs(A(:,j)));
end
nor1 = max(suma1);

for i=1:n
    suma2(i) = sum(abs(A(i,:)));
end
norInf = max(suma2);

suma3 = 0;
for i=1:n
    for j=1:n
        suma3 = suma3 + (abs(A(i,j))^2);
    end
end
norFro = sqrt(suma3);

disp('Con formulas')
disp('Norma 1:')
disp(nor1)
disp('Norma Infinito:')
disp(norInf)
disp('Norma Frobenius:')
disp(norFro)