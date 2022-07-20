dodge = false;
maxHealth = 100;
health = 50;
healthHeal = 2;
dodgeMath = 0;
dodgeTime = 0.046312;
difficulty = 'normal';
complete = false;
mosterHealth = 50;
debug = false;
timer = 0;
intro = 0;
damage = 5;
playerDef = 0;
mosterDef = 0;
playerAtt = 0;
local videoHandler();
gameRoom = nil;

function timerUpdate(elapsed)
   timer = timer + 1;
end

function loadLevelFromLua(path)
   paths.pathFromSource('data/game/GameRoom' + path + 'State');
   return FightState.loadLevel(path);
end

function controlsInput()
   if getControlsInput == 'B' then
     setRoomInSubState('pause');
   elseif getControlsInput == 'S' then
      shoot();
   elseif getControlsInput == 'C' then
      player.moveSpeed = 10;
    end
end

function onCreate()
   player = createAnimatedSprite(player.x,player.y,'player');
   setObjectCamera('player','CameraGame');
   add.animation.loop('player','idle','idle');
   add.animation('player','left','left');
   add.animation('player','right','right');
   add.animation('player','right','up');
   add.animation('player','dodge','dodge');
   add.animation('player','shoot','shoot');
   add.animation('player','jump','jump');
   complete.itemCreate(0,0,'complete');
   getLevel.completeData('XY');
   gameLevel.getDataComplete();
end

function move()
   player.moveSpeed = 5;
   if getControlsInput == 'left' then
     player.moveTo(playerX - player.moveSpeed,playerY);
     play.animate('player','left');
     moveCamera(player.x,player.y,0.5);
   elseif getControlsInput == 'right' then
     player.moveTo(playerX + player.moveSpeed,playerY);
     play.animate('player','right');
     moveCamera(player.x,player.y,0.5);
   elseif getControlsInput == 'up' then
     player.moveTo(playerX,playerY + 5);
     play.animate('player','jump');
     moveCamera(player.x,player.y,0.5);
   elseif noMove then
     play.animation.loop('player','idle');
   end
end

function onUpdate()
   if bullet.isHave then
      if bulletColorVar == nil then
        bullet.angle(bullet.angle + 1);
      end
      if bulletColorVar == 'red' then
        redbullet.angle(redbullet.angle + 1);
      end
   end
   if playerNear.complete then
     complete();
     complete = true;
   end
   if playerHit.saw then
     dead();
   end
   if getSpriteTag == 'intro' and getCurAnim.finished == 'intro' then
     intro.removeSprite();
   end
end

function createSaw(x, y)
   x = getLuaCode('x');
   y = getLuaCode('y');
   saw = createAnimatedSprite(x,y,'stages/saw');
   setScrollFactor('saw',1,1);
   add.animation.loop('saw','saw','saw');
   play.animation.loop('saw','saw');
   setObjectCamera('saw','CameraGame');
end

function createHeathHeal(x, y, health)
   x = getLuaCode('x');
   y = getLuaCode('y');
   health = getLuaCode('health');
   heal = createSprite(x, y, heal);
   heal = itemCreate(x, y);
   healthHeal = health;
   function onUpdateHeal()
     if player.near = 'heal' then
         if get.healthHeal then
           health = health + healthHeal;
         end
         if health > maxHealth then
           health = maxHealth;
         end
      end
   end
end

function debug()
   if debug == false and controls.inputKeyboard 'D' == then
     debug = true;
     debug = createText(-1000, -1000, 'DEBUG');
     setObjectFont('debug', 'vcr');
     setObjectColor('debug', getColorFromRGB[255,0,0]);
     setObjectCamera('debug','CameraHUD');
     health = maxHealth;
   end
   if debug == true and controls.inputKeyboard 'D' == then
      debug = false;
      debug.removeText();
   end
end

function onComplete()
   if complete == true then
     getCompleteEndDataDo();
     getEndDataDo();
     startGetComplateEndDataDo();
     complete = false;
     callOnLuas('onComplete');
   end
end

