function sol = Solve_Shift_LS(b, shift_L, prec_M)
    tol = 1e-10;
    maxit = 10000;
    [sol,flag,RelRes,ITER] = pcg(shift_L, b, tol, maxit, prec_M);
    fprintf('PCG: flag = %1.0f, RelRes = %11.4e, ITER = %6.0f \n',flag,RelRes,ITER);
end