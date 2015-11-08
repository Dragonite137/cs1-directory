module color

import pair
import bool

%default total

data color = red | blue | green | cyan | magenta | yellow

complement: color -> color
complement red = cyan
complement cyan = red
complement green = magenta
complement magenta = green
complement blue = yellow
complement yellow = blue

additive: color -> bool
additive red = true
additive blue = true
additive green = true 
additive _ = false

subtractive: color -> bool
subtractive b = not (additive b)

complements: pair color color -> bool
complements (mkPair red cyan) = true
complements (mkPair green magenta) = true
complements (mkPair blue yellow) = true
complements (mkPair a b) = false

mixink: pair color color -> color
mixink (mkPair magenta yellow) = red
mixink (mkPair yellow magenta) = red
mixink (mkPair magenta cyan) = blue
mixink (mkPair cyan magenta) = blue
mixink (mkPair yellow cyan) = green
mixink (mkPair cyan yellow) = green
