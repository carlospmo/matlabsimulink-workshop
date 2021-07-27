%%% Maximum Power Transfer to a Load

%%% Purpose: The program calculates the value of a resistance R_L that
%%% results in the maximum power transmitted to the load, and plots the
%%% power supplied for a series of values of the load resistance

%%% Parameters dictionary
V = 120;     % Voltage source [V]
R_S = 50;    % Internal resistance [?]

%%% Variables dictionary
%%% R_L  -- Load resistance
%%% I    -- Current supplied to the load
%%% P    -- Power transferred to the load

% Creates a vector of possible values
R_L = 1:1:100;

% Calculates the current and power for each of the values of R_L
I = V ./ (R_L + R_S);
P = I.^2 .* R_L;

% Find the maximum value of power
[maxP, iR] = max(P);
fprintf('The maximum power is %6.2f W for a R_L = %i ohms\n', ...
        maxP, iR);

% Plots the power versus the load resistance
plot(R_L,P);
title('Power transfer to a load for different values of load resistance');
xlabel('R_L [\Omega]');
ylabel('Power [W]');
grid on;
