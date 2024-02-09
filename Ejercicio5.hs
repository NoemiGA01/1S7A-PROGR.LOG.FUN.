data Inmueble = Inmueble
  { año :: Int
  , metros :: Int
  , habitaciones :: Int
  , garaje :: Bool
  , zona :: Char
  , precio :: Float
  } deriving (Show)

calcularPrecio :: Inmueble -> Float
calcularPrecio inmueble =
  let zonaFactor = if zona inmueble == 'B' then 1.5 else 1.0
      precioBase = fromIntegral (metros inmueble * 1000 + habitaciones inmueble * 5000 + if garaje inmueble then 15000 else 0)
      precioSinRedondeo = precioBase * (1 - fromIntegral (año inmueble) / 100) * zonaFactor
  in fromIntegral (round (precioSinRedondeo * 100)) / 100 -- Redondear a dos decimales

buscarInmueblesPorPresupuesto :: [Inmueble] -> Float -> [Inmueble]
buscarInmueblesPorPresupuesto listaInmuebles presupuesto =
  filter (\inmueble -> calcularPrecio inmueble <= presupuesto) listaInmuebles

agregarPrecio :: Inmueble -> Float -> Inmueble
agregarPrecio inmueble nuevoPrecio = inmueble { precio = nuevoPrecio }

main :: IO ()
main = do
  let listaInmuebles =
        [ Inmueble 2000 100 3 True 'A' 0
        , Inmueble 2012 60 2 True 'B' 0
        , Inmueble 1980 120 4 False 'A' 0
        , Inmueble 2005 75 3 True 'B' 0
        , Inmueble 2015 90 2 False 'A' 0
        ]
  let presupuesto = 100000

  let inmueblesConPrecio = map (\inmueble -> agregarPrecio inmueble (calcularPrecio inmueble)) (buscarInmueblesPorPresupuesto listaInmuebles presupuesto)

  putStrLn "Inmuebles Disponibles con Precio:"
  mapM_ print inmueblesConPrecio
