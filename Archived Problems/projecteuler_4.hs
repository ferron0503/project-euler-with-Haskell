isPalindrome :: Int -> Bool
isPalindrome n = show n == reverse (show n)

largestPalindrome :: Int
largestPalindrome = maximum [x * y | x <- [100..999], y <- [100..999], isPalindrome (x * y)]

main :: IO ()
main = do
    print largestPalindrome
