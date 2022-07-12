controls.load();
fight.load();
stage = 2;
level = 2;
dodgeMath = 0;

function inRoom()
   nameRoom('game2');
end

function onUpdate()
   controls.Update();
   fight.Update();
end

function onCreate()
   complate.setXY(600,700);
end

function onComplate()
   black.screen();
   FightState.loadLevelFromLua(3);
   setRoom('fight');
end

function addControls()
   if android then
      addAndroidControls('full, B, C, S');
   end
end
