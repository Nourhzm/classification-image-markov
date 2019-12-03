close all;

m1=1;
m2=1;
sig1=1;
sig2=20;
cl1=0;
cl2=255;

titre = 'butterfly_gray.bmp'

[X,m,n]= lit_image(titre);
affiche_image(X, titre)
Y = bruit_gauss(X, m, n, cl1, cl2, m1, sig1, m2, sig2);
figure
affiche_image(Y, 'bruitée')
[p1,p2] = calc_probaprio(X, m, n, cl1, cl2)
X_seg = MPM_Gauss(Y, cl1, cl2, p1, p2, m1, sig1, m2, sig2)
figure
affiche_image(X_seg, 'segmentée')
tau = taux_erreur(X, X_seg, m, n)