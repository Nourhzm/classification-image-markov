function [proba, Ppost] = EM_Gibbsien_Gauss(Y, m, n, cl1, cl2, m1, sig1, m2, sig2, proba, nb_iter_Gibbs_EM, nb_simu_EM)

for i=1:nb_simu_EM
    X_simu = genere_Gibbs_proba_apost(Y, m, n, m1, sig1, m2, sig2, [cl1, cl2], proba, nb_iter_Gibbs_EM );
    N = calc_N_part(X_simu, m, n, [cl1, cl2]);
    Npost = calc_N_post_part(X_simu, m, n, [cl1, cl2]);
    proba = N./(m*n);
end

Ppost = Npost./(m*n);

end