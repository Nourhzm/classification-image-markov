function [p1, p2] = calc_probaprio(X, m, n, cl1, cl2)
p1 = (sum(sum((X==cl1))))/(m*n);
p2 = 1-p1;
end