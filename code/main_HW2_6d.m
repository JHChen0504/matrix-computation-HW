prec_M = sparse(1:n,1:n,diag(shift_L));

tic;
[ev.Iterative, lambda.Iterative] = eigs(@(x)Solve_Shift_LS(x, shift_L, prec_M), n, m, ...
    'largestabs','Tolerance', 1.0e-14, 'MaxIterations', 10^3, 'IsFunctionSymmetric', 1);
lambda.Iterative = sigma + 1./diag(lambda.Iterative);
cputime.Solve_Shift_LS = toc;
residual.Iterative = vecnorm(mtx_L*ev.Iterative-ev.Iterative*diag(lambda.Iterative));