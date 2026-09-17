package §-!!§
{
   import §!!$§.§?y§;
   import §!]§.§4N§;
   import §%!Q§.§ !>§;
   import §%!Q§.§&r§;
   import §%!Q§.§'!]§;
   import §%!Q§.§>K§;
   import layout3d.§>N§;
   import scenes.Cutscenes;
   import scenes.MorningHypothesis5;
   import §>!O§.§;R§;
   import §[!P§.§`!W§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§38§;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.menu.§[!<§;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§2!;§;
   import flash.Boot;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import openfl.Assets;
   
   public class §2!B§
   {
      
      public function §2!B§()
      {
      }
      
      public static function §&!'§(param1:§38§) : Number
      {
         return 1;
      }
      
      public static function exists(param1:String) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            §§push("img/");
            if(!_loc3_)
            {
               §§push(§§pop() + param1);
               if(!_loc2_)
               {
                  break;
               }
            }
            §§push(§§pop());
            if(!_loc3_)
            {
               §§push(§§pop());
            }
            break;
         }
         param1 = §§pop();
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               if(_loc2_)
               {
                  while(true)
                  {
                     §§push(Assets.exists(param1,"IMAGE"));
                     if(_loc2_)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc3_)
                        {
                           break;
                        }
                     }
                     §§push(!§§pop());
                     if(_loc2_)
                     {
                        break;
                     }
                     break loop2;
                  }
                  if(!§§pop())
                  {
                     §§push(true);
                     break loop1;
                  }
               }
               §§push(Assets.cache.§[!W§(param1));
               if(!_loc3_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc2_)
                  {
                     break;
                  }
               }
               break loop1;
            }
            return §§pop();
         }
         return §§pop();
      }
      
      public static function getBitmapData(param1:String, param2:Boolean = true) : BitmapData
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         while(true)
         {
            §§push(Assets);
            §§push("img/");
            if(!_loc4_)
            {
               §§push(§§pop() + param1);
               if(!_loc5_)
               {
                  break;
               }
            }
            §§push(§§pop());
            break;
         }
         var _loc3_:BitmapData = §§pop().getBitmapData(§§pop(),param2);
         while(true)
         {
            if(!_loc4_)
            {
               if(_loc3_ != null)
               {
                  break;
               }
            }
            §§push(Assets);
            §§push("img/ldpi/");
            if(!_loc4_)
            {
               §§push(§§pop() + param1);
               if(!_loc4_)
               {
                  §§push(§§pop());
               }
            }
            _loc3_ = §§pop().getBitmapData(§§pop(),param2);
            if(_loc5_)
            {
               if(_loc3_ != null)
               {
                  break;
               }
            }
            §§push(Assets);
            §§push("img/mdpi/");
            if(_loc5_)
            {
               §§push(§§pop() + param1);
               if(_loc5_)
               {
                  §§push(§§pop());
               }
            }
            _loc3_ = §§pop().getBitmapData(§§pop(),param2);
            if(!_loc4_)
            {
               if(_loc3_ != null)
               {
                  break;
               }
            }
            §§push(Assets);
            §§push("img/hdpi/");
            if(_loc5_)
            {
               §§push(§§pop() + param1);
               if(_loc5_)
               {
                  §§push(§§pop());
               }
            }
            _loc3_ = §§pop().getBitmapData(§§pop(),param2);
            break;
         }
         return _loc3_;
      }
      
      public static function §83§(param1:String, param2:Object = undefined, param3:Object = undefined) : Bitmap
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(param2 == null)
               {
                  if(_loc6_)
                  {
                     break;
                  }
                  §§push(true);
                  if(!_loc5_)
                  {
                     break loop0;
                  }
                  param2 = §§pop();
               }
               if(param3 == null)
               {
                  break;
               }
               §§goto(addr0034);
            }
            §§push(true);
            break;
         }
         param3 = §§pop();
         var _loc4_:Bitmap = new Bitmap(§2!B§.getBitmapData(param1,param2));
         addr0034:
         while(true)
         {
            if(!_loc6_)
            {
               if(_loc4_.bitmapData == null)
               {
                  if(_loc5_)
                  {
                     addr0080:
                     Boot.lastError = new Error();
                     if(!_loc6_)
                     {
                        throw new ArgumentError(param1 + " is not a valid file name!");
                     }
                     break;
                  }
               }
               §2!B§.§4!?§(_loc4_,param3);
               break;
            }
            §§goto(addr0080);
         }
         return _loc4_;
      }
      
      public static function §4!?§(param1:Bitmap, param2:Object = undefined, param3:Object = undefined, param4:§&d§ = undefined) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc6_:* = null as § 7§;
         var _loc7_:* = null;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc8_)
               {
                  if(param2 == null)
                  {
                     if(!_loc8_)
                     {
                        break loop0;
                     }
                     param2 = true;
                  }
                  if(param3 != null)
                  {
                     break;
                  }
                  if(!_loc8_)
                  {
                     break loop0;
                  }
               }
               param3 = 1;
               break;
            }
            if(param4 == null)
            {
               break;
            }
            §§goto(addr005d);
         }
         param4 = §&d§.§1$§();
         addr005d:
         while(true)
         {
            §§push(§2!B§.§&!'§(param4.scale));
            if(_loc8_)
            {
               §§push(Number(§§pop()));
               if(!_loc8_)
               {
                  break;
               }
               §§push(§§pop() * param3);
               if(_loc9_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc5_:* = §§pop();
         while(true)
         {
            if(_loc8_)
            {
               param1.scaleX = _loc5_;
               if(_loc8_)
               {
                  param1.scaleY = _loc5_;
                  if(!_loc8_)
                  {
                     break;
                  }
               }
            }
            if(param2)
            {
               if(!_loc9_)
               {
                  break;
               }
               addr00ce:
               _loc6_ = new §?y§(param1);
               _loc7_ = param1.bitmapData.width * _loc5_;
               if(!_loc9_)
               {
                  while(true)
                  {
                     §§push(§&d§.§1$§());
                     §§push(_loc6_);
                     if(!_loc9_)
                     {
                        if(_loc7_ == null)
                        {
                           §§push(new §;R§(true));
                           break;
                        }
                     }
                     §§push(new §`!W§(true,_loc7_));
                     break;
                  }
                  §§pop().add(§§pop(),§§pop());
               }
               _loc6_ = new §?y§(param1);
               _loc7_ = param1.bitmapData.height * _loc5_;
               if(_loc8_)
               {
                  while(true)
                  {
                     §§push(§&d§.§1$§());
                     §§push(_loc6_);
                     if(!_loc9_)
                     {
                        if(_loc7_ == null)
                        {
                           §§push(new §;R§(false));
                           break;
                        }
                     }
                     §§push(new §`!W§(false,_loc7_));
                     break;
                  }
                  §§pop().add(§§pop(),§§pop());
               }
            }
            return;
         }
         §§push(_loc5_);
         if(!_loc9_)
         {
            §§push(§§pop() * 0.9);
            if(_loc8_)
            {
               §§push(Number(§§pop()));
            }
         }
         _loc5_ = §§pop();
         §§goto(addr00ce);
      }
   }
}

