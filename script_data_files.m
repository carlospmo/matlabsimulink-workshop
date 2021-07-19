%%% Script for showing the usage of data files in MATLAB

% Let's first declare some variables

a = 3.56;
b = 2*pi;
c = exp(2);

% Now we can store them in a file with the "save" command

save myvariables a b c

save -ascii