
clc;
close all;
clear;

fs = 100;
t = 0:1/fs:1;
x = cos(2*pi*10*t);

L = length(x);
S = fft(x);
f = (0:L-1)*(fs/L);
si = ifft(S);

figure;
subplot(2,1,1);
stem(f(1:floor(L/2)), abs(S(1:floor(L/2)))/L, 'g', 'LineWidth', 2);
title('Frequency Spectrum (DFT)');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid minor;