%%% Control branches

%% The if construct

% Example: solving a second degree (quadratic) equation
% Let's define the coefficients
a = 1;
b = 2;
c = 5;

% We calcualte the discriminant
discriminant = b^2 - 4 * a * c;

% Now the possible solutions of the equation

if (discriminant > 0)
    disp('This equation has two real roots')
    x1 = (- b + sqrt(discriminant))/ (2*a);
    x2 = (- b - sqrt(discriminant))/ (2*a);
    fprintf('The solutions of the quadratic equation are %f and %f\n', x1, x2);
elseif (discriminant == 0)
    disp('This equation has one real root')
    x =  - b / (2 * a);
    fprintf('The solution of the quadratic equation is %f\n', x);
else
    disp('This equation has two complex roots');
    xreal = - b/ (2*a);
    ximag =  sqrt(-discriminant)/ (2*a);
    fprintf('The solutions of the quadratic equation are %f +- %f j\n', xreal, ximag);
end

%% The switch construct

value = 10;

switch (value)
case {1,3,5,7,9}
    disp('The value is odd.');
case {2,4,6,8,10}
    disp('The value is even.');
otherwise
    disp('The value is out of range.');
end

%% The try/catch construct

% Simple example

% Initialize array
a = [ 1 -3 2 5];
try
    % Try to display an element
    index = input('Enter subscript of element to display: ');
    disp( ['a(' int2str(index) ') = ' num2str(a(index))] );
catch
    % If we get here an error occurred
    disp( ['Illegal subscript: ' int2str(index)] );
end


