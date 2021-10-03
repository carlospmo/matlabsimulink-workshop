n = 3;
x1 = -5:0.01:5;
p = polyfit(x,y,n);
y1 = polyval(p,x1);