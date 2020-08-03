clc; 
close all;

n = 0:39;
h = sinc(0.2*n);
w = [-300:300]*pi/300;
H = dtft(h,n,w);

magH = abs(H); 
angH = angle(H);

subplot(2,1,1);
plot(w/pi,magH);

subplot(2,1,2); 
plot(w/pi,angH/pi);