%DAVID SEIJAS EJ1

format longe 
%EL numero anterior al 1 será normalizado: 1.1(52)1*2^-1 = (1 + 1/2 + 1/4 + ... + 1/2^-52)*1/2 = 1/2 + 1/4 + ... + 1/2^-53
num=0;
aux=1;
for i=1:53
    aux = aux/2; %con esto voy guardando las potencias que ya he calculado
    num = num + aux; 
end
disp('El numero máquina anterior al 1 es:')
disp(num)
disp('La distancia del 1 al anterior número máquina en doble precisión es:')
disp(1-num)

format