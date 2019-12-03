function Y = bruit_gauss(X, m, n, cl1, cl2, m1, sig1, m2, sig2)
m
n
size(X)
Y = (X==cl1).*(sig1*randn(m,n)+m1) + (X==cl2).*(sig2*randn(m,n)+m2);
% Y=Y + cast(X,'double');
end