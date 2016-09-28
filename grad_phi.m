// Steve Cartwright <sdc5193>

function [g] = grad_phi(x)
g = [4*x(1)^3 + x(2); x(1) + 2*(1 + x(2))];
end