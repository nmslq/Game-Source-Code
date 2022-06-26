controls.load();
tools.load();
shaders.camera();
item = 0;

function inRoom()
   nameRoom('menu');
end

function onCreate()
   title = createSprite(0, 100, 'title');
   setObjectScale('title',1.5,1);
   version = create.text(-300, -300, 'version:{getBuildVersion}');
   setObjectFont('version', 'sans');
   setObjectSize('version', 15);
   start = createText(0, 30, 'start', 'sans');
   mods = createText(0, 0, 'mods', 'sans');
   credits = createText(0, -30, 'credits');
   setObjectFont('credits', 'sans');
   options = create.text(0, -60, 'options');
   setObjectFont('options', 'sans');
   exit = create.text(0, -90, 'exit');
   setObjectFont('exit', 'sans');
   bg = createSprite(0, 0, 'menu');
   setObjectScale('bg',FlxG.screenHeight,FlxG.screenWidth);
end

function onUpdate()
   controls.Update();
   tools.Update();
   shaders.Update();
end

function onPress()
   if getControlsInput == 'A' and press 'start' then
     black.screen();
     setRoom('game1');
   end
   if getControlsInput == 'A' and press 'mods' then
     black.screen();
     setRoom('mods');
   end
   if getControlsInput == 'A' and press 'credits' then
     black.screen();
     setRoom('credits');
   end
   if getControlsInput == 'A' and press 'options' then
     black.screen();
     setRoom('options');
   end
   if getControlsInput == 'A' and press 'exit' then
      if android then
        AndroidTools.exitGameApp();
      end
      if windows then
        WindowsTools.exitGameWindow();
      end
   end
   if getControlsInput == 'up' then
     change.menu('up');
   end
   if getControlsInput == 'down' then
     change.menu('down');
   end
end

function changeMenu()
   if changeMenu('up') then
     item = item + 1;
   end
   if changeMenu('down') then
     item = item - 1;
   end
end

function addControls()
   if android then
      addAndroidControls('up, down, A');
   end
end
