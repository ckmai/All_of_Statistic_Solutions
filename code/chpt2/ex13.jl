# Description:
#   Let X∼N(0,1) and let Y = e^X.
#       (a) Find the pdf for Y. Plot it.
#       (b) (Computer Experiment.) Generate a vector x = (x1, . . . , x10,000) 
#           consisting of 10,000 random standard Normals. 
#           Let y = (y1, . . . , y10,000) where y_i = e^(x_i) . 
#           Draw a histogram of y and compare it to the pdf you found in part (a).
using Pkg
Pkg.add("Plots")
Pkg.add("Distributions")

using Plots
using Random, Distributions

f_X = x -> (1 / sqrt(2π)) * exp(- (x^2) / 2)
f_Y = y -> (1 / y) * f_X(log(y))

plot(f_Y, 0.01, 10)

X = rand(Normal(0, 1), 10000)
Y = X .|> exp

histogram(Y, bins = 100)