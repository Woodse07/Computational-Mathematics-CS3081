[m,n] = size(A);
if(m ~= n)
    disp("Matrix must be square");
    return;
end

initVector = zeros(n,1);
for i = 1:n
    initVector(i) = 1;
end

for x = 1:5
vector = zeros(n,1);
for i = 1:m
    for j = 1:n
            vector(i) = vector(i) + (A(i,j)*initVector(j));      
    end
end
disp(vector);

max = 0;
for i = 1:n
    if(vector(i) > max)
        max = vector(i);
    end
end
for i = 1:n
    vector(i) = vector(i) / max;
end
initVector = vector;
end
N = max;
end
