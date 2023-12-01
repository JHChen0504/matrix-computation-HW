function mtx_factor = mtxreorder(mtx_L,sigma)

    n = size(mtx_L,1);
    mtx_shift_L = mtx_L-sigma*speye(n);
    mtx_factor.Perm_amd_vec = amd(mtx_shift_L);
    W_reorder = mtx_shift_L(mtx_factor.Perm_amd_vec,mtx_factor.Perm_amd_vec);
    mtx_factor.mtx_Perm_amd = sparse(mtx_factor.Perm_amd_vec,1:n,ones(n,1));
    
    [mtx_factor.mtx_Low_L,mtx_factor.mtx_upper_U,mtx_factor.mtx_Perm_LU] = lu(W_reorder);