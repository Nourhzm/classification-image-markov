function [X]=iter_Gibbs_proba(I,m,n,classe,proba)


X=I;

for i=2:(m-1)
    for j=2:(n-1)
        [config,indice_klas]=Config_voisinage(X,m,n,classe,i,j);
        X(i,j)=tirage_classe(proba(config+1,1),classe);
    end
end

%X=I;