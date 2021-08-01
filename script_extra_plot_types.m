%%% Additional types of plots in MATLAB

%%% This program shows examples of some of the different kinds of plots 
%%% supported by MATLAB

% Let's define some data

x = [0 1 2 3 4 5];
y = [2 5 1 6 9 3];

%% Bar plot examples
% Vertical
figure(1)
bar(x,y);
title('\bfVertical Bar plot')
grid on;
print -dpng vertical_bar_plot.png
% Horizontal
figure(2)
barh(x,y);
title('\bfHorizontal Bar plot')
grid on;
print -dpng horizontal_bar_plot.png

%% Compass plot example
figure(3)
compass(x,y)
title('\bfCompass Plot')
grid on
print -dpng compass_plot.png

%% Pie Plot Example
figure(4)
pie(y)
title('\bfPie Plot')
grid on
print -dpng pie_plot.png

figure(5)
pie(y, [0 0 0 1 0 0])
title('\bfPie Plot with exploded portion')
grid on
print -dpng pie_plot_exploded.png

%% Stairs Plot Example
figure(6)
stairs(x,y)
title('\bfStairs Plot Example')
grid on
print -dpng stairs_plot.png

%% Stem plot example
figure(7)
stem(x,y)
title('\bfStem Plot Example')
grid on
print -dpng stem_plot.png