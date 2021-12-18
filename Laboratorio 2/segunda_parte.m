%--------------------------------------------------------------------------
%------------------  Laboratorio 2: Segunda Parte   -----------------------
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

% Se definen las funciones de transferencia del diagrama
F1 = 4*s/(10*s^2 +4);

F2 = 3/(6*s + 16);

F3 = (4*s + 10)/(4*s^3+9*s^2+5*s);

F4 = 1/(7*s+10);

F5 = (8*s + 8)/(s^3+2*s^2+3*s);

F6 = (3*s+2)/(5*s^2+7*s+10);

% Se obtiene el feedback positivo de la función 3
F3_feedback = feedback(F3,1,+1);

% Se suman las funciones F4 y F5 que estan en paralelo

% Por otro lado F4 y F5
Paralelo_F4_F5 = F4 + F5;

% Luego se multiplican las funciones que están en serie, las cuales serían:
% F6 más el resultado del feedback de F3 más el resultado de la suma entre 
% F4 y F5

Serie = F6 * Paralelo_F4_F5 * F3_feedback;

% Por ultimo, se suma el resultado de el paralelo entre F1 y F2 más el
% resultado de la multiplicación en serie

H_total = F1 + F2 + Serie;

% Se muestra por consola el resutlado de la función total del sistema
display(H_total);

% Se crea una figura
figure();

% Se aplica un escalon al sistema
step(H_total);

%se setea el tamaño de la figura
set(gcf,'position',[10,10,1200,600])

% Create ylabel
ylabel('y(s)');

% Create xlabel
xlabel('Tiempo');

% Create title
title('Respuesta a un escalón del Sistema (Pregunta 2)');

% Se colocar la grilla en el gráfico
grid();

% Create legend
legend('H total');


