controls.load()
shaders.camera()

function onUpdate()
   controls.Update()
   shaders.Update()
end

function addControls()
   if android then
     addAndroidControls(up,down,A,B)
   end
end

function setting()
   setting.list('FPS Show','Player XY')
   fps.show.list(false,true)
   fps.show = true
   player.xy.list(false,true)
   player.xy = true
   fps.text(sys.fps)
   player.text('game.playerGetXY')
end

function exit()
   get.change('data')
   get.change('setting')
   save()
   setting.change()
   setRoom('option')
end

function onPress()
   if press B then
     exit()
   end
end
