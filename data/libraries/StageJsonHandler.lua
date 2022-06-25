function jsonHandler();
   stages.addStagesJson();
   if android then
     json.getAndroidPath();
   elseif windows then
     json.getWindowsPath();
   end
   stages.handlerJson();
   jsonDefault('
   {
     "stagesName": "name",
     "playerXY": [
           0,
           0
      ],
      "completeXY": [
           0,
           0
      ],
     "images": [
      {
        "imageName": "name",
        "isAnimateSprite" : false,
        "animtion" : nil,
        "animtionLoop" : false,
        "imageXY": [
              0,
              0
        ],
        "imageScale": [
              1,
              1
         ],
         "imageScroll": [
              1,
              1
         ],
         "imageColor": [
              0,
              0,
              0
         ]
      }
   ]
}');
   imageJsonScaleX.defaultValue(1);
   imageJsonScaleY.defaultValue(1);
   imageJsonScrollX.defaultValue(1);
   imageJsonScrollY.defaultValue(1);
   imageJsonColorRGB.defaultValue(nil,nil,nil);
   imageJsonIsAnimateSprite.defaultValue(false);
   imageJsonAnimation.defaultValue(nil);
   imageJsonAnimationLoop.defaultValue(false);
   getPathImage + getJson();
   getJsonImagesName('function onCreate() images = createSprite("getX", "getY","imagesName");');
   getJsonImagesIsAnimateSprite('function onCreate() images = createAnimateSprite("getX", "getY","imagesName");');
   getJsonImagesAnimation('function onCreate() add.animation("image", "animation");');
   getJsonImagesAnimationLoop('function onCreate() add.animation.loop("image", "animation");');
   getJsonStagesName{stagesData.AddJson();}
   getJsonSpriteScale('function onCreate() images.setObjectScale("getScaleX", "getScaleY");');
   getJsonSpriteScroll('function onCreate() setScrollFactor(images,"getScrollX", "getScrollY");');
   getJsonSpriteColorRGB('setObjectColor(images,"FlxG.Color,getColorFromRGB["255,0,0"]");');
   getJsonLevelPlayerX('fightState.setPlayerX["getX"]');
   getJsonLevelPlayerY('fightState.setPlayerY["getY"]');
   getJsonLevelCompleteX('fightState.setCompleteX["getX"]');
   getJsonLevelCompleteY('fightState.setCompleteY["getY"]');
   if not getJsonImageScale then
     images.setObjectScale(jsonScaleX.defaultValue,jsonScaleY.defaultValue);
   elseif not getJsonImageScroll then
     setScrollFactor(images,jsonScrollX.defaultValue,jsonScrollY.defaultValue);
   elseif not getJsonColorRGB then
     setObjectColor(images, 'FlxG.Color,getColorFromRGB[jsonColorRGB.defaultValue]');
   end
   jsonPaths.nameGetDefaultChange();
   changeDefaultJsonTemplate();
   paths.folder('$gameFolder$/mods/$modFile$/stages/$stagesFile$.json');
   modStages.jsonHandlerLoad();
   modStageFile();
   jsonFilePath();
end
