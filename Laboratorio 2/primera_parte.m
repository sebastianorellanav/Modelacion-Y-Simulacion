%--------------------------------------------------------------------------
%------------------  Laboratorio 2: Primera Parte   -----------------------
%--------------------------------------------------------------------------
%------------------  Autores: Sebastian Orellana    -----------------------
%------------------           Ekaterina Cornejo     -----------------------
%--------------------------------------------------------------------------
%

% limpiar datos y consola
clc
clear all
close all

% Se define el parámetro s para trabajar con funciones de transferencia
s = tf('s');

% Ecuación 1
% ------------------------
% 6y'(t) + 2y(t) = 8u'(t) |
% ------------------------

% Lazo Abierto:
% Se define la función de transferencia encontrada para la ecuación 1
H1 = 8/(6*s+2);

% Se obtiene el tiempo de estabilización de la función de transferencia 1
H1_numerador= [8];
H1_denominador= [6 2];
[H1_ceros, H1_polos, H1_ganancia] = tf2zp (H1_numerador,H1_denominador);
H1_tiempo_estabilizacion = stepinfo(H1).SettlingTime;

% Se calcula ganancia manualmente
H1_ganancia = 4;

% Se grafica la respuesta a un escalon de la función de transferencia con
% lazo abierto
[H1_Y, H1_X] = step(H1, 25);

% Se muestran los resultados por consola
display(H1)
display(H1_ceros);
display(H1_ganancia);
display(H1_polos);
display(H1_tiempo_estabilizacion);


% -------------
% Lazo cerrado:
% Se define la función de transferencia pero con un lazo cerrado
H1_feedback = feedback(H1, 1, -1);

% Se obtienen ceros, polos, ganancia y tiempo de estabilización para la
% función H1 de lazo cerrado
H1_f_numerador= [8];
H1_f_denominador= [6 2];
[H1_feedback_ceros, H1_feedback_polos, H1_feedback_ganancia] = tf2zp (H1_f_numerador,H1_f_denominador);
H1_feedback_tiempo_estabilizacion = stepinfo(H1_feedback).SettlingTime;

% Se calcula ganancia manualmente
H1_feedback_ganancia = 0.8;

% Se grafica la respuesta a un escalon de la función de transferencia con
% lazo abierto
[H1_feedback_Y, H1_feedback_X] = step(H1_feedback, 25);

% Se muestran los resultados por consola
display(H1_feedback);
display(H1_feedback_ceros);
display(H1_feedback_ganancia);
display(H1_feedback_polos);
display(H1_feedback_tiempo_estabilizacion);

graficarParte1(H1_X, H1_Y, H1_feedback_X, H1_feedback_Y, 'Respuesta ante un escalón ecuación 1')

%--------------------------------------------------------------------------
% Ecuación 2
% --------------------------------------
% y''(t) + 3y(t) - 5u''(t) -7u'(t) = 0 |
% --------------------------------------

% Lazo Abierto:
% Se define la función de transferencia encontrada para la ecuación 2
H2 = (5*s^2 + 7*s +1)/(s^2 + 6*s + 3);

% Se obtiene el tiempo de estabilización de la función de transferencia 1
H2_numerador= [5 7 1];
H2_denominador= [1 6 3];
[H2_ceros, H2_polos, H2_ganancia] = tf2zp (H2_numerador,H2_denominador);
H2_tiempo_estabilizacion = stepinfo(H2).SettlingTime;

% Se grafica la respuesta a un escalon de la función de transferencia con
% lazo abierto
[H2_Y, H2_X] = step(H2, 25);

% Se muestran los resultados por consola
display(H2)
display(H2_ceros);
display(H2_ganancia);
display(H2_polos);
display(H2_tiempo_estabilizacion);


% -------------
% Lazo cerrado:
% Se define la función de transferencia pero con un lazo cerrado
H2_feedback = feedback(H2, 1, -1);

% Se obtienen ceros, polos, ganancia y tiempo de estabilización para la
% función H2 de lazo cerrado
H2_f_numerador= [5 7 1];
H2_f_denominador= [1 13 4];
[H2_feedback_ceros, H2_feedback_polos, H2_feedback_ganancia] = tf2zp (H2_f_numerador,H2_f_denominador);
H2_feedback_tiempo_estabilizacion = stepinfo(H2_feedback).SettlingTime;

% Se grafica la respuesta a un escalon de la función de transferencia con
% lazo abierto
[H2_feedback_Y, H2_feedback_X] = step(H2_feedback, 25);

% Se muestran los resultados por consola
display(H2_feedback);
display(H2_feedback_ceros);
display(H2_feedback_ganancia);
display(H2_feedback_polos);
display(H2_feedback_tiempo_estabilizacion);

graficarParte1(H2_X, H2_Y, H2_feedback_X, H2_feedback_Y, 'Respuesta ante un escalón ecuación 2')