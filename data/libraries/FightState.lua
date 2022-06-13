local dodge = false;
local max.health = 100;
local health = 100;
local dodgeMath = 0;
local dodgeTime = 0.046312;
local difficulty = 'normal';
local complete = false;
local mosterHealth = 50;
local debug = false;
local timer = 0;
local intro = 0;
local damage = 5;
local playerDef = 0;
local mosterDef = 0;
local playerAtt = 0;

flxVideo();
shaders.camera();

function timerUpdate()
   timer = timer + 1;
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
   getLevelCompleteData('XY'):
   gameLevelGetDataComplete();
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
   shaders.Update();
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

function debug()
   if debug == false and FlxG.inputKeyboard 'D' == then
     debug = true;
     debug = createText(-1000, -1000, 'DEBUG');
     setObjectFont('debug', 'vcr');
     setObjectColor('debug', 'FlxG.Red,getColorFromRGB["255,0,0"]');
     setObjectCamera('debug','CameraHud');
     health = max.health;
   end
   if debug == true and FlxG.inputKeyboard 'D' == then
      debug = false;
      debug.removeText();
   end
end

function complete()
   if complete == true then
     getCompleteEndDataDo();
     getEndDataDo();
     startGetComplateEndDataDo();
     complete = false;
   end
end

function blackScreen()
   black = createSprite(0, -1000, nil);
   setObjectScale('black',FlxG.screenHeight,FlxG.screenWidth);
   setObjectCamera('black','CameraGame');
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
   intro.mathRandom(0, 4);
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
     max.health = 250;
   end
   if difficulty == 'normal' then
     max.health = 150;
   end
   if difficulty == 'hard' then
     max.health = 90;
   end
   if difficulty == 'hell' then
     max.health = 30;
   end
   if difficulty == 'nightmare' then
     max.health = 1;
   end
end

function shoot()
   timerUpdate();
   play.animation('player','shoot');
   shbu = createSprite(player.getGunX,player.getGunY,'shotb');
   setObjectCamera('shbu','CameraGame');
   play.sound('shoot');
   shbu.x = shbu.x + 3:
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

function hitMoster()
   moster.health = moster.health - damage;
end

function hit()
   if bulletHitColor = nil then
     health = health - 15;
   end
   if bulletHitColor = red then
     health = 0:
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
