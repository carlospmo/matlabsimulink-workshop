%%% Purpose: Fit a line to a noisy measurements data set using the
%%%          least squares method, and plot the results
%%%
%%%

%%% Read the data set
n_points = input('Enter the number of points: ');

x = zeros(n_points,1);
y = zeros(n_points,1);

for ii = 1:n_points
    temp = input('Enter a pair of values [x, y]: ');
    x(ii) = temp(1);
    y(ii) = temp(2);
end

%%% Statistics calculations
% Get the average values and the sums needed
x_mean = mean(x);
y_mean = mean(y);
sum_xy = sum(x .* y);
sum_x = sum(x);
sum_x2 = sum(x .* x);

% Get the slope and the intercept
m = (sum_xy - sum_x * y_mean) / (sum_x2 - sum_x * x_mean);
b = y_mean - m * x_mean;

% Tell the user
disp('Regression coefficients for the least-squares line: ');
fprintf(' Slope (m)      = %8.3f\n', m);
fprintf(' Intercep (b)   = %8.3f\n', b);
fprintf(' No. of points  = %8.3f\n', n_points);

%%% Plot the results

data_set = cat(2,x,y);
data_set = sort(data_set,1);
xmin = min(x);
xmax = max(x);
ymin = m * xmin + b;
ymax = m * xmax + b;

figure(1);
plot(data_set(:,1),data_set(:,2), 'bo', 'DisplayName', 'Input Data');
hold on
plot([xmin xmax], [ymin ymax], 'r-', 'LineWidth', 2, 'DisplayName', 'Fitted Line');
hold off
title('\bfLeast-Squares Fit')
xlabel('\bf\itx')
ylabel('\bf\ity')
legend
grid on