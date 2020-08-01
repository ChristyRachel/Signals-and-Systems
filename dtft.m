function [X] = dtft (x, n, w)
  % X = DTFT values computed at w frequencies
  % x = finite duration sequence over n (row vector)
  % n = sample position row vector
  % w = frequency row vector
  X = x *exp(-j*n'*w);

end