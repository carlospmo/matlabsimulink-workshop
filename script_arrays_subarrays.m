%%% Arrays and subarrays

% This script shows how to use arrays and subarrays

% We can define a 3x2 array

arr1 = [2.3 4.6 7.1; 5.2 3.6 6.9];

% To select the last 2 columns

arr2 = arr1(:,2:end);

arr1(1,:) = [2 3 4];

arr2(:,2) = 2;