function [X0]=init_Gibbs(m,n,classe)

p_tmp=[0.5 0.5];%ones(1,2)*0.5;

for i=1:m
    for j=1:n
        X0(i,j)=tirage_classe(p_tmp,classe);
    end
end
