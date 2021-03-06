%--------------------------------------------------------------------------
%------------------  Graficar ...   -------------------------
%--------------------------------------------------------------------------
%------------------  Autores: Sebastian Orellana  -------------------------
%------------------           Ekaterina Cornejo   -------------------------
%--------------------------------------------------------------------------
function funcion1()
    %Se define un vector x en base a los valores requeridos para ser
    %evaluados en ambas funciones
    x = 0:0.01:15*pi;
    
    %Se realiza el calculo de la primera funcion entregada en base a los valores
    %de entrada estipulados
    %se considera la siguiente propiedad logaritmica para el calculo:
    %logB (X) = logA (X) / logA (B)
    a=3*(log10(6*x + 14)/log10(8));%funcion 1
    
    %Se grafica la primera funcion entregada
    figure(1);
    plot(x,a,'r*');
    xlabel('x');
    ylabel('a(x)');
    title('función a(x)=3log8(6x+14)');
    
    %Se realiza el calculo de la segunda funcion entregada en base a los valores
    %de entrada estipulados
    b=sin(2*log10(2*x+5)/log10(6))+cos(4*log10(2*x+18)/log(4));
    
    %Se grafica la segunda funcion con los valores del vector x antes
    %mencionado
    figure(2);
    plot(x,b,'g+');
    xlabel('x');
    ylabel('b(x)');
    title('función b(x)=sen(2log6(2x+5))+cos(4log4(2x+18))');

    %Se realiza la grafica de ambas funciones (a y b) en una unica figura 
    figure(3);
    plot(x,a,'r*');
    hold on;
    plot(x,b,'g+');
    xlabel('x');
    ylabel('a(x),b(x)');
    title('funciones a(x) y b(x)');
    legend('a(x)','b(x)');
end