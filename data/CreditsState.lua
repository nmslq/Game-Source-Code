controls.load()
shaders.camera()
flxAndroidControls()
item = 0

function inRoom()
   nameRoom('credits')
end

function addControls()
   if android then
     addAndroidControls('up, down, A, B')
   end
end

function onUpdate()
   controls.Update()
   shaders.Update()
   flxAndroidControls.Update()
end

function controlsInput()
   if getControlsInput == 'A' then
     browersUrlViewOpen('getUrl')
   end
   if getControlsInput == 'B' then
     setRoom('menu')
   end
   if getControlsInput == 'up' then
     change.credits('up')
   end
   if getControlsInput == 'down' then
     change.credits('down')
   end
end

function changeCredits()
   if 'up' then
     item = item + 1
   end
   if 'down' then
     item = item - 1
   end
end

function onCreate()
   bg = create.sprite(0,0,'menu')
   bg.setObjectScale(2.3,2.3)
   credits = create.text(0,0,{'credits.text'})
   setObjectFont('credits', 'sans')
   icon = create.sprite(-30,0,{'credits.icon'})
   title = create.text(0,30,{'credits.title'})
end

function credits()
   ['game coder']
   ['CXY','cxy','hey,Im cxy./n Im the game coder','https://b23.tv/tR4KcUU']
end
