function [p10, p20, m10, sig10, m20, sig20] = init_param(Y,cl1,cl2,iter_KM)
X = Kmeans_images(Y, [cl1, cl2], iter_KM);
[p10, p20, m10, sig10, m20, sig20]=est_empirique(X,Y,cl1,cl2);
end