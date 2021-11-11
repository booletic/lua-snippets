-- a pseudo-random number generator with a standard normal distribution
function randn ()
    return math.sqrt(-2 * math.log(math.random()))
	    * math.cos(2 * math.pi * math.random())
end

for i = 1, 10 do
   print(randn())
end
