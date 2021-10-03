%%% First calculations · For Loop without preallocation
maxcount = 10; % Number of repetitions
tic; % Start timer
for jj = 1:maxcount
    clear squares
    for ii=1:10000
        squares(ii) = ii^2;
    end
end

average1 = (toc) / maxcount;

%%% Second calculations · For Loop with preallocation
maxcount = 1000;
tic; % Start timer
squares2 = zeros(1,10000);
for ii=1:10000
    clear squares2
    squares2(ii) = ii^2;
end

average2 = (toc) / maxcount;

%%% Third calculations · Vectorization
maxcount = 1000;
tic; % Start timer
for jj=1:maxcount
    clear squares3
    ii = 1:10000;
    squares3 = ii.^2;
end

average3 = (toc) / maxcount;

%%% Print the results

fprintf('Loop / uninitialized array =     %8.5f\n', average1);
fprintf('Loop / initialized array / JIT = %8.5f\n', average2);
fprintf('Vectorized =                     %8.5f\n', average3);