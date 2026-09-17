package com.player03.run3.menu
{
   import §%!Q§.§ !>§;
   import §%!Q§.§6!a§;
   import §%!Q§.§>K§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import scenes.§+Z§;
   import §4!6§.§!!V§;
   import §4!6§.§'!Y§;
   import §4!6§.§=s§;
   import §4n§.Achievement;
   import §6!Q§.§]u§;
   import §8!0§.§2_§;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.character.§]!W§;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.§59§;
   import com.player03.run3.level.trigger.§<!§;
   import com.player03.run3.level.trigger.BeatLevelAndSave;
   import com.player03.run3.save.§2!;§;
   import com.player03.run3.save.§]k§;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.§,T§;
   import nme3D.model.Model;
   import nme3D.shader.§'H§;
   import nme3D.shader.§<!9§;
   import nme3D.shader.vertex.PositionColorVertex;
   
   public class §[!a§ extends §<#§
   {
      
      public var character:CharacterDef;
      
      public function §[!a§(param1:CharacterDef, param2:String, param3:Number, param4:String = undefined)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(_loc6_)
         {
            character = param1;
            if(!_loc5_)
            {
               loop0:
               while(true)
               {
                  while(true)
                  {
                     §§push(param4);
                     if(_loc6_)
                     {
                        if(§§pop() != null)
                        {
                           break;
                        }
                        if(!_loc6_)
                        {
                           break loop0;
                        }
                        §§push(param1.name);
                        if(_loc6_)
                        {
                           §§push(§§pop());
                        }
                     }
                     param4 = §§pop();
                     if(!_loc5_)
                     {
                        break;
                     }
                     break loop0;
                  }
                  §§push(this);
                  §§push(param1.§4H§());
                  if(!_loc5_)
                  {
                     §§push(int(§§pop()));
                  }
                  §§push(param4);
                  §§push(param2);
                  §§push(param1.§?!F§);
                  §§push(null);
                  §§push(param3);
                  §§push(param1.§,!-§());
                  if(_loc6_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().super(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                  break;
               }
            }
         }
         break loop0;
      }
      
      override public function reset() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = 0;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(!_loc2_)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(false);
                        §§push(false);
                        if(_loc3_)
                        {
                           if(character.§[P§ == null)
                           {
                              break loop2;
                           }
                           if(!_loc3_)
                           {
                              break loop2;
                           }
                           §§pop();
                           if(!_loc3_)
                           {
                              break;
                           }
                           §§push(int(character.§[P§.§@D§.indexOf(character,0)) > 0);
                           if(!_loc3_)
                           {
                              break loop2;
                           }
                        }
                        §§push(Boolean(§§pop()));
                        break loop2;
                     }
                     §§push(Boolean(§§pop()));
                     if(!_loc2_)
                     {
                        §§push(!§§pop());
                        if(_loc3_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                     }
                     §§goto(addr009e);
                  }
                  addr009e:
                  if(§§pop())
                  {
                     §§pop();
                     §§push(character.§[P§.§@D§[0].§<!,§());
                     break loop3;
                  }
                  if(§§pop())
                  {
                     visible = false;
                     if(_loc3_)
                     {
                     }
                     break loop0;
                  }
                  while(true)
                  {
                     §§push(character.§4H§());
                     if(!_loc2_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc2_)
                        {
                           §§push(int(§§pop()));
                           if(_loc2_)
                           {
                              break;
                           }
                        }
                        _loc1_ = §§pop();
                        if(_loc2_)
                        {
                           break loop1;
                        }
                        §§push(§3"§());
                        if(!_loc3_)
                        {
                           break;
                        }
                     }
                     §§push(int(§§pop()));
                     break;
                  }
                  if(§§pop() == _loc1_)
                  {
                     break;
                  }
                  if(!_loc3_)
                  {
                     break loop0;
                  }
               }
               § J§ = _loc1_;
               if(!_loc3_)
               {
                  break loop0;
               }
               §§push(§§findproperty(§-!6§));
               §§push(Std);
               §§push(§3"§());
               if(!_loc2_)
               {
                  §§push(int(§§pop()));
               }
               §§push(§§pop().string(§§pop()));
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§pop().§-!6§(§§pop());
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr013e);
            }
            visible = true;
            if(_loc3_)
            {
               break;
            }
            §§goto(addr013e);
         }
         super.reset();
         addr013e:
      }
      
      override public function §?!F§() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(character.§<!,§());
         if(!_loc1_)
         {
            return Boolean(§§pop());
         }
      }
      
      override public function §2!Z§(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            §§push(!§[A§.buttonMode);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  character.§2!Z§();
                  if(_loc2_)
                  {
                     break;
                  }
               }
               §§push(§?!F§());
               if(!_loc2_)
               {
                  §§push(Boolean(§§pop()));
               }
            }
            if(§§pop())
            {
               §=!K§.visible = true;
               §[A§.visible = false;
               break;
            }
            §]u§.§@!A§().§5B§(§#C§.§@!A§());
            break;
         }
      }
   }
}

