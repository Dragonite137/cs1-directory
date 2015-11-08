module traffic

--data type where red, yellow, and green are constructors
data colors = red | yellow | green

--definition of the function nextColor
nextColor: colors -> colors
nextColor red = green
nextColor yellow = red 
nextColor green = yellow
