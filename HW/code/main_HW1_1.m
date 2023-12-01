mtx_L       = construct_Laplacian_matrix(filename);

n = size(mtx_L,1);
sigma = -0.01;
shift_L = mtx_L - sigma*speye(n);

sigma       = 0.01;
tol         = 1e-10;

dk = round(n,-3)/1000;

fprintf('\nMatrix dimention %dk\n------------------------------------\n',dk)

mtx_shift_L = mtx_L-sigma*speye(n);