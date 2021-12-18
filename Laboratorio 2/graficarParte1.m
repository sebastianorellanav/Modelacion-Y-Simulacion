%--------------------------------------------------------------------------
%-----------------  Funcion para Graficar Parte 1   -----------------------
%--------------------------------------------------------------------------
%------------------  Autores: Sebastian Orellana    -----------------------
%------------------           Ekaterina Cornejo     -----------------------
%--------------------------------------------------------------------------
%

function graficarParte1(X1, Y1, X2, Y2, titulo)
%graficarParte1(X1, Y1, X2, Y2)
%  X1:  vector of x data
%  Y1:  vector of y data
%  X2:  vector of x data
%  Y2:  vector of y data

% Create figure
figure1 = figure;

%se setea el tamaño de la figura
set(gcf,'position',[10,10,1200,600])

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create plot
plot(X1,Y1,'DisplayName','Lazo abierto','Color',[0 0 1]);

% Create plot
plot(X2,Y2,'DisplayName','Lazo cerrado','Color',[1 0 0]);

% Create ylabel
ylabel({'y(s)'});

% Create xlabel
xlabel({'Tiempo [s]'});

% Create title
title(titulo);

box(axes1,'on');
hold(axes1,'off');

% Set the remaining axes properties
set(axes1,'XGrid','on','YGrid','on');

% Create legend
legend(axes1,'show');