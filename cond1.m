
function [cond_no, vec, magick] = cond1(L,U,p,A)

    z = sign(randn(length(A), 1));
    y = U' \ z;
    w = L' \ y;
    q = norm(w, Inf);
    i = eye(size(A));
m = 0;
mj = 0;
cond_no_max = 0;
vec = 0;
for j = 1:length(A),
    v = L \ (times(p',i(:,j)));
    u_n0 = U \ v;
    z_n1 = sign(u_n0);
    r = norm(u_n0, 1);
    y_n1 = U' \ z_n1;
    w_n1 = L' \ y_n1;
    nu = times(max(w_n1), i(:,j)); 
    cond_no = max(abs(times(times(nu, z), norm(A,1))));
    vec = z;
    magick = i(:,j);
    if(max(abs(norm(m))) < max(abs(norm(nu)))) 
       m = nu;
       mj = magick;
       cond_no_max = cond_no;
    end
end


cond_no = cond_no_max;
magick = mj;



