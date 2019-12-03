function [X]=genere_Gibbs_proba_apost(Y,m,n,m1,sig1,m2,sig2,classe,proba,nb_iter)

X(:,:,1)=init_Gibbs(m,n,classe);

for i=1:nb_iter
    X(:,:,i+1)=iter_Gibbs_proba_apost_gauss(Y,X(:,:,i),m,n,m1,sig1,m2,sig2,classe,proba);
%     figure
%     affiche_image(X(:,:,i),'CHAMPS DE kkchoz');
end

X=X(:,:,nb_iter+1);

%     figure
%     affiche_image(X,'CHAMPS DE kkchoz');