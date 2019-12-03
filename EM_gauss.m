function [proba, m1, sig1, m2, sig2] = EM_gauss(Y, m, n, classe, nb_iter_gibbs_EM, nb_simu_EM)

cl1 = classe(1);
cl2 = classe(2);

[proba, m1, sig1, m2, sig2] = init_param_EM(Y, m, n);
[proba, Ppost] = EM_Gibbsien_Gauss(Y, m, n, cl1, cl2, m1, sig1, m2, sig2, proba, nb_iter_gibbs_EM, nb_simu_EM);
[m1, sig1, m2, sig2] = estim_param_bruit_gauss_EM(Y, m, n, classe, Ppost);

end