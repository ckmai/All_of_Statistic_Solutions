# Description:
#   Suppose we flip a coin n times and let p denote the probability of heads. 
#   Let X be the number of heads. We call X a binomial random variable, 
#   which is discussed in the next chapter. Intuition suggests that X will be close to n p. 
#   To see if this is true, we can repeat this experiment many times and average the X values. 
#   Carry out a simulation and compare the average of the X’s to np. 
#   Try this for p = 0.3 and n = 10, n = 100, and n = 1000.

using Statistics

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


experiment_repeat = 100

result_10 = (1:experiment_repeat .|> x -> experiment(10, 0.3)) |> mean
result_100 = (1:experiment_repeat .|> x -> experiment(100, 0.3)) |> mean
result_1000 = (1:experiment_repeat .|> x -> experiment(1000, 0.3)) |> mean