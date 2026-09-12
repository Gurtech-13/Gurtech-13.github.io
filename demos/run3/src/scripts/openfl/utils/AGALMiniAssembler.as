package openfl.utils
{
   import §!!0§.§!!O§;
   import §!!0§.§#!!§;
   import §!!0§.§%!<§;
   import §!!0§.§+I§;
   import §!!0§.§4k§;
   import §!!0§.§6!^§;
   import §!!0§.§66§;
   import §!!0§.§8c§;
   import flash.Boot;
   import haxe.§=!U§;
   import haxe.Log;
   import haxe.ds.StringMap;
   
   public class AGALMiniAssembler
   {
      
      public var r:StringMap = new StringMap();
      
      public var cur:§+I§ = new §+I§();
      
      public function AGALMiniAssembler()
      {
      }
      
      public function §9[§(param1:String) : int
      {
         if(param1 == "")
         {
            return 228;
         }
         var _loc2_:* = {
            "x":0,
            "y":1,
            "z":2,
            "w":3
         };
         var _loc3_:int = 0;
         if(param1.charAt(0) != ".")
         {
            Boot.lastError = new Error();
            throw "Missing . for swizzle";
         }
         if(param1.length > 1)
         {
            _loc3_ |= Reflect.field(_loc2_,param1.charAt(1));
         }
         if(param1.length > 2)
         {
            _loc3_ |= Reflect.field(_loc2_,param1.charAt(2)) << 2;
         }
         else
         {
            _loc3_ |= (_loc3_ & 3) << 2;
         }
         if(param1.length > 3)
         {
            _loc3_ |= Reflect.field(_loc2_,param1.charAt(3)) << 4;
         }
         else
         {
            _loc3_ |= (_loc3_ & 0x0C) << 2;
         }
         if(param1.length > 4)
         {
            _loc3_ |= Reflect.field(_loc2_,param1.charAt(4)) << 6;
         }
         else
         {
            _loc3_ |= (_loc3_ & 0x30) << 2;
         }
         return _loc3_;
      }
      
      public function § !T§(param1:String = undefined) : uint
      {
         if(param1 == null)
         {
            return 15;
         }
         var _loc2_:int = 0;
         if(int(param1.indexOf("x")) != -1)
         {
            _loc2_ |= 1;
         }
         if(int(param1.indexOf("y")) != -1)
         {
            _loc2_ |= 2;
         }
         if(int(param1.indexOf("z")) != -1)
         {
            _loc2_ |= 4;
         }
         if(int(param1.indexOf("w")) != -1)
         {
            _loc2_ |= 8;
         }
         return _loc2_;
      }
      
      public function processLine(param1:String, param2:uint) : void
      {
         var _loc7_:int = 0;
         var _loc11_:* = null as §!!O§;
         var _loc3_:int = int(param1.indexOf("//"));
         if(_loc3_ != -1)
         {
            param1 = param1.substring(0,_loc3_);
         }
         var _loc4_:EReg = new EReg("^\\s+|\\s+$","g");
         param1 = _loc4_.replace(param1,"");
         if(param1.length <= 0)
         {
            return;
         }
         _loc4_ = new EReg("<.*>","g");
         var _loc5_:Boolean = _loc4_.match(param1);
         var _loc6_:Array = null;
         if(_loc5_)
         {
            _loc7_ = int(_loc4_.matchedPos().pos);
            _loc6_ = §,!?§(new EReg("([\\w\\.\\-\\+]+)","gi"),param1.substring(_loc7_));
            param1 = param1.substring(0,_loc7_);
         }
         var _loc8_:Array = §,!?§(new EReg("([\\w\\.\\+\\[\\]]+)","gi"),param1);
         if(int(_loc8_.length) == 0)
         {
            if(param1.length >= 3)
            {
               Log.trace("Warning: bad line " + ("" + param2) + ": " + param1,{
                  "fileName":"AGALMiniAssembler.hx",
                  "lineNumber":349,
                  "className":"openfl.utils.AGALMiniAssembler",
                  "methodName":"processLine"
               });
            }
            return;
         }
         var _loc9_:String = _loc8_[0];
         var _loc10_:String = _loc9_;
         if(_loc10_ == "endpart")
         {
            if(cur == null)
            {
               Boot.lastError = new Error();
               throw "Unexpected endpart";
            }
            cur.data.position = 0;
            cur = null;
            return;
         }
         if(_loc10_ == "part")
         {
            §"Z§(_loc8_[1],Std.parseInt(_loc8_[2]));
         }
         else
         {
            if(cur == null)
            {
               Log.trace("Warning: bad line " + ("" + param2) + ": " + param1 + " (Outside of any part definition)",{
                  "fileName":"AGALMiniAssembler.hx",
                  "lineNumber":380,
                  "className":"openfl.utils.AGALMiniAssembler",
                  "methodName":"processLine"
               });
               return;
            }
            if(cur.name == "comment")
            {
               return;
            }
            _loc11_ = §4k§.§'l§().get(_loc8_[0]);
            if(_loc11_ == null)
            {
               Boot.lastError = new Error();
               throw "Bad opcode " + _loc8_[0] + " " + ("" + param2) + ": " + param1;
            }
            §2!+§(cur,_loc11_.§[#§);
            _loc7_ = 1;
            if(_loc11_.§7!F§ != null && _loc11_.§7!F§ != "none")
            {
               if(!§@J§(cur,_loc8_[_loc7_++],_loc11_.§7!F§))
               {
                  Boot.lastError = new Error();
                  throw "Bad destination register " + _loc8_[_loc7_ - 1] + " " + ("" + param2) + ": " + param1;
               }
            }
            else
            {
               § =§(cur);
            }
            if(_loc11_.a != null && _loc11_.a.format != "none")
            {
               if(!§%!T§(cur,_loc8_[_loc7_++],_loc11_.a))
               {
                  Boot.lastError = new Error();
                  throw "Bad source register " + _loc8_[_loc7_ - 1] + " " + ("" + param2) + ": " + param1;
               }
            }
            else
            {
               §=!3§(cur);
            }
            if(_loc11_.b != null && _loc11_.b.format != "none")
            {
               if(_loc11_.b.format == "sampler")
               {
                  if(!emitSampler(cur,_loc8_[_loc7_++],_loc11_.b,_loc6_))
                  {
                     Boot.lastError = new Error();
                     throw "Bad sampler register " + _loc8_[_loc7_ - 1] + " " + ("" + param2) + ": " + param1;
                  }
               }
               else if(!§%!T§(cur,_loc8_[_loc7_++],_loc11_.b))
               {
                  Boot.lastError = new Error();
                  throw "Bad source register " + _loc8_[_loc7_ - 1] + " " + ("" + param2) + ": " + param1;
               }
            }
            else
            {
               §=!3§(cur);
            }
         }
      }
      
      public function §,!?§(param1:EReg, param2:String) : Array
      {
         var _loc4_:* = null as String;
         var _loc3_:Array = [];
         while(param1.match(param2))
         {
            _loc4_ = param1.matched(1);
            _loc3_.push(_loc4_);
            param2 = param1.matchedRight();
         }
         return _loc3_;
      }
      
      public function §6§(param1:EReg, param2:String, param3:uint = 0) : Array
      {
         var _loc8_:Boolean = false;
         var _loc9_:uint = 0;
         var _loc4_:Array = [];
         if(!param1.match(param2))
         {
            return _loc4_;
         }
         var _loc5_:uint = 0;
         var _loc6_:String = null;
         var _loc7_:Boolean = false;
         while(true)
         {
            if(!_loc7_)
            {
               var _temp_2:* = param1;
               _loc5_ = (_loc9_ = _loc5_) + 1;
               _loc6_ = _temp_2.matched(_loc9_);
               _loc8_ = _loc6_ != null;
            }
            else
            {
               _loc8_ = false;
            }
            if(!_loc8_)
            {
               break;
            }
            _loc4_.push(_loc6_);
            if(param3 != 0 && _loc5_ > param3)
            {
               _loc7_ = true;
            }
         }
         return _loc4_;
      }
      
      public function §=!3§(param1:Object) : void
      {
         param1.data.writeUnsignedInt(0);
         param1.data.writeUnsignedInt(0);
      }
      
      public function § =§(param1:§+I§) : void
      {
         param1.data.writeUnsignedInt(0);
      }
      
      public function §%!T§(param1:§+I§, param2:String, param3:§66§) : Boolean
      {
         var _loc5_:* = null as Array;
         var _loc6_:* = null as StringMap;
         var _loc7_:* = null as String;
         var _loc8_:* = null;
         var _loc9_:int = 0;
         var _loc10_:* = null as StringMap;
         var _loc11_:* = null as String;
         var _loc12_:* = null;
         var _loc4_:Array = §6§(new EReg("vc\\[(v[tcai])(\\d+)\\.([xyzw])([\\+\\-]\\d+)?\\](\\.[xyzw]{1,4})?","i"),param2,5);
         if(int(_loc4_.length) > 0)
         {
            _loc6_ = §6!^§.§'l§();
            _loc7_ = _loc4_[1];
            if((_loc7_ in StringMap.§+!#§ ? _loc6_.getReserved(_loc7_) : _loc6_.h[_loc7_]) == null)
            {
               return false;
            }
            _loc8_ = {
               "x":0,
               "y":1,
               "z":2,
               "w":3
            };
            _loc9_ = Std.parseInt(_loc4_[2]) | 0;
            _loc10_ = §6!^§.§'l§();
            _loc11_ = _loc4_[1];
            _loc12_ = {
               "num":_loc9_,
               "code":(_loc11_ in StringMap.§+!#§ ? _loc10_.getReserved(_loc11_) : _loc10_.h[_loc11_]).code,
               "swizzle":§9[§(_loc4_[5]),
               "select":Reflect.getProperty(_loc8_,_loc4_[3]),
               "offset":Std.parseInt(_loc4_[4]) | 0
            };
            param1.data.writeShort(_loc12_.num);
            param1.data.writeByte(_loc12_.offset);
            param1.data.writeByte(_loc12_.swizzle);
            param1.data.writeByte(1);
            param1.data.writeByte(_loc12_.code);
            param1.data.writeByte(_loc12_.select);
            param1.data.writeByte(128);
         }
         else
         {
            _loc5_ = §6§(new EReg("([fov]?[tpocidavs])(\\d*)(\\.[xyzw]{1,4})?","i"),param2,3);
            _loc6_ = §6!^§.§'l§();
            _loc7_ = _loc5_[1];
            if((_loc7_ in StringMap.§+!#§ ? _loc6_.getReserved(_loc7_) : _loc6_.h[_loc7_]) == null)
            {
               return false;
            }
            if(int(_loc5_.length) < 4)
            {
               _loc5_.push("");
            }
            _loc9_ = Std.parseInt(_loc5_[2]) | 0;
            _loc10_ = §6!^§.§'l§();
            _loc11_ = _loc5_[1];
            _loc8_ = {
               "num":_loc9_,
               "code":(_loc11_ in StringMap.§+!#§ ? _loc10_.getReserved(_loc11_) : _loc10_.h[_loc11_]).code,
               "swizzle":§9[§(_loc5_[3])
            };
            param1.data.writeShort(_loc8_.num);
            param1.data.writeByte(0);
            param1.data.writeByte(_loc8_.swizzle);
            param1.data.writeByte(_loc8_.code);
            param1.data.writeByte(0);
            param1.data.writeByte(0);
            param1.data.writeByte(0);
         }
         return true;
      }
      
      public function emitSampler(param1:§+I§, param2:String, param3:§66§, param4:Array) : Boolean
      {
         var _loc10_:int = 0;
         var _loc11_:* = null as StringMap;
         var _loc12_:* = null as String;
         var _loc13_:* = null as §%!<§;
         var _loc5_:Array = §6§(new EReg("fs(\\d*)","i"),param2,1);
         if(int(_loc5_.length) < 1)
         {
            return false;
         }
         param1.data.writeShort(Std.parseInt(_loc5_[1]));
         param1.data.writeByte(0);
         param1.data.writeByte(0);
         var _loc6_:uint = 5;
         var _loc7_:uint = 0;
         var _loc8_:int = 0;
         var _loc9_:int = int(param4.length);
         while(_loc8_ < _loc9_)
         {
            _loc10_ = _loc8_++;
            _loc11_ = §#!!§.§'l§();
            _loc12_ = param4[_loc10_].toLowerCase();
            _loc13_ = _loc12_ in StringMap.§+!#§ ? _loc11_.getReserved(_loc12_) : _loc11_.h[_loc12_];
            if(_loc13_ != null)
            {
               if((uint(_loc7_ >>> _loc13_.shift) & _loc13_.mask) != 0)
               {
                  Log.trace("Warning, duplicate sampler option",{
                     "fileName":"AGALMiniAssembler.hx",
                     "lineNumber":173,
                     "className":"openfl.utils.AGALMiniAssembler",
                     "methodName":"emitSampler"
                  });
               }
               _loc7_ |= _loc13_.mask << _loc13_.shift;
               _loc6_ &= ~(_loc13_.mask << _loc13_.shift);
               _loc6_ |= _loc13_.value << _loc13_.shift;
            }
         }
         param1.data.writeUnsignedInt(_loc6_);
         return true;
      }
      
      public function §2!+§(param1:§+I§, param2:uint) : void
      {
         param1.data.writeUnsignedInt(param2);
      }
      
      public function § !5§(param1:§+I§) : void
      {
         param1.data.writeByte(160);
         param1.data.writeUnsignedInt(param1.version);
         if(param1.version >= 16)
         {
            param1.data.writeByte(0);
         }
         param1.data.writeByte(161);
         var _loc2_:String = param1.name;
         var _loc3_:String = _loc2_;
         if(_loc3_ == "cpu")
         {
            param1.data.writeByte(2);
         }
         else if(_loc3_ == "fragment")
         {
            param1.data.writeByte(1);
         }
         else if(_loc3_ == "vertex")
         {
            param1.data.writeByte(0);
         }
         else
         {
            param1.data.writeByte(255);
         }
      }
      
      public function §@J§(param1:§+I§, param2:String, param3:String) : Boolean
      {
         var _loc7_:* = null as String;
         var _loc4_:Array = §6§(new EReg("([fov]?[tpocidavs])(\\d*)(\\.[xyzw]{1,4})?","i"),param2,3);
         var _loc5_:StringMap = §6!^§.§'l§();
         var _loc6_:String = _loc4_[1];
         if((_loc6_ in StringMap.§+!#§ ? _loc5_.getReserved(_loc6_) : _loc5_.h[_loc6_]) == null)
         {
            return false;
         }
         if(Std.parseInt(_loc4_[2]) == null)
         {
            _loc4_[2] = "0";
         }
         if(_loc4_[2] != null)
         {
            _loc7_ = _loc4_[2];
         }
         else
         {
            _loc7_ = "0";
         }
         var _loc10_:StringMap = §6!^§.§'l§();
         var _loc11_:String = _loc4_[1];
         var _loc9_:int = (_loc11_ in StringMap.§+!#§ ? _loc10_.getReserved(_loc11_) : _loc10_.h[_loc11_]).code;
         var _loc8_:uint = § !T§(_loc4_[3]);
         param1.data.writeShort(Std.parseInt(_loc7_));
         param1.data.writeByte(_loc8_);
         param1.data.writeByte(_loc9_);
         return true;
      }
      
      public function §=%§(param1:String, param2:String = undefined, param3:Object = undefined) : *
      {
         var _loc9_:int = 0;
         if(param3 == 0)
         {
            param3 = 1;
         }
         if(param2 != null)
         {
            §"Z§(param2,param3);
         }
         var _loc4_:EReg = new EReg("[\n\r]+","g");
         var _loc5_:Array = _loc4_.split(param1);
         var _loc7_:int = 0;
         var _loc8_:int = int(_loc5_.length);
         while(_loc7_ < _loc8_)
         {
            _loc9_ = _loc7_++;
            processLine(_loc5_[_loc9_],_loc9_);
         }
         return r;
      }
      
      public function §"Z§(param1:String, param2:int) : void
      {
         var _loc4_:* = null as StringMap;
         var _loc5_:* = null as §+I§;
         if(param2 == 0)
         {
            param2 = 1;
         }
         var _loc3_:StringMap = r;
         if(!(param1 in StringMap.§+!#§ ? _loc3_.existsReserved(param1) : param1 in _loc3_.h))
         {
            _loc4_ = r;
            _loc5_ = new §+I§(param1,param2);
            if(param1 in StringMap.§+!#§)
            {
               _loc4_.setReserved(param1,_loc5_);
            }
            else
            {
               _loc4_.h[param1] = _loc5_;
            }
            _loc4_ = r;
            § !5§(param1 in StringMap.§+!#§ ? _loc4_.getReserved(param1) : _loc4_.h[param1]);
         }
         else
         {
            _loc4_ = r;
            if((param1 in StringMap.§+!#§ ? _loc4_.getReserved(param1) : _loc4_.h[param1]).version != param2)
            {
               Boot.lastError = new Error();
               throw "Multiple versions for part " + param1;
            }
         }
         _loc4_ = r;
         cur = param1 in StringMap.§+!#§ ? _loc4_.getReserved(param1) : _loc4_.h[param1];
      }
   }
}

