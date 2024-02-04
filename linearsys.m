% Define the transfer function
numerator = 1;
denominator = [1, 1]; % s + 1

sys = tf(numerator, denominator);

% Generate a time vector for the step response
t = 0:0.01:10; % Time from 0 to 10 seconds with a 0.01-second step

% Compute the step response of the system
y = step(sys, t);

% Plot the step response
plot(t, y); 
xlabel('Time (seconds)');
ylabel('System Response');
title('Step Response of a First-Order Linear System');
grid on;
