package com.player03.run3.level.trigger.condition
{
   import §!!$§.§ 6§;
   import §"!M§.§!!P§;
   import §%!Q§.§ !N§;
   import §%!Q§.§+#§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §%G§.§ m§;
   import §+!1§.§'!b§;
   import §+!1§.§[!9§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §-d§.§!!-§;
   import §-d§.§-!'§;
   import §-d§.§1M§;
   import §2!"§.§1e§;
   import §3!b§.BoatRide;
   import §3!b§.Cutscenes;
   import §3!b§.LizardFellAsleep;
   import §3!b§.TheGap;
   import §4!6§.§!!V§;
   import §4!6§.§=s§;
   import §6!Q§.§'!E§;
   import §<?§.§#!7§;
   import §>!O§.§#!6§;
   import §>T§.§"=§;
   import §>T§.§0!E§;
   import §>T§.§@o§;
   import §>T§.§[C§;
   import §>T§.§`C§;
   import §[^§.§5p§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§38§;
   import com.player03.run3.character.§4S§;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.character.Climber;
   import com.player03.run3.character.§]r§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§]k§;
   import flash.Boot;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   import motion.actuators.GenericActuator;
   import nme3D.§1![§;
   import nme3D.model.§6U§;
   import nme3D.model.§7v§;
   import nme3D.model.Model;
   import nme3D.shader.§'H§;
   import nme3D.shader.§=A§;
   import unitsystem.§7o§;
   
   public class §@!J§
   {
      
      public static var init__:Boolean;
      
      public static var §?1§:§#!G§;
      
      public static var §8Q§:§#!G§;
      
      public function §@!J§()
      {
      }
      
      public static function §'<§(param1:int) : §#!G§
      {
         return new §"!,§(param1);
      }
      
      public static function §^!'§(param1:int) : §#!G§
      {
         return new §"!,§(param1,true);
      }
      
      public static function §?-§(param1:int) : §#!G§
      {
         return new §"!,§(param1,false,true);
      }
      
      public static function §3!4§(param1:int) : §#!G§
      {
         return new §"!,§(param1,true,true);
      }
      
      public static function §,!I§() : §#!G§
      {
         return §@!J§.§3!M§(0);
      }
      
      public static function §3!M§(param1:int) : §#!G§
      {
         return new §6![§(param1);
      }
      
      public static function §0!Q§(param1:int) : §#!G§
      {
         return new §>,§(param1);
      }
      
      public static function §`<§(param1:int) : §#!G§
      {
         return new §&!&§(param1);
      }
      
      public static function §#?§(param1:int) : §#!G§
      {
         return new §+u§(param1);
      }
      
      public static function ability2UsedAtMost(param1:int) : §#!G§
      {
         return new Ability2UsedAtMost(param1);
      }
      
      public static function ability2UsedAtLeast(param1:int) : §#!G§
      {
         return new Ability2UsedAtLeast(param1);
      }
      
      public static function §-!C§(param1:int) : §#!G§
      {
         return new §`5§(param1);
      }
      
      public static function §%!X§(param1:int) : §#!G§
      {
         return new §5U§(param1);
      }
      
      public static function §8S§() : §#!G§
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(§@!J§.§8Q§ == null)
         {
            if(_loc1_)
            {
               §@!J§.§8Q§ = §@!J§.§9P§(0);
            }
         }
         return §@!J§.§8Q§;
      }
      
      public static function §@&§(param1:int) : §#!G§
      {
         return new §=o§(param1,function(param1:§ !W§):int
         {
            return param1.characters[0].§73§.tilesDislodged;
         });
      }
      
      public static function §8!S§(param1:Number) : §#!G§
      {
         var ruinedTileType:int;
         var crumblingTileType:int;
         var percent:Number;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               percent = param1;
               if(!_loc2_)
               {
                  crumblingTileType = int(§"=§.§,n§.indexOf("crumbling"));
                  if(_loc2_)
                  {
                     break;
                  }
               }
            }
            ruinedTileType = int(§"=§.§,n§.indexOf("ruined"));
            break;
         }
         return new §#!G§(function(param1:§ !W§):Number
         {
            var _temp_1:* = true;
            var _loc8_:Boolean = false;
            var _loc9_:Boolean = _temp_1;
            var _loc6_:* = 0;
            var _loc7_:* = null as §[C§;
            var _loc2_:TunnelSection = param1.characters[0].§73§;
            §§push(0);
            if(!_loc8_)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(0);
            if(_loc9_)
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(int(_loc2_.terrain.length));
            if(_loc9_)
            {
               §§push(int(§§pop()));
            }
            var _loc5_:* = §§pop();
            loop1:
            while(true)
            {
               if(!_loc8_)
               {
                  loop0:
                  while(true)
                  {
                     §§push(_loc4_);
                     if(_loc8_)
                     {
                        break loop1;
                     }
                     if(§§pop() < _loc5_)
                     {
                        while(true)
                        {
                           §§push(_loc4_);
                           if(!_loc8_)
                           {
                              _loc4_++;
                              if(_loc8_)
                              {
                                 break;
                              }
                           }
                           §§push(int(§§pop()));
                           if(_loc9_)
                           {
                              _loc6_ = §§pop();
                              loop3:
                              while(true)
                              {
                                 if(!_loc8_)
                                 {
                                    § L§.low = 948729;
                                    if(!_loc9_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(false);
                                 if(_loc9_)
                                 {
                                    if(_loc6_ >= 0)
                                    {
                                       if(!_loc8_)
                                       {
                                          §§pop();
                                          while(true)
                                          {
                                             if(!_loc8_)
                                             {
                                                break loop3;
                                             }
                                             addr00b6:
                                             §§push(_loc2_.terrain[_loc6_]);
                                             break;
                                          }
                                          addr00c7:
                                          _loc7_ = §§pop();
                                          if(_loc9_)
                                          {
                                             §§push(false);
                                             §§push(false);
                                             if(!_loc8_)
                                             {
                                                if(_loc7_ != null)
                                                {
                                                   if(_loc9_)
                                                   {
                                                      §§pop();
                                                      §§push(_loc7_.§@!B§ == null);
                                                      if(_loc9_)
                                                      {
                                                         §§push(!§§pop());
                                                         if(_loc9_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             if(§§pop())
                                             {
                                                §§pop();
                                                loop5:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         §§push(true);
                                                         if(_loc7_.§@p§.§<T§ == crumblingTileType)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc8_)
                                                         {
                                                            break loop5;
                                                         }
                                                         §§pop();
                                                         if(_loc8_)
                                                         {
                                                            continue loop0;
                                                         }
                                                      }
                                                      §§push(_loc7_.§@p§.§<T§ == ruinedTileType);
                                                      break;
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                   break;
                                                }
                                             }
                                             break loop5;
                                          }
                                          _loc3_++;
                                          continue loop0;
                                       }
                                    }
                                    addr00b2:
                                    if(§§pop())
                                    {
                                       §§goto(addr00b6);
                                    }
                                    else
                                    {
                                       §§push(null);
                                    }
                                    §§goto(addr00c7);
                                 }
                                 addr00b1:
                                 §§goto(addr00b2);
                              }
                              §§push(_loc6_);
                              §§push(Boolean(§§pop()));
                           }
                           break;
                        }
                        §§push(§§pop() < int(_loc2_.terrain.length));
                        if(!_loc8_)
                        {
                           §§goto(addr00b1);
                        }
                        §§goto(addr00b2);
                     }
                  }
               }
               §§push(_loc2_.tilesDislodged);
               break;
            }
            §§push(percent);
            if(!_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            return §§pop() / §§pop();
         });
      }
      
      public static function §9P§(param1:int) : §#!G§
      {
         return new §+d§(param1,function(param1:§ !W§):int
         {
            return param1.characters[0].§73§.tilesDislodged;
         });
      }
      
      public static function §9o§(param1:Number) : §#!G§
      {
         var ruinedTileType:int;
         var crumblingTileType:int;
         var percent:Number;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               percent = param1;
               if(_loc3_)
               {
                  break;
               }
            }
            crumblingTileType = int(§"=§.§,n§.indexOf("crumbling"));
            if(!_loc3_)
            {
               ruinedTileType = int(§"=§.§,n§.indexOf("ruined"));
            }
            break;
         }
         return new §,!8§(function(param1:§ !W§):Number
         {
            var _temp_1:* = true;
            var _loc8_:Boolean = false;
            var _loc9_:Boolean = _temp_1;
            var _loc6_:* = 0;
            var _loc7_:* = null as §[C§;
            var _loc2_:TunnelSection = param1.characters[0].§73§;
            §§push(0);
            if(_loc9_)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(0);
            if(!_loc8_)
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(int(_loc2_.terrain.length));
            if(!_loc8_)
            {
               §§push(int(§§pop()));
            }
            var _loc5_:* = §§pop();
            while(true)
            {
               if(!_loc8_)
               {
                  loop0:
                  while(true)
                  {
                     §§push(_loc4_);
                     if(!_loc9_)
                     {
                        break;
                     }
                     if(§§pop() >= _loc5_)
                     {
                        if(_loc9_)
                        {
                           §§push(_loc2_.tilesDislodged);
                           break;
                        }
                     }
                     else
                     {
                        loop2:
                        while(true)
                        {
                           §§push(_loc4_);
                           if(!_loc8_)
                           {
                              _loc4_++;
                              if(!_loc8_)
                              {
                                 §§push(int(§§pop()));
                                 if(!_loc9_)
                                 {
                                    break;
                                 }
                              }
                           }
                           _loc6_ = §§pop();
                           loop3:
                           while(true)
                           {
                              loop4:
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(!_loc8_)
                                    {
                                       § L§.low = 948729;
                                       if(_loc9_)
                                       {
                                          §§push(false);
                                          if(_loc8_)
                                          {
                                             break loop4;
                                          }
                                          if(_loc6_ < 0)
                                          {
                                             break;
                                          }
                                          if(!_loc9_)
                                          {
                                             break loop4;
                                          }
                                          §§pop();
                                          if(!_loc9_)
                                          {
                                             break loop3;
                                          }
                                       }
                                    }
                                    §§push(_loc6_);
                                    break loop2;
                                 }
                                 addr00af:
                                 if(§§pop())
                                 {
                                    break loop3;
                                 }
                                 §§goto(addr00c4);
                                 §§push(null);
                              }
                              §§push(Boolean(§§pop()));
                              break loop8;
                           }
                           addr00c4:
                           _loc7_ = _loc2_.terrain[_loc6_];
                           if(_loc9_)
                           {
                              while(true)
                              {
                                 §§push(false);
                                 §§push(false);
                                 if(!_loc8_)
                                 {
                                    if(_loc7_ == null)
                                    {
                                       break;
                                    }
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                 }
                                 §§pop();
                                 §§push(_loc7_.§@!B§ == null);
                                 if(_loc9_)
                                 {
                                    §§push(!§§pop());
                                    if(!_loc9_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(Boolean(§§pop()));
                                 break;
                              }
                              loop6:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                    if(!_loc9_)
                                    {
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       §§push(true);
                                       if(_loc9_)
                                       {
                                          if(_loc7_.§@p§.§<T§ == crumblingTileType)
                                          {
                                             break;
                                          }
                                          §§pop();
                                          if(_loc8_)
                                          {
                                             break loop6;
                                          }
                                          §§push(_loc7_.§@p§.§<T§ == ruinedTileType);
                                       }
                                       §§push(Boolean(§§pop()));
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc8_)
                                    {
                                       break;
                                    }
                                 }
                                 continue loop0;
                              }
                              _loc3_++;
                           }
                           continue loop0;
                        }
                        §§push(§§pop() < int(_loc2_.terrain.length));
                        if(!_loc8_)
                        {
                           break loop4;
                        }
                        §§goto(addr00af);
                     }
                  }
                  §§push(percent);
                  if(_loc9_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  if(§§pop() <= §§pop())
                  {
                     §§push(0);
                     break;
                  }
               }
               §§push(1);
               if(!_loc8_)
               {
                  return §§pop();
               }
               break;
            }
            return §§pop();
         });
      }
      
      public static function §2&§(param1:Object = undefined) : §#!G§
      {
         if(param1 == null)
         {
            param1 = 1;
         }
         return new §5f§(param1);
      }
      
      public static function §8B§() : §#!G§
      {
         return new §#!V§();
      }
      
      public static function §]L§(param1:int) : §#!G§
      {
         return new §'!C§(param1);
      }
      
      public static function §<!H§(param1:String) : §#!G§
      {
         var key:String;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            key = param1;
         }
         return new §1S§(function(param1:§ !W§):Number
         {
            var _temp_1:* = true;
            var _loc2_:Boolean = false;
            var _loc3_:Boolean = _temp_1;
            §§push(§7o§.controlScheme.§,h§(key));
            if(!_loc2_)
            {
               §§push(Boolean(§§pop()));
            }
            if(§§pop())
            {
               §§push(1);
               if(_loc3_)
               {
                  return §§pop();
               }
            }
            else
            {
               return 0;
            }
            return §§pop();
         });
      }
      
      public static function §+!&§() : §#!G§
      {
         return new §,!8§(function(param1:§ !W§):Number
         {
            var _temp_1:* = false;
            var _loc2_:Boolean = true;
            var _loc3_:Boolean = _temp_1;
            if(param1.characters[0].§4!Z§ != 0)
            {
               §§push(1);
               if(!_loc3_)
               {
                  return §§pop();
               }
            }
            else
            {
               return 0;
            }
            return §§pop();
         });
      }
      
      public static function §6z§() : §#!G§
      {
         return new §,!8§(function(param1:§ !W§):Number
         {
            var _temp_1:* = true;
            var _loc2_:Boolean = false;
            var _loc3_:Boolean = _temp_1;
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(false);
                  if(!_loc2_)
                  {
                     if(param1.characters[0].§#P§ != param1.unpausedTime)
                     {
                        break loop0;
                     }
                     if(_loc2_)
                     {
                        break loop0;
                     }
                     §§pop();
                     if(_loc2_)
                     {
                        break;
                     }
                     §§push(param1.characters[0].§;!C§.§ i§.§]!1§);
                     if(_loc2_)
                     {
                        break loop0;
                     }
                     §§push(!§§pop());
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                  }
                  §§push(Boolean(§§pop()));
                  break loop0;
               }
               §§push(1);
               if(!_loc2_)
               {
                  return §§pop();
               }
               §§goto(addr0056);
            }
            if(§§pop())
            {
               break loop1;
            }
            addr0056:
            return 0;
         });
      }
      
      public static function §^!1§() : §#!G§
      {
         return new §,!8§(function(param1:§ !W§):Number
         {
            var _temp_1:* = true;
            var _loc4_:Boolean = false;
            var _loc5_:Boolean = _temp_1;
            var _loc2_:* = false;
            var _loc3_:* = null as §6M§;
            loop0:
            while(true)
            {
               if(_loc5_)
               {
                  if(param1.unpausedTime <= 0.3)
                  {
                     §§push(false);
                     if(!_loc4_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     _loc2_ = §§pop();
                     break;
                  }
                  if(_loc4_)
                  {
                     break;
                  }
               }
               _loc3_ = param1.characters[0];
               if(!_loc5_)
               {
                  break;
               }
               §§push(_loc3_.level.unpausedTime - _loc3_.physicsData.§&!>§);
               if(!_loc4_)
               {
                  §§push(§§pop() > 0.167);
                  if(_loc5_)
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc4_)
                     {
                        _loc2_ = §§pop();
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              break loop0;
                           }
                           addr007a:
                           §§push(1);
                           if(!_loc4_)
                           {
                              return §§pop();
                           }
                           break;
                        }
                        §§goto(addr0086);
                     }
                  }
                  addr0076:
                  if(§§pop())
                  {
                     §§goto(addr007a);
                  }
                  else
                  {
                     §§push(0);
                  }
               }
               addr0086:
               return §§pop();
            }
            §§goto(addr0076);
         });
      }
      
      public static function §`!`§(param1:int) : §#!G§
      {
         var tileType:int;
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            tileType = param1;
         }
         var _loc2_:§#!G§ = new §#!G§(function(param1:§ !W§):Number
         {
            var _temp_1:* = false;
            var _loc5_:Boolean = true;
            var _loc6_:Boolean = _temp_1;
            var _loc4_:* = null as §6M§;
            §§push(0);
            if(!_loc6_)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            var _loc3_:Vector.<§6M§> = param1.characters;
            if(_loc5_)
            {
               loop0:
               while(_loc2_ < int(_loc3_.length))
               {
                  _loc4_ = _loc3_[_loc2_];
                  loop1:
                  while(true)
                  {
                     if(!_loc6_)
                     {
                        _loc2_++;
                        if(_loc6_)
                        {
                           break;
                        }
                     }
                     loop2:
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(false);
                           if(!_loc6_)
                           {
                              §§push(false);
                              if(_loc5_)
                              {
                                 if(_loc4_.§9!+§ != null)
                                 {
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          §§pop();
                                          if(_loc6_)
                                          {
                                             break loop3;
                                          }
                                          §§push(_loc4_.§#P§ == param1.unpausedTime);
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                       }
                                       §§push(Boolean(§§pop()));
                                       break;
                                    }
                                 }
                              }
                              if(!§§pop())
                              {
                                 break loop2;
                              }
                              if(!_loc5_)
                              {
                                 break loop2;
                              }
                           }
                           §§pop();
                           if(!_loc6_)
                           {
                              break loop1;
                           }
                           §§goto(addr00a6);
                        }
                        addr00a1:
                        §§push(Boolean(§§pop()));
                        break;
                     }
                     if(§§pop())
                     {
                        addr00a6:
                        return 1;
                     }
                     continue loop0;
                  }
                  §§push(_loc4_.§9!+§.§@p§.§<T§ == tileType);
                  if(_loc6_)
                  {
                     break loop2;
                  }
                  §§goto(addr00a1);
               }
            }
            return 0;
         });
         if(_loc3_)
         {
            §§push(_loc2_);
            §§push(_loc2_.flags);
            if(_loc3_)
            {
               §§push(§§pop() | 4);
            }
            §§pop().flags = §§pop();
         }
         return _loc2_;
      }
      
      public static function §@f§(param1:int) : §#!G§
      {
         var tileType:int;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            tileType = param1;
         }
         return new §,!8§(function(param1:§ !W§):Number
         {
            var _temp_1:* = false;
            var _loc5_:Boolean = true;
            var _loc6_:Boolean = _temp_1;
            var _loc4_:* = null as §6M§;
            §§push(0);
            if(_loc5_)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            var _loc3_:Vector.<§6M§> = param1.characters;
            if(_loc5_)
            {
               loop0:
               while(_loc2_ < int(_loc3_.length))
               {
                  _loc4_ = _loc3_[_loc2_];
                  if(_loc5_)
                  {
                     _loc2_++;
                     loop1:
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(false);
                                       if(!_loc6_)
                                       {
                                          §§push(false);
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§push(false);
                                             if(_loc5_)
                                             {
                                                if(_loc4_.§#P§ <= 0.5)
                                                {
                                                   break;
                                                }
                                                if(!_loc5_)
                                                {
                                                   break;
                                                }
                                                §§pop();
                                                if(_loc6_)
                                                {
                                                   break loop5;
                                                }
                                                §§push(_loc4_.§#P§ == param1.unpausedTime);
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                             }
                                             §§push(Boolean(§§pop()));
                                             break;
                                          }
                                          if(!§§pop())
                                          {
                                             break loop4;
                                          }
                                          if(_loc6_)
                                          {
                                             break loop4;
                                          }
                                          §§pop();
                                          if(_loc6_)
                                          {
                                             break loop3;
                                          }
                                       }
                                       §§push(_loc4_.§9!+§ == null);
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       break loop4;
                                    }
                                    §§push(!§§pop());
                                    if(_loc5_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    break;
                                 }
                                 if(!§§pop())
                                 {
                                    break;
                                 }
                                 if(_loc6_)
                                 {
                                    break loop2;
                                 }
                                 §§pop();
                                 if(_loc6_)
                                 {
                                    break loop1;
                                 }
                              }
                              §§push(_loc4_.§9!+§.§@p§.§<T§ == tileType);
                              if(!_loc6_)
                              {
                                 break loop2;
                              }
                              break;
                           }
                           if(§§pop())
                           {
                              break loop1;
                           }
                           continue loop0;
                        }
                        §§push(Boolean(§§pop()));
                        break loop3;
                     }
                  }
                  break loop1;
               }
            }
            return 0;
         });
      }
      
      public static function §[!A§(param1:int) : §#!G§
      {
         var index:int;
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            index = param1;
         }
         var _loc2_:§#!G§ = new §#!G§(function(param1:§ !W§):Number
         {
            var _temp_1:* = true;
            var _loc5_:Boolean = false;
            var _loc6_:Boolean = _temp_1;
            var _loc4_:* = null as §6M§;
            §§push(0);
            if(!_loc5_)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            var _loc3_:Vector.<§6M§> = param1.characters;
            if(_loc6_)
            {
               loop0:
               while(_loc2_ < int(_loc3_.length))
               {
                  _loc4_ = _loc3_[_loc2_];
                  loop1:
                  while(true)
                  {
                     if(_loc6_)
                     {
                        _loc2_++;
                        if(_loc5_)
                        {
                           break;
                        }
                     }
                     §§push(false);
                     if(_loc6_)
                     {
                        loop2:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(false);
                              if(!_loc5_)
                              {
                                 if(_loc4_.§9!+§ == null)
                                 {
                                    break loop2;
                                 }
                                 if(_loc5_)
                                 {
                                    break loop2;
                                 }
                                 §§pop();
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 §§push(_loc4_.§#P§ == param1.unpausedTime);
                                 if(!_loc6_)
                                 {
                                    break loop2;
                                 }
                              }
                              §§push(Boolean(§§pop()));
                              break loop2;
                           }
                           §§pop();
                           if(_loc6_)
                           {
                              break loop1;
                           }
                           §§goto(addr00b3);
                        }
                        if(§§pop())
                        {
                           if(_loc6_)
                           {
                              break loop3;
                           }
                        }
                        addr00af:
                        if(§§pop())
                        {
                           addr00b3:
                           return 1;
                        }
                        continue loop0;
                     }
                     addr00ae:
                     §§goto(addr00af);
                  }
                  §§push(int(_loc4_.§73§.terrain.indexOf(_loc4_.§9!+§,0)) == index);
                  if(!_loc5_)
                  {
                     §§goto(addr00ae);
                  }
                  §§goto(addr00af);
                  §§push(Boolean(§§pop()));
               }
            }
            return 0;
         });
         if(_loc4_)
         {
            §§push(_loc2_);
            §§push(_loc2_.flags);
            if(!_loc3_)
            {
               §§push(§§pop() | 4);
            }
            §§pop().flags = §§pop();
         }
         return _loc2_;
      }
      
      public static function §9!'§(param1:int) : §#!G§
      {
         var index:int;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            index = param1;
         }
         return new §,!8§(function(param1:§ !W§):Number
         {
            var _temp_1:* = true;
            var _loc5_:Boolean = false;
            var _loc6_:Boolean = _temp_1;
            var _loc4_:* = null as §6M§;
            §§push(0);
            if(_loc6_)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            var _loc3_:Vector.<§6M§> = param1.characters;
            if(_loc6_)
            {
               loop0:
               while(_loc2_ < int(_loc3_.length))
               {
                  _loc4_ = _loc3_[_loc2_];
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              _loc2_++;
                              if(_loc5_)
                              {
                                 break loop1;
                              }
                              §§push(false);
                              if(!_loc6_)
                              {
                                 break loop2;
                              }
                              loop4:
                              while(true)
                              {
                                 §§push(false);
                                 if(!_loc5_)
                                 {
                                    if(_loc4_.§#P§ == param1.unpausedTime)
                                    {
                                       while(true)
                                       {
                                          if(!_loc5_)
                                          {
                                             §§pop();
                                             if(_loc5_)
                                             {
                                                break loop4;
                                             }
                                             §§push(_loc4_.§9!+§ == null);
                                             if(_loc6_)
                                             {
                                                §§push(!§§pop());
                                                if(!_loc6_)
                                                {
                                                   break;
                                                }
                                             }
                                          }
                                          §§push(Boolean(§§pop()));
                                          break;
                                       }
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    break loop2;
                                 }
                                 break loop3;
                              }
                              §§pop();
                              if(!_loc6_)
                              {
                                 break loop1;
                              }
                           }
                           §§push(int(_loc4_.§73§.terrain.indexOf(_loc4_.§9!+§,0)) == index);
                           if(!_loc5_)
                           {
                              break loop2;
                           }
                           break;
                        }
                        if(§§pop())
                        {
                           break loop1;
                        }
                        continue loop0;
                     }
                     §§push(Boolean(§§pop()));
                     break loop3;
                  }
                  return 1;
               }
            }
            return 0;
         });
      }
      
      public static function §,!6§(param1:int) : §#!G§
      {
         return new §@=§(param1);
      }
   }
}

