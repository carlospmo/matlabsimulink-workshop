%%% My first script

% Let's calculate the area of a triangle and print it

% First we declare and define our constants (done at the same time in
% MATLAB)
h = 1.5; % Height 
b = 3.5; % Base

% Then we calculate the area and put the value in a string
A = 0.5 * h * b;
string_area = ['The area of the triangle is ' num2str(A) 'm2'];

% Finally we print it in the screen
disp(string_area);