# Description:
#   Here we will get some experience simulating conditional probabilities. 
#   Consider tossing a fair die. Let A = {2, 4, 6} and B = {1,2,3,4}. 
#   Then, P(A) = 1/2, P(B) = 2/3 and P(AB) = 1/3. Since P(AB) = P(A)P(B), 
#   the events A and B are independent. Simulate draws from the sample space and verify that 
#   Est[P(AB)] = Est[P(A)]Est[P(B)] where Est[P(A)] is the proportion of times A occurred in the simulation 
#   and similarly for Est[P(AB)] and Est[P(B)]. Now find two events A and B that are not independent. 
#   Compute Est[P(A)], Est[P(B)] and Est[P(AB)]. Compare the calculated values to their theoretical values. 
#   Report your results and interpret.

A = [2, 4, 6]
B = [1, 2, 3, 4]

# The number of dices rolled.
n = 1000
ω = rand((1:6), n)

cnt_A = count(x -> x ∈ A, ω)
cnt_B = count(x -> x ∈ B, ω)
cnt_AB = count(x -> x ∈ A ∩ B, ω)

P_A = Float64(cnt_A / n)
P_B = Float64(cnt_B / n)
P_AB = Float64(cnt_AB / n)

println("Est[P(A)] = ", P_A)
println("Est[P(B)] = ", P_B)
println("Est[P(AB)] = ", P_AB)
println("Est[P(A)]Est[P(B)] = ", P_A * P_B)