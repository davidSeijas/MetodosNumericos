%DAVID SEIJAS EJ6

format longe

%f = @(x) sin(x); con esto g es simbolica y no se puede evaluar
%g = diff(sym(f));
%x = g(1);
x = cos(1); 
disp('Derivada directa de sen x en 1:')
disp(x)

h=1;
for i=1:20
   h = h/10; 
   num = (f(1 + h) - f(1)) / h;
   disp('Derivada aproximándola con la formula:')
   disp(num)
end

format