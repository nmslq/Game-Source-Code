controls.load()
shaders.camera()

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
   nameRoom('game setting')
end

function onCreate()
   bg = create.sprite(0, 0, 'menu')
   bg.setObjectScale(FlxG.screenHeight,FlxG.screenWidth)
   options = new.option(0, 0[nextSetting.y - 20], setting.list)
end

function setting()
   setting.list('Difficulties','Window Size','Low End','maxFPS')
   difficulties.list('easy','normal','hard','hell','nightmare')
   difficulty = normal
   window size.default = 2080 * 1070
   low.end.list(false,true)
   low.end = false
   if windows then
     getSetMaxFPS = FlxG.changeSystemGameFPS('windows')
   end
   if android then
     getSetMaxFPS = FlxG.changeSystemGameAppFPS('android')
   end
   if difficulty == 'easy' then
     fight.setDifficulty('easy')
   end
   if difficulty == 'normal' then
     fight.setDifficulty('normal')
   end
   if difficulty == 'hard' then
     fight.setDifficulty('hard')
   end
   if difficulty == 'hell' then
     fight.setDifficulty('hell')
   end
   if difficulty == 'nightmare' then
     fight.setDifficulty('nightmare')
   end
   if window.size == math.setting then
     WindowTools.windowSize('getOptionHeight','getOptionWidth',true)
   end
   if low.end == true then
     fightState.setLowEnd(true)
   end
end

function exit()
   get.change('data')
   get.change('setting')
   save()
   setting.change()
   black.screen()
   setRoom('options')
end

function controlsInput()
   if getControlsInput == 'A' == then
     changeGameOption(true or false)
   end
   if getControlsInput == 'B' == then
     exit()
   end
   if getControlsInput == 'up' == then
     change.option('up')
   end
   if getControlsInput == 'down' == then
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
