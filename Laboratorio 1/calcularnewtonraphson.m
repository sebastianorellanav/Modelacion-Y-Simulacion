function [xn, e] = calcularnewtonraphson(xn, e, fx, dfx, iteraciones, tol, fin, i)

% Caso base 
    if e < tol || fin==1 || i>=iteraciones
        return;
            
    % Caso general
    else
        xi = xn;
        xn = xn - (polyval(fx,xn)/polyval(dfx,xn));  %fx(xn)/dfx(xn)
        e = ((xn -xi)/xn);
        i = i + 1;
        [xn, e] = calcularnewtonraphson(xn, e, fx, dfx, iteraciones, tol, fin, i);
    end
end