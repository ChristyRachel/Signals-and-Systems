clc;
close all;
 
n = [0:100];
x = sinc((n-50)/2).^2;

k = [-100:100];
w = (pi/100)*k;

X1 = dtft(x,n,w);

magH = abs(H);
angH = angle(H);

subplot(2,1,1);
plot(w/pi,magH);

subplot(2,1,2);
plot(w/pi,angH/pi);