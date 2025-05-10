clc;clear all;close all;
x=[0 0 0 0 2 1 2 1 0 0];
n=-3:1:6;
N=length(x)
k=input("enter the value:");
x_shifted=zeros(1,N)

if k>0
    x_shifted(k+1:N)=x(1:N-k);
elseif k<0
     x_shifted(1:N+k)=x(-k+1:N);
else
    x_shifted=x;
end
n_shifted=n;
figure(1)
subplot(2,1,1)
stem(n,x,'r',LineWidth=2)
title('original')
xlabel('time')
ylabel('amplitude')
subplot(2,1,2)
stem(n_shifted,x_shifted,'b',LineWidth=2)
title('shifting')
xlabel('time')
ylabel('amplitude')