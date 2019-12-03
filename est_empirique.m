function [p1,p2,m1,sig1,m2,sig2]=est_empirique(X,Y,cl1,cl2)
[m,n] = size(X);
[p1,p2] = calc_probaprio(X, m, n, cl1, cl2);

m1=sum(sum(Y.*(X==cl1)))/(sum(sum((X==cl1))));
m2=sum(sum(Y.*(X==cl2)))/(sum(sum((X==cl2))));

sig1=sqrt(sum(sum(((Y-m1).^2).*(X==cl1)))/(sum(sum((X==cl1)))));
sig2=sqrt(sum(sum(((Y-m2).^2).*(X==cl2)))/(sum(sum((X==cl2)))));
end