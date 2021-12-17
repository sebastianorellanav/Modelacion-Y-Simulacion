%--------------------------------------------------------------------------
%------------------  Laboratorio 2: Primera Parte   -----------------------
%--------------------------------------------------------------------------
%------------------  Autores: Sebastian Orellana    -----------------------
%------------------           Ekaterina Cornejo     -----------------------
%--------------------------------------------------------------------------
%

% Se define el parámetro s para trabajar con funciones de transferencia
s = tf('s');

% Ecuación 1
% ------------------------
% 6y'(t) + 2y(t) = 8u'(t) |
% ------------------------

% Lazo Abierto:
% Se define la función de transferencia encontrada para la ecuación 1
H1 = 8*s/(6*s + 2);

% Se obtienen los ceros y la ganancia de la función de transferencia 1
[H1_zeros, H1_gain] = zero(H1);

% Se obtienen los polos de la función de transferencia 1
H1_poles = zero(6*s + 2);

% Se obtiene el tiempo de estabilización de la función de transferencia 1
H1_settling_time = stepinfo(H1);

% Se grafica la respuesta a un escalon de la función de transferencia con
% lazo abierto
figure();
step(H1);
set(gcf,'position',[10,10,1200,600])
grid();
title("Respuesta a un escalón de la Función de Transferencia 1 (Lazo abierto)")
xlabel("Tiempo")
ylabel("amplitud")
legend("H1 = 8*s/(6*s + 2)");

% Se muestran los resultados por consola
display(H1)
display(H1_zeros);
display(H1_gain);
display(H1_poles);
display(H1_settling_time);


% -------------
% Lazo cerrado:
% Se define la función de transferencia pero con un lazo cerrado
H1_feedback = feedback(H1, 1, -1);

% Se obtienen los ceros y la ganancia de la función de transferencia 1 con
% lazo cerrado
[H1_feedback_zeros, H1_feedback_gain] = zero(H1_feedback);

% Se obtienen los polos de la función de transferencia 1 con lazo cerrado
H1_feedback_poles = zero(48*s^2 + 16*s);

% Se obtiene el tiempo de estabilización de la función de transferencia 1
% con lazo cerrado
H1_feedback_settling_time = stepinfo(H1_feedback);

% Se grafica la respuesta a un escalon de la función de transferencia con
% lazo abierto
figure();
step(H1_feedback);
set(gcf,'position',[10,10,1200,600])
grid();
title("Respuesta a un escalón de la Función de Transferencia 1 (Lazo cerrado)")
xlabel("Tiempo")
ylabel("amplitud")
legend("H1'=(48s^2 + 16s)/(100s^2 + 24s + 4)");

% Se muestran los resultados por consola
display(H1_feedback);
display(H1_feedback_zeros);
display(H1_feedback_gain);
display(H1_feedback_poles);
display(H1_feedback_settling_time);

%--------------------------------------------------------------------------
% Ecuación 2
% --------------------------------------
% y''(t) + 3y(t) - 5u''(t) -7u'(t) = 0 |
% --------------------------------------

% Lazo Abierto:
% Se define la función de transferencia encontrada para la ecuación 2
H2 = (5*s^2 + 7*s +1)/(s^2 + 6*s + 3);

% Se obtienen los ceros y la ganancia de la función de transferencia 2
[H2_zeros, H2_gain] = zero(H2);

% Se obtienen los polos para la función de transferencia 2
H2_poles = zero(s^2 + 6*s + 3);

% Se obtiene el tiempo de estabilización para la función de transferencia 2
H2_settling_time = stepinfo(H2);

% Se grafica la respuesta a un escalon de la función de transferencia con
% lazo abierto
figure();
step(H2);
set(gcf,'position',[10,10,1200,600])
grid();
title("Respuesta a un escalón de la Función de Transferencia 2 (Lazo abierto)")
xlabel("Tiempo")
ylabel("amplitud")
legend("H2 = (5*s^2 + 7*s +1)/(s^2 + 6*s + 3)");

% Se muestran los resultados por consola
display(H2_zeros);
display(H2_gain);
display(H2_poles);
display(H2_settling_time);


% -------------
% Lazo cerrado:
% Se define la función de transferencia 2 pero con un lazo cerrado
H2_feedback = feedback ( H2 , 1, -1);

% Se obtienen los ceros y la ganancia de la función de transferencia 2 con
% lazo cerrado
[H2_feedback_zeros, H2_feedback_gain] = zero(H2_feedback);

% Se obtienen los polos para la función de transferencia 2 con lazo cerrado
H2_feedback_poles = zero(8*s^3 + 48*s^2 + 24*s);

% Se obtiene el tiempo de estabilización para la función de transferencia 2
% con lazo cerrado
H2_feedback_settling_time = stepinfo(H2_feedback);

% Se grafica la respuesta a un escalon de la función de transferencia con
% lazo abierto
figure()
step(H2_feedback);
set(gcf,'position',[10,10,1200,600])
grid();
title("Respuesta a un escalón de la Función de Transferencia 2 (Lazo cerrado)")
xlabel("Tiempo")
ylabel("amplitud")
legend("H2'=(5s^4+37s^3+58s^2+27s+3)/(26s^4+82s^3+101s^2+50s+10)");

% Se muestran los resultados por consola
display(H2_feedback);
display(H2_feedback_zeros);
display(H2_feedback_gain);
display(H2_feedback_poles);
display(H2_feedback_settling_time);
