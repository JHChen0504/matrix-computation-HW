function [lambda,uk,isconv] = Algorithm_1_InversePower(mtx_L,sigma,tol,maxit)
    n = size(mtx_L,1);
    uk = zeros(n,1);
    uk(1) = 1;
    muk = 0;
    ita = inf;
    if nargin<4
        maxit = inf;
    end
    k = 0;
    while ita>tol && k<maxit
        vk1 = (mtx_L-sigma*speye(n))\uk;
        muk1 = vk1(1);
        uk1 = vk1./muk1;
        ita = max(abs((muk1-muk)/muk1),norm(uk1-uk)/norm(uk1));
        muk = muk1;
        uk = uk1;
        k = k+1;
    end
    isconv = ita<=tol;
    lambda = sigma+1/muk;
end