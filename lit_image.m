function [X, m, n]= lit_image(nom_image)
X = imread(nom_image);
%X = (X>=127.5); garantir que l'image ne contienne que 2 classes
[m, n] = size(X);
end