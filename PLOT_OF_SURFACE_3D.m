% CREATE A 3D PLOT OF A SURFACE OF CREATING A GRID ALONG THE X & Y AXIS
% AND PLOTTING THE Z COORDINATE ACCORDING TO THE EXPONENTIAL FUNCTION:

clc;

x = [ -5 : 0.1 : 5 ];
y = [ -3 : 0.1 : 3 ];
 
% to create a grid along x and y axis
[x,y] = meshgrid(x,y);
 
% assign z coordinate as exponential of x and y
z = exp(-x.^2-y.^2);
 
surf(x,y,z); % to plot the 3D figure
 
xlabel('x');
ylabel('y');
zlabel('z');
title('3D PLOT');