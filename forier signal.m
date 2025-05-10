clc;
clear all;
close all;
fs=100;
l=10
t=(0:l-1)/fs;
s=cos(2*pi*10*t)%+cos(2*pi*15*t);
l=10
S=fft(s);
f=(0:l-1)*(fs/l);
si=ifft(S);
subplot(2,1,1)
stem(f(1:floor(l/2)),abs(S(1:floor(l/2)))/l)
subplot(2,1,2)
stem(t,real(si))