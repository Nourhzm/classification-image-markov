close all
m1=1;
m2=10;
sig1=1;
sig2=15;
cl1=0;
cl2=255;
titre='alfa2.bmp'
[X,m,n]= lit_image(titre)
affiche_image(X, titre)
Y = bruit_gauss(X, m, n, cl1, cl2, m1, sig1, m2, sig2)
figure
affiche_image(Y, titre)
tau=taux_erreur(X, Y, m, n)

