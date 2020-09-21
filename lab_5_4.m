% Hamming window

clc; 
close all;

ls = 0.4*pi; 
lp = 0.3*pi; 
up = 0.7*pi; 
us = 0.6*pi;
Rp = 0.2; 
As = 50; 

[del_1,del_2] = db2delta(Rp,As);

if (del_1 < del_2)
del_2 = del_1; 
disp('1st is less than 2nd')
[Rp,As] = delta2db(del_1,del_2);
end

%% magnitude response
tr_width = abs(min((lp-ls),(us-up)));
m = 67;
n = 0:m-1; 
hamming_window = (hamming(m))';
w1 = (ls+lp)/2; w2 = (us+up)/2;
hd = ideal_lp(w2,m)-ideal_lp(w1,m); 
h = hd .* hamming_window;
[db,mag,pha,grd,w] = freqz_m(h,1); 
delta_w = pi/500;

%% Filter Response Plots
h_f = figure();

subplot(2,2,1);
plot(w/pi,db);
title('magnitude Response');

set(h_f);
subplot(2,2,2);
h_s= stem(n,hd); 
set(h_s);
title('Ideal Impulse Response');

subplot(2,2,3); 
h_s = stem(n,h); 
set(h_s);
title('Impulse Response');

subplot(2,2,4);
h_s = stem(k,hamming_window); 
set(h_s);
title('Hamming Window');

