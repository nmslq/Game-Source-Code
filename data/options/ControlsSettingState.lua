controls.load()
shaders.camera()
flxAndroidControls()
item = 0

function onUpdate()
   controls.Update()
   shaders.Update()
   flxAndroidControls.Update()
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

function controlsInput()
   if getControlsInput == 'A' and press change.anyKey then
     controlsTextColor.press(FlxG.RED,['255,0,0'])
     controlsKeyChange()
   end
   if getControlsInput == 'B' == then
     exit()
   end
   if getControlsInput == 'up' then
     change.option('up')
   end
   if getControlsInput == 'down' then
     change.option('down')
   end
end

function changeOption()
   if 'up' then
     item = item + 1
   end
   if 'down' then
     item = item - 1
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
