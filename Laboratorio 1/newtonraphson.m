%--------------------------------------------------------------------------
%------------------  Iniciar Calculo de Newton Raphson   ------------------
%--------------------------------------------------------------------------
%------------------  Autores: Sebastian Orellana    -----------------------
%------------------           Ekaterina Cornejo     -----------------------
%--------------------------------------------------------------------------
% Función para calcular la raiz de un polinomio con el algoritmo de Newton
% Raphson a partir de los valores dados
% Inputs:
% x0 - valor inicial del algoritmo
% polinomio - polinomio del cual se busca encontrar la raiz asociada
% iteraciones - maximo numero de iteraciones 
% tol - error a considerar
% Outputs:
% xn - valor aproximado de la raiz del polinomio
% e - error asociado a la raiz obtenida

function newtonraphson()
    %Ingresar valores
    fprintf("\nIngrese los siguientes valores para utilizar el algoritmo de newton raphson \n\n");
    v1= 'valor inicial del algoritmo:\n';
    x0=input(v1);
    v2= 'error a considerar:\n';
    tol=input(v2);
    v3= 'polinomio(con formato de polinomio entre corchetes):\n';
    polinomio=input(v3);
    v4= 'numero maximo de iteraciones:\n';
    iteraciones=input(v4);


    %se realiza el calculo de la primera y segunda derivada del polinomio
    dfx = polyder(polinomio); %calcular derivada
    ddfx = polyder(dfx); %calcular segunda derivada

    
    %en caso de tener una primera derivada igual a 0, no se cumplira con la
    %condicion de unicidad de raiz de Newton Raphson y por lo tanto no es
    %aplicable el metodo
    if dfx==0
        fprintf('\nEl metodo Newton Raphson no es aplicable, dado que la segunda derivada de la funcion es 0');
        xn = -1;
        e = -1;
        return;
    end
     %en caso de tener una segunda derivada igual a 0, no se cumplira con la
    %condicion de concavidad de la funcion en Newton Raphson y por lo tanto no es
    %aplicable el metodo
    if ddfx==0
        fprintf('\nEl metodo Newton Raphson no es aplicable, dado que la segunda derivada de la funcion es 0');
        xn = -1;
        e = -1;
        return;
    end
    
    %En caso contrario se entrega el caso inicial a la funcion recursiva "calcularnewtonrapshon"
    %que entregara la raiz del polinomio obtenida y el error asociado a
    %esta
    fprintf('\nMétodo de Newton Raphson:');
    xn = x0;
    i = 1;% se define una iteracion inicial igual a 1
    e = polyval(polinomio,xn);
    fin = 0;
    
    [xn, e] = calcularnewtonraphson(xn, e, polinomio, dfx, iteraciones, tol, fin, i);
    fprintf("\nLa raiz aproximada del polinomio es:");
    disp(xn);
    fprintf("El error calculado es:");
    disp(e);
end


