function jsonHandler()
   stages.addStagesJson()
   json.getAndroidPath()
   json.getWindowsPath()
   stages.handlerJson()
   jsonDefault('
   {
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
   getJsonScale('function onCreate() setObjectScale(getScaleX, getScaleY)')
   getJsonScroll('function onCreate() setScrollFactor(getScrollX, getScrollY)')
   jsonPaths.nameGetDefaultChange()
   changeDefaultJsonTemplate()
   paths.folder('$gameFolder$/stages/$stagesFile$.json')
   modStageFile()
   jsonFilePath()
end
   
          
