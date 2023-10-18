 function[]=gauss_jordan_method()
clc;
clear all;
n=input('Enter ther no. of variabls');
A=input('Enter the elements of augmented matrix: ');
for j=1:1:n
    for i=1:1:n
        if(i~=j)
            t=A(i,j)/A(j,j);
            for k=1:1:n+1
                A(i,k)=A(i,k)-t*A(j,k);
            end
        end
    end
end
disp('The augmented matrix become:');
disp(A);
for i=1:1:n
    x(i)=A(i,n+1)/A(i,i);
end
disp('The soltutions of the given system using gauss elimination method is: ');
disp(x);
end
