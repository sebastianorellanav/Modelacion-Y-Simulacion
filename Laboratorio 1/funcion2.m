%--------------------------------------------------------------------------
%------------------  Graficar c(x)= 3e^(2x + 3)   -------------------------
%--------------------------------------------------------------------------
%------------------  Autores: Sebastian Orellana  -------------------------
%------------------           Ekaterina Cornejo   -------------------------
%--------------------------------------------------------------------------

function funcion2()
% Intervalo a evaluar y función
x = -10:.05:10;  %Se define el intervalo 
c = 3 * exp(2*x + 3); % se evalua x en la función

% 1. Se grafica en escala normal
figure(4) % se crea una figura para el gráfico 1
plot(x, c); %Graficar en escala normal
title("c(x)= 3e^(2x + 3) en Escala Normal"); %se coloca titulo al gráfico
xlabel("x"); % se coloca titulo al eje x 
ylabel("c(x)= 3e^(2x + 3)"); % se coloca titulo al eje y
grid on % se coloca la grilla al gráfico

%2. Se grafica en escala logarítmica
figure(5) % se crea una figura para el segundo gráfico
semilogy(x, c, 'r'); % Se grafica en escala logarítmica
title("c(x)= 3e^(2x + 3) en Escala Logarítmica"); % se coloca titulo al gráfico
xlabel("x"); % se coloca titulo al eje x
ylabel("c(x)= 3e^(2x + 3)"); % se coloca titulo al eje y
grid on % se coloca la grilla al gráfico

%Comparación de gráficos

end
