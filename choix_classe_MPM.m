function X_seg=choix_classe_MPM(X_simu,m,n,classe)


for i=1:m
    for j=1:n
        for k=1:2
            nb_occurences(k)=sum((X_simu(i,j,:)==classe(k)));
        end
        [inutile indice_classe]=max(nb_occurences);
        X_seg(i,j)=classe(indice_classe);
    end
end