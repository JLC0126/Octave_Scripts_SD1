f = @(t, x) x+x^2;

t = -5:0.5:5;
x = -5:0.5:5;

[T, X] = meshgrid(t, x);

U = ones(size(T));
V = f(T, X);

N = sqrt(U.^2 + V.^2);
U = 0.55*(U ./ N);
V = 0.55*(V ./ N);

quiver(T, X, U, V, 'AutoScale', 'off');

grid on;

title('x'' = x+x^2');
xlabel('t');
ylabel('x');
