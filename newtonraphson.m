% Define the function whose root you want to find
syms x
f(x) = x^3 - 4*x^2 + 4*x - 6;

% Define the initial guess
x0 = 2;

% Set the maximum number of iterations and tolerance for convergence
maxIterations = 100;
tolerance = 1e-6;

% Initialize variables
x_k = x0;
iterations = 0;

% Main loop for the Newton-Raphson method
while iterations < maxIterations
    % Calculate the function value and its derivative at x_k
    f_value = double(f(x_k));
    f_derivative = double(diff(f, x));
    
    % Check for convergence
    if abs(f_value) < tolerance
        fprintf('Converged to solution: x = %.6f\n', x_k);
        break;
    end
    
    % Update x_k using the Newton-Raphson formula
    x_k = x_k - f_value / f_derivative;
    
    % Increment the iteration counter
    iterations = iterations + 1;
end

% Check if the method converged or not
if iterations >= maxIterations
    fprintf('Newton-Raphson method did not converge within %d iterations.\n', maxIterations);
end
