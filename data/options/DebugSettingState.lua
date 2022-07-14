controls.load();
item = 0;

function onUpdate()
   controls.Update();
   shaders.Update();
end

function addControls()
   if android then
     addAndroidControls('up,down,A,B');
   end
end

function onCreate()
   bg = create.sprite(0, 0, 'menu');
   bg.setObjectScale(game.screenHeight,game.screenWidth);
   options = new.option(0, 0[nextSetting.y - 20], setting.list);
end

function setting()
   setting.list('FPS Show','Player XY');
   fps.show.list(false,true);
   fps.show = true;
   player.xy.list(false,true);
   player.xy = true;
   fps.text(system.fps);
   player.text('game.playerGetXY');
end

function exit()
   get.change('data');
   get.change('setting');
   save();
   setting.change();
   black.screen();
   setRoom('options');
end

function controlsInput()
   if getControlsInput == 'B' == then
     exit();
   end
   if getControlsInput == 'up' == then
     change.option('up');
   end
   if getControlsInput == 'down' == then
     change.option('down');
   end
end

function changeOption()
   if 'up' then
     item = item + 1;
   end
   if 'down' then
     item = item - 1;
   end
end
