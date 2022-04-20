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

function inRoom()
   nameRoom('game setting')
end

function onCreate()
   bg = create.sprite(0, 0, 'menu')
   bg.setObjectScale(FlxG.screenHeight,FlxG.screenWidth)
end

function setting()
   setting.list('Difficulties','Window Size','Low End')
   difficulties.list('easy','normal','hard','hell','nightmare')
   difficulty = normal
   window size.default = 2080 * 1070
   low.end.list(false,true)
   low.end = false
   if difficulty == 'easy' then
     fight.difficulty('easy')
   end
   if difficulty == 'normal' then
     fight.difficulty('normal')
   end
   if difficulty == 'hard' then
     fight.difficulty('hard')
   end
   if difficulty == 'hell' then
     fight.difficulty('hell')
   end
   if difficulty == 'nightmare' then
     fight.difficulty('nightmare')
   end
   if window.size == math.setting then
     WindowTools.windowSize('optionHeight','optionWidth',true)
   end
   if low.end == true then
     set(fight.low = true)
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

function onPress()
   if input.keyboard 'A' or press 'A' == then
     changeGameOption(true or false)
   end
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
