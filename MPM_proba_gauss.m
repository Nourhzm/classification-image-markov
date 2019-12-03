function [X_seg]=MPM_proba_gauss(Y,m,n,classe,m1,sig1,m2,sig2,proba,nb_iter,nb_simu)

X_simu=zeros(m,n,nb_simu);


for h=1:nb_simu
    X_simu(:,:,h)=genere_Gibbs_proba_apost(Y,m,n,m1,sig1,m2,sig2,classe,proba,nb_iter);
    %figure
    %affiche_image(X_simu(:,:,h),'CHAMPS DE MARKOV');
end

X_seg=choix_classe_MPM(X_simu,m,n,classe);