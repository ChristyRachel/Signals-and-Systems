%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
%   various CT filter design examples
%   
%   Copyright (C) 2020 emad studio, inc.
%       author: T. Zourntos
%       modified by : christy
%
%   filter specs: 
%       Rp = 2 dB
%       Rs = 80 dB
%       Fpass = 16 kHz
%       Fstop = 20 kHz
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
Rp = 2;
Rs = 80;
Fpass = 16000;
Fstop = 20000;


%% Butterworth Design
    % design attempt
    Nbw = 43;
    Wnbw = 2*pi*16100;
    [numHbw, denHbw] = butter(Nbw,Wnbw,'s');
    
    % plot response with specs superimposed
    filt_label='Butterworth Analog Filter Response (N=43)';
    ct_filt_plotter(numHbw, denHbw, Rp, Rs, Fpass, Fstop, filt_label);
    
    
%% Elliptical Design
    % design attempt
    Ne = 8;
    Rpe = 2;
    Rse = 80;
    Wpe = 2*pi*16000;
    [numHe, denHe] = ellip(Ne,Rpe,Rse,Wpe,'s');
 
    % plot response with specs superimposed
    filt_label='Elliptical Analog Filter Response (N=8)';
    ct_filt_plotter(numHe, denHe, Rp, Rs, Fpass, Fstop, filt_label);
%%    
    %% chebyshev1  Design
    Ncheby1 = 8;
    Rpcheby1 = 0.1;
    Rscheby1 = 80;
    Wpcheby1  = 2*pi*16000;
    [numHcheby1, denHcheby1] = cheby1(Nccheby,Rpcheby,Wpcheby,'s');
 
    % plot response with specs superimposed
    filt_label='chebyshev 1 (N=8)';
    ct_filt_plotter(numHcheby1, denHcheby1, Rp, Rs, Fpass, Fstop, filt_label);
    
    %% chebyshev2  Design
    % design attempt
    Ncheby2 = 8;
    Rpcheby2 = 0.1;
    Rscheby2 = 80;
    Wpcheby2 = 2*pi*16000;
    [numHcheby2, denHcheby2] = cheby2(Ncheby2,Rpcheby2,Wpcheby2,'s');
 
    % plot response with specs superimposed
    filt_label='chebyshev 2 (N=8)';
    ct_filt_plotter(numHcb2, denHcb2, Rp, Rs, Fpass, Fstop, filt_label);
    %%denHe, Rp, Rs, Fpass, Fstop, filt_label);