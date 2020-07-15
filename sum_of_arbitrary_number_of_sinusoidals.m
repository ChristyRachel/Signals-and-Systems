clc;

T0 = 2*pi; % desired period of sine
f0 = 1/T0; % frequency in Hz is just the reciprocal of the period
Npts = 1024; % number of points to plot
delta = T0/Npts; % increment or "sampling period"
trange = 0:delta:(T0-delta);
Nterms = 10; %number of sine ways to add
Y = zeros(Nterms, Npts);

function Ysum = addsines(Y)
Ysum = sum(Y, 1);
endfunction;

for i = 1:2:Nterms*2+1; % increment by two to get the odd harmonics
oddHarmonic = i*f0;
sineValue = (sin(2*pi*oddHarmonic*trange))/i;%Get the value of the harmonic
Sines(i,:) = sineValue;
end
  
Ytotal = addsines(Sines);
figure; plot(trange, Ytotal); 
grid; 
title('sum of sinusoids');
