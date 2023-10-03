function gauss_seidel_method()
    clc;
    clear all;
    n = input('Enter the number of variables: ');
    A = input('Enter the augmented matrix : ');
    maxitr = input('Enter the max number of iterations: ');
    maxerr = input('Enter the max allowed error: ');
    
    x = zeros(1, n); % Initialize x as a row vector, not x=zeros(i,n)
    
    fprintf('\t Itr no. ');
    for i = 1:n
        fprintf('\t x[%d] \t', i);
    end
    fprintf('\n');
    
    for itr = 1:maxitr
        maxerr = 0; % Initialize maxerr inside the loop
        for i = 1:n
            s = 0;
            for j = 1:n
                if j ~= i
                    s = s + A(i, j) * x(j);
                end
            end
            t = (A(i, n + 1) - s) / A(i, i);
            err = abs(x(i) - t);
            if err > maxerr
                maxerr = err;
            end
            x(i) = t;
        end
        
        fprintf('\t %d \n', itr);
        for i = 1:n
            fprintf('\t %f \t', x(i));
        end
        fprintf('\n');
        
        if maxerr < maxerr
            disp('The solutions using Gauss-Seidel method is: ');
            disp(x);
            return;
        end
    end
    
    fprintf('Max iterations reached without convergence.\n');
end
