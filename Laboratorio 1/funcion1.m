%--------------------------------------------------------------------------
%------------------  Graficar ...   -------------------------
%--------------------------------------------------------------------------
%------------------  Autores: Sebastian Orellana  -------------------------
%------------------           Ekaterina Cornejo   -------------------------
%--------------------------------------------------------------------------
function funcion1()
    %Se define un vector x
    x = 0:0.01:15*pi;
    
    %logB (X) = logA (X) / logA (B)
    a=3*(log10(6*x + 14)/log10(8));%funcion 1
    figure(1);
    plot(x,a,'r*');
    xlabel('x');
    ylabel('a(x)');
    title('función a(x)=3log8(6x+14)');

    b=sin(2*log10(2*x+5)/log10(6))+cos(4*log10(2*x+18)/log(4));
    figure(2);
    plot(x,b,'g+');
    xlabel('x');
    ylabel('b(x)');
    title('función b(x)=sen(2log6(2x+5))+cos(4log4(2x+18))');

    figure(3);
    plot(x,a,'r*');
    hold on;
    plot(x,b,'g+');
    xlabel('x');
    ylabel('a(x),b(x)');
    title('funciones a(x) y b(x)');
    legend('a(x)','b(x)');
end