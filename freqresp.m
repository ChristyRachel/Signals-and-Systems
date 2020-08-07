function [H] = freqresp(b,a,w)
% Frequency response function from difference equation
% [H] = freqresp(b,a,w)
% H = frequency response array evaluated at w frequencies
% b = numerator coefficient array
% a = denominator coeeficient array (a(1) = 1)
% w = frequency location array
%
b = reshape(b,1,length(b));
a = reshape(a,1,length(a));
w = reshape(w,1,length(w));
m = 0:length(b)-1; num = b*exp(-j*m'*w);
l = 0:length(a)-1; den = a*exp(-j*l'*w);
H = num./den;