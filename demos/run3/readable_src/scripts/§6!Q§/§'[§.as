package §6!Q§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §-!!§.§2!B§;
   import §1!a§.§,!7§;
   import §>T§.§-n§;
   import §>T§.§[C§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.run3.character.CharacterDef;
   import flash.Boot;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Point3D;
   
   public class §'[§
   {
      
      public function §'[§()
      {
      }
      
      public static function §7!@§(param1:CharacterDef, param2:Array, param3:Object = undefined) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc5_:* = null as String;
         var _loc6_:* = null;
         §§push(0);
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc8_)
         {
            loop0:
            while(_loc4_ < int(param2.length))
            {
               §§push(param2[_loc4_]);
               if(!_loc8_)
               {
                  §§push(§§pop());
               }
               _loc5_ = §§pop();
               if(!_loc8_)
               {
                  _loc4_++;
               }
               _loc6_ = param3;
               if(!_loc8_)
               {
                  §§push(false);
                  if(_loc7_)
                  {
                     if(_loc6_ == null)
                     {
                        while(true)
                        {
                           if(_loc7_)
                           {
                              §§pop();
                              if(_loc8_)
                              {
                                 continue loop0;
                              }
                              §§push(StringTools.§#E§(_loc5_,"-"));
                              if(!_loc7_)
                              {
                                 break;
                              }
                              §§push(Boolean(§§pop()));
                              if(!_loc7_)
                              {
                                 break;
                              }
                           }
                           §§push(Boolean(§§pop()));
                           break;
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc8_)
                     {
                        continue;
                     }
                     §§push(Number(§'!E§.§]Y§(_loc5_.length)));
                     if(_loc7_)
                     {
                        §§push(§§pop() / 2);
                     }
                     _loc6_ = §§pop();
                  }
                  §'!E§.§@!A§().§>!W§(_loc5_,_loc6_,§'[§.§83§(param1));
               }
            }
         }
      }
      
      public static function §83§(param1:CharacterDef) : Bitmap
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(param1.§+! §);
         if(!_loc5_)
         {
            §§push(!§§pop());
         }
         if(§§pop())
         {
            return null;
         }
         var _loc2_:Bitmap = new Bitmap(§2!B§.getBitmapData(param1.§,!-§()));
         while(true)
         {
            §§push(§2!B§.§&!'§(§&d§.§;`§().scale));
            if(!_loc5_)
            {
               §§push(Number(§§pop()));
               if(!_loc4_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc4_)
            {
               §§push(_loc3_);
               if(!_loc5_)
               {
                  §§push(0.5);
                  if(_loc4_)
                  {
                     §§push(§§pop() * §&d§.§;`§().scale.y);
                  }
                  §§push(§§pop() * §§pop());
                  if(!_loc5_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               _loc3_ = §§pop();
               if(_loc4_)
               {
                  _loc2_.scaleX = _loc3_;
                  if(_loc5_)
                  {
                     break;
                  }
                  _loc2_.scaleY = _loc3_;
                  if(_loc5_)
                  {
                     break;
                  }
               }
            }
            _loc2_.y = _loc2_.height * -0.05;
            break;
         }
         return _loc2_;
      }
   }
}

