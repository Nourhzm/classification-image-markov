function [X]=genere_Gibbs_proba(m,n,classe,proba,nb_iter)

X(:,:,1)=init_Gibbs(m,n,classe);

for i=1:nb_iter
    X(:,:,i+1)=iter_Gibbs_proba(X(:,:,i),m,n,classe,proba);
    %figure
    %affiche_image(X(:,:,i),'CHAMPS DE MARKOV');
end

X=X(:,:,nb_iter+1);