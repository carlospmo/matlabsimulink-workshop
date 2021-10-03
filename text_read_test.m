%% To read the data using the textread function
[first, last, blood, gpa, age, answer] = ...
    textread('test_input.dat','%s %s %s %f %d %s')

%% Use asterisk to skip parts of the text file
[first, last, age] = ...
    textread('test_input.dat','%s %s %*s %*f %d %*s')