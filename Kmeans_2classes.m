close all;

m1=1;
m2=4;
sig1=1;
sig2=1;
cl1=0;
cl2=255;

titre = 'alfa2.bmp'

classe = [0, 255];
[X,m,n]= lit_image(titre);
affiche_image(X, titre)
Y = bruit_gauss(X, m, n, cl1, cl2, m1, sig1, m2, sig2);
figure
affiche_image(Y, titre)
S=Kmeans_images(Y, classe, 5000);
figure
affiche_image(S, titre)
tau=taux_erreur(X, S, m, n)
