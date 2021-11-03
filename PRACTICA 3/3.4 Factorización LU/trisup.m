%Funcion que resuelve el sistema lineal triangular superior
function u=trisup(A,b)

n=size(b,1);
u=rand(n,1);
u(n)=b(n)/A(n,n);
i=n-1;

while i>=1
    v=A(i,[i+1:n]);
    w=u(i+1:n);
    suma=v*w;
    u(i)=(b(i)-suma)/A(i,i);
    i=i-1;
end