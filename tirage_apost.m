function X_post = tirage_apost(Ppost, cl1, cl2, m, n)
X_post = (binornd(1, Ppost(:,:,2))).*cl2;
end