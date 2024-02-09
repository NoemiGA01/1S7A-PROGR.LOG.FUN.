import Data.Map (Map, fromListWith)

-- Función que cuenta la longitud de las palabras en una frase
longitudDePalabras :: String -> Map String Int
longitudDePalabras frase =
  fromListWith max [(palabra, length palabra) | palabra <- palabras]
  where
    palabras = words frase

-- Ejemplo de uso
main :: IO ()
main = do
  let frase = "Noemi Guzman Aguilera"
      resultado = longitudDePalabras frase
  print resultado