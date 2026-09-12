package com.player03.run3.purchase
{
   import §^Q§.§!p§;
   import flash.utils.ByteArray;
   import haxe.io.§=!%§;
   
   public class §"!>§
   {
      
      public static var init__:Boolean;
      
      public static var CHARS:Array;
      
      public static var §;!?§:§=!%§;
      
      public function §"!>§()
      {
      }
      
      public static function pad(param1:String) : String
      {
         var _temp_1:* = false;
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            §§push(param1.length);
            §§push(3);
            if(_loc3_)
            {
               §§push(--§§pop() + 1);
            }
            §§push(int(§§pop() % §§pop()));
            §§push(0);
            if(!_loc2_)
            {
               §§push((§§pop() * 50 * 92 + 1 + 1 - 1) * 17 * 60);
            }
            if(§§pop() == §§pop())
            {
               break;
            }
            param1 += "=";
         }
         return param1;
      }
      
      public static function §,v§(param1:String) : String
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(param1.length);
         §§push(2);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 54 + 119 + 68 - 99);
         }
         if(§§pop() < §§pop())
         {
            if(param1 == "=")
            {
               return "";
            }
            return param1;
         }
         §§push(param1);
         §§push(param1.length);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 97 + 22 - 106 - 1));
         }
         §§push(int(§§pop().charCodeAt(§§pop() - §§pop())));
         §§push(61);
         if(_loc2_)
         {
            §§push((-(-(§§pop() - 113) - 83) + 49) * 73 + 39);
         }
         if(§§pop() == §§pop())
         {
            §§push(param1);
            §§push(param1.length);
            §§push(2);
            if(!_loc3_)
            {
               §§push((-((§§pop() - 1) * 93 + 9) - 49) * 92);
            }
            §§push(int(§§pop().charCodeAt(§§pop() - §§pop())));
            §§push(61);
            if(_loc2_)
            {
               §§push((§§pop() + 1 - 38 - 22 + 1 - 98) * 17);
            }
            if(§§pop() == §§pop())
            {
               §§push(param1);
               §§push(0);
               if(_loc2_)
               {
                  §§push(--§§pop() * 110 + 1);
               }
               §§push(param1.length);
               §§push(2);
               if(_loc2_)
               {
                  §§push(-(§§pop() - 1 - 1) - 1);
               }
               return §§pop().substr(§§pop(),§§pop() - §§pop());
            }
            §§push(param1);
            §§push(0);
            if(_loc2_)
            {
               §§push(-(§§pop() - 78) + 1 + 53 + 29);
            }
            §§push(param1.length);
            §§push(1);
            if(_loc2_)
            {
               §§push(-(§§pop() - 1 - 54) - 114 + 56);
            }
            return §§pop().substr(§§pop(),§§pop() - §§pop());
         }
         return param1;
      }
      
      public static function §>Q§(param1:ByteArray) : String
      {
         var _temp_1:* = false;
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = _temp_1;
         §§push(0);
         if(_loc13_)
         {
            §§push(§§pop() * 75 * 47 - 1);
         }
         var _loc9_:* = §§pop();
         §§push(0);
         if(!_loc12_)
         {
            §§push(-(-(§§pop() + 16 + 62) + 1 - 107 + 47));
         }
         var _loc10_:* = §§pop();
         §§push(0);
         if(!_loc12_)
         {
            §§push(§§pop() - 1 - 1 + 73 + 107 + 48);
         }
         var _loc11_:uint = §§pop();
         var _loc2_:String = param1.endian;
         param1.endian = "bigEndian";
         var _loc3_:String = "";
         §§push(0);
         if(_loc13_)
         {
            §§push(-§§pop() + 63 + 94);
         }
         var _loc4_:int = §§pop();
         §§push(0);
         if(!_loc12_)
         {
            §§push(-§§pop() + 1 + 1);
         }
         var _loc5_:int = §§pop();
         §§push(63);
         if(_loc13_)
         {
            §§push((§§pop() + 37 - 1) * 52 - 1 + 102);
         }
         var _loc6_:int = §§pop();
         §§push(param1);
         §§push(0);
         if(!_loc12_)
         {
            §§push(§§pop() + 1 - 40 + 1 + 59 - 1 - 108);
         }
         §§pop().position = §§pop();
         §§push(0);
         if(_loc13_)
         {
            §§push(§§pop() + 96 + 1 - 1);
         }
         var _loc7_:int = §§pop();
         var _loc8_:int = §!p§.§1R§(param1);
         while(_loc7_ < _loc8_)
         {
            _loc9_ = _loc7_++;
            §§push(_loc4_);
            §§push(8);
            if(!_loc12_)
            {
               §§push((§§pop() + 1 - 1 - 1 + 1) * 22);
            }
            _loc10_ = §§pop() << §§pop();
            _loc11_ = uint(param1.readUnsignedByte());
            _loc4_ = _loc11_ | _loc10_;
            §§push(_loc5_);
            §§push(8);
            if(_loc13_)
            {
               §§push(--(§§pop() - 86 + 1) * 74 - 87);
            }
            _loc5_ = §§pop() + §§pop();
            while(true)
            {
               §§push(_loc5_);
               §§push(6);
               if(_loc13_)
               {
                  §§push(-(-§§pop() + 0 - 13));
               }
               if(§§pop() < §§pop())
               {
                  break;
               }
               §§push(_loc5_);
               §§push(6);
               if(_loc13_)
               {
                  §§push(§§pop() + 39 + 1 + 1 - 36);
               }
               _loc5_ = §§pop() - §§pop();
               _loc3_ += String.fromCharCode(int(§"!>§.§;!?§.b[_loc4_ >> _loc5_ & _loc6_]));
            }
         }
         §§push(_loc5_);
         §§push(0);
         if(_loc13_)
         {
            §§push(§§pop() * 42 * 92 + 1 + 1 - 1 - 1);
         }
         if(§§pop() > §§pop())
         {
            §§push(_loc4_);
            §§push(6);
            if(!_loc12_)
            {
               §§push(-(§§pop() * 107 - 1 - 1 + 3 - 115));
            }
            _loc4_ = §§pop() << §§pop() - _loc5_;
            _loc3_ += String.fromCharCode(int(§"!>§.§;!?§.b[_loc4_ & _loc6_]));
         }
         param1.endian = _loc2_;
         return §"!>§.pad(_loc3_);
      }
      
      public static function §#!`§(param1:String) : ByteArray
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         §§push(0);
         if(!_loc12_)
         {
            §§push((§§pop() + 16 + 1 + 1 - 106 + 48) * 6 - 1);
         }
         var _loc9_:* = §§pop();
         §§push(0);
         if(_loc11_)
         {
            §§push(((§§pop() - 113 - 25) * 25 - 55) * 65);
         }
         var _loc10_:* = §§pop();
         param1 = §"!>§.§,v§(param1);
         var _loc2_:ByteArray = new ByteArray();
         §§push(_loc2_);
         §§push(0);
         if(_loc11_)
         {
            §§push(§§pop() - 1 + 34 - 1 - 18 + 1 - 88 - 1);
         }
         §§pop().length = §§pop();
         var _loc3_:ByteArray = _loc2_;
         _loc3_.endian = "bigEndian";
         §§push(0);
         if(!_loc12_)
         {
            §§push(-((-(§§pop() * 74) - 78) * 104 + 1));
         }
         var _loc4_:int = §§pop();
         §§push(0);
         if(!_loc12_)
         {
            §§push(-(§§pop() - 9 + 1 + 1) * 66);
         }
         var _loc5_:int = §§pop();
         §§push(255);
         if(_loc11_)
         {
            §§push(-(--§§pop() - 1 + 1 - 21) - 82);
         }
         var _loc6_:int = §§pop();
         §§push(0);
         if(_loc11_)
         {
            §§push((§§pop() + 96) * 12 * 41);
         }
         var _loc7_:int = §§pop();
         var _loc8_:int = int(param1.length);
         while(_loc7_ < _loc8_)
         {
            _loc9_ = _loc7_++;
            _loc10_ = int(§"!>§.CHARS[int(param1.charCodeAt(_loc9_))]);
            §§push(_loc10_);
            §§push(0);
            if(!_loc12_)
            {
               §§push(-((-§§pop() - 1) * 109) + 49 - 1);
            }
            if(§§pop() >= §§pop())
            {
               §§push(_loc4_);
               §§push(6);
               if(!_loc12_)
               {
                  §§push(§§pop() - 1 - 1 - 1 + 12 - 1);
               }
               _loc4_ = §§pop() << §§pop() | _loc10_;
               §§push(_loc5_);
               §§push(6);
               if(!_loc12_)
               {
                  §§push((§§pop() - 88 - 1 + 1 + 9) * 5 * 46 * 75);
               }
               _loc5_ = §§pop() + §§pop();
               while(true)
               {
                  §§push(_loc5_);
                  §§push(8);
                  if(_loc11_)
                  {
                     §§push(-(-(§§pop() - 71) + 1 + 1 - 1) - 1);
                  }
                  if(§§pop() < §§pop())
                  {
                     break;
                  }
                  §§push(_loc5_);
                  §§push(8);
                  if(!_loc12_)
                  {
                     §§push((§§pop() - 1) * 4 + 1 - 90);
                  }
                  _loc5_ = §§pop() - §§pop();
                  _loc3_.writeByte(_loc4_ >> _loc5_ & _loc6_);
               }
            }
         }
         §§push(_loc5_);
         §§push(0);
         if(!_loc12_)
         {
            §§push((§§pop() + 107 + 116) * 37 * 9 + 96);
         }
         if(§§pop() > §§pop())
         {
            §§push(_loc4_);
            §§push(8);
            if(_loc11_)
            {
               §§push(§§pop() * 0 - 40 + 1 + 1 + 1);
            }
            _loc4_ = §§pop() << §§pop() - _loc5_;
            _loc3_.writeByte(_loc4_ & _loc6_);
         }
         §§push(_loc3_);
         §§push(0);
         if(!_loc12_)
         {
            §§push(-(§§pop() + 117 - 1 - 46 - 1 + 119));
         }
         §§pop().position = §§pop();
         _loc3_.endian = "littleEndian";
         return _loc3_;
      }
   }
}

