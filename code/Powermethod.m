function [lambda,u]  = Powermethod(mtx_L,tol)
    u = zeros(size(mtx_L,1),1);
    u(1) = 1;
    k = 1;
    mu0 = 0;
    mu = 1;

    while k<3 && abs(mu0-mu)/mu0>tol
        mu0 = mu;
        v = mtx_L*u;
        mu = norm(v);
        u = v/mu;
        k = k+1;
    end

    while k<1000 && abs(mu0-mu)/mu0>tol
        mu0 = mu;
        v = mtx_L*u;
        mu = v(1);
        u = v/mu;
        k = k+1;
    end
    lambda = mu;
end