%--------------------------------------------------------------------------
%----------   Laboratorio 3: Función graficarPrimeraParte     -------------
%--------------------------------------------------------------------------
%------------------    Autor: Sebastian Orellana    -----------------------
%--------------------------------------------------------------------------
%

function graficarPrimeraParte(X1, Y1, X2, Y2)

% Create figure
figure1 = figure();

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create multiple lines using matrix input to plot
hold on
plot1(1) = plot(X1,Y1);
plot1(2) = plot(X2,Y2);
hold off
set(plot1(1),'DisplayName','mab');
set(plot1(2),'DisplayName','feedback');

% Create ylabel
ylabel({'y(t)'});

% Create xlabel
xlabel({'Tiempo [s]'});

% Create title
title({'Comparativa entre función mab y feedback'});

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[0.258902398022738 3.89526603438637]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes1,[-23.067850524729 4.20487674799832]);
hold(axes1,'off');
% Create legend
legend("Resultado mab", "Resultado feedback");


end

