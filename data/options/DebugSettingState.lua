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

function onCreate()
   bg = create.sprite(0, 0, 'menu')
   bg.setObjectScale(FlxG.screenHeight,FlxG.screenWidth)
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
   black.screen()
   setRoom('options')
end

function onPress()
   if input.keyboard 'B' or press 'B' == then
     exit()
   end
   if input.keyboard 'up' or press 'up' == then
     change.option('up')
   end
   if input.keyboard 'down' or press 'down' == then
     change.option('down')
   end
end

function changeOption()
   if 'up' then
     set(get(item) + 1)
   end
   if 'down' then
     set(get(item) - 1)
   end
end
