function N = BisectionMethod(Iterations)

a = 0.5;
b = 0.3;

for i = 1:Iterations
	fa = fun(a);
	fb = fun(b);
	Xns = (a+b)/2;
	fXns = fun(Xns);
	if (fa*fXns > 0)
		a = Xns;
	elseif (fa*fXns < 0)
		b = Xns;
	end
end
N = Xns;
end

function N = fun(Angle)
	N = 18 * tan(Angle) - 7.0632 * (1/cos(Angle)^2) - 0.1;
end

