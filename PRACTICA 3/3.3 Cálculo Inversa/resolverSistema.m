function u=resolverSistema(A,punt,b)
n=size(punt,2);
w=zeros(n,1);

w(1) = b(punt(1));
for i=2:n
    x = A(punt(i),[1:i-1]);
    y = w(1:i-1);
    w(i) = b(punt(i)) - x*y; %w sera la b despues de aplicarle las modificaciones para que no se mantenga el mismo sistema tras hacerle gauss a la matriz
end

u = zeros(n,1);
u(n) = w(n)/A(punt(n),n);
i = n-1;
while i>=1
    x = A(punt(i),[i+1:n]);
    y = u(i+1:n);
    u(i) = (1/A(punt(i),i))*(w(i) - x*y); %los us que tenemos calculados por el coef de la matriz con la que aparece en esa fila se le resta a nuestro w en esa posicion para saber 
    i = i-1;
end