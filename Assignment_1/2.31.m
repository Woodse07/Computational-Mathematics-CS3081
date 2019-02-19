% Creating function Determinant()..
function D = Determinant(A)       
% Getting dimensions of matrix..
[m, n] = size(A);    
% If matrix is not square, output error message and return..
if (m ~= n)
    disp("The matrix must be square");
    return;
end
% If 2x2 matrix, get determinant
if (m == 2)
    % For a matrix [a b; c d] the determinant is ad - cb.
    part1 = A(1,1) * A(2,2);
    part2 = A(1,2) * A(2,1);
    D = part1 - part2;
    
% If 3x3 matrix, get determinant (We can use recursion here)
elseif (m == 3)
    % Part 1, 2 and 3 consists of make 2x2 matrices for recursion.
    part1 = [A(2,2) A(2,3); 
             A(3,2) A(3,3)];
         
    part2 = [A(2,1) A(2,3);
             A(3,1) A(3,3)];
         
    part3 = [A(2,1) A(2,2);
             A(3,1) A(3,2)];
    % Caclulating determinant...     
    part4 = A(1,1) * Determinant(part1);
    part5 = A(1,2) * Determinant(part2);
    part6 = A(1,3) * Determinant(part3);
    D = part4 - part5 + part6;
    
% If 4x4 matrix, get determinant.. same principle as step above.
elseif (m == 4)
    % Creating 3x3 matrices for recursion..
    part1 = [A(2,2) A(2,3) A(2,4); 
             A(3,2) A(3,3) A(3,4);
             A(4,2) A(4,3) A(4,4)];
    
    part2 = [A(2,1) A(2,3) A(2,4); 
             A(3,1) A(3,3) A(3,4);
             A(4,1) A(4,3) A(4,4)];
         
    part3 = [A(2,1) A(2,2) A(2,4); 
             A(3,1) A(3,2) A(3,4);
             A(4,1) A(4,2) A(4,4)];
         
             
    part4 = [A(2,1) A(2,2) A(2,3); 
             A(3,1) A(3,2) A(3,3);
             A(4,1) A(4,2) A(4,3)];
    % Calculating determinant.
    part5 = A(1,1) * Determinant(part1);
    part6 = A(1,2) * Determinant(part2);
    part7 = A(1,3) * Determinant(part3);
    part8 = A(1,4) * Determinant(part4);
    D = part5 - part6 + part7 - part8;
end

% Part(a) = 13
% Part(b) = 0


