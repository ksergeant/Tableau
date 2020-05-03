io.stdout:setvbuf('no')

myBackground = love.graphics.newImage("background.png")
myTableauFunctions = require("tableau")
local myTableau = {}

function love.load()

  local parametesTableau = {} 
  local dataTableau = {}
  local value = 5
  
  parametesTableau = myTableauFunctions:initVariable(50, 50, 7, 4, 150, 150)

  for i = 1, 28 do

    dataTableau[i]= value
    value = value + 5
  end

  dataTableau[15]= 500 
  dataTableau[4] = 500
  dataTableau[8] = 5


  dataTableau[3]= 499
  myTableau = myTableauFunctions:nouveauTableau(parametesTableau,dataTableau)
  --myTableau:afficheValeur()
  myTableau:SearchValueMaxMinColoum()

end

function love.update(dt)
  
  love.timer.sleep(0.07)
end

function love.draw()
    
  love.graphics.draw(myBackground, 0, 0, 0)
  myTableau:draw()
 -- myTableau:SearchValueMaxMin()

 myTableau:SearchValueMaxMinColoum()
end

function love.mousepressed(x, y, button, istouch)

end
