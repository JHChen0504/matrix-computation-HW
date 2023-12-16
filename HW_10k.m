%% filename = matrix with dimension 10k

addpath('.\code')

filename = 'out.ego-facebook';
main_HW1_1;
main_HW_1;
main_HW_2;
save mtx_10k.mat cputime lambda ev residual -mat
