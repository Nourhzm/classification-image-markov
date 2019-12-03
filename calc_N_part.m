function [N]=calc_N_part(I,m,n,classe)

N=zeros(5,2);

for i=2:(m-1)
    for j=2:(n-1)
        [config,indice_klas]=Config_voisinage(I,m,n,classe,i,j);
        N(config+1,indice_klas)=N(config+1,indice_klas)+1;
    end
end
