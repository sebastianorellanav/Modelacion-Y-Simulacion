%--------------------------------------------------------------------------
%------------------  Calcular Desviación Estandar   -----------------------
%--------------------------------------------------------------------------
%------------------  Autores: Sebastian Orellana    -----------------------
%------------------           Ekaterina Cornejo     -----------------------
%--------------------------------------------------------------------------

% borrar variables creadas anteriormente
clear all

%------------------------- Primera Parte  ---------------------------------
%- item 1
fprintf("\nPrimera Parte\nItem 1:  Graficar por separado y en conjunto, las funciones a(x) y b(x)")
fprintf("\n--------------------------------------------------------------------------------------")
funcion1()
fprintf("\nLos gráficos se crean automaticamente en figuras separadas\n\n")

%- item 2
fprintf("\nItem 2:  Graficar en escala normal y logaritmica la funcion c(x)")
fprintf("\n-----------------------------------------------------------------")
funcion2()
fprintf("\nLos gráficos se crean automaticamente en figuras separadas\n\n")

%------------------------- Segunda Parte  ---------------------------------
%- Item 1
fprintf("\nSegunda Parte\nItem 1:  Crear una funcion que implemente el algoritmo de Newton-Raphson")
fprintf("\n---------------------------------------------------------------------------------------")

%Ingresar valores
fprintf("\nIngrese los siguientes valores para utilizar el algoritmo de newton raphson \n\n");
v1= 'valor inicial del algoritmo:\n';
valorInicial=input(v1);
v2= 'error a considerar:\n';
errorConsiderable=input(v2);
v3= 'polinomio(con formato de polinomio entre corchetes):\n';
polinomio=input(v3);
v4= 'numero maximo de iteraciones:\n';
iteraciones=input(v4);
[resultado,error]=newtonraphson(valorInicial,errorConsiderable,polinomio,iteraciones);

fprintf("\nUna raiz del polinomio es:");
disp(resultado);
fprintf("El error es calculado es:");
disp(error);


%- Item 2
fprintf("\nItem 2:  Crear una funcion que reciba como entrada un arreglo x y retorne la desviacion estandar")
fprintf("\n-------------------------------------------------------------------------------------------------")
x = 1:1:10;
sd = desviacionestandar(x);

