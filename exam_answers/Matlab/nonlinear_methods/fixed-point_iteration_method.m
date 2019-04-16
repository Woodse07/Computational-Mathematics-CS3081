function N = FixedPointIteration(Iterations)

% Your function here
g = @(x) cos(x)

% Start out iteration loop
x1 = 0;
x2 = g(x1);

for i = 1:Iterations
	x1 = x2;
	x2 = g(x1);	
end

N = x2
end
