module Main where

-- Función para calcular el módulo de un vector
moduloVector :: [Double] -> Double
moduloVector vector = sqrt (sum (map (\x -> x^2) vector))

-- uso
main :: IO ()
main = do
  let vector = [3.0, 4.0]
      modulo = moduloVector vector
  putStrLn $ "El módulo del vector " ++ show vector ++ " es: " ++ show modulo
