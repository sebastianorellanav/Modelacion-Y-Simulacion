%--------------------------------------------------------------------------
%------------------           Laboratorio 3          ----------------------
%--------------------------------------------------------------------------
%------------------    Autor: Sebastian Orellana    -----------------------
%--------------------------------------------------------------------------
%

% -------------------------------------------------------------------------
%                              Primera Parte
% -------------------------------------------------------------------------

% Se piden con consola los valores para a, b, c, d, e y f
a=input('Ingresar a: ');
b=input('Ingresar b: ');
c=input('Ingresar c: ');
d=input('Ingresar d: ');
e=input('Ingresar e: ');
f=input('Ingresar f: ');

% Se define s para trabajar con funciones de transferencia
s=tf('s');

% Se define la primera función de transferencia
H1=a/(b*s-c);

% Se define la segunda función de transferencia
H2=d/(e*s-f);

% Se llama a la función bam (definida en el archivo bam.m)
[A,B,C,D] = bam(a,b,c,d,e,f);

% Se llama a la función mab (definida en el archivo mab.b) con el resultado
% de la función bam
H_total = mab(A,B,C,D);

% Se aplica la función step al resultado de la función mab y al resultado
% de la función feedback
[yH,tH]=step(H_total,100);
[yH2,tH2]=step(feedback(H1,H2),100);

% se grafican ambas curvas para compararlas
graficarPrimeraParte(tH,yH,tH2,yH2)



% -------------------------------------------------------------------------
%                              Segunda Parte
% -------------------------------------------------------------------------

% Se definen las constantes del sistema
A1 = 2;
A2 = 4;
Ri1 = 0.25;
Ri2 = 0.0625;
Rs1 = 0.1;
Rs2 = 0.1;

% Desarrollo algebraico en el informe
A1_Ri1=1/(A1*Ri1);
A1_Ri2=1/(A1*Ri2);
A1_Rs1=1/(A1*Ri2);
A1_Rs2=1/(A1*Rs2);

A2_Ri1=1/(A1*Ri1);
A2_Ri2=1/(A1*Ri2);
A2_Rs1=1/(A1*Ri2);
A2_Rs2=1/(A1*Rs2);

% Formación de las matrices
A=[(-A1_Ri2-A1_Ri1-A1_Rs1), (A1_Ri2+A1_Ri1);(A2_Ri1+A2_Ri2),(-A2_Ri1-A2_Ri2-A2_Rs2)];
B=[1/A1;1/A2];
C=[1,0;0,1];
D=0;

% Conversion a funcion de transferencia
H=mab(A,B,C,D);

% Graficar respuesta del sistema ante un impulso
[yH2,tH2]=impulse(H,1);
graficarImpulso(tH2,yH2);

% Graficar respuesta del sistema ante un escalon
[yH,tH]=step(H,3);
graficarEscalon(tH,yH);

% Se define u(t)
t = linspace (0 , 12*pi , 5000);
u = 100* sin( t /4);
u (u <0) = 0.;

% Graficar respuesta del sistema ante la función u(t)
figure();
lsim (H , u , t );
title('Respuesta ante la función u(t)');
xlabel('Tiempo');
ylabel('y(t)');