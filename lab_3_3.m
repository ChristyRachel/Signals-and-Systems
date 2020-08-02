clc;
close all;

n = 0:100;
xn = sinc((n-50)/2).^2;
N = length(xn);
X = dft(xn,N);

magH = abs(H);
angH = angle(H);

subplot(2,1,1);
plot(w/pi,magH);

subplot(2,1,2);
plot(w/pi,angH/pi);
