close all;
clear all
clc

m1=1;
m2=2;
sig1=1;
sig2=1;
cl1=0;
cl2=255;
iter_KM=600;
nb_iter=100000;
titre = 'beee2.bmp';

[X,m,n]= lit_image(titre);
affiche_image(X, titre);

Y = bruit_gauss(X, m, n, cl1, cl2, m1, sig1, m2, sig2);
affiche_image(Y, 'bruitée')


[p10, p20, m10, sig10, m20, sig20] = init_param(Y,cl1,cl2,iter_KM);
[p1,p2,m1_est,sig1_est,m2_est,sig2_est,moy1,moy2, prob1,prob2,sigma1,sigma2] = calc_SEM(Y,m,n,p10,p20,m10,sig10,m20,sig20,cl1,cl2,nb_iter);

X_seg = MPM_Gauss(Y, cl1, cl2, p1, p2, m1_est, sig1_est, m2_est, sig2_est);
figure()
affiche_image(X_seg,'segmentée')


figure
plot(moy1)
title('m1')
figure
plot(moy2)
title('m2')
figure
plot(sigma1)
title('sig1')
figure
plot(sigma2)
title('sig2')
figure
plot(prob1)
title('p1')
figure
plot(prob2)
title('p2')

tau = taux_erreur(X, X_seg, m, n)