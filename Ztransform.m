clc;
clear all;       
n=0:.1:100; 
r=input('Enter the r: ');  
w=pi/4;      
y1=r.^(-n);   
y2=cos(w*n);   
y=y1*y2;   
if(r<1) 
    subplot(3,1,1);
    plot(n,y1);    
    xlabel('Sample no.');
    ylabel('Amplitude');
    title('r^-^n when r<1');
     
elseif(r==1)
    subplot(3,1,1);
    plot(n,y1); 
    xlabel('Sample no.');
    ylabel('Amplitude');
    title('r^-^n when r=1');
else
     subplot(3,1,1);
    plot(n,y1);
    xlabel('Sample no.');
    ylabel('Amplitude');
    title('r^-^n when r>1');
end
subplot(3,1,2);
plot(n,y2);
xlabel('Sample no.');
ylabel('Amplitude');
title('cos(wt) when w=pi/4');
subplot(3,1,3);
plot(n,y);
xlabel(' ');
ylabel('Amplitude');
title('Real Part of z^-^n=r^-^n*cos(wn)');
    
    
