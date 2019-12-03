[X,m,n]= lit_image('alfa2.bmp')
m10=1;
m20=4;
sig10=1;
sig20=1;
cl1=0;
cl2=255;
iter_KM=600;
nb_iter_Gibbs_EM=5;
classe = [cl1, cl2];

proba = calc_probaprio(X, m, n, cl1, cl2);

Y = bruit_gauss(X, m, n, cl1, cl2, m10, sig10, m20, sig20);
affiche_image(Y, 'bruitée')

% [p1,p2,m1,sig1,m2,sig2] = calc_SEM(Y,m,n,p1,p2,m10,sig10,m20,sig20,0,255,20)


 X_simu = genere_Gibbs_proba_apost(Y, m, n, m10, sig10, m20, sig20, classe, proba, nb_iter_Gibbs_EM );
 N = calc_N_part(X_simu, m, n, cl1, cl2)