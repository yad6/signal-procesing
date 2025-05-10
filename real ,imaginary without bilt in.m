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
disp('Index (k) | Real | Imag | Magnitude | Phase (deg) | Power')
for k = 1:N
    fprintf('%9d | %6.2f | %6.2f | %9.2f | %11.2f | %7.2f\n', ...
        k-1, X_real(k), X_img(k), x_mag(k), x_phase(k), x_power(k))
end

subplot(2,2,1)
stem(m,X_real)
subplot(2,2,2)
stem(m,X_img)
subplot(2,2,3)
stem(m,x_mag)
subplot(2,2,4)
stem(m,x_power)