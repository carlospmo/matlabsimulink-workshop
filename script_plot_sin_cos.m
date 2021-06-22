%%% Plot sin and cos

% This simple program plots the sin and cos for values between 0 and 2pi

% First we declare an array of values for the x-axis and calculate the
% values of the y-axis

x = 0:0.01:2*pi;
y1 = sin(x);
y2 = cos(x);

% Now we plot both in the same figure
plot(x,y1);
hold on; % This command allows us to keep the previous graph
plot(x,y2);