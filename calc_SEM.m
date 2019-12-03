function [p1,p2,m1,sig1,m2,sig2,moy1,moy2, prob1,prob2,sigma1,sigma2] = calc_SEM(Y,m,n,p10,p20,m10,sig10,m20,sig20,cl1,cl2,nb_iter)
moy1=[];
moy2=[];
prob1=[];
prob2=[];
sigma1=[];
sigma2=[];

for i=1:nb_iter
    moy1=[moy1 m10];
    moy2=[moy2 m20];
    prob1=[prob1 p10];
    prob2=[prob2 p20];
    sigma1=[sigma1 sig10];
    sigma2=[sigma2 sig20];
    Ppost = calc_probapost_Gauss(Y,m,n,p10,p20,m10,sig10,m20,sig20);
    X_post = tirage_apost(Ppost, cl1, cl2, m, n);
    [p1,p2,m1,sig1,m2,sig2] = est_empirique(X_post,Y,cl1,cl2);
    p10=p1;
    p20=p2;
    m10=m1;
    m20=m2;
    sig10=sig1;
    sig20=sig2;
end
end