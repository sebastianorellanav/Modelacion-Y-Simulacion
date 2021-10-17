%--------------------------------------------------------------------------
%------------------  Calcular Desviación Estandar   -----------------------
%--------------------------------------------------------------------------
%------------------  Autores: Sebastian Orellana    -----------------------
%------------------           Ekaterina Cornejo     -----------------------
%--------------------------------------------------------------------------

function [xn, e]= newtonraphson(x0, tol, polinomio, iteraciones)
    dfx = polyder(polinomio); %calcular derivada
    ddfx = polyder(dfx); %calcular segunda derivada
    
    if ddfx==0
        fprintf('\nEl metodo Newton Raphson no es aplicable, dado que la segunda derivada de la funcion es 0');
        xn = -1;
        e = -1;
        return;
    end
    
    fprintf('\nMétodo de Newton Raphson:');
    xn = x0;
    i = 1;
    e = 10;
    fin = 0;
    
    [xn, e] = calcularnewtonraphson(xn, e, polinomio, dfx, iteraciones, tol, fin, i);
    
end


