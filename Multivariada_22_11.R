y_1i = c(154, 136, 91, 125, 133, 125, 93, 80, 132, 107, 142, 115, 114, 120, 141)
y_2i = c(108, 90, 51, 89, 93, 77, 54, 50, 94, 76, 96, 74, 79,71, 90)

media_y1i = mean(y_1i);media_y1i
media_y2i = mean(y_2i);media_y2i

n = length(y_1i);n
matriz_y = matrix(c(media_y1i, media_y2i), ncol = 1, byrow = F);matriz_y
mi = matrix(c(120, 80),ncol = 1, byrow = F);mi

matriz_cov = matrix(c(400, 240, 240, 225), ncol = 2, byrow = T); matriz_cov

Q = n*t(matriz_y - mi)%*%solve(matriz_cov)%*%(matriz_y - mi);Q

qchisq(0.05, n)
