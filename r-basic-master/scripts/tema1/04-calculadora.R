# R como calculadora

2*(3+5/2)

2*((3+5)/2)

2/3+5

2%/%3+5

2%%3

2^3*5

2^-4

725%/%7

725%%7

# D = d * q + r
# r = D - d * q
# q = D %/% d
# x = D %% d
725 - 103 * 7

pi

2*pi

3^pi

pi^2

Inf

-Inf

NA

NaN

5/0

0/0

2^50 # = 1.1259e+15 = 1125900000000000

2^(-15) # = 3.051758e-05 = 0.00003051758

c(2^30, 2^(-15), 2, 3/2)

# Funciones y combinatoria con RStudio

sqrt(25)

exp(1)

log(pi)

abs(-pi)

factorial(7)

factorial(4)

factorial(-5)

factorial(0)

choose(5, 3)

choose(3,5)

6^log(4,6)

log(4^6, 4)

log(32,2)
log(x = 32, base = 2)
log(base = 2, x = 32)

# Funciones trigonométricas

cos(60*pi/180)
sin(60*pi/180)

sinpi(1/2) # = sin(pi/2)

tan(pi) # -1.224647e-16 ~ 0

tan(pi/2) # 1.633124e+16 ~ Inf

asin(0.8660254)

asin(0.8660254) * 180 / pi # arcsin en grados

asin(5) # arcsin [-1,1]

acos(3)

# Redondeo y decimales en R

print(sqrt(2), 10)

round(sqrt(2), 3)

floor(sqrt(2))

ceiling(sqrt(2))

trunc(sqrt(2))

sqrt(2)^2-2

2^50

print(2^50, 15)

print(2^50, 2)

print(pi, 40)

round(1.15,1)

round(1.35,1)

round(sqrt(2), 0)

round(sqrt(2))
round(digits = 5, sqrt(2))
round(5, sqrt(2))

# Crear variables

x = (pi^2)/2
x

y <- cos(pi/4)
y

sin(pi/4) + cos(pi/4) -> z
z

edad <- 20

nombre = "Juan David"

HOLA = 1
hola = 5

pi.4 = 4*pi
pi.4

x = 2
x = x^2

x = sqrt(x)

# Crear funciones

## Función f(x) = (x^3 - 3^x) * sin(x)
f = function(x) {
  x^3 - 3^x * sin(x)
}

f(4)
f(5)
f(pi/2)

suma1 <- function(t) {
  t + 1
}
suma1(6)
suma1(-5)

product <- function(x,y) {
  x * y
}
product(5,7)

g <- function(x,y,z) {
  exp(x^2 + y^2) * sin(z)
}
g(1,2,3)
g(1, -1, pi)

suma5 <- function(numero) {
  numero = suma1(numero);
  numero = suma1(numero);
  numero = suma1(numero);
  numero = suma1(numero);
  suma1(numero)
}
suma5(3)

ls()

rm(product)

ls()

rm(list = ls())

# Trabajar con números complejos

class(3+2i)

(3+2i)*5

(3+2i)*(-1+3i)

(3+2i)/(-1+3i)

# Esto es un error:
#2+7*i

complex(real= pi, imaginary = sqrt(2)) -> z1
z1

sqrt(-5)
sqrt(as.complex(-5))

# La raís cuadrada devuelve, de las dos soluciones la de Re(z)>0 para obtener la otra
#hay que multiplicar -1
sqrt(3+2i)
exp(3+2i)
sin(3+2i)
cos(3+2i)

# Módulo = sqrt(Re(z)^2 + Im(z)^2)
Mod(z1)

#Argumento = arctan(Im(z) / Re(z))
# = arccos(Re(z) / Mod(z))
# = arcsin(Img(z) / Mod(z))
# va de (-pi, pi]
Arg(-1+0i)
Arg(z1)
# Conjugado = Re(z) - Im(z)i
Conj(z1)
Re(z1)
Im(z1)

### z = Mod(z) * (cos(Arg(z)) + sin(Arg(z))i)
complex(modulus = 2, argument = pi/2) -> z2
z2
Mod(z2)
Arg(z2)
pi/2
