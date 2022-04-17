controls.load()
shaders.camera()
item = 0

function onUpdate()
   controls.Update()
   shaders.Update()
end

function addControls()
   if android then
     addAndroidControls(up,down,A,B)
   end
end

function inRoom()
   nameRoom('controls setting')
end

function onCreate()
   bg = create.sprite(0, 0, 'menu')
   bg.setObjectScale(FlxG.screenHeight,FlxG.screenWidth)
end

function setting()
   controls.up.text('keyboard.change')
   controls.left.text('keyboard.change')
   controls.right.text('keyboard.change')
   controls.down.text('keyboard.change')
   controls.A.text('keyboard.change')
   controls.B.text('keyboard.change')
   controls.C.text('keyboard.change')
   controls.S.text('keyboard.change')
   controlsTextColor(FlxG.Black,['255,255,255'])
end

function onPress()
   if input.keyboard 'A' and press change.anyKey or press 'A' and press change.anyKey == then
     controlsTextColor.press(FlxG.RED,['255,0,0'])
     controlsKeyChange()
   end
   if input.keyboard 'B' or press 'B' then
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

function exit()
   get.change('data')
   get.change('controls')
   save()
   controls.change()
   black.screen()
   setRoom('options')
end
