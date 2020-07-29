
clc;
close all;

n = [0:20] %to define the interval
x = 0.9 .^ n %define signal

xf = sigfold(x,n) % fold the signal 

autocorrelation = conv(x,xf) 
% colvolute signal with it's own folded signal

stem(autocorrelation) 
% plot it as descrete signal

