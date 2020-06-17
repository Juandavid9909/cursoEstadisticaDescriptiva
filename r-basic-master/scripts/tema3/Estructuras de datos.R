# Vectores

x = seq(3, 50, by = 3.5)
x

x[3]
x[8]
x[length(x)]
x[length(x) -1]
x[4:8]
x[-seq(2, length(x), by=2)]

x = c(1 ,2 ,32, 4, 5, 6, 7, 8, 9, NA, NA, NA)

which(x == NA)
is.na(x)
which(is.na(x))
x[which(is.na(x))]
na.omit(x)
attr(x, "na.action") = NULL

# Factores

nombres = c("Juan", "Antonio", "Ricardo", "Juan", "Juan", "Maria", "Maria")
nombres.factor = factor(nombres)
nombres.factor

gender = c("M", "H", "H", "M", "M", "M", "M", "H", "H")
gender.fact = factor(gender)
gender.fact

gender.fact2 = as.factor(gender)
gender.fact2

gender.fact3 = factor(gender, levels = c("M", "H", "B"))
gender.fact3

gender.fact4 = factor(gender, levels = c("M", "H", "B"), labels = c("Mujer", "Hombre", "Hemafrodita"))
gender.fact4

levels(gender)
levels(gender.fact)
levels(gender.fact2)
levels(gender.fact4)

levels(gender.fact4) = c("Femenino", "Masculido", "Híbrido")
gender.fact4

notas = c(1, 4, 3, 2, 3, 2, 4, 3, 1, 2, 3, 4, 2, 3, 4)
notas
notas.factor = factor(notas)
notas.factor
levels(notas.factor)
levels(notas.factor) = c("Suspendido", "Suficiente", "Notable", "Excelente")
notas.factor

levels(notas.factor) = c("Suspendido", "Aprobado", "Aprobado", "Aprobado")
notas.factor

ordered(notas, labels = c("Sus", "Suf", "Not", "Exc"))

# Listas

x = c(1, 5, -2, 6, -7, 8, -3, 4, -9)
x

L = list(nombre = "temperaturas", datos = x, media = mean(x), sumas = cumsum(x))
L
L$media
L$datos
L[[2]]
3 * L[[2]]

names(L)
str(L)
lm(c(1, 2, 3, 4)~c(1, 2, 3, 6))
reg <- lm(c(1, 2, 3, 4)~c(1, 2, 3, 6))
reg$coefficients
?lm

# Matrices

M = matrix(1:12, nrow=4)
M

M = matrix(1:12, nrow = 4, byrow = T)
M

M = matrix(1:12, nrow=5)
M

matrix(1, nrow=4, ncol=6)

rbind(M, c(1, 2, 3), c(-1, -2, -3))
cbind(c(1, 2, 3), c(-1, -2, -3))

diag(c(1, 2, 3, 4))
diag(c(5, 5, 5))
M[2, 3]
M[2,]
M[,3]

colSums(M)
rowSums(M)
colMeans(M)

apply(M, MARGIN = 1, FUN = (function(x) {sqrt(sum(x^2))}))
apply(M, MARGIN = c(1, 2), FUN = (function(x) {sqrt(x^2)}))

t(M)
M %*% t(M)

M = rbind(c(1, 4, 2), c(0, 1, 3), c(1, 8, 9))
qr(M)$rank
solve(M)
solve(M) %*% M
round(solve(M) %*% M, 2)

solve(M, c(1, 2, 3))

eigen(M)

ecSegundoGrado = function(a, b, c) {
  c((-b + sqrt((b^2) - (4*a*c)))/(2*a), (-b + sqrt((b^2) - (4*a*c)))/(2*a))  
}



