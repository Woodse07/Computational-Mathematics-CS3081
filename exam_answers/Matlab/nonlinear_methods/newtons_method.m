function N = NewtonsMethod(P)
	x = P;
	if(x <= 0)
		disp("Input must be greater than 0");
		return;
	end
	
	answer = sqrt(X);

	for i = 1:20
		fx = fun(x, P);
		fxp = funp(x);
		x = x - (fx/fxp);
		if (abs(answer-x) < 0.00001)
			return;
		end
	end
N = x;
end

function N = fun(X, P)
N = x^2 - P;
end

function N = fun(X)
N = 2*X;
end
