clc; 
close all;

w = [-500:1:500]*pi/500;
H = (2-0.9*exp(-j*w))./(1-0.9*exp(-j*w)+0.2*exp(-j*2*w));

magH = abs(H); 
angH = angle(H);

subplot(2,1,1);
plot(w/pi,magH);

subplot(2,1,2); 
plot(w/pi,angH/pi);