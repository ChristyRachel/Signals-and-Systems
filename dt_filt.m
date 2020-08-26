
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
%   various DT filter design examples
%   
%   Copyright (C) 2020 emad studio, inc.
%       author: T. Zourntos
%      modified by : christy
%
%   filter specs: 
%       Rp = 0.3 dB
%       Rs = 100 dB
%       Fpass = 50 kHz
%       Fstop = 80 kHz
%       Fs = 1 MHz
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%
% prepare workspace
%

close all;
clear;
clc;

%
% filter spec parameters
%
Rp = 0.3;
Rs = 100;
Fpass = 50000;
Fstop = 80000;
Fs = 1000000;
Ws = 2*pi*Fs;
Ts = 1/Fs;


%
% IIR design -- Butterworth
%
[num_bw, den_bw] = butter(27, 1.95*Fpass/Fs);
H_bw = tf(num_bw, den_bw, Ts);
H_bw_ss = ss(H_bw);
filt_label = 'IIR Butterworth filter design';
dt_filt_plotter(num_bw, den_bw, Rp, Rs, Fpass, Fstop, Fs, filt_label);

%
% IIR design -- Elliptical
%
[num_e, den_e] = ellip(8, Rp, Rs, 2.0*Fpass/Fs);
H_e = tf(num_e, den_e, Ts);
H_e_ss = ss(H_e);
filt_label = 'IIR Elliptical filter design';
dt_filt_plotter(num_e, den_e, Rp, Rs, Fpass, Fstop, Fs, filt_label);

%
% IIR design -- Chebyshev 1
%
[num_cheby1, den_cheby1] = cheby1(8, Rp, 2.0*Fpass/Fs);
H_cheby1 = tf(num_cheby1, den_cheby1, Ts);
H_cheby1_ss = ss(H_cheby1);
filt_label = 'IIR Chebyshev1 filter design';
dt_filt_plotter(num_cheby1, den_cheby1, Rp, Rs, Fpass, Fstop, Fs, filt_label);

%
% IIR design -- Chebyshev 2
%
[num_cheby2, den_cheby2] = cheby2(8, Rp, 2.0*Fpass/Fs);
H_cheby2 = tf(num_cheby2, den_cheby2, Ts);
H_cheby2_ss = ss(H_cheby2);
filt_label = 'IIR chebyshev2 filter design';
dt_filt_plotter(num_cheby2, den_cheby2, Rp, Rs, Fpass, Fstop, Fs, filt_label);

