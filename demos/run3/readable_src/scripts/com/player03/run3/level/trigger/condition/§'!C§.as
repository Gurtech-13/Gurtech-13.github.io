package com.player03.run3.level.trigger.condition
{
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §4!6§.§!!V§;
   import §4!6§.§=s§;
   import §4n§.§>!,§;
   import §>T§.§`C§;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.level.Level;
   import haxeutils.math.geom.Point3D;
   import nme3D.shader.§'H§;
   
   public class §'!C§ extends §+d§
   {
      
      public var §=]§:Number;
      
      public function §'!C§(param1:int)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc2_)
            {
               while(true)
               {
                  if(!§[L§)
                  {
                     if(_loc3_)
                     {
                        break loop0;
                     }
                     §[L§ = function(param1:Level):int
                     {
                        var _temp_1:* = true;
                        var _loc3_:Boolean = false;
                        var _loc4_:Boolean = _temp_1;
                        §§push(§=]§);
                        if(!_loc3_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        loop0:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!_loc3_)
                              {
                                 §§push(_loc2_);
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 if(§§pop() != §§pop())
                                 {
                                    count = 0;
                                    §=]§ = param1.characters[0].§"!$§;
                                    break loop0;
                                 }
                                 §§push(§=]§);
                              }
                              §§push(param1.characters[0].§"!$§);
                              break;
                           }
                           if(§§pop() != §§pop())
                           {
                              §§push(§§findproperty(count));
                              §§push(count);
                              if(_loc4_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              §§pop().count = §§pop();
                              §=]§ = param1.characters[0].§"!$§;
                           }
                           break;
                        }
                        return count;
                     };
                     if(_loc3_)
                     {
                        break;
                     }
                  }
                  super(param1);
                  if(!_loc3_)
                  {
                     break;
                  }
                  break loop0;
               }
            }
            §=]§ = Number(Math.NaN);
            break;
         }
      }
      
      override public function §7q§(param1:Level) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               super.§7q§(param1);
               if(!_loc3_)
               {
                  break;
               }
            }
            §=]§ = Number(Math.NaN);
            break;
         }
      }
   }
}

