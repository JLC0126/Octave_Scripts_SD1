A = [-6 5; -5 4]; % Matriz del sistema

[x, y] = meshgrid(-5:0.5:5, -5:0.5:5);

u = A(1,1)*x + A(1,2)*y;
v = A(2,1)*x + A(2,2)*y;

normas = sqrt(u.^2 + v.^2);
u = u ./ normas;
v = v ./ normas;

quiver(x, y, u, v);
axis tight;
xlabel('x');
ylabel('y');
title({'x''=-6x+5y', 'y''=-5x+4y'});
