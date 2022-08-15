calc_primes :: [Int] -> [Int]
calc_primes (x:xs) = x : calc_primes [y | y <- xs, mod y x /= 0]

primes :: [Int]
primes = calc_primes [2..]
{--
  Exemplos:
    -> primes = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83...]
    -> primes !! 10 = 31
--}