// Steve Cartwright <sdc5193>

function [A] = hess_phi(x)
A = [12*x(1)^2 1; 1 2];
end