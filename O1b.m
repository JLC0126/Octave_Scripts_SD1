f = @(t, x) t + 4*t.*x;

t = -4:0.5:4;
x = -4:0.5:4;

[T, X] = meshgrid(t, x);

U = ones(size(T));
V = f(T, X);

N = sqrt(U.^2 + V.^2);
U = 0.35*(U ./ N);
V = 0.35*(V ./ N);

quiver(T, X, U, V, 0.5, 'AutoScale', 'off');

grid on;

title('x'' - 4tx= t');
xlabel('t');
ylabel('x');

