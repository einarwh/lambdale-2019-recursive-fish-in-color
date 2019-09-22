module Ale exposing (ale)

import Shape exposing (..)

pitcher : List Shape
pitcher = 
  let 
    -- Pitcher
    -- 0.441
    -- 0.559
    -- 0.823 ?
    pts1 = 
      [ { x = 0.327, y = 0.280 } 
      , { x = 0.618, y = 0.280 }
      , { x = 0.618, y = 0.720 }
      , { x = 0.327, y = 0.720 } ]
    pts2 = 
      [ { x = 0.327, y = 0.625 } 
      , { x = 0.686, y = 0.625 }
      , { x = 0.777, y = 0.375 }
      , { x = 0.823, y = 0.375 } ]
    pts3 = 
      [ { x = 0.618, y = 0.375 } 
      , { x = 0.686, y = 0.375 }
      , { x = 0.732, y = 0.50 }
      , { x = 0.777, y = 0.375 }
      , { x = 0.830, y = 0.375 } ]
    -- Hexagon
  in 
  [ Polygon { points = pts1 }
  , Polyline { pts = pts2 }
  , Polyline { pts = pts3 } ]

hexagon : List Shape 
hexagon = 
  let 
    -- Hexagon 
    -- 0.28867513459 (height)
    -- side = 0.57735026919 
    -- 1 - side = 0.42264973081
    -- (1 - side) / 2 = 0.2113248654
    -- (side + 1) / 2 = 0.78867513459
    -- lowest = -0.07735026919
    -- highest = 1.07735026919
    pts1 = 
      [ { x = 0.000, y = 0.211 } 
      , { x = 0.50, y = -0.0773 }
      , { x = 1.00, y = 0.211 }
      , { x = 1.00, y = 0.789 } 
      , { x = 0.50, y = 1.0773 } 
      , { x = 0.00, y = 0.789 } ]
  in 
  [ Polygon { points = pts1 } ]

ale : List Shape 
ale = 
  hexagon ++ pitcher



