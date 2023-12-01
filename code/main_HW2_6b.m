tic;
[ev.GE_Shift_LS, lambda.GE_Shift_LS] = eigs(@(x)GE_Shift_LS(x,mtx_shift_L), n, m, 'largestabs', ...
    'Tolerance', 1.0e-14, 'MaxIterations', 10^3, 'IsFunctionSymmetric', 1);
lambda.GE_Shift_LS = sigma + 1./diag(lambda.GE_Shift_LS);
cputime.GE_Shift_LS = toc;
residual.GE_Shift_LS = vecnorm(mtx_L*ev.GE_Shift_LS-ev.GE_Shift_LS*diag(lambda.GE_Shift_LS));