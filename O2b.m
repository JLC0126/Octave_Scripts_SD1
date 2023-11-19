% Definir el sistema lineal autónomo plano
A = [-1 2; -1 1]; % Matriz del sistema

% Crear una grilla para el campo de direcciones
[x, y] = meshgrid(-4:0.5:4, -4:0.5:4);

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
title({'x''=-x+2y', 'y''=-x+y'});
