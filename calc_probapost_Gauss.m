function Ppost= calc_probapost_Gauss(Y,m,n,p1,p2,m1,sig1,m2,sig2)
p_y_w1=normpdf(Y, m1, sig1); %% prob Y sachant w1
p_y_w2=normpdf(Y, m2, sig2); %% prob Y sachant w2
p = p1*p_y_w1 + p2*p_y_w2;
Ppost1=(p_y_w1*p1)./p;
Ppost2=(p_y_w2*p2)./p;

Ppost(:,:,1)=Ppost1;
Ppost(:,:,2)=Ppost2;
% affiche_image(Ppost1, 'Ppost1')
% figure()
% affiche_image(Ppost2, 'Ppost2')
end