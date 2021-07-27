%%% Script Introduction to plots

x = 0:1:10;
y = x.^2 - 10 .* x + 15;
plot(x,y);
title('Plot of the parabola y = x^2 - 10x + 15')
xlabel('x');
ylabel('y');
grid on;

%%% Let's print in two formats: JPEG and PNG

print -djpeg myfirstfigure.jpeg
print -dpng myfirstfigure.png

%%% We can represent two functions in the same plot

x = 0:pi/100:2*pi;
y1 = sin(2*x);
y2 = 2*cos(2*x);
plot(x,y1,x,y2);

%%% Using different marker styles and adding a legend

close all
plot(x,y1,'cs',x,y2,'k*-');

legend('f(x)','df(x)/dx','Location','bestoutside');
