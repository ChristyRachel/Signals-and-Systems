clc;
close all;

% define the given sequence using inbuilt functions
y=impseq(-7,-10,10)+3*impseq(2,-10,10)-stepseq(3,-10,10);
n=-10:10; % define the interval

stem(n,y);% to plot it