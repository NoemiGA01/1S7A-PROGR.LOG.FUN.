import Data.Map (Map, fromList, toList)

-- Función que convierte las notas a calificaciones
convertirNotas :: Map String Int -> Map String String
convertirNotas notas =
  fromList [(asignatura, calificar nota) | (asignatura, nota) <- toList notas]

-- Función auxiliar para asignar calificaciones
calificar :: Int -> String
calificar nota
  | nota >= 95  = "Excelente"
  | nota >= 85  = "Notable"
  | nota >= 75  = "Bueno"
  | nota >= 70  = "Suficiente"
  | otherwise   = "Desempeño insuficiente"

-- Ejemplo de uso
main :: IO ()
main = do
  let notas = fromList [("Matematicas", 90), ("Historia", 78), ("Ingles", 96)]
      resultado = convertirNotas notas
  print resultado