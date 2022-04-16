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

function onPress()
   if Press A then
     browersUrlViewOpen('url')
   end
   if Press B then
     setRoom('menu')
   end
end

function onCreate()
   bg = create.sprite(0,0,'menu')
   bg.setObjectScale(2.3,2.3)
   credits = create.text(0,0,{'credits.text'},'sans')
   icon = create.sprite(-30,0,{'credits.icon'})
   title = create.text(0,30,{'credits.title'})
end

function credits()
   ['game coder']
   ['CXY','cxy','hey,Im cxy./n Im the game coder','https://b23.tv/tR4KcUU']
end
