function [p1,p2,m1,sig1,m2,sig2,moy1,moy2,sigma1,sigma2,prob1,prob2]= calc_EM(Y,m,n,p10,p20,m10,sig10,m20,sig20,nb_iterEM)
p1=p10; p2=p20; m1=m10; sig1= sig10; sig2=sig20; m2=m20;
N=m*n;
moy1=[];
moy2=[];
prob1=[];
prob2=[];
sigma1=[];
sigma2=[];
for i=1:nb_iterEM
    moy1=[moy1 m1];
    moy2=[moy2 m2];
    prob1=[prob1 p1];
    prob2=[prob2 p2];
    sigma1=[sigma1 sig1];
    sigma2=[sigma2 sig2];
    Ppost=calc_probapost_Gauss(Y,m,n,p1,p2,m1,sig1,m2,sig2);
    S1=sum(sum(Ppost(:,:,1)));
    S2=sum(sum(Ppost(:,:,2)));
    p1=S1/N;
    p2=S2/N;
    m1=sum(sum(Y.*Ppost(:,:,1)))/S1;
    m2=sum(sum(Y.*Ppost(:,:,2)))/S2;
    sig1=sqrt(sum(sum(((Y-m1).^2).*Ppost(:,:,1)))/S1);
    sig2=sqrt(sum(sum(((Y-m2).^2).*Ppost(:,:,2)))/S2);
end
end
