function  Ppost=calc_gibbs_probapost_gauss(ys,m,n,m1,sig1,m2,sig2,classe,proba)

moy=[m1 m2];
stdev=[sig1 sig2];
    
    fys=normpdf(ys,moy,stdev);

    
    Ptemp=proba.*fys';
    
    if (sum(Ptemp)~=0)
        Ppost=Ptemp/sum(Ptemp);
    else
        Ppost=ones(1,2)/2;
    end
    