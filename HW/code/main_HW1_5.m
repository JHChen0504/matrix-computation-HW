tic;
[lambda.alg1,ev.alg1] = Algorithm_1_InversePower(mtx_L,sigma,tol);
cputime.alg1 = toc;

mtx_factor = mtxreorder(mtx_L,sigma);

tic;
[lambda.alg2,ev.alg2] = Algorithm_2_InversePower(mtx_factor,sigma,tol);
cputime.alg2 = toc;