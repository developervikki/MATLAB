t=0:0.01:5; 

x=cos(2*pi*t);

subplot(3,2,3);

plot(t,x);

title('cos continuous wave');

xlabel('time');

ylabel('amplitude');



t=0:0.01:5;

x=cos(2*pi*t);

subplot(3,2,4);

stem(t,x);

title('cos discrete wave');

xlabel('time');

ylabel('amplitude');

