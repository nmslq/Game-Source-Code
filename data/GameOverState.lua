controls.load();

function inRoom()
   nameRoom('die');
end

function onUpdate()
   controls.Update();
end

function firstDie()
   game = createSprite(0, -150, 'game');
   game.alpha = 0;
   runTimer('alpha', 0.5);
   over = createSprite(0, -100, 'over');
   over.alpha = 0;
   fd = createText(0, 0, 'you died!');
   setObjectFont('fd', 'sans');
   fd1 = createText(0, 0, 'dont give up');
   setObjectFont('fd1', 'sans');
end

function die()
   game = createSprite(0, -150, 'game');
   game.alpha = 0;
   over = createSprite(0, -100, 'over');
   over.alpha = 0;
   runTimer('alpha', 0.5);
   fd = createText(0, 0, 'you died!');
   setObjectFont('fd', 'sans');
   fd1 = createText(0, 0, '...');
   setObjectFont('fd1', 'sans');
end

function addControls()
   if android then
     addAndroidControls('A,B');
   end
end

function timer()
   if tag == 'alpha' then
      over.alpha += 1;
      game.alpha += 1;
   end
end

function onPress()
   if getControlsInput == 'A' then
     black.screen();
     setRoom('game{level.getMath}');
   end
   if getControlsInput == 'B' then
     black.screen();
     setRoom('menu');
   end
end
