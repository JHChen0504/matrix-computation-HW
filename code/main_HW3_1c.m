prec_M1 = sparse(1:n,1:n,diag(shift_L).^(0.5));
prec_M2 = prec_M1;

tic;
[sol,flag,RelRes,Iter.HW3_1c] = pcg(shift_L, b, tol, maxit, prec_M1, prec_M2);
cputime.PCG2 = toc;
fprintf('flag = %1.0f, RelRes = %11.4e, ITER = %6.0f, CPU_time = %11.4e \n', ...
flag, RelRes, ITER, cputime.PCG2);
