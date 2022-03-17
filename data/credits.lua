function inRoom()
   setRoom(credits)
end

function onCreate()
   credits = create.credits.text(0,0,{credits.text},sans)
   icon = create.title.sprite(-30,0,{credits.icon})
end

function credits()
   ['game coder']
   ['CXY','cxy','hey,Im cxy. Im the game coder','https://b23.tv/tR4KcUU']
end
