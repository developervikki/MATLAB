syms x
f = x^3 - 2*x^2 + 4;

df = diff(f, x);

x0 = 1;

tolerance = 1e-6;
maxIterations = 100;

x_prev = x0;
iteration = 0;

while iteration < maxIterations
    f_value = subs(f, x, x_prev);
    df_value = subs(df, x, x_prev);
    
    if abs(df_value) < 1e-6
        error('Derivative is close to zero. Newton-Raphson method failed.');
    end
    
    x_next = x_prev - f_value / df_value;
    
    if abs(x_next - x_prev) < tolerance
        break;
    end
    
    x_prev = x_next;
    iteration = iteration + 1;
end

if iteration >= maxIterations
    fprintf('Newton-Raphson method did not converge within %d iterations.\n', maxIterations);
else
    fprintf('Approximate root found after %d iterations: x = %.6f\n', iteration, x_next);
end
