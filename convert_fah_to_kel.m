%%% Conversion degrees Fahrenheit to degrees Kelvin

%%% Purpose: The program requests to input a value of a temperature in
%%% degrees Fahrenheit and prints the equivalent value in degrees Kelvin

%%% Variables dictionary
%%% temp_f  -- Temperature in degrees Fahrenheit
%%% temp_k  -- Temperature in degrees Kelvin

% Prompt the user to input a value
temp_f = input('Enter the temperature in Fahrenheit degrees \n');
% Convert it to degrees Kelvin
temp_k = 5/9 * (temp_f - 32) + 273.15;
% Prints the resulting value
fprintf('The temperature in degrees Kelvin is %f K\n', temp_k);