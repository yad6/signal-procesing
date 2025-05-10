clc;
clear all;
close all;
S=[2 4 6 7 5]
x=fft(S);
X_real=real(x);
X_img=imag(x)
x_mag=abs(x)
x_phase=angle(x)*(180/pi);
x_power=x_mag.^2;
N=length(S)
m=0:N-1;
subplot(2,2,1)
stem(m,X_real)