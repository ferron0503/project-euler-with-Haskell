squaresum :: Int -> Int
squaresum n = n * (n + 1) * (2 * n + 1) `div` 6

cubedsum :: Int -> Int
cubedsum n = ((n * (n + 1)) `div` 2) ^ 2

main :: IO ()
main = do
    let a = 100
    print (cubedsum a - squaresum a)
