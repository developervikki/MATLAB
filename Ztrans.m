% Define the discrete-time signal
n = 0:50; % Define the range of the signal
x = 0.8.^n; % Define the signal, e.g., x(n) = 0.8^n

% Compute the Z-transform
syms z n; % Define symbolic variables
X = ztrans(x, n, z); % Compute the Z-transform of x(n)

% Plot the magnitude and phase of the Z-transform
figure;
subplot(2, 1, 1); % Create a subplot for magnitude
freqz(double(abs(X)))% Plot the magnitude of the Z-transform
title('Magnitude of Z-Transform');

subplot(2, 1, 2); % Create a subplot for phase
freqz(double(angle(X))); % Plot the phase of the Z-transform
title('Phase of Z-Transform');
