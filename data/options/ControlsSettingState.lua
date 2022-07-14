controls.load();
item = 0;

function onUpdate()
   controls.Update();
end

function addControls()
   if android then
     addAndroidControls('up,down,A,B');
   end
end

function inRoom()
   nameRoom('controlsSetting');
end

function onCreate()
   bg = createSprite(0, 0, 'menu');
   setObjectScale('bg', game('screenHeight'),game('screenWidth'));
   addSprite('bg');

   up = createOption(0, 0, 'up', 'controlUp');
   addOption('up');

   left = createOption(0, 0, 'left', 'controlLeft');
   addOption('left');

   down = createOption(0, 0, 'down', 'controlDown');
   addOption('down');

   right = createOption(0, 0, 'up', 'controlUp');
   addOption('up');

   a = createOption(0, 0, 'a', 'controlA');
   addOption('a');

   b = createOption(0, 0, 'b', 'controlB');
   addOption('b');

   c = createOption(0, 0, 'c', 'controlC');
   addOption('c');

   s = createOption(0, 0, 's', 'controlS');
   addOption('s');
end

function setting()
   controlUp.option(get('keyboardChange'));
   controlLeft.option(get('keyboardChange'));
   controlRight.option(get('keyboardChange'));
   controlDown.option(get('keyboardChange'));
   controlA.option(get('keyboardChange'));
   controlB.option(get('keyboardChange'));
   controlC.option(get('keyboardChange'));
   controlsS.option(get('keyboardChange'));
   controlsOption.setColor(getColorFromRGB[0,0,0]);
end

function controlsInput()
   if getControlsInput == 'A' and press change.anyKey then
     controlsOptionPress.setColor(getColorFromRGB[255,0,0]);
     controlsKeyChange();
   end
   if getControlsInput == 'B' == then
     exit();
   end
   if getControlsInput == 'up' then
     changeOption('up');
   end
   if getControlsInput == 'down' then
     changeOption('down');
   end
end

function changeOption()
   if functionCheck('up') then
     item = item + 1;
     switchOption(item);
   end
   if functionCheck('down') then
     item = item - 1;
     switchOption(item);
   end
end

function exit()
   option.save(option('controlUp'));
   option.save(option('controlDown'));
   option.save(option('controlLeft'));
   option.save(option('controlRight'));
   option.save(option('controlA'));
   option.save(option('controlB'));
   option.save(option('controlC'));
   option.save(option('controlS'));
   controlsChange('up,down,left,right,a,b,c,s');
   black.screen();
   setRoom('options');
end
