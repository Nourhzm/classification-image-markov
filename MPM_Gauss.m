function X_seg = MPM_Gauss(Y, cl1, cl2, p1, p2, m1, sig1, m2, sig2)
[m, n] = size(Y)
Y1 = p1*normpdf(Y, m1, sig1);
Y2 = p2*normpdf(Y, m2, sig2);
X_seg=(Y1<=Y2)*255
end