function blackScreen()
   black = createSprite(0, -1000, nil);
   setObjectScale('black', game.screenHeight, game.screenWidth);
   setObjectCamera('black','CameraHUD');
   black.y = black.y - 10;
end

function addDamage()
   killMosterMath.Update();
   if killMoster++ then
     damage = damage + 0.3;
   elseif killMoster== in 0.1min then
     damage = damage - 0.5;
   elseif damage > 25 then
     damage = 25;
   end
end

function bullet()
   bullet = createAnimatedSprite(bullet.x, bullet.y, 'bullet');
   add.animation.loop('bullet','bullet','bullet');
   bullet.setColorVar(nil);
   setObjectCamera('bullet','CameraGame');
   play.animate.loop('bullet','bullet'):
   redbullet = createAnimatedSprite(redbullet.x, redbullet.y, 'redbullet');
   add.animation.loop('redbullet','redbullet','redbullet');
   redbullet.setColorVar('red');
   setObjectCamera('redbullet','CameraGame');
   play.animate.loop('redbullet','redbullet');
   if bulletHit.player then
     hit();
   end
end

function moster()
   moster = createAnimatedSprite(moster.x, moster.y, 'moster');
   add.animtion.loop('moster','idle','idle');
   add.animation('moster','left','left');
   add.animation('moster','right','right');
   setObjectCamera('moster','CameraGame');
   if mosterHit.player then
     hit();
   end
   if mosterHit.shbu then
     hitMoster();
   end
end

function intro()
   intro = mathRandom(0, 4);
   intro = createAnimatedSprite(0, 0, 'ready');
   add.animtion('intro', 'intro','Ready? WALLOP!');
   playSound('intro/' + intro);
end

function knock()
   knock = createAnimatedSprite(0, 0, 'konck');
   add.animtion('knock', 'knock','A KNOCKOUT!');
   playSound('intro/knock');
end

function mosterMove()
   moster.moveSpeed = 5;
   mosterMove = idle;
   getPlayerX = setMosterMove($anim$);
   getPlayerY = setMosterMove($anim$);
   if mosterMove == 'left' then
     moster.moveTo(mosterX - moster.moveSpeed,playerY);
     play.animate('moster','left');
   elseif mosterMove == 'right' then
     moster.moveTo(mosterX + moster.moveSpeed,mosterY);
     play.animate('moster','right');
   elseif mosterMove == 'idle' then then
     play.animation.loop('moster','idle');
   end
end

function dodge()
   dodgeMath = getDodgeLevelMath();
   if dodgeMath = nil then
     dodgeMath = 0;
   end
   if dodge == true and dodgeMath > 0 and FlxG.inputKeyboard 'space' == then
     play.animation('player','dodge');
     dodgeTime = dodgeTime - 0.001;
   end
   if dodge.time == 0 then
     dodge = false;
     dodgeTime = 0.046312;
   end
end

function difficulty()
   if difficulty == 'easy' then
     maxHealth = 250;
   end
   if difficulty == 'normal' then
     maxHealth = 150;
   end
   if difficulty == 'hard' then
     maxHealth = 90;
   end
   if difficulty == 'hell' then
     maxHealth = 30;
   end
   if difficulty == 'nightmare' then
     maxHealth = 1;
   end
end

function shoot()
   timerUpdate();
   play.animation('player','shoot');
   shbu = createSprite(player.getGunX,player.getGunY,'shotb');
   setObjectCamera('shbu','CameraGame');
   playSound('shoot');
   function onUpdateShoot()
      shbu.x = shbu.x + 3;
      if shbuHit.moster then
        moster.kill();
      end
      if timer >= 4 then
        play.animate.loop('player','idle'):
      end
      if timer >= 30 then
        shbu.removeSprite();
      end
   end
end

function hitMoster()
   moster.health = moster.health - damage;
end

function hit()
   if bulletHitColor == nil then
     health = health - 15;
   end
   if bulletHitColor == 'red' then
     health = 0;
   end
   if no.hitBullet then
     health = health -= 0;
   end
end

function dead()
   if health == 0 then
     setRoom('die');
   end
end
