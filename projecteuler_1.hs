m35 :: Int -> Int
m35 n = sum [k | k <- [1..n], k `mod` 3 ==0 || k `mod` 5 == 0]

main :: IO ()
main = do
    let a = 999
    print (m35 a)