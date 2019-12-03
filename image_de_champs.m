close all;

alpha=0.75;
nb_iter=70;
classe=[0,255];
titre='beee2.bmp';

X = lit_image(titre);

[m,n] = size(X);

proba = calc_proba_champs(alpha);
Xtemp = genere_Gibbs_proba(m+2, n+2, classe, proba, nb_iter);
[X,m,n] = redecoupe_image(Xtemp, m+2, n+2);

affiche_image(X, 'champs markov')