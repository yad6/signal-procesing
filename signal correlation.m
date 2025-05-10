clc;
clear all;
close all;
x=input('x');
h=input('h');
nx=input('nx')
nh=input('nh');
[r,lags]=xcorr(x,h)
ny=(nx-nh)+lags
subplot(3,1,1)
stem(nx:nx+length(x)-1,x)
subplot(3,1,2)
stem(nh:nh+length(h)-1,x)
subplot(3,1,3)
stem(ny,r)