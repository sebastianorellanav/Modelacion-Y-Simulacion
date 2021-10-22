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


[resultado,error]=newtonraphson();
 
fprintf("\nLa raiz aproximada del polinomio es:");
disp(resultado);
fprintf("El error calculado es:");
disp(error);


%- Item 2
fprintf("\nItem 2:  Crear una funcion que reciba como entrada un arreglo x y retorne la desviacion estandar")
fprintf("\n-------------------------------------------------------------------------------------------------")
x = 1:1:10;
sd = desviacionestandar(x);

