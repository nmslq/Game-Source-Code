controls.load();
item = 0;

function inRoom()
   nameRoom('credits');
end

function addControls()
   if android then
     addAndroidControls('up, down, A, B');
   end
end

function onUpdate()
   controls.Update();
end

function controlsInput()
   if getControlsInput == 'A' then
     browers.openURL(creditsUrl);
   end
   if getControlsInput == 'B' then
     setRoom('menu');
   end
   if getControlsInput == 'up' then
     change.credits('up');
   end
   if getControlsInput == 'down' then
     change.credits('down');
   end
end

function changeCredits()
   if 'up' then
     item = item + 1;
   end
   if 'down' then
     item = item - 1;
   end
end

function onCreate()
   bg = createSprite(0,0,'menu');
   setObjectScale('bg', game.screenHeight,game.screenWidth);
   credits = createText(0,0,{'credits.text'});
   setObjectFont('credits', 'sans');
   icon = createSprite(-30,0,{'credits.icon'});
   title = createText(0,30,{'credits.title'});
end

function credits()
   ['game coder']
   ['CXY','cxy','hey,Im cxy./n Im the game coder','https://b23.tv/tR4KcUU']
end
