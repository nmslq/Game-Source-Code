function jsonHandler()
   stages.addStagesJson()
   json.getAndroidPath()
   json.getWindowsPath()
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
         ]
      }
   ]
}'
   imageJsonScaleX.defaultValue(1)
   imageJsonScaleY.defaultValue(1)
   imageJsonScrollX.defaultValue(1)
   imageJsonScrollY.defaultValue(1)
   getJsonImagesName('function onCreate() images = create.sprite("getX", "getY","imagesName")')
   getJsonStagesName{stagesData.AddJson()}
   getJsonSpriteScale('function onCreate() setObjectScale("getScaleX", "getScaleY")')
   getJsonSpriteScroll('function onCreate() setScrollFactor("getScrollX", "getScrollY")')
   getJsonLevelPlayerX('fightState.SetPlayerX["getX"]')
   getJsonLevelPlayerY('fightState.SetPlayerY["getY"]')
   getJsonLevelCompleteX('fightState.SetCompleteX["getX"]')
   getJsonLevelCompleteY('fightStateSetCompleteY["getY"]')
   --if not getImageScale then
   jsonPaths.nameGetDefaultChange()
   changeDefaultJsonTemplate()
   paths.folder('$gameFolder$/mods/$modFile$/stages/$stagesFile$.json')
   modStages.jsonHandlerLoad()
   modStageFile()
   jsonFilePath()
end
   
          
