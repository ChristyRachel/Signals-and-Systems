clc; 
close all;

sb = 0.4*pi;
pb = 0.6*pi;
Rp = 0.004;
As = 50; 

[del_1,del_2] = db2delta(Rp,As);
if (del_1 < del_2)
del_2 = del_1; 
disp('1st is less than 2nd')
[Rp,As] = delta2db(del_1,del_2);
end

tr_width = abs(pb-sb);
m = 55;
n = 0:m-1; 
blackman_window = (blackman(m))';
w = (sb+pb)/2;
hd = ideal_lp(pi,m)-ideal_lp(w,m);
h = hd .* blackman_window;
[db,mag,pha,grd,w] = freqz_m(h,1); 
delta_w = pi/500;

%% Zoomed response
figure();
plot(w(350:500)/pi,db(350:500));
title('Zoomed Response');