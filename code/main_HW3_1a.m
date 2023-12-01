tic;
[~,flag,RelRes,ITER] = pcg(shift_L, b, tol, maxit);
cputime.cg = toc;
fprintf('flag = %1.0f, RelRes = %11.4e, ITER = %6.0f, CPU_time = %11.4e \n', ...
        flag, RelRes, ITER, cputime.cg);

    
tic;
[~] = GE_Shift_LS(b,shift_L);
cputime.ge = toc;