%%% Script to show built-in MATLAB functions

% The "max" and "min" functions

a = [1 3 2 6 9 11 10 8];

maxval = max(a);

[minval, minpos] = min(a);

% Some functions can either receive an scalar or an array

x = 0:0.1:1;
y = acos(x);
