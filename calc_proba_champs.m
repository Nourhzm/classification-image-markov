function proba=calc_proba_champs(alpha)   


% calcul des proba du champs
    
    for i=1:5
            tmp=exp((2*(i-1)-4)*alpha)+exp((2*(4-i+1)-4)*alpha);
            proba(i,1)=exp((2*(i-1)-4)*alpha)/tmp;
            proba(i,2)=exp((2*(4-i+1)-4)*alpha)/tmp;
    end