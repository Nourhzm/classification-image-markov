function [proba, m1, sig1, m2, sig2] = init_param_EM(Y, m, n)

cl1=0;
cl2=255;

iter_KM=100;
alpha=1;
X = Kmeans_images(Y, [cl1, cl2], iter_KM);

m1=sum(sum(Y.*(X==cl1)))/(sum(sum((X==cl1))));
m2=sum(sum(Y.*(X==cl2)))/(sum(sum((X==cl2))));

sig1=sqrt(sum(sum(((Y-m1).^2).*(X==cl1)))/(sum(sum((X==cl1)))));
sig2=sqrt(sum(sum(((Y-m2).^2).*(X==cl2)))/(sum(sum((X==cl2)))));

proba = calc_proba_champs(alpha);


end