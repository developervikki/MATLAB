 
n = 0:50;  
x = 0.8.^n; % Define the signal, e.g., x(n) = 0.8^n 
 

syms z n;   
X = ztrans(x, n, z); % Compute the Z-transform of x(n)

 
figure; 
subplot(2, 1, 1);
freqz(double(abs(X)))
title('Magnitude of Z-Transform');

subplot(2, 1, 2); 
freqz(double(angle(X))); 
title('Phase of Z-Transform');
 
