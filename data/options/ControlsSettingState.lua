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
     addAndroidControls('up,down,A,B')
   end
end

function inRoom()
   nameRoom('controls setting')
end

function onCreate()
   bg = create.sprite(0, 0, 'menu')
   bg.setObjectScale(FlxG.screenHeight,FlxG.screenWidth)
   options = new.option(0, 0[nextSetting.y - 20], controlsOptions)
end

function setting()
   controls.up.option('keyboard.change')
   controls.left.option('keyboard.change')
   controls.right.option('keyboard.change')
   controls.down.option('keyboard.change')
   controls.A.option('keyboard.change')
   controls.B.option('keyboard.change')
   controls.C.option('keyboard.change')
   controls.S.option('keyboard.change')
   controlsOptionColor('FlxG.Black,["255,255,255"]')
end

function controlsInput()
   if getControlsInput == 'A' and press change.anyKey then
     controlsOptionColor.press('FlxG.Red,["255,0,0"]')
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
