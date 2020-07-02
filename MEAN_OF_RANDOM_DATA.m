% WRITE A SCRIPT TO PLOT A VECTOR OF RANDOM DATA. DRAW A HORIZONTAL LINE AT
% THE MEAN. SAVE THE SCRIPT AND RUN IT FROM THE COMMAND LINE.

clc;

N = 50;

random_numbers = 100*randn(1,100);

x = mean(random_numbers)
plot (random_numbers, 'mo', x,'o-', lines);

