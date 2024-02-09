lessThan20 :: Integer -> String
lessThan20 n
    | n > 0 && n < 20 =
        let answers = words ("One Two Three Four Five Six Seven Eight Nine Ten Eleven Twelve Thirteen Fourteen Fifteen Sixteen Seventeen Eighteen Nineteen")
        in answers !! fromIntegral (n-1)

tens :: Integer -> String
tens n
    | n >= 2 && n <= 9 = answers !! fromIntegral (n-2)
    where
        answers = words ("Twenty Thirty Forty Fifty Sixty Seventy Eighty Ninety")

number :: Integer -> String
number n 
    | n  `mod` 3 == 0 && n `mod` 5 == 0 = "FizzBuzz!"
    | n  `mod` 5 == 0 = "Fizz!"
    | n  `mod` 3 == 0 = "Buzz!"
    | 1 <= n && n < 20 = lessThan20 (fromIntegral n)
    | n `mod` 10 == 0 && n < 100 = tens (fromIntegral (n `div` 10))
    | n < 100 = tens (fromIntegral (n `div` 10)) ++ " " ++ lessThan20 (fromIntegral (n `mod` 10))

main :: IO ()
main = do
    putStrLn $ "Number 6: " ++ number 6
    putStrLn $ "Number 15: " ++ number 15
    putStrLn $ "Number 85: " ++ number 85
    putStrLn $ "Number 37: " ++ number 37
