import Data.Char (toUpper)

type Asignatura = String
type Nota = Int
type DiccionarioNotas = [(Asignatura, Nota)]

-- Función para transformar la asignatura a mayúsculas
mayusculasAsignatura :: Asignatura -> Asignatura
mayusculasAsignatura = map toUpper

-- Función para asignar descripciones a las notas
asignarDescripcion :: Nota -> String
asignarDescripcion nota
  | nota >= 95 = "Excelente"
  | nota >= 85 = "Notable"
  | nota >= 75 = "Bueno"
  | nota >= 70 = "Suficiente"
  | otherwise  = "Desempeño insuficiente"

-- Función para procesar el diccionario de notas
procesarNotas :: DiccionarioNotas -> DiccionarioNotas
procesarNotas diccionario = map (\(asignatura, nota) -> (mayusculasAsignatura asignatura, nota)) diccionario

-- Ejemplo de uso:
main :: IO ()
main = do
    let diccionarioNotas = [("Matemáticas", 95), ("Historia", 78), ("Inglés", 60), ("Ciencias", 88), ("Arte", 72)]
    let diccionarioResultante = procesarNotas diccionarioNotas

    putStrLn "Diccionario Original:"
    print diccionarioNotas

    putStrLn "Diccionario Resultante (Asignaturas en Mayúsculas y Notas):"
    print diccionarioResultante
