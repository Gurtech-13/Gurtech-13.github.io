package lime.graphics.utils
{
   import §0y§.§">§;
   import §4!>§.§+!D§;
   import haxe.io.§=!%§;
   import lime.graphics.Image;
   import lime.math.Rectangle;
   import lime.utils.ArrayBufferView;
   
   public class ImageDataUtil
   {
      
      public function ImageDataUtil()
      {
      }
      
      public static function fillRect(param1:Image, param2:Rectangle, param3:int, param4:int) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:* = null as ArrayBufferView;
         var _loc19_:* = null as §=!%§;
         var _loc20_:int = 0;
         var _loc21_:Boolean = false;
         var _loc22_:uint = 0;
         switch(param4)
         {
            case 1:
               _loc6_ = param3;
               _loc7_ = 0;
               _loc8_ = _loc7_;
               _loc8_ = (_loc6_ >> 16 & 0xFF & 0xFF) << 24 | (_loc6_ >> 8 & 0xFF & 0xFF) << 16 | (_loc6_ & 0xFF & 0xFF) << 8 | _loc6_ >> 24 & 0xFF & 0xFF;
               _loc5_ = _loc8_;
               break;
            case 2:
               _loc6_ = param3;
               _loc7_ = 0;
               _loc8_ = _loc7_;
               _loc8_ = (_loc6_ >> 8 & 0xFF & 0xFF) << 24 | (_loc6_ >> 16 & 0xFF & 0xFF) << 16 | (_loc6_ >> 24 & 0xFF & 0xFF) << 8 | _loc6_ & 0xFF & 0xFF;
               _loc5_ = _loc8_;
               break;
            default:
               _loc5_ = param3;
         }
         if(!param1.get_transparent())
         {
            _loc5_ = (_loc5_ >> 24 & 0xFF & 0xFF) << 24 | (_loc5_ >> 16 & 0xFF & 0xFF) << 16 | (_loc5_ >> 8 & 0xFF & 0xFF) << 8 | 0xFF;
         }
         var _loc9_:ArrayBufferView = param1.buffer.data;
         if(_loc9_ == null)
         {
            return;
         }
         _loc6_ = param1.buffer.format;
         var _loc10_:Boolean = param1.buffer.premultiplied;
         var _loc11_:§+!D§ = new §+!D§(param1,param2);
         _loc8_ = 0;
         var _loc12_:int = _loc11_.height;
         while(_loc8_ < _loc12_)
         {
            _loc13_ = _loc8_++;
            _loc7_ = _loc11_.offset + _loc11_.§6!A§ * _loc13_;
            _loc14_ = 0;
            _loc15_ = _loc11_.width;
            while(_loc14_ < _loc15_)
            {
               _loc16_ = _loc14_++;
               _loc17_ = _loc7_ + _loc16_ * 4;
               if(_loc10_)
               {
                  if((_loc5_ & 0xFF) == 0)
                  {
                     if(_loc5_ != 0)
                     {
                        _loc5_ = 0;
                     }
                  }
                  else if((_loc5_ & 0xFF) != 255)
                  {
                     _loc18_ = §">§.§8>§;
                     _loc19_ = _loc18_.buffer;
                     _loc20_ = _loc18_.byteOffset + (_loc5_ & 0xFF) * 4;
                     _loc21_ = true;
                     §">§.a16 = int(_loc19_.b[_loc20_]) | int(_loc19_.b[_loc20_ + 1]) << 8 | int(_loc19_.b[_loc20_ + 2]) << 16 | int(_loc19_.b[_loc20_ + 3]) << 24;
                     _loc5_ = ((_loc5_ >> 24 & 0xFF) * §">§.a16 >> 16 & 0xFF) << 24 | ((_loc5_ >> 16 & 0xFF) * §">§.a16 >> 16 & 0xFF) << 16 | ((_loc5_ >> 8 & 0xFF) * §">§.a16 >> 16 & 0xFF) << 8 | _loc5_ & 0xFF & 0xFF;
                  }
               }
               switch(_loc6_)
               {
                  case 0:
                     _loc22_ = uint(_loc5_ >> 24 & 0xFF);
                     _loc9_.buffer.b[_loc9_.byteOffset + _loc17_] = _loc22_;
                     _loc22_ = uint(_loc5_ >> 16 & 0xFF);
                     _loc9_.buffer.b[_loc9_.byteOffset + (_loc17_ + 1)] = _loc22_;
                     _loc22_ = uint(_loc5_ >> 8 & 0xFF);
                     _loc9_.buffer.b[_loc9_.byteOffset + (_loc17_ + 2)] = _loc22_;
                     _loc22_ = uint(_loc5_ & 0xFF);
                     _loc9_.buffer.b[_loc9_.byteOffset + (_loc17_ + 3)] = _loc22_;
                     break;
                  case 1:
                     _loc22_ = uint(_loc5_ & 0xFF);
                     _loc9_.buffer.b[_loc9_.byteOffset + _loc17_] = _loc22_;
                     _loc22_ = uint(_loc5_ >> 24 & 0xFF);
                     _loc9_.buffer.b[_loc9_.byteOffset + (_loc17_ + 1)] = _loc22_;
                     _loc22_ = uint(_loc5_ >> 16 & 0xFF);
                     _loc9_.buffer.b[_loc9_.byteOffset + (_loc17_ + 2)] = _loc22_;
                     _loc22_ = uint(_loc5_ >> 8 & 0xFF);
                     _loc9_.buffer.b[_loc9_.byteOffset + (_loc17_ + 3)] = _loc22_;
                     break;
                  case 2:
                     _loc22_ = uint(_loc5_ >> 8 & 0xFF);
                     _loc9_.buffer.b[_loc9_.byteOffset + _loc17_] = _loc22_;
                     _loc22_ = uint(_loc5_ >> 16 & 0xFF);
                     _loc9_.buffer.b[_loc9_.byteOffset + (_loc17_ + 1)] = _loc22_;
                     _loc22_ = uint(_loc5_ >> 24 & 0xFF);
                     _loc9_.buffer.b[_loc9_.byteOffset + (_loc17_ + 2)] = _loc22_;
                     _loc22_ = uint(_loc5_ & 0xFF);
                     _loc9_.buffer.b[_loc9_.byteOffset + (_loc17_ + 3)] = _loc22_;
               }
            }
         }
         param1.dirty = true;
         ++param1.version;
      }
   }
}

