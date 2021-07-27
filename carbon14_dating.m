%%% Carbon 14 decay dating

%%% Purpose: program to calculate the age of a sample given the percentage
%%% of carbon 14 isotopus remaining

%%% Parameters dictionary
lambda = 0.00012097; % RadioactiveDecay constant [1/year]

%%% Variables dictionary
% percent -- percentage of carbon-14 remaining
% age     -- age of the sample
% ratio   -- ration of the carbon-14 remaining

% Prompt the user to input the percentage of the sample
percent = input('Enter the percentage of Carbon-14 remaining\n');

% Transform it into a ratio
ratio = percent / 100;

% Calculate the age of the sample
age = - 1 / lambda * log(ratio);

% Display the result
fprintf('The age of the sample is %10.6f years\n', age);