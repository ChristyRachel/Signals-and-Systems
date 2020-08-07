clc; 
close all;

w = [-500:1:500]*pi/500;
H1 = 0.375*ones(size(w))./(1.25-cos(w-(0.1*pi)));
H2 = 0.375*ones(size(w))./(1.25-cos(w+(0.1*pi)));
H = H1 + H1;

magH = abs(H); 
angH = angle(H);

subplot(2,1,1);
plot(w/pi,magH);

subplot(2,1,2); 
plot(w/pi,angH/pi);