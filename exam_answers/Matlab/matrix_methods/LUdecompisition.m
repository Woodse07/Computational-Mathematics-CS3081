% Creating function LUdecompgauss()
function [L,U] = LUdecompgauss(A)
% Getting dimensions of matrix
[m, n] = size(A);
% Making sure matrix is square..
if (m ~= n)
    disp("Square matrices only");
end
% Creating template for lower triagnular matrix..
L = zeros(m);
for i = 1:m
   L(i,i) = 1;
end
% Creating copy of matrix..
U = A;

depth = 1;
for i = 1:m
    for j = 1:n
        if i == j
            temp = depth;
            while temp < m
                temp = temp + 1;
                constant = U(temp,j)/U(i,j);
                for x = 1:m
                    U(temp,x) = U(temp,x) - (constant*U(i,x));
                end
                L(temp,j) = constant;
            end
        end
    end
    depth = depth + 1;
end 

disp(L);
disp(U);

