x = 1:1:12;
y = [66 70 75 84 93 103 105 103 99 88 75 66];
errpos = [88 92 100 105 114 122 121 116 116 107 96 87];
errpos = errpos - y;
errneg = [16 24 25 35 39 50 63 61 47 34 27 22];
errneg = y - errneg;
errorbar(x,y,errneg, errpos)