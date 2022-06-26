controls.load();
shaders.camera();
item = 0
toFight = false;

function inRoom();
   nameRoom('pause');
end

function onUpdate();
   controls.Update();
   shaders.Update();
end

function onCreate();
   pause.list('Resume','Reset level','option','Exit to menu');
   bg = create.sprite(0, 0, nil);
   setObjectScale('bg',FlxG.screenHeight,FlxG.screenWidth);
   bg.alpha = 60
   pause = create.text(0, 0[nextPause.y - 20] ,pause.list, 'sans');
end

function controlsInput()
   if getControlsInput == 'A' and press 'Resume' then
     close();
   end
   if getControlsInput == 'A' and press 'Reset Level' then
     reset();
   end
   if getControlsInput == 'A' and press 'Reset Level' then
     blackScreen();
     setRoom('option');
     toFight = true;
   end
   if getControlsInput == 'A' and press 'Exit to menu' then
     exit();
   end
   if getControlsInput == 'up' then
     change.item('up');
   end
   if getControlsInput == 'down' then
     change.item('down');
   end
end

function changeItem()
   if changeMenu('up') then
     item = iten + 1
   end
   if changeMenu('down') then
     item = item - 1
   end
end

function close()
   setRoomBackSubState('game{level.getMath}');
end

function reset()
   black.screen();
   reset.level();
end

function resetLevel()
   black.screen();
   setRoom('game{level.getMath}');
end

function exit()
   black.screen();
   setRoom('menu');
end

function addControls()
   if android then
     addAndroidControls('up, down, A');
   end
end
