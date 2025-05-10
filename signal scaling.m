clc;
clear all;
close all;
x = [ 0  0  0  0  1  2  3  4 5 4 3 2 1 0 0 0 0]
n = [-8 -7 -6 -5 -4 -3 -2 -1 0 1 2 3 4 5 6 7 8]
N=length(x);
b=input("enter the lamda:");
num2str(b);
x_scaled=zeros(1,N);
if b>1
    for i=1:N
        if x(i)~=0
            val=b*n(i)
            indx=find(n==val)
            x_scaled(i)=x(indx)
        end
  end
elseif b<1
        for i=1:2:N
            val=b*n(i)
            indx=find(n==val)
            x_scaled(i)=x(indx)
        end
  else
      x_scaled=x;
  end
   
   n_scaled=n;
   subplot(2,1,1)
   stem(n,x)
   subplot(2,1,2)
   stem(n_scaled,x_scaled)