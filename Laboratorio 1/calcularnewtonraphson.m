%--------------------------------------------------------------------------
%------------------  Calcular Raiz con Newton Raphson   -------------------
%--------------------------------------------------------------------------
%------------------  Autores: Sebastian Orellana    -----------------------
%------------------           Ekaterina Cornejo     -----------------------
%--------------------------------------------------------------------------

% Función para calcular la raiz de un polinomio con el algoritmo de Newton
% Raphson a partir de los valores dados
% Inputs:
% xn - valor inicial
% e - error del valor inicial
% iteraciones - maximo numero de iteraciones 
% tol - error a considerar
% fin - indicador de condicion de termino
% i - iteracion actual
% Outputs:
% xn - valor de la raiz actual
% e - error asociado a la raiz actual
function [xn, e] = calcularnewtonraphson(xn, e, fx, dfx, iteraciones, tol, fin, i)

% Se define el caso base de la funcion, que puede ocurrir en tres casos:
%que las iteraciones realizadas lleguen al limite estipulado, que el error
%obtenido sea igual al error aceptado de calculo, o que el algoritmo no
%pueda encontrar una solucion con un error menor al ultimo calculado
    if e < tol || fin==1 || i>=iteraciones
        return;
            
    %Se define el caso general, con el que se obtendra un nuevo posible
    %valor para la raiz y el error asignado al mismo, para luego evaluarlo
    %y continuar el algoritmo
    else
        xi = xn;
        xn = xn - (polyval(fx,xn)/polyval(dfx,xn));  %fx(xn)/dfx(xn)
        e = ((xn -xi)/xn);
        i = i + 1;
        [xn, e] = calcularnewtonraphson(xn, e, fx, dfx, iteraciones, tol, fin, i);
    end
end