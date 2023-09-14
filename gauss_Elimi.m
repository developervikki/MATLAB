function[]=gauss_Elimi()
clc;
clear all;
n=input('Enter the number of equations: ');
A=input('Enter the elements of augmented matrix: ');
for j=1:1:n-1
    for i=j+1:1:n
        t=A(i,j)/A(j,j);
        for k=1:1:(n+1)
            A(i,k)=A(i,k)-t*A(j,k)
        end
    end
end
disp('The augmented Matrix become');
disp(A);
for i=n:-1:1
    s=0;
    for j=i+1:1:n
        s=s+A(i,j)*x(j);
    end
    x(i)=(A(i,n+1)-s)/A(i,i)
end
disp('The Solution of given System Using gauss Elmination Method');
disp(x);
end