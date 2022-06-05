function playVideo(videoFile)
   CameraHUD.hide()
   CameraGame.hide()
   CameraControls.hide()
   timer.stop()
   fight.disbale()
   if windows then
     load.video('mp4')
     load.mp3.vidsound('mp3')
     getPath.video('system')
     video.file.exites('mp4')
     getPath.video('sound')
     get.video.sound('mp3')
     play.mp3.vidsound('mp3')
     play.mp4.video('mp4')
     mp4.video.open()
     flx.video('mp4')
     flx.sound('mp3')
     windows.fixPathVideo()
   end
   if playEnd then
     mp4.video.close()
     mp4.play.remove()
     flx.video.end('mp4')
     flx.vidsound.end('mp3')
   end
   if android then --android can load mp4 video
     load.video('mp4')
     load.mp3.vidsound('mp3')
     getPath.video('system')
     video.file.exites('mp4')
     getPath.video('sound')
     get.video.sound('mp3')
     play.mp3.vidsound('mp3')
     play.mp4.video('mp4')
     mp4.video.open()
     flx.video('mp4')
     flx.sound('mp3')
     android.fixPathVideo()
     videoView.playVideo(AndroidTools.getFileUrl(name));
     androidMp4Video()
   end
   if playEnd then
     mp4.video.close()
     mp4.play.remove()
     flx.video.end('mp4')
     flx.vidsound.end('mp3')
     videoView.endVideo(AndroidTools.getFileUrl(name));
   end
   if liunx or mac then
     load.video('mp4')
     liunxSystem.flxGetPathVideo()
     macSystem.flxGetPathVideo()
     load.mp3.vidsound('mp3')
     get.video.sound('mp3')
     liunx.system.getPath('video')
     liunx.system.exites('video')
     liunx.system.getPath('sound')
     liunx.system.exites('sound')
     liunx.system.getPath('html')
     liunx.system.exites('html')
     mac.system.getPath('video')
     mac.system.exites('video')
     mac.system.getPath('sound')
     mac.system.exites('sound')
     mac.system.getPath('html')
     mac.system.exites('html')
     load.html(html)
     'video'.mp4 to 'html'.load()
     'vidsound'.mp3 to 'html'.load()
     reload('html')
     html.video()
     html.vidsound()
     html.open()
     play.html('video.mp4')
     play.html('sound.mp3')
     url.html.video()
     flx.video('html.url')
     flx.vidsound('html.url')
     html.stuff()
     end
     if playEnd then
       html.close()
       html.video.remove()
       html.vidsound.remove()
       play.html.video('end')
       url.html.video('end')
       flx.video.end('html.url')
       flx.vidsound.end('html.url')
       html.stuff()
   end
end

function htmlStuff()
   html.android.playVideo()
   html.video.bg(null)
   html.video.bgColor('black')
   getHtml.video()
   androidSystem.fixGetPathHtml()
   webView.playVideo(MacTools.getFileUrl(name), true);
   webView.playVideo(LiunxTools.getFileUrl(name), true);
   if playEnd then
     android.flxHtmlClear()
     html.color.remove()
     flx.videoHtmlEnd()
     html.bg.remove()
     endVideoHtmlAndroid()
     webView.fixEndVideo()
     webHtml.FlxG.endVideo()
     webView.endVideo(MacTools.getFileUrl(name), true);
     webView.endVideo(LiunxTools.getFileUrl(name), true); 
   end
end

function androidMp4Video()
   flx.getPathVideoFile()
   FlxG.videoViewPlay()
   mp4.FlxG.videoPlay()
   videoView.FlxG.playVideo('file')
   android.videoWidth(1270)
   android.videoHeight(720)
   androidVideoBG.colorSet(FlxG.black[0,0,0])
end
