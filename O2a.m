% Definir el sistema lineal autónomo plano
A = [-3 4; -2 3]; % Matriz del sistema

% Crear una grilla para el campo de direcciones
[x, y] = meshgrid(-5:0.5:5, -5:0.5:5);

% Calcular las derivadas para cada punto de la grilla
u = A(1,1)*x + A(1,2)*y;
v = A(2,1)*x + A(2,2)*y;

% Normalizar las flechas para que todas tengan la misma longitud
normas = sqrt(u.^2 + v.^2);
u = u ./ normas;
v = v ./ normas;

% Graficar el campo de direcciones
quiver(x, y, u, v);
axis tight;
xlabel('x');
ylabel('y');
title({'x''=-3x+4y', 'y''=-2x+3y'});
