largestPrimeFactor :: Int -> Int
largestPrimeFactor n = lpf n 2
  where
    lpf n i
      | n <= 2            = n
      | n `mod` i == 0    = lpf (n `div` i) i
      | i * i > n         = n
      | i == 2            = lpf n 3
      | otherwise         = lpf n (i + 2)

main :: IO ()
main = do
    let a = 600851475143
    print (largestPrimeFactor a)
