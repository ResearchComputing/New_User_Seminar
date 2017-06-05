%% matlab_tutorial_general_code.m
% Written by:   Shelley Knuth (shelley.knuth@colorado.edu)
% Affiliation:  Research Computing, CU-Boulder
% Date:         24 March 2015
% Updated:       1 April 2015
% Purpose:      The purpose of this program is to test how long it takes to run a simple mathematical function.
 


n = 90000;
x = randn(1,n) ;
y = zeros(1,n);
    tic
    for i = 1 : n
        y(i) = std(x(1:i));
    end
    fprintf('\n Normal for: %f secs',toc);

