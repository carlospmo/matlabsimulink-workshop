%% For loop | Examples

%% Factorial number

n_factorial = 1;
n = 5;
for ii = 1:n
    n_factorial = n_factorial * ii;
end

%% Day of the year

% The purpose of this program is to calculate the day of the year given the
% day, month and year

% Variables dictionary
% day     --- Day of the month  (dd)
% month   --- Month of the year (mm)
% year    --- Year              (yyyy)
% is_leap --- Boolean, true if the year is leap
% n_day   --- Counter of day of the year
% ii      --- Loop index (months)
% month_days --- Number of days of ii-month

month = input('Introduce the month (1-12): \n');
day = input('Introduce the day (1-31): \n');
year = input('Introduce the year (yyyy): \n');

is_leap =  mod(year,400) == 0 || ...
    (mod(year,4) == 0 && mod(year,100) ~= 0);
            
n_day = 0;       
        
for ii = 1:month
    if month == ii
        n_day = n_day + day;
    else
        switch (ii)
            case {1,3,5,7,8,10,12}
                month_days = 31;
            case 2
                if is_leap
                    month_days = 29;
                else
                    month_days = 28;
                end
            case {4,6,9,11}
                month_days = 30;    
        end
        n_day = n_day + month_days;
    end
end

fprintf('The number of day of the date %2d/%2d/%4d is %d.\n', ...
        day, month, year, n_day);