%--------------------------------------------------------------------------
%------------------   Laboratorio 3: Función MAB     ----------------------
%--------------------------------------------------------------------------
%------------------    Autor: Sebastian Orellana    -----------------------
%--------------------------------------------------------------------------
%

function [H] = mab(A,B,C,D)
    s=tf('s');
    %Se aplica la formula algebraica H = C((sI-A)^-1)*B + D
    i=[1,1];
    
    %Se crea la matriz identidad.
    I=diag(i);
    
    %Se multiplica 's'  
    sI=s*I;
    
    %Se Resta por la matriz A
    sI_A=sI-A;
    
    %Para luego invertir este resultado
    sI_A_inv=inv(sI_A);
    
    %Se multiplica C por la izquierda
    C_sI_A_inv=C*sI_A_inv;
    
    %Y finalmente B por la derecha
    H=C_sI_A_inv*B;
end

