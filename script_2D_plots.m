%%% Two dimensional plots --- Advanced features

%%% This program contains examples of advanced features for two-dimensional
%%% plots in MATLAB

%% Logarithmic plots

% Let's plot a parabola
x = 0:0.01:100;
y = 2 * x.^2;
% Linear case
figure(1)
plot(x,y)
% Logarithmic / linear
figure(2)
semilogx(x,y)
% Linear / logarithmic
figure(3)
semilogy(x,y)
% Logarithmic / logarithmic
figure(4)
loglog(x,y)

%% Setting axis limits

figure(5)
plot(x,y)
axis([5 10 0 200])

%% Creating subplots

figure(6)
subplot(2,1,1)
x = -pi:pi/20:pi;
y = sin(x);
plot(x,y);
title('Sine function');
subplot(2,1,2)
x = -pi:pi/20:pi;
y = cos(x);
plot(x,y);
title('Cosine function');

%% Linear and logarithmic vectors

figure(7)
x = linspace(1,10,10);
y = x.^2 + x - 10;
plot(x,y);

figure(8)
x = logspace(0,1,10);
y = x.^2 + x - 10;
semilogx(x,y);