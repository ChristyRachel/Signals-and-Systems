clc;
close all;

nx = [0:20] %to define the interval
x = 0.9 .^ n %define signal

ny = [-20:0]
y = 0.8 .^ n %define signal
yf = sigfold(y,ny) % fold the signal 

crosscorrelation = conv(x,yf) 
% colvolute signal with it's own folded signal

stem(crosscorrelation) 
% plot it as descrete signal