package com.player03.run3.save
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §>T§.§!=§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.purchase.§"!>§;
   import flash.Boot;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import unitsystem.§7o§;
   
   public class §2!,§
   {
      
      public function §2!,§()
      {
      }
      
      public static function §^P§(param1:String, param2:String = undefined) : String
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc4_:* = null as ByteArray;
         var _loc5_:* = null as ByteArray;
         var _loc6_:* = null;
         try
         {
            _loc4_ = new ByteArray();
            if(!_loc7_)
            {
               _loc4_.length = 0;
            }
            _loc5_ = _loc4_;
            while(true)
            {
               if(_loc8_)
               {
                  _loc5_.writeUTF(param1);
                  if(!_loc8_)
                  {
                     break;
                  }
               }
               _loc5_.compress();
               break;
            }
            §§push(§"!>§.§>Q§(_loc5_));
            if(!_loc7_)
            {
               return §§pop();
            }
         }
         catch(_loc_e_:*)
         {
            if(param2 == null)
            {
               param2 = "JSON";
            }
            §7o§.§3t§("Error compressing " + param2 + ": " + Std.string(_loc6_),{
               "fileName":"Base64JSON.hx",
               "lineNumber":26,
               "className":"com.player03.run3.save.Base64JSON",
               "methodName":"toBase64"
            });
            return param1;
         }
      }
      
      public static function §-e§(param1:String, param2:String = undefined) : String
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc4_:* = null as ByteArray;
         var _loc5_:* = null;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc7_)
               {
                  §§push(true);
                  if(!_loc6_)
                  {
                     break;
                  }
                  if(int(param1.charCodeAt(0)) == 123)
                  {
                     break;
                  }
                  if(!_loc6_)
                  {
                     break;
                  }
                  §§pop();
                  if(_loc7_)
                  {
                     break loop0;
                  }
               }
               §§push(param1);
               if(!_loc7_)
               {
                  §§push(int(§§pop().charCodeAt(0)) == 91);
                  if(!_loc7_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  break;
               }
               §§goto(addr006e);
            }
            if(§§pop())
            {
               break;
            }
            try
            {
               _loc4_ = §"!>§.§#!`§(param1);
               if(!_loc7_)
               {
                  _loc4_.uncompress();
                  if(!_loc7_)
                  {
                     _loc4_.position = 2;
                  }
               }
               return _loc4_.readUTFBytes(_loc4_.bytesAvailable);
            }
            catch(_loc_e_:*)
            {
               if(param2 == null)
               {
                  param2 = "data";
               }
               §7o§.§3t§("Error uncompressing " + param2 + ": " + Std.string(_loc5_),{
                  "fileName":"Base64JSON.hx",
                  "lineNumber":53,
                  "className":"com.player03.run3.save.Base64JSON",
                  "methodName":"toJSON"
               });
               return null;
            }
         }
         addr006e:
         return param1;
      }
   }
}

