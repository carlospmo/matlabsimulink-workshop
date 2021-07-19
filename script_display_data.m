%%% Script for showing display functions

% This program shows examples for displaying data in MATLAB using different
% commands

% Let us first initialize some variables

a = 3.14;
b = 6;
c = [0 pi 2];

% Using the disp function

disp(a);
disp(b);
% Combining with the format command

format long e
format compact
disp(a);
disp(b);

% Let's create some strings

str1 = ['The value of a = ', num2str(a)];
disp(str1);

str2 = ['The value of the integer b =', int2str(b)];
disp(str2);

% Using the fprintf function to display data

fprintf('The value of the first item of c = %d\n', c(1));
fprintf('The second value in exponential form is %e\n',c(2));
fprintf('The third value in floating-point format is %f\n',c(2));

% The fprintf function can be used specifying the length of the field, and
% the number of numbers after the decimal point

fprintf('The value of pi is %6.2f \n',pi)
