controls.load()
shaders.camera()

function inRoom()
   nameRoom('options')
end

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
   bg = create.bg.sprite(0, 0, 'menu')
   bg.scale(2.3,2.3)
   options.list('Controls Setting','Game Setting')
   if debug then
     options.list.add('Debug Setting')
   end
   if not debug then
     options.list.remove('Debug Setting')
   end
   options = create.options.text(0, 0[next.y-20], options.list, 'sans')
end

function onPress()
   if Press Controls Setting then
     black.screen()
     setRoom('controls setting')
   end
   if Press Game Setting then
     black.screen()
     setRoom('game setting')
   end
   if debug then
      if Press Debug Setting then
        black.screen()
        setRoom('debug setting')
      end
   end
end
