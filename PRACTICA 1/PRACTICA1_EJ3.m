%DAVID SEIJAS EJ3

%El mayor numero normal es 1.1(23)1 * 2^127 (el exponente mayor es 254-127, 255 es caso de infinitos)
%esto es (1 + 1/2 + ... + 1/2^23) * 2^127
mayorNormal=0;
aux=1;
for i=1:24
    mayorNormal = mayorNormal + aux; 
    aux = aux/2;
end
mayorNormal = mayorNormal * 2^127;
disp('El mayor numero normal máquina es:')
disp(mayorNormal)

%El menor numero normal es 1 * 2^-126 (el exponente menor es 1-127, 0 e subnormal)
menorNormal=2^-126;
disp('El menor (positivo) numero normal máquina es:')
disp(menorNormal)

%El mayor numero subnormal es 0.1(23)1 * 2^-126 ()
%esto es (1/2 + 1/4 + ... + 1/2^23) * 2^-126
mayorSubnormal=0;
aux=1;
for i=1:23
    aux = aux/2; %con esto voy guardando las potencias que ya he calculado
    mayorSubnormal = mayorSubnormal + aux; 
end
mayorSubnormal = mayorSubnormal * 2^-126;
disp('El mayor numero subnormal máquina es:')
disp(mayorSubnormal)

%El menor numero subnormal es (1 * 2^-23) * 2^-126 (el exponente en subnormales es -126)
% que es 2^-149
menorNormal=2^-149;
disp('El menor (positivo) numero subnonormal máquina es:')
disp(menorNormal)