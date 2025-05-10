clc;
clear all;
close all;
t=-10:1:10;
y=(t>=0).*t;
figure(1);
subplot(2,1,1);
plot(t,y);
grid on;
xlabel('time(t)');
ylabel('function');
subplot(2,1,2)
stem(t,y)
xlabel('time')
ylabel ('function')