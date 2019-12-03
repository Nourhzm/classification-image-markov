function [X,m,n]=redecoupe_image(Xtrans,mm,nn)


for i=2:(mm-1)
    for j=2:(nn-1)
        X(i-1,j-1)=Xtrans(i,j);
    end
end

m=mm-2;
n=nn-2;