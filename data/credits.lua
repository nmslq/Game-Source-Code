function inRoom()
   nameRoom(credits)
end

function onCreate()
   bg = create.bg.sprite(0,0,menu)
   bg.scale(2.3,2.3)
   credits = create.credits.text(0,0,{credits.text},sans)
   icon = create.title.sprite(-30,0,{credits.icon})
end

function credits()
   ['game coder']
   ['CXY','cxy','hey,Im cxy./n Im the game coder','https://b23.tv/tR4KcUU']
end
