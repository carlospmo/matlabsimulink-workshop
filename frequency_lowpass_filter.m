%% Frequency response of a low-pass filter

% Variables dictionary
% amp   --- Amplitude response
% f     --- Frequency of input voltage
% R     --- Resistance [ohms]
% C     --- Capacitance [F]
% phase --- phase response [deg]
% res   --- Vo/Vi


% Initialization of variables

R = 16e3;
C = 1e-6;
f = 0:0.1:1000;

% Calculate the response

res = 1 ./ (1 + 2 * pi * f * R * C * 1i);
amp = abs(res);
phase = angle(res);
phase = phase * 180 / pi;
% Create the plots
subplot(2, 1, 1);
loglog(f, amp);
title('\bfAmplitude response');
xlabel('\bfFrequency [Hz]');
ylabel('\bfOutput/Input ratio');
grid on;

subplot(2,1,2);
semilogx(f, phase);
title('\bfPhase response');
xlabel('\bfFrequency [Hz]');
ylabel('\bfOutput-Input Phase [\circ]');
grid on;