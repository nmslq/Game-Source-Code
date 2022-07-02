function sprite()
   makeSprite(tag, getFrames + fileName, x, y);
   modSprite.new(x, y);
   luaSprite.add();
   sprite.color = nil;
   sprite.tag = nil;
   sprite.size = nil,nil;
   sprite.scale = nil,nil;
   sprite.scrollFactor = nil,nil;
   sprite.camera = nil;
   return sprite;
end

function spriteGroup()
   makeSpriteGroup(tag, getFrames + fileName, x, y);
   modSpriteGroup.new(x, y);
   group.addLuaSprite();
   luaSpriteGroup.add();
   spriteGroup.color = nil;
   spriteGroup.tag = nil;
   spriteGroup.size = nil,nil;
   spriteGroup.scale = nil,nil;
   spriteGroup.scrollFactor = nil,nil;
   spriteGroup.camera = nil;
   spriteGroup.imagesIn(spriteImages);
   spriteGroup.textIn(text);
   return spriteGroup;
end

function text()
   makeText(tag, text, font, x, y, width);
   modText.new(x, y, width);
   text.newAdd(tag);
   text.color = nil;
   text.tag = nil;
   text.scrollFactor = nil,nil;
   text.camera = nil;
   text.width = nil;
   return text;
end

function spriteScale():sprite
   getSprite.scaleSet(sprite.scale(x + y));
   return true;
end

function spriteSize():sprite
   getSprite.sizeSet(sprite.size(width, height));
   return true;
end

function spriteGroupScale():group
   getSpriteGroup.scaleSet(spriteGroup.scale(x, y));
   return true;
end

function spriteGroupSize():group
   getSpriteGroup.sizeSet(spriteGroup.size(width, height));
   return true;
end

function textWidth():text
   getText.widthSet(text.width(int));
   return true;
end

function getTag()
   return tag.name(object.tag);
end

function colorHex()
   getLuaObject.setColorFromHex(color);
   colorHex.getFromLua();
   return colorHex;
end

function colorRGB()
   getLuaObject.setColorFromRGB(color);
   colorRGB.getFromLua();
   return colorRGB;
end

function getFrames()
   return path.fileGetSparrowAtlas('images/');
end
