%DAVID SEIJAS EJ5

format longe 

x=1;
while 1 + x > 1 %calculo el numero sumando potencias de 2 a 1 hasta que la maquina lo confunde con el 1
    num = 1 + x; %lo que calculo es el siguiente numero maquina y calculo la dist a 1
    x = x/2;
end
disp('Epsilon calculando el siguiente numero:')
disp(num - 1) %num tiene el siguiente numero maquina a 1 y epsilon es la diferencia entre 1 y el siguiente
disp('Epsilon de la maquina:')
disp(eps)

format