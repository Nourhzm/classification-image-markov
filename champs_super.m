clc;
close all;

alpha=1;
nb_iter=30;
nb_simu=5;
cl1=0;
cl2=255;
classe=[cl1,cl2];
m1=1;
m2=1;
sig1=1;
sig2=3;
titre='beee2.bmp';

X = lit_image(titre);

[m,n] = size(X);

proba = calc_proba_champs(alpha);
%Xtemp = genere_Gibbs_proba(m+2, n+2, classe, proba, nb_iter);
%[X,m,n] = redecoupe_image(Xtemp, m+2, n+2);

affiche_image(X, titre)

Y = bruit_gauss(X, m, n, cl1, cl2, m1, sig1, m2, sig2);
figure
affiche_image(Y, 'bruité')

[Ytrans, mY, nY] = nouvelle_image(Y, m, n);



X_seg_trans = MPM_proba_gauss(Ytrans, mY, nY, classe, m1, sig1, m2, sig2, proba, nb_iter, nb_simu);
X_seg = redecoupe_image(X_seg_trans, mY, nY);

tau = taux_erreur(X, X_seg, m, n)
figure
affiche_image(X_seg, 'segmentée')