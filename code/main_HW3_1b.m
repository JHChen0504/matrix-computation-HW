prec_M = sparse(1:n,1:n,diag(shift_L));

tic;
[sol,flag,RelRes,Iter.HW3_1b] = pcg(shift_L, b, tol, maxit, prec_M);
cputime.PCG1 = toc;
fprintf('flag = %1.0f, RelRes = %11.4e, ITER = %6.0f, CPU_time = %11.4e \n', ...
flag, RelRes, ITER, cputime.PCG1);
