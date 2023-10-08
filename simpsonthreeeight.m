% Prompt the user for input
a = input('Enter the lower limit of integration (a): ');
b = input('Enter the upper limit of integration (b): ');
n = input('Enter the number of subintervals (must be a multiple of 3): ');

% Define the function to be integrated (e.g., replace with your function)
f = @(x) x^2;

% Check if n is not a multiple of 3, and if not, adjust it
if mod(n, 3) ~= 0
    fprintf('Number of subintervals must be a multiple of 3. Adjusting n...\n');
    n = n + (3 - mod(n, 3)); % Make it a multiple of 3
    fprintf('Adjusted number of subintervals: %d\n', n);
end

h = (b - a) / n;
x = a:h:b;

result = f(a) + f(b);

for i = 2:3:(n-1)
    result = result + 2 * f(x(i));
end

for i = 3:3:(n-2)
    result = result + 3 * f(x(i));
end

result = (3 * h / 8) * result;

fprintf('Approximate integral using 3/8 Simpson''s rule: %.6f\n', result);
