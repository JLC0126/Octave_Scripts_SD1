f = @(t, x) sin(x);

t = -6:0.5:6;
x = -6:0.5:6;

[T, X] = meshgrid(t, x);

U = ones(size(T));
V = f(T, X);

N = sqrt(U.^2 + V.^2);
U = 0.55*(U ./ N);
V = 0.55*(V ./ N);

quiver(T, X, U, V, 'AutoScale', 'off');

grid on;

title('x'' = sen(x)');
xlabel('t');
ylabel('x');
