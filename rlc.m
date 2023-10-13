% Define circuit parameters
R = 1;  % Resistance (in ohms)
L = 0.5;  % Inductance (in Henrys)
C = 0.02;  % Capacitance (in Farads)
Vin = 5;  % Input voltage (in volts)

% Define time vector
t = 0:0.01:10;  % Time from 0 to 10 seconds

% Define the input voltage as a function of time
V_input = Vin * sin(2 * pi * 1 * t);

% Define the differential equations for the circuit
dydt = @(t, y) [(1/L) * (V_input - y(1) - R * y(2)); (1/C) * (y(1) - V_input)];

% Initial conditions
initial_conditions = [0; 0];

% Solve the differential equations using ode45
[t, y] = ode45(dydt, t, initial_conditions);

% Extract voltage across the capacitor and current through the inductor
Vc = y(:, 1);
Il = y(:, 2);

% Plot the results
subplot(2,1,1);
plot(t, Vc);
title('Voltage across the Capacitor (Vc)');
xlabel('Time (s)');
ylabel('Voltage (V)');

subplot(2,1,2);
plot(t, Il);
title('Current through the Inductor (Il)');
xlabel('Time (s)');
ylabel('Current (A)');
