function A=factorizacionLU(A)
n = size(A,1);

for i=1:n
    A(i,i) = A(i,i) - (A(i,[1:i-1])*A([1:i-1],i));
    if A(i,i)==0
        error('La matriz no admite factorizacion LU');
    end
    
    for j=i+1:n
        v1 = A(i,[1:i-1]);
        v2 = A([1:i-1],j);
        A(i,j) = A(i,j) - v1*v2;
    end
    
    for j=i+1:n
            v3 = A(j,[1:i-1]);
            v4 = A([1:i-1],i);
            A(j,i) = (1/A(i,i)) * (A(j,i) - v3*v4);
    end
end
