function [X]=iter_Gibbs_proba_apost_gauss(Y,I,m,n,m1,sig1,m2,sig2,classe,proba)

X=I;

for i=2:(m-1)
    for j=2:(n-1)
        [config,indice_klas]=Config_voisinage(X,m,n,classe,i,j);
        Ppost=calc_gibbs_probapost_gauss(Y(i,j),m,n,m1,sig1,m2,sig2,classe,proba(config+1,:)');
        X(i,j)=tirage_classe(Ppost,classe);
    end
end

%X=I;