clc;
clear all;
close all;
x=input('x')
h=input('h')
nx=input('nx')
nh=input('nh')
y=conv(x,h)
ny=(nx+nh)+(0:length(y)-1)
subplot(3,1,1)
stem(nx:nx+length(x)-1,x)
subplot(3,1,2)
stem(nh:nh+length(h)-1,h)
subplot(3,1,3)
stem(ny,y)