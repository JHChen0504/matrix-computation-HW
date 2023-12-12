addpath('.\code')
%% filename = matrix with dimension 10k
filename = 'out.ego-facebook';
main_HW1_1;
main_HW_1;
main_HW_2;
save mtx_10k.mat cputime lambda ev residual -mat

%% filename = matrix with dimension 100k
filename = 'out.ego-twitter';
main_HW1_1;
% main_HW_1; % Takes HUGE amount of time, use if needed.
main_HW_2;
save mtx_100k.mat cputime lambda ev residual -mat

%% filename = matrix with dimension 1000k
filename = 'out.roadNet-PA';
main_HW1_1;
main_HW_2;
save mtx_1000k.mat cputime lambda ev residual -mat
