package §4n§
{
   import §!!"§.§,X§;
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §-!!§.§2!B§;
   import §-!!§.§`h§;
   import §>T§.§!=§;
   import §`!7§.§`!3§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Save;
   import com.player03.run3.character.§4S§;
   import com.player03.run3.character.§@I§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.§2N§;
   import com.player03.run3.level.§>W§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.save.§]k§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   
   public class §!L§ extends Bitmap
   {
      
      public var achievement:Achievement;
      
      public function §!L§(param1:Achievement, param2:Object = undefined)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc3_)
            {
               if(param2 == null)
               {
                  if(_loc4_)
                  {
                     break;
                  }
                  param2 = 1;
               }
               super(null);
               if(_loc3_)
               {
                  §?!L§(param1);
                  if(_loc4_)
                  {
                     break;
                  }
               }
            }
            §2!B§.§4!?§(this,true,param2);
            break;
         }
      }
      
      public function §?!L§(param1:Achievement) : Achievement
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               achievement = param1;
               if(_loc2_)
               {
                  break;
               }
            }
            bitmapData = §2!B§.getBitmapData(achievement.§`T§ == null || !§2!B§.exists(achievement.§`T§) ? "achievement/Crown.png" : achievement.§`T§);
            if(_loc3_)
            {
               reset();
            }
            break;
         }
         return achievement;
      }
      
      public function reset() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc4_)
               {
                  §§push(false);
                  if(!_loc4_)
                  {
                     break;
                  }
                  if(filters == null)
                  {
                     break;
                  }
                  if(!_loc4_)
                  {
                     break loop0;
                  }
                  §§pop();
               }
               §§push(int(filters.length) > 0);
               if(_loc4_)
               {
                  break loop0;
               }
               break;
            }
            §§goto(addr0055);
         }
         §§push(Boolean(§§pop()));
         if(!_loc5_)
         {
            break loop1;
         }
         addr0055:
         var _loc1_:* = §§pop();
         var _loc2_:§]k§ = achievement.§3!X§;
         §§push(Boolean(Save.§@!A§().get(_loc2_.§=-§,Boolean(_loc2_.§ -§))));
         if(_loc4_)
         {
            §§push(!§§pop());
            if(!_loc5_)
            {
               §§push(Boolean(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(false);
                        §§push(_loc1_);
                        if(_loc4_)
                        {
                           §§push(!§§pop());
                           if(!_loc5_)
                           {
                              if(§§pop())
                              {
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 §§pop();
                                 if(_loc5_)
                                 {
                                    break loop5;
                                 }
                                 §§push(_loc3_);
                                 if(_loc5_)
                                 {
                                    break loop4;
                                 }
                                 §§push(Boolean(§§pop()));
                                 if(_loc5_)
                                 {
                                    break loop3;
                                 }
                              }
                              if(§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    filters = §`h§.§6c§;
                                    alpha = 0.4;
                                 }
                                 break loop2;
                              }
                              §§push(false);
                              §§push(_loc1_);
                           }
                        }
                        if(!§§pop())
                        {
                           break;
                        }
                        if(!_loc5_)
                        {
                           break loop4;
                        }
                        §§goto(addr0106);
                     }
                     §§goto(addr0107);
                  }
                  §§goto(addr010b);
               }
               §§pop();
               if(!_loc5_)
               {
                  §§push(_loc3_);
                  break;
               }
               break loop2;
            }
            addr0106:
            addr0107:
            if(!§§pop())
            {
               addr010b:
               filters = null;
               if(_loc4_)
               {
                  alpha = 1;
               }
            }
            break;
         }
      }
   }
}

