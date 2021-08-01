%%% Linear and log plots with enhanced controls

%%% Example of how to use linear and logarithmic plots

figure(1)
x1 = linspace(0,10,21);
y = x1.^2 - 10 * x1 + 25;
plot(x1,y, '-ko', 'LineWidth', 3.0, 'MarkerFaceColor', 'r', ...
        'MarkerEdgeColor', 'b', 'MarkerSize', 10)
grid on
title('\bf Plot of the \it parabola \rm y = x^{2} - 10 * x + 25')

figure(2)
x2 = logspace(-1,1,21);
y = x2.^2 - 10 * x2 + 25;
semilogx(x2,y)
grid on