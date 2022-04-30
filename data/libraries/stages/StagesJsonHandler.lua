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
   getJsonImagesName('function onCreate() images = create.sprite(getX, getY,imagesName)')
   getJsonStagesName('stagesDataAddJson')
   getJsonSpriteScale('function onCreate() setObjectScale(getScaleX, getScaleY)')
   getJsonSpriteScroll('function onCreate() setScrollFactor(getScrollX, getScrollY)')
   getJsonLevelPlayerXY('fightStateSetPlayerXY['getX,getY']')
   getJsonLevelCompleteXY('fightStateSetCompleteXY['getX,getY']')
   jsonPaths.nameGetDefaultChange()
   changeDefaultJsonTemplate()
   paths.folder('$gameFolder$/mods/$modFile$/stages/$stagesFile$.json')
   modStages.jsonHandlerLoad()
   modStageFile()
   jsonFilePath()
end
   
          
