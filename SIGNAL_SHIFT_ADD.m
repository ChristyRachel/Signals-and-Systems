clc;

n=(-2:10);
x=[1:7,6:-1:1];

[x11,n11] = sigshift(x,n,5);
[x12,n12] = sigshift(x,n,-4);
[x1,n1] = sigadd (2*x11,n11, - 3*x12,n12);

stem(x1,n1);
