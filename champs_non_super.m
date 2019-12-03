clc;
close all;

alpha=1;
nb_iter_gibbs_EM=10;
nb_simu_EM=5;
nb_iter=30;
cl1=0;
cl2=255;
classe=[cl1,cl2];
m1=1;
m2=4;
sig1=1;
sig2=1;
titre='blurry_jupiter.png'
X = lit_image(titre);

[m,n] = size(X);

affiche_image(X, titre)

Y = bruit_gauss(X, m, n, cl1, cl2, m1, sig1, m2, sig2);
figure
affiche_image(Y, 'bruitée')

[proba, m1, sig1, m2, sig2] = EM_gauss(Y, m, n, classe, nb_iter_gibbs_EM, nb_simu_EM);


[Ytrans, mY, nY] = nouvelle_image(Y, m, n);
X_seg_trans = MPM_proba_gauss(Ytrans, mY, nY, classe, m1, sig1, m2, sig2, proba, nb_iter, nb_simu_EM);
X_seg = redecoupe_image(X_seg_trans, mY, nY);

tau = taux_erreur(X, X_seg, m, n)
figure
affiche_image(X_seg, 'segmentée')