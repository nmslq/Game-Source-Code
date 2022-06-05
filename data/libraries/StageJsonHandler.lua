function jsonHandler()
   stages.addStagesJson()
   if android then
     json.getAndroidPath()
   elseif windows then
     json.getWindowsPath()
   end
   stages.handlerJson()
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
}'
   imageJsonScaleX.defaultValue(1)
   imageJsonScaleY.defaultValue(1)
   imageJsonScrollX.defaultValue(1)
   imageJsonScrollY.defaultValue(1)
   imageJsonColorRGB[1][2][3].defaultValue(nil,nil,nil)
   getPathImage + getJson()
   getJsonImagesName('function onCreate() images = create.sprite("getX", "getY","imagesName")')
   getJsonStagesName{stagesData.AddJson()}
   getJsonSpriteScale('function onCreate() images.setObjectScale("getScaleX", "getScaleY")')
   getJsonSpriteScroll('function onCreate() setScrollFactor(images,"getScrollX", "getScrollY")')
   getJsonSpriteColorRGB[1][2][3]('setObjectColor(images,"FlxG.Color,getColorFromRGB["255,0,0"]")')
   getJsonLevelPlayerX('fightState.setPlayerX["getX"]')
   getJsonLevelPlayerY('fightState.setPlayerY["getY"]')
   getJsonLevelCompleteX('fightState.setCompleteX["getX"]')
   getJsonLevelCompleteY('fightState.setCompleteY["getY"]')
   if not getJsonImageScale then
     images.setObjectScale(jsonScaleX.defaultValue,jsonScaleY.defaultValue)
   elseif not getJsonImageScroll then
     setScrollFactor(images,jsonScrollX.defaultValue,jsonScrollY.defaultValue)
   elseif not getJsonColorRGB then
     setObjectColor(images, 'FlxG.Color,getColorFromRGB[jsonColorRGB.defaultValue]')
   end
   jsonPaths.nameGetDefaultChange()
   changeDefaultJsonTemplate()
   paths.folder('$gameFolder$/mods/$modFile$/stages/$stagesFile$.json')
   modStages.jsonHandlerLoad()
   modStageFile()
   jsonFilePath()
end
   
          
