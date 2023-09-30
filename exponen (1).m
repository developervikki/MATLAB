m=input('Enter the value of m: ');
n=0:m-1;
b=input('Enter  the value of b: ');
xn=b.^n;
subplot(2,2,1);

title("Continuous exponential signal");
xlabel('Time');
ylabel('Amplitude');