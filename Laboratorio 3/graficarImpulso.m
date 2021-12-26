%--------------------------------------------------------------------------
%-------------   Laboratorio 3: Función graficarImpulso     ---------------
%--------------------------------------------------------------------------
%------------------    Autor: Sebastian Orellana    -----------------------
%--------------------------------------------------------------------------
%

function graficarImpulso(X1, YMatrix1)
%graficarImpulso(X1, YMatrix1)
%  X1:  vector of x data
%  YMATRIX1:  matrix of y data

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create multiple lines using matrix input to plot
plot1 = plot(X1,YMatrix1);
set(plot1(1),'DisplayName','Y1');
set(plot1(2),'DisplayName','Y2');

% Create ylabel
ylabel({'y(t)'});

% Create xlabel
xlabel({'Tiempo [s]'});

% Create title
title({'Respuesta ante un impulso'});

box(axes1,'on');
hold(axes1,'off');
% Create legend
legend(axes1,'show');

end
