clc;clear all;close all;
x = [ 0 0 0 0  0  0 2 1 2 1 0 0 0];
n= -6:1:6;
N=length(x);
x_reversed=zeros(1,N);
n_reversed=n;
for i=1:N
    val_n=-n(i);
    indx=find(n==val_n);
  x_reversed(i)=x(indx);
end;

  figure(1)
  subplot(2,1,1);
  stem(n,x);

  subplot(2,1,2)
  stem(n_reversed,x_reversed)
      
