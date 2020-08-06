clc; 
close all;

w = [-500:1:500]*pi/500;
H = 0.19*ones(size(w))./(1.81-1.8*cos(w));

magH = abs(H); 
angH = angle(H);

subplot(2,1,1);
plot(w/pi,magH);

subplot(2,1,2); 
plot(w/pi,angH/pi);