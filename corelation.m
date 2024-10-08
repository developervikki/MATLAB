clear all; 
close all;
clc;
x=[1 2 3 4];
subplot(4,1,1);
xlabel('TIme');
ylabel('Amplitude');
title('Definition of x'); 
h=[4 3 2 1];
subplot(4,1,2);
stem(h); 
title('Definition of h');
xlabel('Time');
ylabel('Amplitude');
y=xcorr(x,x);
subplot(4,1,3);
stem(y);
title('Autocorelation');
xlabel('Time');
ylabel('Amplitude');
y=xcorr(x,h);
subplot(4,1,4); 
stem(y);
title('Croscorelation');
xlabel('time'); 
ylabel('Amplitude'); 
