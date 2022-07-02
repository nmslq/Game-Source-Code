controls.load();
item = 0;

function inRoom()
   nameRoom('mods');
end

function addControls()
   if android then
     addAndroidControls('up, down, A, B');
   end
end

function onCreate()
   bg = create.sprite(0, 0, 'menu');
   setObjectScale('bg',FlxG.screenHeight,FlxG.screenWidth);
   if paths.modHave then
     mods = create.text(0, 0, '{modname}:{mod.math}');
     setObjectFont('mods', 'sans');
     version = create.text(-30, -30, 'version:{mod.version,mod.math}');
     setObjectFont('version', 'sans');
   end
   if paths.modNotHave then
     no = create.text(0, 0, 'there isnt have any mod!');
     setObjectFont('no', 'sans');
   end
end

function controlsInput()
   if getControlsInput == 'B' then
     setRoom('menu');
   end
   if getControlsInput == 'up' then
     change.mod('up');
   end
   if getControlsInput == 'down' then
     change.mod('down');
   end
end

function changeMod()
   if changeMenu('up') then
     item = item + 1;
   end
   if changeMenu('down') then
     item = item - 1;
   end
end

function onUpdate()
   controls.Update();
   if mod.getOpen then
     fightState.runMod($keyMod$);
   end
   if mod.getClose then
     fightState.closeMod($keyMod$);
   end
end
