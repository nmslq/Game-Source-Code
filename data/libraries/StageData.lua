function stages()
   addJsonStages();
   jsonStageHandler();
   if stage == 1 then
     --ground
     gr = createSprite(0,-100,'stages/ground');
     gr.setObjectScale(1.6, 1.6);
     gr.setScrollFactor(1, 1);
     setObjectCamera('gr', 'CameraGame');
     --pf
     pf1 = createSprite(-200,100,'stages/platform1');
     pf1.setObjectScale(1.3,1.3);
     pf1.setScrollFactor(1,1);
     setObjectCamera('pf1', 'CameraGame');
     pf2 = createSprite(-400,300,'stages/platform1');
     pf2.setObjectScale(1.3,1.3);
     pf2.setScrollFactor(1,1);
     setObjectCamera('pf2', 'CameraGame');
     --sky
     sky = createSprite(0,0,'stages/sky');
     sky.setObjectScale(3.4,3.4);
     sky.setScrollFactor(0,0);
     setObjectCamera('sky', 'CameraGame');
   end
   if stage == 2 then
     --ground
     gr = createSprite(0,-100,'stages/ground');
     gr.setObjectScale(1.6, 1.6);
     gr.setScrollFactor(1, 1);
     setObjectCamera('gr', 'CameraGame');
     --sky
     sky = createSprite(0,0,'stages/sky');
     sky.setObjectScale(3.4,3.4);
     sky.setScrollFactor(0,0);
     setObjectCamera('sky', 'CameraGame');
     --pf
     pf1 = createSprite(-200,100,'stages/platform1');
     pf1.setObjectScale(1.3,1.3);
     pf1.setScrollFactor(1,1);
     setObjectCamera('pf1', 'CameraGame');
     pf2 = createSprite(-400,300,'stages/platform1');
     pf2.setObjectScale(1.3,1.3);
     pf2.setScrollFactor(1,1);
     setObjectCamera('pf2', 'CameraGame');
     --saw
     fightState.createSaw(10,0);
     fightState.createSaw(40,0);
     fightState.createSaw(100,0);
     fightState.createSaw(140,0);
     fightState.createSaw(170,0);
     fightState.createSaw(200,0);
     fightState.createSaw(10,50);
     fightState.createSaw(100,200);
     fightState.createSaw(200,130);
     fightState.createSaw(50,230);
   end
end

function modStages()
   stages = new.jsonStage('getJsonName');
   stages.addNew('getJsonName');
   spr = createSprite(get(jsonHandlerSprite));
   stage.jsonSetting();
   game.stagesJsonUse();
end
