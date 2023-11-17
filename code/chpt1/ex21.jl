# Description:
#   Suppose a coin has probability p of falling heads up.
#   If we flip the coin many times, we would expect the proportion of
#   heads to be near p. We will make this formal later. Take p = 0.3 and
#   n = 1000 and simulate n coin flips. Plot the proportion of heads as a
#   function of n. Repeat for p = 0.03
import Pkg
Pkg.add("Plots")

using Plots

function experiment(n::Int64, p::Float64)
    ω = rand(n)
    cnt = 0
    for elem in ω 
        if (elem <= p)
            cnt += 1
        end
    end

    Float64(cnt / n)
end

# Situations when p = 0.3
x = 1:1000
y = experiment.(x, 0.3)
plot(x, y)

# Situations when p = 0.03
y_alter = experiment.(x, 0.03)
plot(x, y_alter)