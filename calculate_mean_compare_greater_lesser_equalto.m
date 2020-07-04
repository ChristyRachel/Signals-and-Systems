
% 14. write a script that calculates the mean of five samples of data from
% a vector of random data. Calculate the overall mean. Use a for-loop to
% perform the calculations. For each iteration of the loop, use an if-else
% control statement to display whether the sample is less than, greater
% than, or equal to the mean. 

clc;
clear;
 
N = 50;

random_numbers = 100*randn(1,100);

samples = zeros(5, 1)
for i=1:5
    samples(i) = random_numbers(i);
    i++;
end;
  
mean_samples = (samples())/5;
  
for i=1:5
    if random_numbers(i) > mean_samples
       disp('greater than');
    elseif random_numbers(i) < mean_samples
       disp('less than');
    else 
       disp('equal to!');
    end;
end;
