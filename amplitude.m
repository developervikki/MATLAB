clc
clear
close all;
ka=0.8;
Am=1; 
fm=2;  
t=0:0.001:1;
mt=Am*sin(2*pi*fm*t);
Ac=2; 
fc=50;
ct=Ac*cos(2*pi*fc*t);
St=(1+ka.*mt).*ct;
subplot(3,1,1);
plot(t,mt); 
