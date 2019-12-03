function [classe]=identif_classes(X) 

X=uint8(X);
[counts,cl]=imhist(X);
classe=find(counts)-1;
X=double(X);