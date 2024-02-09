-- Definición de la función de orden superior
aplicarFuncionLista :: (a -> b) -> [a] -> [b]
aplicarFuncionLista _ []     = []   -- Caso base: lista vacía, devuelve lista vacía
aplicarFuncionLista f (x:xs) = f x : aplicarFuncionLista f xs

-- Definir una función que eleve al cuadrado un número
cuadrado :: Int -> Int
cuadrado x = x * x

-- Usar la función de orden superior con la función cuadrado y una lista de números
resultado :: [Int]
resultado = aplicarFuncionLista cuadrado [1, 2, 3, 4, 5]

-- Imprimir el resultado
main :: IO ()
main = print resultado