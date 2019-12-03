function S=Kmeans_images(B,classe,iter_KM)

[m,n]=size(B);
nbclasses=length(classe);

[Y,centr]=kmeans(B(:),nbclasses,'Start','uniform','MaxIter',iter_KM);

[inutile,ind]=sort(centr);

Claas(ind)=classe;

S=reshape(Claas(Y),m,n);