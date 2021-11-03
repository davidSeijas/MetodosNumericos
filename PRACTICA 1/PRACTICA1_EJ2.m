%DAVID SEIJAS EJ2

format longe

suma1 = 1 + 2^-52; %el siguiente numero maquina normal (el epsilon es 2^-52)
suma2 = 1 + 2^-53; %este numero es la mitad del anterior y como no es normal hay que redondearlo, pero esta a la misma distancia entre 1 y el siguiente, pero redondea al 1, al de la ultima cifra 0
suma3 = 1 - 2^-53; %el anterior numero maquina normal (el epsilon es 2^-52)
suma4 = 1 - 2^-54; %%este numero es la mitad del anterior y como no es normal hay que redondearlo, pero esta a la misma distancia entre 1 y el anterior, pero redondea al 1, al de la ultima cifra 0
disp('Los resultados de la suma son;')
disp(suma1)
disp(suma2)
disp(suma3)
disp(suma4)

format