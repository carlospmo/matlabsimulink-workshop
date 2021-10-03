%%% Statiscal analysis with for loops

% Variable dictionary
% average  --- Average
% data     --- Array with the data set
% ii       --- Loop index
% n_points --- Number of points of the data set
% std_dev  --- Standard deviation
% sum_x    --- Sum of the values
% sum_x2   --- Sum of the square of the values

n_points = input('Introduce the number of points of the data set: ');

% Check if the number of points is sufficient

if n_points < 2
    disp('The number of points is insufficient');
    return
end

% Initialize variables and the array for the data set
sum_x = 0;
sum_x2 = 0;
data = zeros(1,n_points);

% Read the points

for ii = 1:n_points
    data(ii) = input('Enter the data point: ');
    
    sum_x = sum_x + data(ii);
    sum_x2 = sum_x2 + data(ii)^2;
end

average = sum_x / n_points;
std_dev = sqrt((n_points * sum_x2 - sum_x^2)/(n_points * (n_points - 1)));

fprintf('The average of the data set is %f\n', average);
fprintf('The standard deviation is %f\n', std_dev);
