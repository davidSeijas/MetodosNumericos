%Funcion que resuelve el sistema lineal con 1 en diagonal y triangular
%superior
function u=trisup1(A,b)

n=size(b,1);
u=rand(n,1);
u(n)=b(n);
i=n-1;

while i>=1
    v=A(i,[i+1:n]);
    w=u(i+1:n);
    suma=v*w;
    u(i)=b(i)-suma;
    i=i-1;
end