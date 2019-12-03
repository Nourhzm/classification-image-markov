function tau=taux_erreur(A,B,m,n)
T=A==B
tau=(m*n-sum(sum(T)))/(m*n);
end