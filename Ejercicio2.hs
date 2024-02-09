filtrarLista :: (a -> Bool) -> [a] -> [a]
filtrarLista _ [] = []  -- Caso base: lista vacía, devuelve lista vacía
filtrarLista f (x:xs)
  | f x       = x : filtrarLista f xs  -- Agrega x a la lista resultante si f x es True
  | otherwise = filtrarLista f xs      -- No agrega x a la lista resultante si f x es False

-- Ejemplo de uso:
main :: IO ()
main = do
    let listaOriginal = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    let funcionBooleana = even -- Filtra los números pares

    let listaFiltrada = filtrarLista funcionBooleana listaOriginal

    putStrLn "Lista Original:"
    print listaOriginal

    putStrLn "Lista Filtrada (Números Pares):"
    print listaFiltrada