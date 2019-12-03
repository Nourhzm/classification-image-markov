function [nb_vois_cl1,indice_klas]=Config_voisinage(I,m,n,classe,i,j)

nb_classes=length(classe);
config=0;

A=[I(i-1:i+1,j-1:j+1)];
B=[0 1 0;1 0 1;0 1 0];

    nb_vois_cl1=sum(sum(B.*(A==classe(1))));
    indice_klas=1*(I(i,j)==classe(1))+2*(I(i,j)==classe(2));
