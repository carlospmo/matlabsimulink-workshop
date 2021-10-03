%% While loops | Statistics calculations

% Define an array with values, for instance, the grades of an exam

x = [5 7 8 5 6 4 2 3 6 9 8 4 5 6 7 8 9];
ave = mean(x);
std_dev_1 = std(x);

disp(ave);
disp(std_dev_1);

%% Average

% The average can be calculated using a 'while' loop

N = 0;
sum = 0;
sum_sq = 0;

y = input('Enter the first grade:\n');

while (y >= 0 && y <= 10)
   
    if (y >= 0)
        sum = sum + y;
        sum_sq = sum_sq + y^2;
        N = N + 1;
    end
    
    y = input('Enter a grade:\n');
end

average = sum / N;
std_dev = sqrt((N * sum_sq - sum^2) / (N * (N - 1)));
disp('The number of data points input to the program is: ');
disp(N);
disp('The average grade is: ');
disp(average);
disp('The standard deviation is: ');
disp(std_dev);