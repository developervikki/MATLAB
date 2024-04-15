function quadratic_bisection()
    a = input('Enter coefficient a: '); 
    b = input('Enter coefficient b: ');
    c = input('Enter coefficient c: ');

    left_endpoint = input('Enter left endpoint of the interval: ');
    right_endpoint = input('Enter right endpoint of the interval: ');

    tolerance = input('Enter tolerance level (e.g., 1e-6): ');

    max_iterations = input('Enter maximum number of iterations: ');
 
    if sign(polyval([a, b, c], left_endpoint)) * sign(polyval([a, b, c], right_endpoint)) > 0
        fprintf('The chosen interval does not contain a root.\n'); 
        return;
    end
 
    for iteration = 1:max_iterations
        midpoint = (left_endpoint + right_endpoint) / 2; 
        f_midpoint = polyval([a, b, c], midpoint);

        if abs(f_midpoint) < tolerance
            fprintf('Root found: x = %f\n', midpoint); 
            return;
        end

        if sign(f_midpoint) * sign(polyval([a, b, c], left_endpoint)) < 0
            right_endpoint = midpoint;
        else
            left_endpoint = midpoint;
        end
    end

    fprintf('Bisection method did not converge within the maximum number of iterations.\n');
end
