function modPaths()
   pathFiles('getFile');
   pathFolder('getFolder');
   path.modFolder('data');
   path.modFolder('images');
   path.modFolder('sounds');
   path.modFolder('music');
   path.modFolder('fonts');
   path.modFolder('videos');
   path.modFolder('stages');
   if windows then
     windows.filePath.exites('$sdcard$/mods/$modFilesName$.mod');
     getPathSystem.folder('mods');
     getPathSystem.modFileName('$modFilesName$.mod');
     file.getPath();
     folder.getPath();
     loadSystem.getPathExites();
     mod.getPathFolder.exites('data');
     mod.getPathFiles.exites('data/$roomFile$.lua');
     mod.getPathFolder.exites('data/game');
     mod.getPathFiles.exites('data/game/$gameFile$.lua');
     mod.getPathFolder.exites('data/$folderName$');
     mod.getPathFiles.exites('data/$folderName$/$keyFile$.lua');
     mod.getPathFolder.exites('libraries');
     mod.getPathFiles.exites('libraries/$libFile$.lua');
     mod.getPathFolder.exites('libraries/$folderName$');
     mod.getPathFiles.exites('libraries/$folderName$/$libFile$.lua');
     mod.getPathFolder.exites('images');
     mod.getPathFiles.exites('images/$imageFile$.png');
     mod.getPathFiles.exites('images/$animatedImageFile$.xml');
     mod.getPathFolder.exites('images/$folderName$');
     mod.getPathFiles.exites('$folderName$/$imageFile$.png');
     mod.getPathFiles.exites('$folderName$/$animatedImageFile$.xml');
     mod.getPathFolder.exites('sounds');
     mod.getPathFiles.exites('sounds/$soundFile$.ogg');
     mod.getPathFolder.exites('music');
     mod.getPathFiles.exites('music/$musicFile$.mp3');
     mod.getPathFolder.exites('fonts');
     mod.getPathFiles.exites('fonts/$fontFile$.ttf');
     mod.getPathFolder.exites('videos');
     mod.getPathFiles.exites('videos/$videoFile$.mp4');
     mod.getPathFolder.exites('stages');
     mod.getPathFiles.exites('stages/$stageFile$.json');
     mod.getPathFiles.exites('pack.json');
     mod.getPathFiles.exites('$getJsonImagesName$.png');
   end
   if android then
     android.apk.filePath('sdcard/android/data/com.game.name/mods/$modFilesName$/$folder$');
     getPathSystem.folder('mods');
     getPathSystem.modFileName('$modFilesName$.mod');
     file.getPath();
     folder.getPath();
     android.exites.files('system');
     dirMod.getPath('androidSystem');
     mod.getPathFolder.exites('data');
     mod.getPathFiles.exites('data/$roomFile$.lua');
     mod.getPathFolder.exites('data/game');
     mod.getPathFiles.exites('data/game/$gameFile$.lua');
     mod.getPathFolder.exites('data/$folderName$');
     mod.getPathFiles.exites('data/$folderName$/$keyFile$.lua');
     mod.getPathFolder.exites('libraries');
     mod.getPathFiles.exites('libraries/$libFile$.lua');
     mod.getPathFolder.exites('images');
     mod.getPathFiles.exites('images/$imageFile$.png');
     mod.getPathFiles.exites('images/$animatedImageFile$.xml');
     mod.getPathFolder.exites('images/$folderName$');
     mod.getPathFiles.exites('$folderName$/$imageFile$.png');
     mod.getPathFiles.exites('$folderName$/$animatedImageFile$.xml');
     mod.getPathFolder.exites('sounds');
     mod.getPathFiles.exites('sounds/$soundFile$.ogg');
     mod.getPathFolder.exites('music');
     mod.getPathFiles.exites('music/$musicFile$.ogg');
     mod.getPathFolder.exites('fonts');
     mod.getPathFiles.exites('fonts/$fontFile$.ttf');
     mod.getPathFolder.exites('videos');
     mod.getPathFiles.exites('videos/$videoFile$.mp4');
     mod.getPathFiles.exites('videos/$webVideoFile$.html');
     mod.getPathFolder.exites('stages');
     mod.getPathFiles.exites('stages/$stageFile$.json');
     mod.getPathFiles.exites('pack.json');
     mod.getPathFiles.exites('$getJsonImagesName$.png');
   end
