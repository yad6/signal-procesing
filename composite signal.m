clc;
clear all;
close all;
f1=input('f1');
f2=input('f2');
f3=input('f3');
fs=input('fs');
l=input('l');
a=input('a');
t=(0:l-1)/fs;
s1=a*sin(2*pi*f1*t);
s2=a*sin(2*pi*f2*t);
s3=a*sin(2*pi*f3*t);
s=s1+s2+s3;
subplot(4,1,1)
stem(t,s1);
subplot(4,1,2)
stem(t,s2);
subplot(4,1,3)
stem(t,s3);
subplot(4,1,4)
stem(t,s);