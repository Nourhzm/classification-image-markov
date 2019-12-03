function [cl]=tirage_classe(p,classe)

u=rand(1,1);

cl=(u<=p(1))*classe(1)+(u>p(1))*classe(2);


