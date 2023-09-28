t=(-1:0.01:5);
us=t>=0;
sublplot(2,2,3);
plot(t,us);
title('Unit step signal');
xlabel('time');
ylabel('Amplitude');
