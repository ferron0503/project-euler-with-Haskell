import Data.List (unfoldr)

fibonacci :: Int -> Int
fibonacci = (map fib [0..] !!)
  where
    fib 0 = 0
    fib 1 = 1
    fib n = fibonacci (n - 1) + fibonacci (n - 2)




evenfibonaccisum :: Int
evenfibonaccisum = sum $ takeWhile (<= 3999999) [x | x <- map fibonacci [0..], even x] -- even (fibonacci k)를 fibonacci k `mod` 2 == 0 으로 써도 가능

main :: IO ()
main = do
    print evenfibonaccisum
