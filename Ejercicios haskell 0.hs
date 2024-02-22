-- 1: Suma de elementos en una lista
sumarLista :: [Int] -> Int
sumarLista [] = 0
sumarLista (x:xs) = x + sumarLista xs

-- 2: Factorial
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

--3: Números pares
numerosPares :: Int -> [Int]
numerosPares n = [x | x <- [2,4..n]]

-- 4: Longitud de una cadena
longitudCadena :: String -> Int
longitudCadena str = length str

-- 5: Reverso de una lista
reversoLista :: [a] -> [a]
reversoLista [] = []
reversoLista (x:xs) = reversoLista xs ++ [x]

--6: Duplicar elementos
duplicarElementos :: [Int] -> [Int]
duplicarElementos lista = concatMap (\x -> [x, x]) lista

-- 7: Filtrar elementos pares
filtrarPares :: [Int] -> [Int]
filtrarPares lista = filter (\x -> x `mod` 2 == 0) lista

-- 8: Fibonacci
fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

-- 9: Divisores de un número
divisores :: Int -> [Int]
divisores n = [x | x <- [1..n], n `mod` x == 0]

-- 10: Palíndromo
esPalindromo :: String -> Bool
esPalindromo str = str == reverse str

main :: IO ()
main = do
  putStrLn "Suma de elementos en una lista:"
  print $ sumarLista [1, 2, 3, 4, 5]

  putStrLn "\nFactorial:"
  print $ factorial 5

  putStrLn "\nNúmeros pares:"
  print $ numerosPares 10

  putStrLn "\nLongitud de una cadena:"
  print $ longitudCadena "Hola Haskell"

  putStrLn "\nReverso de una lista:"
  print $ reversoLista [1, 2, 3, 4, 5]

  putStrLn "\nDuplicar elementos:"
  print $ duplicarElementos [1, 2, 3]

  putStrLn "\nFiltrar elementos pares:"
  print $ filtrarPares [1, 2, 3, 4, 5]

  putStrLn "\nFibonacci:"
  print $ fibonacci 6

  putStrLn "\nDivisores de un número:"
  print $ divisores 12

  putStrLn "\nPalíndromo:"
  print $ esPalindromo "radar"
