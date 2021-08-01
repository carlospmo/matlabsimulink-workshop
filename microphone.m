%%% Microphone gain plot

%%% This program shows how to plot data in polar coordinates. In particular
%%% of a cardioid microphone

% Parameters dictionary
g = 0.5;    % Constant of the microphone [-]

% Variables dictionary
% theta --- Angular position related to the microphone axis [rad]
% Gain  --- Gain of the microphone 

theta = linspace(0, 2*pi, 50);
Gain = 2 * g * (1 + cos(theta));

polar(theta, Gain, 'b-');
title('\bfGain versus angle \it{\theta}');

