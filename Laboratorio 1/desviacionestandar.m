%--------------------------------------------------------------------------
%------------------  Calcular Desviación Estandar   -----------------------
%--------------------------------------------------------------------------
%------------------  Autores: Sebastian Orellana    -----------------------
%------------------           Ekaterina Cornejo     -----------------------
%--------------------------------------------------------------------------

% Función para calcular la desviación estandar de un arreglo utilizando
% la fórmula matemática
% Inputs:
% x - Numeric Array / Vector
% Outputs:
% sd - Numeric Value
function sd = desviacionestandar(x)
    sumatory = 0;
    avg = sum(x)/length(x); % se calcula el promedio del array
    for xi = x % se calcula la sums
        %por cada valor en el vector x
        sumatory = sumatory + (abs(xi - avg)).^2; %se aplica la formula
    end
    
    sd = sqrt(sumatory/length(x)); % se aplica la fórmula
    fprintf("\nVector X:");
    disp(x);
    fprintf("Desviación Estandar: ");
    disp(sd);
end

% end script