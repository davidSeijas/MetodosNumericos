%DAVID SEIJAS EJ^7

a = 1;
b = -(64 + 10^-15);
c = 64*10^-15;

pol = [a b c];
roots(pol); %raices del polinomio con el comando

x1 = (-b+sqrt((b^2)-(4*a*c)))/2*a; %raices con la formula de los polinomios de doble grado
x2 = (-b-sqrt((b^2)-(4*a*c)))/2*a; %se puede hacer una variable calculando lo que se repite de la formula
disp('Las raices del polinomio con la formula del segundo grado son:')
disp(x1)
disp(x2)

%el x2 da mal por la cancelacion, hay que operar en la formula
%(multiplicando por el conjugado de -b - raiz... (-b + raiz...) y la
%formula sale:

disp('la raiz menor de la ecuacion haciendo cancelacion en la formula')
x2 = 2*c/(-b+sqrt((b^2)-(4*a*c))); %ahora sale la raiz bien
disp(x2)
