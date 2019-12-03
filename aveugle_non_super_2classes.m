close all;

m1=1;
m2=1;
sig1=1;
sig2=3;
cl1=0;
cl2=255;
iter_KM=600
nb_iterEM=3000

titre = 'beee2.bmp'

[X,m,n]= lit_image(titre);
affiche_image(X, titre)
Y = bruit_gauss(X, m, n, cl1, cl2, m1, sig1, m2, sig2);
%%% on oublie tout ce qu'on sait sur les paramètres %%%
%%% p1=0; p2=0; m1=0; m2=0; sig1=0; sig2=0;
[p10, p20, m10, sig10, m20, sig20] = init_param(Y,cl1,cl2,iter_KM);
[p1,p2,m1,sig1,m2,sig2,moy1,moy2,sigma1,sigma2,prob1,prob2]=calc_EM(Y,m,n,p10,p20,m10,sig10,m20,sig20,nb_iterEM);

figure
affiche_image(Y, titre);
[p1,p2] = calc_probaprio(X, m, n, cl1, cl2);
Ppost=calc_probapost_Gauss(Y,m,n,p1,p2,m1,sig1,m2,sig2)
X_seg = MPM_Gauss(Y, cl1, cl2, p1, p2, m1, sig1, m2, sig2)
figure
affiche_image(X_seg, titre);
tau = taux_erreur(X, X_seg, m, n);



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