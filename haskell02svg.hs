import Text.Printf

-- String inicial do SVG
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

svgCircle :: Int -> Int -> Int -> String -> String 
svgCircle x y r style = 
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style

-- Gera SVG com 2 círculos, um verde e um vermelho, com 0.4 de opacidade.
-- A opacidade pode não ser suportada em alguns visualizadores de SVG.
svgAll :: String
svgAll = 
  svgBegin 500 500 ++ 
  (svgCircle 120 200 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 120 220 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 120 240 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 120 260 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 120 280 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 120 300 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 140 200 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 140 220 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 140 240 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 140 260 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 140 280 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 140 300 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 160 200 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 160 220 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 160 240 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 160 260 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 160 280 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 160 300 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 180 220 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 180 240 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 180 260 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 180 280 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 180 300 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 180 200 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 200 200 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 200 220 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 200 240 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 200 260 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 200 280 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 200 300 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 220 200 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 220 220 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 220 240 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 220 260 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 220 280 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 220 200 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 240 220 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 240 240 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 240 260 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 240 280 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 240 300 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 240 200 30 "rgb(0,255,0, 0.4)") ++
  (svgCircle 175 320 40 "rgb(139,69,19, 0.4)") ++
  (svgCircle 175 320 40 "rgb(139,69,19, 0.4)") ++
  (svgCircle 175 320 40 "rgb(139,69,19, 0.4)") ++
  (svgCircle 175 330 40 "rgb(139,69,19, 0.4)") ++
  (svgCircle 175 330 40 "rgb(139,69,19, 0.4)") ++
  (svgCircle 175 330 40 "rgb(139,69,19, 0.4)") ++
  (svgCircle 175 340 40 "rgb(139,69,19, 0.4)") ++
  (svgCircle 175 340 40 "rgb(139,69,19, 0.4)") ++
  (svgCircle 175 340 40 "rgb(139,69,19, 0.4)") ++
  (svgCircle 175 360 40 "rgb(139,69,19, 0.4)") ++
  (svgCircle 175 360 40 "rgb(139,69,19, 0.4)") ++
  (svgCircle 175 360 40 "rgb(139,69,19, 0.4)") ++
  (svgCircle 400 40 100 "rgb(255,255,0, 0.4)") ++
  (svgCircle 400 40 100 "rgb(255,255,0, 0.4)") ++
  (svgCircle 400 40 100 "rgb(255,255,0, 0.4)") ++
  (svgCircle 400 40 100 "rgb(255,255,0, 0.4)") ++
  svgEnd

main :: IO ()
main = do
  writeFile "circles.svg" svgAll