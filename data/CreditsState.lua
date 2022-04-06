controls.load()
shaders.camera()

function inRoom()
   nameRoom('credits')
end

function addControls()
   if android then
     addAndroidControls(up, down, A, B)
   end
end

function onUpdate()
   controls.Update()
   shaders.Update()
end

function onCreate()
   bg = create.bg.sprite(0,0,'menu')
   bg.scale(2.3,2.3)
   credits = create.credits.text(0,0,{'credits.text'},'sans')
   icon = create.icon.sprite(-30,0,{'credits.icon'})
   title = create.title.text(0,30,{'credits.title'})
end

function credits()
   ['game coder']
   ['CXY','cxy','hey,Im cxy./n Im the game coder','https://b23.tv/tR4KcUU']
end
