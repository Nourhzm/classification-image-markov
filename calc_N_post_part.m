function Npost_part=calc_N_post_part(X,m,n,classes)


    Npost_part(:,:,1)=(X==classes(1));
    Npost_part(:,:,2)=(X==classes(2));