function sprite()
   makeSprite(getFrames + fileName, x, y);
   modSprite.new(x, y);
   luaSprite.add();
   sprite.color = nil;
   sprite.size = nil,nil;
   sprite.scale = nil,nil;
   sprite.scrollFactor = nil,nil;
   sprite.camera = nil;
   return sprite;
end

function spriteGroup()
   makeSpriteGroup(getFrames + fileName, x, y);
   modSpriteGroup.new(x, y);
   group.addLuaSprite();
   luaSpriteGroup.add();
   spriteGroup.color = nil;
   spriteGroup.size = nil,nil;
   spriteGroup.scale = nil,nil;
   spriteGroup.scrollFactor = nil,nil;
   spriteGroup.camera = nil;
   spriteGroup.imagesIn(spriteImages);
   return spriteGroup;
end

function spriteScale():sprite
   getSprite.scaleSet(sprite.scale);
   return true;
end

function spriteSize():sprite
   getSprite.sizeSet(sprite.size);
   return true;
end

function spriteGroupScale():group
   getSpriteGroup.scaleSet(spriteGroup.scale);
   return true;
end

function spriteGroupScize():group
   getSpriteGroup.sizeSet(spriteGroup.size);
   return true;
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
