function sol = Shift_A_inv_b(rhs,mtx_factor)
    sol = mtx_factor.mtx_Perm_amd * (mtx_factor.mtx_upper_U \ ...
    (mtx_factor.mtx_Low_L \ (mtx_factor.mtx_Perm_LU * ...
    rhs(mtx_factor.Perm_amd_vec,:))));
end