showfigure = 'off';

%% 1.4-1

tic;
[~,LUU,~] = lu(mtx_shift_L);
cputime.LU = toc;

tic;
mtx_factor = mtxreorder(mtx_L,sigma);
cputime.amdLU = toc;

%% 1.4-2

U1 = figure('Visible',showfigure);
spy(LUU);
drawnow

U2 = figure('Visible',showfigure);
spy(mtx_factor.mtx_upper_U);
drawnow

saveas(U1, ['U1_' num2str(dk) 'k'],'png')
saveas(U2, ['U2_' num2str(dk) 'k'],'png')

%% 1.4-3

b = rand(n,1);
tic;
[~] = mtx_factor.mtx_Perm_amd * (mtx_factor.mtx_upper_U \ (mtx_factor.mtx_Low_L ...
\ (mtx_factor.mtx_Perm_LU * b(mtx_factor.Perm_amd_vec,:))));
cputime.solveLU = toc + cputime.amdLU;

%% 
clear LUU showfigure