%DAVIDSEIJAS

function x=tridiag(a,b,c,d)
n=size(d,2);
m=zeros(n,1);
g=zeros(n,1);

m(1) = b(1);
g(1) = d(1)/m(1);
for k=2:n
    m(k) = b(k) - c(k-1)*a(k-1)/m(k-1); %aqui a va de 1 a n-1 no de 2 a n
    g(k) = (d(k) - g(k-1)*a(k-1))/m(k);
end

x = zeros(n,1);
x(n) = g(n);
k = n-1;
while k>=1
    x(k) = g(k)-(c(k)/m(k))*x(k+1);
    k = k-1;
end 