% Creating function Inverse()
function Ainv = Inverse(A)
% Getting dimensions of matrix
[m, n] = size(A);

% Making sure matrix is square..
if (m ~= n)
    disp("Square matrices only");
end

% Creating empty matrix of same size..
Inv = zeros(m);
% Formatting empty matrix to identity matrix..
for i = 1:m
   Inv(i,i) = 1 
end

% Just need 1 for loop for the diagonal..
for i = 1:m
    % If the diagonal isn't 1
    if A(i,i) ~= 1
        % Divide that row so it is..
        temp = A(i,i);
        for k = 1:m
            A(i,k) = A(i,k) / temp;
            Inv(i,k) = Inv(i,k) / temp; 
        end
    end
    
    % For the all column cells of the diagonal..
    for j = 1:n
       % Make them 0..
       if i ~= j && A(j,i) ~= 0
           temp = A(j,i);
           for k = 1:m
              A(j,k) = A(j,k) - (temp*A(i,k));
              Inv(j,k) = Inv(j,k) - (temp*Inv(i,k));
           end
       end
    end            
end
% Rinse and repeat

disp(A);
disp(Inv);
