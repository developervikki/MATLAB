% Prompt the user for input
a = input('Enter the lower limit of integration (a): ');
b = input('Enter the upper limit of integration (b): ');
n = input('Enter the number of subintervals (must be even): ');

% Define the function to be integrated (e.g., replace with your function)
f = @(x) x^2;

% Check if n is even, and if not, increment it by 1
if mod(n, 2) ~= 0
    n = n + 1;
    fprintf('Number of subintervals adjusted to an even value: %d\n', n);
end

h = (b - a) / n;
x = a:h:b;

result = f(a) + f(b);

for i = 2:2:(n-1)
    result = result + 4 * f(x(i));
end

for i = 3:2:(n-2)
    result = result + 2 * f(x(i));
end

result = (h / 3) * result;

fprintf('Approximate integral using 1/3 Simpson''s rule: %.6f\n', result);
