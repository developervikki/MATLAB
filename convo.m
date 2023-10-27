% Define two input sequences
x = [1, 2, 3, 4];
h = [0.5, 0.5];

% Perform convolution
y = conv(x, h); 

% Display the result
disp('Convolution result:');
disp(y);

% Plot the input and output sequences
subplot(3,1,1);
stem(x, 'r', 'LineWidth', 1.5);
title('Input Sequence x[n]');

subplot(3,1,2);
stem(h, 'b', 'LineWidth', 1.5);
title('Impulse Response h[n]');

subplot(3,1,3);
stem(y, 'g', 'LineWidth', 1.5);
title('Convolution Result y[n]');
 
