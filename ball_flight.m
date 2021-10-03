g = -9.81;
x0 = 0;
y0 = 0;
v0 = 20;
dt = 0.01;
thetai = 0;
thetaf = 90;
nangles = thetaf - thetai + 1;
npoints = 1000;
conv = pi / 180;

xmax = 0;
thetamax = 0;
x = zeros(npoints,nangles);
y = zeros(npoints,nangles);


for thetad = 0:1:90
    thetarad = thetad * conv;
    vx0 = v0 * cos(thetarad);
    vy0 = v0 * sin(thetarad);

    a = 0.5 * g;
    b = vy0;
    c = y0;

    [t1, t2] = second_deg_equation(a,b,c);
    tf = max([t1, t2]);
    ti = min([t1, t2]);
    t_range = linspace(ti,tf,npoints);

    y(:,thetad+1) = y0 + vy0 .* t_range + 0.5 * g * t_range.^2;
    x(:,thetad+1) = x0 + vx0 .* t_range;
    
    if max(x(:,thetad + 1)) > xmax
        xmax = max(x(:,thetad + 1));
        thetamax = thetad;
    end
   
end

figure(1);
hold on

for thetad = 5:10:85
    idx = thetad + 1;
    if thetad == thetamax
        plot(x(:,idx),y(:,idx),'DisplayName',num2str(thetad), 'LineWidth', 2);
    else
        plot(x(:,idx),y(:,idx),'DisplayName',num2str(thetad));
    end
end
figure(1);
grid on;
xlabel('\bf\itx [m]');
ylabel('\bf\ity [m]');
title('Parabolic trayectories');
legend
hold off;

function [x1, x2] = second_deg_equation(a,b,c)
   dec = b^2 - 4 * a * c;
   
   x1 = (-b + sqrt(dec))/(2*a);
   x2 = (-b - sqrt(dec))/(2*a);
end
