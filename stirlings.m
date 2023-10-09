function approximateFactorial = stirlingFactorial(n)
    if n < 0
        error('Input must be a non-negative integer.');
    end
    
    if n == 0
        approximateFactorial = 1; % 0! is defined as 1
    else
        % Stirling's approximation formula
        approximateFactorial = sqrt(2 * pi * n) * (n / exp(1))^n;
    end
end

% Example usage:
n = 10; % Change this to the desired value of n
approximateValue = stirlingFactorial(n);
fprintf('Approximation of %d! using Stirling''s formula: %.6f\n', n, approximateValue);