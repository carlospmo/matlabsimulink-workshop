%%% Spiral of Archimedes

theta = linspace(0, 6*pi, 100);
k = 0.5;

r = k * theta;
figure(1)
polar(theta, r)