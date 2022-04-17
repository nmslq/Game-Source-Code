controls.load()
shaders.camera()
item = 0

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
   if input.keyboard 'A' or press 'A' == then
     browersUrlViewOpen('getUrl')
   end
   if input.keyboard 'B' or press 'B' == then
     setRoom('menu')
   end
   if input.keyboard 'up' or press 'up' == then
     change.credits(up)
   end
   if input.keyboard 'down' or press 'down' == then
     change.credits(down)
   end
end

function changeCredits()
   if up then
     set(get(item) + 1)
   end
   if down then
     set(get(item) - 1)
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
