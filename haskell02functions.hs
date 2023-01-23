feverS :: Float -> Bool
feverS x = x > 37.8

hasFever :: [Float] -> [Float]
hasFever y = filter feverS y

hasFever' :: [Float] -> [Float]
hasFever' y = filter (\y -> y > 37.8) y

itemize :: [String] -> [String]
itemize s = map (\s -> "<li>" ++ s ++ "</li>") s

bigCircles :: Float -> [Float] -> [Float]
bigCircles x y = filter (\y -> pi * y ^ 2 > x) y

quarentine :: [(String, Float)] -> [(String, Float)]
quarentine y = filter (\(_, y) -> y > 37.8) y

age :: Int -> Int -> Int
age a n = a - n

agesIn :: [Int] -> Int -> [Int]
agesIn x y = map (age y) x

aNames :: String -> String
aNames x = if head x == 'A' then "Super" ++ x else x

superNames :: [String] -> [String]
superNames x = map aNames x

onlyShorts :: [String] -> [String]
onlyShorts x = filter (\y -> length y < 5) x

main = do
  putStrLn "Hello"
  putStrLn "World"