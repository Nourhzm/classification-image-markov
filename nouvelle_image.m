function [Btrans,mm,nn]=nouvelle_image(B,m,n)

Btrans=zeros(m+2,n+2);

Btrans(1,1)=B(1,1);
Btrans(m+2,1)=B(m,1);
Btrans(1,n+2)=B(1,n);
Btrans(m+2,n+2)=B(m,n);

for i=1:m
    Btrans(i+1,1)=B(i,1);
    Btrans(i+1,n+2)=B(i,n);
end

for j=1:n
    Btrans(1,j+1)=B(1,j);
    Btrans(m+2,j+1)=B(m,j);
end

for i=1:m
    for j=1:n
        Btrans(i+1,j+1)=B(i,j);
    end
end

mm=m+2;
nn=n+2;