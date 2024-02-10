import System.IO

calcularFunciones :: IO ()
calcularFunciones = do
  putStrLn "Ingrese el valor para calcular las funciones:"
  input <- getLine
  let valor = read input :: Int
  putStrLn "Seleccione la función a aplicar:"
  putStrLn "1. Seno"
  putStrLn "2. Coseno"
  putStrLn "3. Tangente"
  putStrLn "4. Exponencial"
  putStrLn "5. Logaritmo neperiano"
  inputFuncion <- getLine
  let funcion = read inputFuncion :: Int

  putStrLn "Tabla de resultados:"
  putStrLn "Entero | Resultado"
  putStrLn "------------------"
  mapM_ (mostrarResultado funcion) [1..valor]

mostrarResultado :: Int -> Int -> IO ()
mostrarResultado 1 x = putStrLn $ show x ++ " | " ++ show (sin (fromIntegral x))
mostrarResultado 2 x = putStrLn $ show x ++ " | " ++ show (cos (fromIntegral x))
mostrarResultado 3 x = putStrLn $ show x ++ " | " ++ show (tan (fromIntegral x))
mostrarResultado 4 x = putStrLn $ show x ++ " | " ++ show (exp (fromIntegral x))
mostrarResultado 5 x = putStrLn $ show x ++ " | " ++ show (log (fromIntegral x))
mostrarResultado _ _ = putStrLn "Función no válida"

main :: IO ()
main = calcularFunciones
