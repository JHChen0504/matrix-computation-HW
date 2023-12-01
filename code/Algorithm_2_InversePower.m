function [lambda,u,isconv] = Algorithm_2_InversePower(mtx_factor,sigma,tol,maxit)
    n = size(mtx_factor.mtx_upper_U,1);
    uk = zeros(n,1);
    uk(1) = 1;
    muk = 0;
    k = 0;
    ita = inf;
    if nargin<4
        maxit = inf;
    end

    while ita>tol && k<maxit
        vk1 = mtx_factor.mtx_Perm_amd*(mtx_factor.mtx_upper_U\(mtx_factor.mtx_Low_L\(mtx_factor.mtx_Perm_LU*uk(mtx_factor.Perm_amd_vec,:))));
        muk1 = vk1(1);
        uk1 = vk1./muk1;
        ita = max(abs((muk1-muk)/muk1),norm(uk1-uk)/norm(uk1));
        k = k+1;
        muk = muk1;
        uk = uk1;
    end
    isconv = ita<=tol;
    u = uk1;
    lambda = sigma+1/muk;
end