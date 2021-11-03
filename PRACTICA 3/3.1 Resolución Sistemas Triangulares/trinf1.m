%Funcion que resuelve el sistema lineal con 1 en diagonal y triangular
%inferior
function u=trinf1(A,b)

n=size(b,1);
u=rand(n,1);
u(1)=b(1);

for i=2:n
    v=A(i,[1:i-1]);
    w=u(1:i-1);
    suma=v*w;
    u(i)=b(i)-suma;
end