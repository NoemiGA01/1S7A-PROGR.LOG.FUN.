-- Función para asignar descripciones a las calificaciones
asignarDescripciones :: [Int] -> [String]
asignarDescripciones calificaciones = map asignarDescripcion calificaciones

-- Función auxiliar para asignar descripción a una calificación individual
asignarDescripcion :: Int -> String
asignarDescripcion calificacion
  | calificacion >= 95 = "Excelente"
  | calificacion >= 85 = "Notable"
  | calificacion >= 75 = "Bueno"
  | calificacion >= 70 = "Suficiente"
  | otherwise          = "Desempeño insuficiente"

-- Ejemplo de uso:
main :: IO ()
main = do
    let calificaciones = [95, 78, 60, 88, 72]
    let descripciones = asignarDescripciones calificaciones

    putStrLn "Calificaciones:"
    print calificaciones

    putStrLn "Descripciones Correspondientes:"
    print descripciones
