function videoHandler()
   cameraVisible('cameraHUD');
   cameraVisible('cameraGame');
   cameraVisible('cameraControls');
   timer.stop();
   fightState.disbale();
   if windows then
     load.video('mp4');
     load.mp3.vidsound('mp3');
     getPath.video('system');
     video.file.exites('mp4');
     getPath.video('sound');
     get.video.sound('mp3');
     play.mp3.vidsound('mp3');
     play.mp4.video('mp4');
     mp4Video.openPlay();
     paths.video('mp4');
     paths.sound('mp3');
     windows.pathVideo(file);
   end
   if playEnd then
     mp4.video.close();
     mp4.play.remove();
     mp4.videoEnd('mp4');
     mp3.vidsoundEnd('mp3');
   end
   if android then --android can load mp4 video
     load.video('mp4');
     load.mp3.vidsound('mp3');
     getPath.video('system');
     video.file.exites('mp4');
     getPath.video('sound');
     get.video.sound('mp3');
     play.mp3.vidsound('mp3');
     play.mp4.video('mp4');
     mp4Video.openPlay();
     paths.video('mp4');
     paths.sound('mp3');
     android.fixPathVideo();
     videoView.playVideo(Tools.getFileUrl(name));
     hxCodec.mp4Video.play();
     androidMp4Video();
   end
   if playEnd then
     mp4.video.close();
     mp4.play.remove();
     mp4.videoEnd('mp4');
     mp3.vidsoundEnd('mp3');
     videoView.endVideo(Tools.getFileUrl(name));
   end
   if liunx or mac then
     load.video('mp4');
     liunxSystem.flxGetPathVideo();
     macSystem.flxGetPathVideo();
     load.mp3.vidsound('mp3');
     get.video.sound('mp3');
     liunx.system.getPath('video');
     liunx.system.exites('video');
     liunx.system.getPath('sound');
     liunx.system.exites('sound');
     liunx.system.getPath('html');
     liunx.system.exites('html');
     mac.system.getPath('video');
     mac.system.exites('video');
     mac.system.getPath('sound');
     mac.system.exites('sound');
     mac.system.getPath('html');
     mac.system.exites('html');
     load.html('path');
     ['video.mp4'].load();
     ['vidsound.mp3'].load();
     reload('html');
     html.video();
     html.vidsound();
     html.open();
     play.html('video.mp4');
     play.html('sound.mp3');
     url.html.video();
     url.playVideo('html.url');
     url.playVidsound('html.url');
     html.stuff();
   end
     if playEnd then
       html.close();
       html.video.remove();
       html.vidsound.remove();
       play.html.video('end');
       url.html.video('end');
       html.videoEnd('html.url');
       html.vidsoundEnd('html.url');
       html.stuff();
   end
end

function htmlStuff()
   html.android.playVideo();
   html.video.bgColor('FlxG.Black,getColorFromRGB["0,0,0"]');
   getHtml.video();
   androidSystem.fixGetPathHtml();
   hxCodec.playVideo(getVideoFile);
   if playEnd then
     liunx.flxHtmlClear();
     mac.flxHtmlClear();
     html.videoColor.remove();
     videoHtmlEnd.clear();
     html.bg.remove();
     endVideoHtmlBuild();
     webView.fixEndVideo();
     webHtml.endVideo();
     hxCodec.endVideo();
   end
end

function androidMp4Video()
   paths.getPathVideoFile();
   video.videoViewPlay();
   mp4.videoPlay();
   hxCodec.playVideo('file'):
   android.videoWidth = 1270;
   android.videoHeight = 720;
   androidVideoBG.colorSet('FlxG.Black,getColorFromRGB["0,0,0"]');
end

function playVideo()
   video = new.videoHandler();
   videoHandler.pathVideo('file');
   videoHandler.playVideo('video', file);
end

function onUpdate()
   if video.playEnd then
     videoHandler.videoEnd();
     hxCodec.videoEnd();
   end
end
