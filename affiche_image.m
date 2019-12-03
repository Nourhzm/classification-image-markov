function []= affiche_image(mat_image, titre)
imagesc(mat_image);
colormap(gray);
title(titre);
end