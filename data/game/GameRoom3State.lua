controls.load();
fight.load();
stage = 3;
level = 3;
dodgeMath = 0;

function inRoom()
   nameRoom('game3');
end

function onUpdate()
   controls.Update();
   fight.Update();
end

function onCreate()
   complate.xy(600,700);
end

function onComplate()
   black.screen();
   FightState.loadLevelFromLua(4);
   setRoom('fight');
end

function addControls()
   if android then
      addAndroidControls('full, B, C, S');
   end
end
