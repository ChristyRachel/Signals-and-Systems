
%
% prepare workspace
%
close all;
clear;
clc;

%
% filter spec parameters
%
Rp = 1;
Rs = 80;
Fpass = 18500;
Fstop = 24000;
Fs = 200e3;
Ws = 2*pi*Fs;
Ts = 1/Fs;

%
% IIR design -- Elliptical
%
[num_e, den_e] = ellip(8, Rp, Rs, 2.0*Fpass/Fs);
H_e = tf(num_e, den_e, Ts)
H_e_ss = ss(H_e)
filt_label = 'IIR Elliptical filter design';
dt_filt_plotter(num_e, den_e, Rp, Rs, Fpass, Fstop, Fs, filt_label);