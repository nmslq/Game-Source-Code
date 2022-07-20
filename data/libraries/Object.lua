function sprite()
   makeSprite(tag, getFrames + fileName, x, y);
   modSprite.new(x, y);
   sprite.newAdd(tag);
   luaSprite.add();
   sprite.image = nil;
   sprite.color = nil;
   sprite.tag = nil;
   sprite.size = nil,nil;
   sprite.scale = nil,nil;
   sprite.scrollFactor = nil,nil;
   sprite.camera = nil;
   return sprite;
end

function spriteGroup()
   makeSpriteGroup(tag, x, y);
   modSpriteGroup.new(x, y);
   group.addLuaSprite();
   group.addLuaText();
   group.addLuaButton();
   spriteGroup.newAdd(tag);
   luaSpriteGroup.add();
   spriteGroup.color = nil;
   spriteGroup.tag = nil;
   spriteGroup.size = nil,nil;
   spriteGroup.scale = nil,nil;
   spriteGroup.scrollFactor = nil,nil;
   spriteGroup.camera = nil;
   spriteGroup.imagesIn(spriteImages);
   spriteGroup.textIn(text);
   spriteGroup.buttonIn(button);
   return spriteGroup;
end

function text()
   makeText(tag, text, font, x, y, width);
   modText.new(x, y, width);
   text.newAdd(tag);
   luaText.add();
   font.paths('fonts/' + font);
   text.text = nil;
   text.color = nil;
   text.font = nil;
   text.tag = nil;
   text.scrollFactor = nil,nil;
   text.camera = nil;
   text.width = nil;
   return text;
end

function button()
   makeButton(tag, getFrames + sprite, frames);
   modButton.new(x, y, width);
   button.newAdd(tag);
   luaButton.add();
   button.sprite = nil;
   button.frames = nil;
   button.color = nil;
   button.tag = nil;
   button.scrollFactor = nil,nil;
   button.camera = nil;
   button.width = nil;
   return button;
end

local spriteScale = {
   function spriteScale()
     getSprite.scaleSet(sprite.scale(x, y));
     return true;
   end

   function spriteSize()
     getSprite.sizeSet(sprite.size(width, height));
     return true;
   end
}

local spriteGroupScale = {
   function spriteGroupScale()
     getSpriteGroup.scaleSet(spriteGroup.scale(x, y));
     return true;
   end

   function spriteGroupSize()
     getSpriteGroup.sizeSet(spriteGroup.size(width, height));
     return true;
   end
}

local textWidth = {
   function textWidth()
     getText.widthSet(text.width(int));
     return true;
   end
}

function createButton()
   button = createAnimatedSprite(buttonSprite,x,y);
   button.addFrame(1,2);
   if windows then
      getButton.input();
      mouseInputGet();
      button.playFrame = 1;
   else
      button.playFrame = 0;
   end
   if android then
      getButton.input();
      touchInputGet();
      button.playFrame = 1;
   else
      button.playFrame = 0;
   end
end

function buttonInput()
   controls.buttonInputGetTest();
   if windows then
     getMouseX = getIn(getControlsScaleX);
     getControlsScaleX.getTest('mouseX');
     mouseX.UpdateX();
     mouseX.getTestControlsScaleX.scaleX();
        for (mouseX in controlsInputX) then
          buttonInput();
          inputAndroid = true;
          reUpdate.mouseX();
          reUpdate.controlsInputX.base();
        end
     getMouseY = getIn(getControlsScaleY);
     getControlsScaleX.getTest('mouseY');
     mouseY.UpdateY();
     mouseY.getTestControlsScaleY.scaleY();
        for (mouseY in controlsInputY) then
          buttonInput();
          inputAndroid = true;
          reUpdate.mouseY();
          reUpdate.controlsInputY.base();
        end
     for (getMouseXY in controlsMaxInputXY) then
       buttonInput();
       buttonInput.mouse();
       controls.input = true;
     else
       buttonInput = false;
       controls.input = false;
     end
   if android then
     getAndroidTouchX = getIn(getControlsScaleX);
     getControlsScaleX.getTest('androidTouchX');
     androidTouchX.UpdateX();
     androidTouchX.getTestControlsScaleX.scaleX();
        for (androidTouchX in controlsInputX) then
          buttonInput();
          inputAndroid = true;
          actionInput();
          reUpdate.mouseX();
          reUpdate.controlsInputX.base();
        end
     getAndroidTouchY = getIn(getControlsScaleY);
     getControlsScaleX.getTest('androidTouchY');
     androidTouchY.UpdateY();
     androidTouchY.getTestControlsScaleY.scaleY();
        for (androidTouchY in controlsInputY) then
          buttonInput();
          inputAndroid = true;
          reUpdate.mouseY();
          actionInput();
          reUpdate.controlsInputY.base();
        end
    for (getAndroidTouchXY in controlsMaxInputXY) then
       buttonInput();
       buttonInput.touch();
       androidVpadCheck();
       controlsInputCheck();
       actionAddDoButton();
       controls.input = true;
     else
       buttonInput = false;
       controlsInputCheck();
       controls.input = false;
      end
   end
end

function getTag()
   return getObject.tagName(tag);
end

local color = {
   function colorHex()
     getLuaObject.setColorFromHex(color);
     colorHex.getFromLua();
     getColorFromHex(objectColor);
     return colorHex;
   end

   function colorRGB()
     getLuaObject.setColorFromRGB(color);
     colorRGB.getFromLua();
     getColorFromRGB(objectColor);
     return colorRGB;
   end
}

function getFrames()
   return path.fileGetSparrowAtlas('images/');
end
