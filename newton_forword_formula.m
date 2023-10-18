x = [0, 1, 2, 3, 4];
y = [1, 2, 5, 10, 17];

x_interpolate = 2.5;

n = length(x);
f = zeros(n, n);

f(:, 1) = y';

for j = 2:n
    for i = 1:n-j+1
        f(i, j) = f(i+1, j-1) - f(i, j-1);
    end
end

interpolated_value = f(1, 1);

u = (x_interpolate - x(1)) / (x(2) - x(1));
coefficients = [1];
for j = 2:n
    coefficients(j) = coefficients(j-1) * (u - j + 2) / j;
end

for j = 1:n-1
    interpolated_value = interpolated_value + coefficients(j) * f(1, j+1);
end

fprintf('Interpolated value at x = %.2f is %.4f\n', x_interpolate, interpolated_value);
 