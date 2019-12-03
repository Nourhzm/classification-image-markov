function [m1,sig1,m2,sig2]=estim_param_bruit_gauss_EM(Y,m,n,classe,Ppost)

m1 = sum(sum(Y.*Ppost(:,:,1)))/sum(sum(Ppost(:,:,1)));
m2 = sum(sum(Y.*Ppost(:,:,2)))/sum(sum(Ppost(:,:,2)));

sig1 = sqrt(sum(sum(((Y-m1).^2).*Ppost(:,:,1)))/sum(sum(Ppost(:,:,1))));
sig2 = sqrt(sum(sum(((Y-m2).^2).*Ppost(:,:,2)))/sum(sum(Ppost(:,:,2))));


end