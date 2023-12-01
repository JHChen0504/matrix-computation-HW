lower_L = tril(shift_L,-1);
diag_D = sparse(1:n,1:n,diag(shift_L));

maxit = 1000;
omegadatanum = 50;

ITER = zeros(omegadatanum,1);

omega = linspace(0,2,omegadatanum);

tic
for i = 1:omegadatanum
D_omegaL = diag_D + omega(i) * lower_L;
[sol,flag,RelRes,ITER(i)] = pcg(shift_L, b, tol, maxit, ...
    @(x)prec_SSOR(x, D_omegaL, diag_D));
end
cputime.SSOR = toc;

O = figure;
plot(omega,ITER,'b-o','LineWidth',2,'MarkerSize',3)
xlabel('ω')
ylabel('Iteration number')

saveas(O, ['omega' num2str(dk) 'k'], 'png')

function sol = prec_SSOR(rhs, D_omegaL, diag_D)
    sol = D_omegaL' \ (diag_D * (D_omegaL \ rhs));
end
