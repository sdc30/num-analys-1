// Steve Cartwright <sdc5193>

function [x, fin] = newton(func, init)
tol = 1e-8;
x = init

i = 0;
go = 1
while i < 10 && go

  previous = x;
  j = -grad_phi(x);
  A = hess_phi(x);
  [L, U, p] = lu(A, 'vector');
  y = L\(j(p));
  k = U\y;
  fin = func(x);
  x = x + k;
  i = i + 1;
  if(norm(grad_phi(x), 2) <= tol)
    go = 0;
  else if(norm(x - previous, 2) <= (tol * max(norm(x, 2), tol)))
    go = 0;
  end
  
 end
 end