end

function paths()
   if windows then
     windows.gameFolderPath.exites('$sdcard$/');
     game.getPathFolder.exites('data');
     game.getPathFiles.exites('data/$roomFile$.lua');
     game.getPathFolder.exites('data/game');
     game.getPathFiles.exites('data/game/$gameFile$.lua');
     game.getPathFolder.exites('libraries');
     game.getPathFiles.exites('libraries/$libFile$.lua');
     game.getPathFolder.exites('images');
     game.getPathFiles.exites('images/$imageFile$.png');
     game.getPathFiles.exites('images/$animatedImageFile$.xml');
     game.getPathFolder.exites('images/$folderName$');
     game.getPathFiles.exites('$folderName$/$imageFile$.png');
     game.getPathFiles.exites('$folderName$/$animatedImageFile$.xml');
     game.getPathFolder.exites('sounds');
     game.getPathFiles.exites('sounds/$soundFile$.ogg');
     game.getPathFolder.exites('music');
     game.getPathFiles.exites('music/$musicFile$.mp3');
     game.getPathFolder.exites('fonts');
     game.getPathFiles.exites('fonts/$fontFile$.ttf');
     game.getPathFolder.exites('videos');
     game.getPathFiles.exites('videos/$videoFile$.mp4');
   end
   if android then
     android.apk.gameFolderPath('assets/');
     androidApkDirSetting();
     androidApkDirFilesPaths();
     androidApkGetPathDirFiles();
     androidApkSdirPath();
     androidApkLoadPathsFiles();
     game.getPathFolder.exites('data');
     game.getPathFiles.exites('data/$roomFile$.lua');
     game.getPathFolder.exites('data/game');
     game.getPathFiles.exites('data/game/$gameFile$.lua');
     game.getPathFolder.exites('libraries');
     game.getPathFiles.exites('libraries/$libFile$.lua');
     game.getPathFolder.exites('images');
     game.getPathFiles.exites('images/$imageFile$.png');
     game.getPathFiles.exites('images/$animatedImageFile$.xml');
     game.getPathFolder.exites('images/$folderName$');
     game.getPathFiles.exites('$folderName$/$imageFile$.png');
     game.getPathFiles.exites('$folderName$/$animatedImageFile$.xml');
     game.getPathFolder.exites('sounds');
     game.getPathFiles.exites('sounds/$soundFile$.ogg');
     game.getPathFolder.exites('music');
     game.getPathFiles.exites('music/$musicFile$.mp3');
     game.getPathFolder.exites('fonts');
     game.getPathFiles.exites('fonts/$fontFile$.ttf');
     game.getPathFolder.exites('videos');
     game.getPathFiles.exites('videos/$videoFile$.mp4');
     game.getPathFiles.exites('videos/$webVideoFile$.html');
   end
end

function onUpdate()
   paths.Update();
   modPaths.Update();
end

function pathFromSource(path)
   source.getPath(path);
   getFile(sourceCode(get(path)));
   get.pathSource(get(path)));
   return sourceCode.pathFile(path).getContent(pathFromSource(path)).returnSource(getContentFromSource(path));
end

function modConfig()
   config = configMod();
   mod.getPath($keyMod$);
   config.zipPath($gameFolor$ + '/' + 'mod' + '/' + $keyMod$ + $keyLibs$);
   mod.previewConfig();
   modSystem.configClass('mod' + '/' + folderClass);
   classMod.keyConfig();
end
