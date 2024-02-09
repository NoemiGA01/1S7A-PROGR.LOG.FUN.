-- Función para aplicar descuento a un precio
aplicarDescuento :: Float -> Float -> Float
aplicarDescuento precio descuento = precio - (precio * descuento / 100)

-- Función para aplicar IVA a un precio
aplicarIVA :: Float -> Float -> Float
aplicarIVA precio iva = precio + (precio * iva / 100)

-- Función que recibe un diccionario con precios y porcentajes, y una función para aplicar descuento o IVA
aplicarDescuentosIVA :: [(String, Float, Float)] -> (Float -> Float -> Float) -> Float
aplicarDescuentosIVA cesta funcionAplicar =
  sum [funcionAplicar precio porcentaje | (_, precio, porcentaje) <- cesta]

-- Ejemplo de uso
main :: IO ()
main = do
  let cesta = [("Producto1", 100.0, 10.0), ("Producto2", 50.0, 5.0), ("Producto3", 30.0, 8.0)]
  
  -- Aplicar descuento del 10%
  let precioFinalDescuento = aplicarDescuentosIVA cesta (\precio porcentaje -> aplicarDescuento precio 10.0)
  putStrLn $ "Precio final con descuento: " ++ show precioFinalDescuento
  
  -- Aplicar IVA del 5%
  let precioFinalIVA = aplicarDescuentosIVA cesta (\precio porcentaje -> aplicarIVA precio 5.0)
  putStrLn $ "Precio final con IVA: " ++ show precioFinalIVA