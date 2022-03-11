timer.load()

function playVideo()
   hud.hide()
   game.hide()
   timer.stop()
   if not Android then
   load.video(mp4)
   load.mp3.vidsound(mp3)
   get.video.sound(mp3)
   play.mp3.vidsound(mp3)
   play.mp4.video(mp4)
   mp4.video.open()
   if play end then
   mp4.video.close()
   end
   if Android then --android can't load mp4 video
     load.video(mp4)
     load.mp3.vidsound(mp3)
     get.video.sound(mp3)
     load.html(html)
     video.mp4 to html.load()
     vidsound.mp3 to html.load()
     reload(html)
     html.video()
     html.vidsound()
     html.open()
     play.html(video<mp4>,vidsound<mp3>)
        if Android play end then
          html.close()
          htvideo.remove()
          htvidsound.remove()
          play.html.video(end)
        end
end