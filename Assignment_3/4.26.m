function N = InfinityNorm(A)
% Getting dimensions of matrix..
[m, n] = size(A);    
% If matrix is not square, output error message and return..
if (m ~= n)
    disp("The matrix must be square");
    return;
end
% Setting up some variables
max = 0;
temp = 0;

% Get sum of all values of all rows and keep the max..
for i = 1:m
    for j = 1:n
        temp = temp + abs(A(i,j));
    end
    if (temp > max)
        max = temp;
    end
    temp = 0;
end
disp(max);
N = max;
end

% Answer = (i)
