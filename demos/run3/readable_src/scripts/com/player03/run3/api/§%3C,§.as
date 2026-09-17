package com.player03.run3.api
{
   import § 0§.§!&§;
   import §!!"§.§-m§;
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §%!Q§.§ !>§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §%!Z§.§'§;
   import §%!Z§.§^U§;
   import §%!Z§.§`! §;
   import §-!!§.§&!;§;
   import §-!!§.§`h§;
   import §-v§.§+'§;
   import §2n§.§7%§;
   import scenes.MyTurn;
   import scenes.Truancy;
   import §4n§.§!L§;
   import §4n§.Achievements;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import §<?§.§#!7§;
   import §>!O§.§#!6§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §@H§.§!7§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import §[!P§.§@$§;
   import com.player03.analytics.base.AnalyticsEvent;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§"!9§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.level.§1G§;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§1!;§;
   import com.player03.run3.save.§9t§;
   import com.player03.run3.save.§]k§;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   
   public class §<,§
   {
      
      public function §<,§()
      {
      }
      
      public static function §9&§() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         §<,§.§1!K§();
         while(true)
         {
            if(_loc6_)
            {
               §<,§.§>!`§();
               if(_loc7_)
               {
                  break;
               }
            }
            §<,§.§7B§();
            if(!_loc7_)
            {
               break;
            }
            §§goto(addr0060);
         }
         §<,§.§`!Z§();
         if(_loc6_)
         {
            §<,§.§<!X§();
            if(_loc6_)
            {
               §<,§.§3l§();
            }
         }
         addr0060:
         var _loc1_:§9'§ = §9'§.§@!A§();
         var _loc2_:§ !>§ = §>K§.§?t§;
         var _loc3_:§-Q§ = _loc2_.§0!R§;
         §§push(int(Save.§@!A§().get(_loc3_.§=-§,int(_loc3_.§ -§))));
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc2_.levelCount);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc6_)
         {
            while(true)
            {
               §§push(_loc1_.§?!;§);
               §§push("WinterLevelsBeaten");
               if(_loc6_)
               {
                  §§push(_loc4_);
                  if(!_loc6_)
                  {
                     break;
                  }
                  if(§§pop() >= _loc5_)
                  {
                     §§push(_loc5_);
                     break;
                  }
               }
               §§push(_loc4_);
               if(_loc6_)
               {
               }
               break;
            }
            §§pop().submit(§§pop(),§§pop());
         }
      }
      
      public static function §;Q§(param1:Object = undefined) : void
      {
         §§push(false);
         var _loc14_:Boolean = true;
         var _loc15_:* = §§pop();
         var _loc7_:* = null as § !>§;
         var _loc8_:* = null as §-Q§;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = null as §-Q§;
         var _loc12_:int = 0;
         var _loc13_:* = 0;
         while(true)
         {
            if(!_loc15_)
            {
               if(param1 == null)
               {
                  if(_loc15_)
                  {
                     break;
                  }
                  param1 = -1;
               }
               else if(param1 < 0)
               {
                  if(!_loc15_)
                  {
                     §<,§.§>!`§();
                     if(_loc14_)
                     {
                        addr006c:
                        §<,§.§7B§();
                     }
                  }
                  break;
               }
               var _loc2_:§9'§ = §9'§.§@!A§();
               var _loc3_:§ !>§ = §>K§.§0x§;
               §§push(0);
               if(!_loc15_)
               {
                  §§push(int(§§pop()));
               }
               var _loc4_:* = §§pop();
               var _loc5_:StringMap = §>K§.§@!A§().§2! §;
               var _loc6_:* = new §-m§(_loc5_.h,_loc5_.rh);
               while(true)
               {
                  if(_loc14_)
                  {
                     loop0:
                     while(Boolean(_loc6_.hasNext()))
                     {
                        _loc7_ = _loc6_.next();
                        _loc8_ = _loc7_.§0!R§;
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              loop5:
                              while(true)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       if(!_loc15_)
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(int(Save.§@!A§().get(_loc8_.§=-§,int(_loc8_.§ -§))));
                                                if(!_loc15_)
                                                {
                                                   _loc9_ = §§pop();
                                                   if(!_loc14_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(_loc7_.levelCount);
                                                   if(_loc15_)
                                                   {
                                                      break loop8;
                                                   }
                                                }
                                                _loc10_ = §§pop();
                                                if(!_loc15_)
                                                {
                                                   break;
                                                }
                                                continue loop0;
                                             }
                                             §§push(_loc9_);
                                             §§push(_loc10_);
                                             if(_loc14_)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   if(_loc14_)
                                                   {
                                                      §§push(_loc9_);
                                                      if(!_loc15_)
                                                      {
                                                         break;
                                                      }
                                                      break loop7;
                                                   }
                                                   addr0171:
                                                   §§push(_loc4_);
                                                   if(!_loc15_)
                                                   {
                                                      break loop7;
                                                   }
                                                   break loop6;
                                                }
                                                §§push(_loc10_);
                                                if(!_loc15_)
                                                {
                                                   break;
                                                }
                                                break loop6;
                                             }
                                             §§goto(addr0167);
                                          }
                                          §§push(_loc7_.availableUntil);
                                          if(!_loc14_)
                                          {
                                             break loop5;
                                          }
                                          §§push(1);
                                          if(_loc15_)
                                          {
                                             break loop4;
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc15_)
                                          {
                                             break loop3;
                                          }
                                          addr0167:
                                          if(§§pop() <= §§pop())
                                          {
                                             _loc11_ = _loc7_.§0!R§;
                                             if(!_loc15_)
                                             {
                                                _loc12_ = int(Save.§@!A§().get(_loc11_.§=-§,int(_loc11_.§ -§)));
                                                if(!_loc14_)
                                                {
                                                   continue loop0;
                                                }
                                                §§push(_loc7_.levelCount);
                                                if(_loc14_)
                                                {
                                                   §§push(int(§§pop()));
                                                }
                                                _loc13_ = §§pop();
                                                if(_loc15_)
                                                {
                                                   continue loop0;
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                §§push(_loc12_);
                                                if(!_loc15_)
                                                {
                                                   if(§§pop() < _loc13_)
                                                   {
                                                      if(!_loc14_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(_loc12_);
                                                      if(_loc15_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc13_);
                                                   }
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc14_)
                                                {
                                                   §§push(int(§§pop()));
                                                }
                                                break;
                                             }
                                             _loc4_ = §§pop();
                                             continue loop0;
                                          }
                                          if(!_loc14_)
                                          {
                                             continue loop0;
                                          }
                                       }
                                       §§goto(addr0171);
                                    }
                                    §§push(_loc7_.availableUntil);
                                    if(_loc14_)
                                    {
                                       break loop5;
                                    }
                                    break loop3;
                                 }
                                 §§goto(addr0189);
                              }
                              §§push(1);
                              break;
                           }
                           §§push(§§pop() + §§pop());
                           break;
                        }
                        addr0189:
                        _loc4_ = int(§§pop() + §§pop());
                     }
                     if(!_loc15_)
                     {
                        §§push(_loc4_);
                        if(_loc14_)
                        {
                           §§push(int(§§pop()));
                        }
                        _loc9_ = §§pop();
                        if(!_loc14_)
                        {
                           break;
                        }
                     }
                  }
                  _loc2_.§?!;§.submit("ExploreLevelsBeaten",_loc9_);
                  break;
               }
               _loc5_ = §,!,§.§7!0§();
               while(true)
               {
                  if(!_loc15_)
                  {
                     if(!("explore_levels_beaten" in StringMap.§+!#§))
                     {
                        _loc5_.h["explore_levels_beaten"] = _loc9_;
                        break;
                     }
                     if(_loc15_)
                     {
                        break;
                     }
                  }
                  _loc5_.setReserved("explore_levels_beaten",_loc9_);
                  if(_loc14_)
                  {
                  }
                  break;
               }
               return;
            }
            §§goto(addr006c);
         }
      }
      
      public static function §'N§(param1:Vector.<§!&§>) : void
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc10_:* = null as §!&§;
         §§push(int(Math.round((param1[int(param1.length) - 1].§;!1§.§&5§.z - param1[0].§0;§.§&5§.z) * 0.03333333333333333 / 2)));
         if(!_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(param1);
         §§push(int(param1.length));
         if(_loc13_)
         {
            §§push(§§pop() - 1);
         }
         §§push(§§pop()[§§pop()].§;!1§.§5F§);
         if(!_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc12_)
            {
               §9'§.§@!A§().§?!;§.submit("InfiniteDistance",_loc2_);
               if(!_loc13_)
               {
                  break;
               }
            }
            §9'§.§@!A§().§?!;§.submit("PowerCellsPerRun",_loc3_);
            break;
         }
         var _loc4_:§9'§ = §9'§.§@!A§();
         var _loc5_:§1!;§ = Save.infiniteDistance;
         §§push(int(Math.round(Number(Save.§@!A§().get(_loc5_.§=-§,Number(_loc5_.§ -§))) * 0.03333333333333333)));
         if(_loc13_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         if(!_loc12_)
         {
            _loc4_.§?!;§.submit("InfiniteTotalDistance",_loc6_);
         }
         §§push(",");
         if(!_loc12_)
         {
            §§push(§§pop());
         }
         var _loc7_:* = §§pop();
         §§push("");
         if(_loc13_)
         {
            §§push(§§pop());
         }
         var _loc8_:* = §§pop();
         §§push(true);
         if(!_loc12_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc9_:* = §§pop();
         if(!_loc12_)
         {
            loop3:
            while(true)
            {
               §§push(0);
               if(_loc13_)
               {
                  §§push(int(§§pop()));
                  if(!_loc12_)
                  {
                     _loc6_ = §§pop();
                     if(_loc12_)
                     {
                        break;
                     }
                     while(true)
                     {
                        §§push(_loc6_);
                     }
                     addr022d:
                  }
               }
               while(true)
               {
                  if(§§pop() >= int(param1.length))
                  {
                     break loop3;
                  }
                  _loc10_ = param1[_loc6_];
                  loop4:
                  while(true)
                  {
                     if(_loc13_)
                     {
                        _loc6_++;
                        if(!_loc13_)
                        {
                           break;
                        }
                     }
                     §§push(_loc9_);
                     if(!_loc12_)
                     {
                        loop5:
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc12_)
                                    {
                                       break loop4;
                                    }
                                    addr01f4:
                                    §§push(_loc8_);
                                    if(!_loc13_)
                                    {
                                       break loop5;
                                    }
                                 }
                                 else
                                 {
                                    §§push(_loc8_);
                                    if(_loc13_)
                                    {
                                       §§push(_loc7_);
                                       if(!_loc13_)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          if(§§pop() == null)
                                          {
                                             if(_loc12_)
                                             {
                                                break loop5;
                                             }
                                             §§push("null");
                                             if(_loc13_)
                                             {
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             §§push("");
                                             if(!_loc12_)
                                             {
                                                §§push(§§pop() + _loc7_);
                                                if(!_loc13_)
                                                {
                                                   break;
                                                }
                                             }
                                          }
                                          §§push(§§pop());
                                          break;
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!_loc12_)
                                       {
                                          §§push(§§pop());
                                          if(_loc13_)
                                          {
                                             §§push(§§pop());
                                          }
                                       }
                                       _loc8_ = §§pop();
                                       if(_loc12_)
                                       {
                                          break loop6;
                                       }
                                       §§goto(addr01f4);
                                    }
                                 }
                                 §§push(Std.string(_loc10_.data.id));
                                 if(!_loc12_)
                                 {
                                    §§push(§§pop());
                                 }
                                 break;
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc12_)
                              {
                                 §§push(§§pop());
                              }
                              break loop5;
                           }
                           §§goto(addr022d);
                        }
                        _loc8_ = §§pop();
                        break loop6;
                     }
                     addr018d:
                     _loc9_ = Boolean(§§pop());
                     addr018c:
                     if(_loc12_)
                     {
                     }
                     §§goto(addr01f4);
                  }
                  §§push(false);
                  if(_loc13_)
                  {
                     §§goto(addr018c);
                  }
                  §§goto(addr018d);
               }
               break;
            }
         }
         §§push(_loc8_);
         if(!_loc12_)
         {
            §§push(§§pop());
         }
         var _loc11_:* = §§pop();
      }
      
      public static function §3l§() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:§9'§ = §9'§.§@!A§();
         var _loc2_:§9t§ = Save.tilesDislodged;
         §§push(int(Save.§@!A§().get(_loc2_.§=-§,int(_loc2_.§ -§))));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            _loc1_.§?!;§.submit("TilesDislodged",_loc3_);
         }
      }
      
      public static function §1,§() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:§9'§ = §9'§.§@!A§();
         while(true)
         {
            §§push(Achievements.§ ![§());
            if(!_loc4_)
            {
               §§push(int(§§pop()));
               if(_loc4_)
               {
                  break;
               }
            }
            §§push(int(§§pop()));
            break;
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            _loc1_.§?!;§.submit("AchievementsEarned",_loc2_);
         }
      }
      
      public static function §1!K§(param1:Boolean = false) : void
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc2_:§=!U§ = §,!,§.§7!0§();
         var _loc3_:Main = Main.instance;
         var _loc4_:§ !>§ = §>K§.§0x§;
         var _loc5_:§-Q§ = _loc4_.§0!R§;
         §§push(int(Save.§@!A§().get(_loc5_.§=-§,int(_loc5_.§ -§))));
         if(_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(_loc4_.levelCount);
         if(!_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc12_)
               {
                  §§push(_loc6_);
                  if(_loc12_)
                  {
                     break loop0;
                  }
                  §§push(_loc7_);
                  if(_loc12_)
                  {
                     break;
                  }
                  if(§§pop() >= §§pop())
                  {
                     §§push(_loc7_);
                     break loop0;
                  }
               }
               §§push(_loc6_);
               if(_loc11_)
               {
               }
               break loop0;
            }
            var _loc8_:* = §§pop() >= §§pop();
            var _loc9_:StringMap = _loc2_;
            var _loc10_:* = _loc8_;
            if(!_loc12_)
            {
               if("tutorial_completed" in StringMap.§+!#§)
               {
                  if(!_loc12_)
                  {
                     _loc9_.setReserved("tutorial_completed",_loc10_);
                     if(_loc12_)
                     {
                     }
                  }
               }
               else
               {
                  _loc9_.h["tutorial_completed"] = _loc10_;
               }
            }
            return;
         }
         §§push(3);
         break loop1;
      }
      
      public static function §>!`§() : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc1_:§=!U§ = §,!,§.§7!0§();
         var _loc2_:§9t§ = Save.exploreRuns;
         var _loc3_:* = int(Save.§@!A§().get(_loc2_.§=-§,int(_loc2_.§ -§)));
         var _loc4_:StringMap = _loc1_;
         var _loc5_:* = _loc3_;
         if(_loc7_)
         {
            if("num_of_level_mode" in StringMap.§+!#§)
            {
               if(_loc7_)
               {
                  _loc4_.setReserved("num_of_level_mode",_loc5_);
                  if(_loc6_)
                  {
                  }
               }
            }
            else
            {
               _loc4_.h["num_of_level_mode"] = _loc5_;
            }
         }
      }
      
      public static function §`!Z§() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc1_:§=!U§ = §,!,§.§7!0§();
         var _loc2_:§9t§ = Save.infiniteRuns;
         var _loc3_:* = int(Save.§@!A§().get(_loc2_.§=-§,int(_loc2_.§ -§)));
         var _loc4_:StringMap = _loc1_;
         var _loc5_:* = _loc3_;
         if(!_loc7_)
         {
            if("num_of_infinite_mode" in StringMap.§+!#§)
            {
               if(!_loc7_)
               {
                  _loc4_.setReserved("num_of_infinite_mode",_loc5_);
                  if(_loc6_)
                  {
                  }
               }
            }
            else
            {
               _loc4_.h["num_of_infinite_mode"] = _loc5_;
            }
         }
      }
      
      public static function §7B§() : void
      {
         var _temp_1:* = true;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = _temp_1;
         var _loc5_:* = null as § !>§;
         var _loc6_:* = null as §-Q§;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = null as §-Q§;
         var _loc10_:int = 0;
         var _loc11_:* = 0;
         var _loc1_:§=!U§ = §,!,§.§7!0§();
         §§push(0);
         if(_loc14_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:StringMap = §>K§.§@!A§().§2! §;
         var _loc4_:* = new §-m§(_loc3_.h,_loc3_.rh);
         if(!_loc13_)
         {
            loop0:
            while(Boolean(_loc4_.hasNext()))
            {
               _loc5_ = _loc4_.next();
               _loc6_ = _loc5_.§0!R§;
               if(_loc14_)
               {
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(int(Save.§@!A§().get(_loc6_.§=-§,int(_loc6_.§ -§))));
                           if(_loc14_)
                           {
                              _loc7_ = §§pop();
                              if(!_loc14_)
                              {
                                 break;
                              }
                              §§push(_loc5_.levelCount);
                              if(_loc13_)
                              {
                                 break loop2;
                              }
                              _loc8_ = §§pop();
                              if(_loc13_)
                              {
                                 break loop1;
                              }
                              §§push(_loc7_);
                           }
                           §§push(_loc8_);
                           if(!_loc13_)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 §§push(_loc8_);
                                 break loop2;
                              }
                              if(!_loc13_)
                              {
                                 break loop1;
                              }
                              continue loop0;
                           }
                           §§goto(addr012e);
                        }
                        §§push(_loc2_);
                        §§push(_loc5_.availableUntil);
                        if(_loc14_)
                        {
                           §§goto(addr012d);
                           §§push(1);
                        }
                        §§goto(addr012e);
                     }
                     §§push(_loc5_.availableUntil);
                     if(_loc14_)
                     {
                        §§push(1);
                        if(_loc14_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc14_)
                           {
                              if(§§pop() > §§pop())
                              {
                                 if(!_loc13_)
                                 {
                                    break loop3;
                                 }
                                 continue loop0;
                              }
                              _loc9_ = _loc5_.§0!R§;
                              loop4:
                              while(true)
                              {
                                 if(!_loc13_)
                                 {
                                    _loc10_ = int(Save.§@!A§().get(_loc9_.§=-§,int(_loc9_.§ -§)));
                                    if(!_loc13_)
                                    {
                                       §§push(_loc5_.levelCount);
                                       if(_loc13_)
                                       {
                                          break;
                                       }
                                       _loc11_ = §§pop();
                                       if(!_loc14_)
                                       {
                                          continue loop0;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(_loc14_)
                                    {
                                       break loop4;
                                    }
                                    addr01af:
                                    §§push(int(§§pop()));
                                    break;
                                 }
                                 addr01b0:
                                 _loc2_ = §§pop();
                                 continue loop0;
                              }
                              while(true)
                              {
                                 §§push(_loc10_);
                                 if(!_loc13_)
                                 {
                                    if(§§pop() < _loc11_)
                                    {
                                       if(!_loc14_)
                                       {
                                          break;
                                       }
                                       §§push(_loc10_);
                                       if(_loc14_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc11_);
                                    }
                                 }
                                 §§goto(addr01af);
                              }
                              §§goto(addr01b0);
                           }
                           addr012e:
                           §§push(§§pop() + §§pop());
                           if(_loc14_)
                           {
                              §§push(int(§§pop()));
                           }
                           _loc2_ = §§pop();
                           continue loop0;
                        }
                        addr012d:
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr012e);
                  }
                  §§push(_loc7_);
                  break loop2;
               }
            }
         }
         _loc4_ = _loc2_;
         _loc3_ = _loc1_;
         var _loc12_:* = _loc4_;
         if(!_loc13_)
         {
            if("explore_levels_beaten" in StringMap.§+!#§)
            {
               if(!_loc13_)
               {
                  _loc3_.setReserved("explore_levels_beaten",_loc12_);
                  if(_loc13_)
                  {
                  }
               }
            }
            else
            {
               _loc3_.h["explore_levels_beaten"] = _loc12_;
            }
         }
      }
      
      public static function §<!X§() : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc1_:§=!U§ = §,!,§.§7!0§();
         var _loc2_:§ !>§ = §>K§.§?t§;
         var _loc3_:§-Q§ = _loc2_.§0!R§;
         §§push(int(Save.§@!A§().get(_loc3_.§=-§,int(_loc3_.§ -§))));
         if(!_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc2_.levelCount);
         if(_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         while(true)
         {
            if(!_loc9_)
            {
               §§push(_loc4_);
               if(_loc9_)
               {
                  break;
               }
               if(§§pop() >= _loc5_)
               {
                  §§push(_loc5_);
                  break;
               }
            }
            §§push(_loc4_);
            if(_loc10_)
            {
            }
            break;
         }
         var _loc6_:* = §§pop();
         var _loc7_:StringMap = _loc1_;
         var _loc8_:* = _loc6_;
         if(_loc10_)
         {
            if("winter_levels_beaten" in StringMap.§+!#§)
            {
               if(_loc10_)
               {
                  _loc7_.setReserved("winter_levels_beaten",_loc8_);
                  if(_loc10_)
                  {
                  }
               }
            }
            else
            {
               _loc7_.h["winter_levels_beaten"] = _loc8_;
            }
         }
      }
      
      public static function §]!!§(param1:Level, param2:CharacterBase, param3:String, param4:Vector.<§!&§> = undefined) : void
      {
         var _temp_1:* = true;
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = _temp_1;
         var _loc5_:* = null as Vector.<§!&§>;
         var _loc19_:* = 0;
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               loop17:
               while(true)
               {
                  loop19:
                  while(true)
                  {
                     if(_loc21_)
                     {
                        §§push(true);
                        if(_loc20_)
                        {
                           break loop17;
                        }
                        loop20:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(true);
                              if(_loc21_)
                              {
                                 if(param1.§5§ == null)
                                 {
                                    break;
                                 }
                                 if(!_loc21_)
                                 {
                                    break;
                                 }
                                 §§pop();
                                 §§push(param2 == null);
                                 if(_loc20_)
                                 {
                                    break loop20;
                                 }
                              }
                              §§push(Boolean(§§pop()));
                              if(_loc21_)
                              {
                                 break;
                              }
                              addr007d:
                              §§push(!§§pop());
                              break loop20;
                           }
                           if(§§pop())
                           {
                              break loop19;
                           }
                           if(!_loc21_)
                           {
                              break loop2;
                           }
                           §§pop();
                           if(!_loc21_)
                           {
                              break loop1;
                           }
                           §§push(false);
                           §§push(param1.§%!]§);
                           if(!_loc21_)
                           {
                              break;
                           }
                           §§goto(addr007d);
                        }
                        if(!§§pop())
                        {
                           break loop2;
                        }
                        §§pop();
                        if(_loc20_)
                        {
                           break loop1;
                        }
                     }
                     while(true)
                     {
                        §§push(param3 == "Died");
                        if(_loc21_)
                        {
                           break loop17;
                        }
                        §§goto(addr00a8);
                     }
                     §§goto(addr00c8);
                  }
                  §§goto(addr0096);
               }
               §§push(Boolean(§§pop()));
               break;
            }
            addr0096:
            while(true)
            {
               if(Boolean(§§pop()))
               {
                  if(!_loc20_)
                  {
                     return;
                  }
                  addr00ba:
                  §§push(int(param4.length) < 1);
                  if(_loc20_)
                  {
                     break;
                  }
               }
               else
               {
                  §§push(true);
                  if(_loc21_)
                  {
                     addr00a8:
                     if(param4 == null)
                     {
                        break;
                     }
                     §§pop();
                     if(!_loc21_)
                     {
                        break loop1;
                     }
                     §§goto(addr00ba);
                  }
               }
               addr00c8:
               §§push(Boolean(§§pop()));
               break;
            }
            if(§§pop())
            {
               break;
            }
            §§goto(addr00ff);
         }
         _loc5_ = new Vector.<§!&§>(0,false);
         param4 = _loc5_;
         if(!_loc20_)
         {
            param4.push(new §!&§(param2.§!8§,param1.analytics));
         }
         addr00ff:
         §§push(param4);
         §§push(int(param4.length));
         if(!_loc20_)
         {
            §§push(§§pop() - 1);
         }
         var _loc6_:§!&§ = §§pop()[§§pop()];
         var _loc7_:CharacterDef = _loc6_.data;
         var _loc8_:§1G§ = param4[0].§0;§;
         var _loc9_:§1G§ = _loc6_.§7!7§;
         var _loc10_:§1G§ = _loc6_.§;!1§;
         §§push(_loc8_.§9_§.§[9§);
         if(!_loc20_)
         {
            §§push(int(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(int(Math.round((_loc10_.§&5§.z - _loc8_.§&5§.z) * 0.03333333333333333)));
         if(!_loc20_)
         {
            §§push(int(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(Number(Math.random()) > 0.005);
         if(!_loc20_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc13_:* = §§pop();
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               if(_loc21_)
               {
                  loop15:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(false);
                        if(!_loc20_)
                        {
                           §§push(false);
                           if(_loc20_)
                           {
                              break;
                           }
                           if(param3 != "Won")
                           {
                              break loop15;
                           }
                           if(!_loc21_)
                           {
                              break loop15;
                           }
                           §§pop();
                           if(_loc20_)
                           {
                              break loop4;
                           }
                        }
                        §§push(param1.§5§ == §,a§.INFINITE);
                        if(_loc21_)
                        {
                           break;
                        }
                        break loop15;
                     }
                     §§push(Boolean(§§pop()));
                     break;
                  }
                  if(!§§pop())
                  {
                     break loop3;
                  }
                  if(!_loc21_)
                  {
                     break loop3;
                  }
                  §§pop();
               }
               §§push(_loc12_ >= 200);
               if(!_loc20_)
               {
                  break;
               }
               §§goto(addr01eb);
            }
            §§push(Boolean(§§pop()));
            if(_loc21_)
            {
               break;
            }
            §§goto(addr01eb);
         }
         addr01eb:
         var _loc14_:Boolean = §§pop();
         if(_loc21_)
         {
            loop5:
            while(true)
            {
               while(true)
               {
                  §§push(false);
                  if(_loc21_)
                  {
                     if(!_loc13_)
                     {
                        break;
                     }
                     if(!_loc21_)
                     {
                        break loop5;
                     }
                  }
                  §§pop();
                  if(_loc21_)
                  {
                     §§push(_loc14_);
                     if(!_loc20_)
                     {
                        break loop5;
                     }
                     break;
                  }
               }
               if(!§§pop())
               {
                  var _loc15_:AnalyticsEvent = new AnalyticsEvent("run_ends");
                  loop7:
                  while(true)
                  {
                     loop8:
                     while(true)
                     {
                        loop13:
                        while(true)
                        {
                           while(true)
                           {
                              if(!_loc20_)
                              {
                                 _loc15_.properties["run_id"] = param1.§-!-§;
                                 _loc15_.properties["distance"] = _loc12_;
                                 if(_loc20_)
                                 {
                                    break;
                                 }
                                 _loc15_.properties["time"] = _loc10_.§9!8§;
                                 _loc15_.properties["times_jump_used"] = param1.analytics.§1v§;
                                 _loc15_.properties["times_level_rotated"] = param1.analytics.§7!-§;
                                 _loc15_.properties["times_primary_ability_used"] = param1.analytics.§]!-§;
                                 if(!_loc21_)
                                 {
                                    break loop13;
                                 }
                                 _loc15_.properties["times_secondary_ability_used"] = param1.analytics.§`§;
                                 if(!_loc21_)
                                 {
                                    break loop13;
                                 }
                                 _loc15_.properties["end_type"] = param3;
                                 if(_loc20_)
                                 {
                                    break loop8;
                                 }
                                 _loc15_.properties["character_name"] = _loc7_.name;
                                 if(_loc20_)
                                 {
                                    break loop7;
                                 }
                              }
                              _loc15_.properties["mode"] = param1.§5§;
                              _loc15_.properties["start_level_number"] = _loc11_;
                              if(_loc21_)
                              {
                                 break loop13;
                              }
                              §§goto(addr038d);
                           }
                           §§goto(addr03ce);
                        }
                        _loc15_.properties["start_level_id"] = _loc8_.§9_§.id;
                        _loc15_.properties["number_of_segments_ran"] = _loc10_.§9_§.§[9§ - _loc11_;
                        _loc15_.properties["last_jump_level_id"] = _loc9_.§9_§.id;
                        if(!_loc20_)
                        {
                           _loc15_.properties["last_jump_x"] = _loc9_.§&5§.x;
                           _loc15_.properties["last_jump_y"] = _loc9_.§&5§.y;
                           break;
                        }
                        §§goto(addr038d);
                     }
                     _loc15_.properties["last_jump_z"] = _loc9_.§&5§.z;
                     addr038d:
                     _loc15_.properties["last_jump_rotation"] = _loc9_.§%%§;
                     if(!_loc20_)
                     {
                        _loc15_.properties["died_level_id"] = _loc10_.§9_§.id;
                        if(!_loc20_)
                        {
                           _loc15_.properties["died_x"] = _loc10_.§&5§.x;
                        }
                     }
                     addr03ce:
                     _loc15_.properties["died_y"] = _loc10_.§&5§.y;
                     _loc15_.properties["died_z"] = _loc10_.§&5§.z;
                     _loc15_.properties["died_rotation"] = _loc10_.§%%§;
                     _loc15_.properties["selected_at_random"] = !_loc13_;
                     break;
                  }
                  §§push(param1.§<!;§);
                  if(_loc21_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc16_:* = §§pop();
                  §§push(§7%§.§@!A§());
                  §§push(int(param4.length));
                  if(_loc21_)
                  {
                     §§push(§§pop() - 1);
                  }
                  while(true)
                  {
                     §§push(§§pop().§7!4§(§§pop()));
                     if(_loc21_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc21_)
                        {
                           break;
                        }
                     }
                     §§push(int(§§pop()));
                     break;
                  }
                  var _loc17_:* = §§pop();
                  loop10:
                  while(true)
                  {
                     if(!_loc20_)
                     {
                        _loc15_.properties["soft_currency_change"] = _loc16_ - _loc17_;
                        while(true)
                        {
                           if(_loc21_)
                           {
                              _loc15_.properties["soft_currency_spent_in_run"] = _loc17_;
                              if(_loc20_)
                              {
                                 break;
                              }
                           }
                           _loc15_.properties["soft_currency_gained_in_run"] = _loc16_;
                           if(_loc21_)
                           {
                              break;
                           }
                           break loop10;
                        }
                     }
                     _loc15_.properties["respawn_count"] = int(param4.length) - 1;
                     break;
                  }
                  §§push(0);
                  if(_loc21_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc18_:* = §§pop();
                  if(!_loc20_)
                  {
                     loop0:
                     while(_loc18_ < 6)
                     {
                        §§push(_loc18_);
                        if(!_loc20_)
                        {
                           _loc18_++;
                           while(true)
                           {
                              if(_loc21_)
                              {
                                 §§push(int(§§pop()));
                                 if(_loc20_)
                                 {
                                    break;
                                 }
                              }
                              _loc19_ = §§pop();
                              if(_loc21_)
                              {
                                 §§push(_loc19_);
                                 break;
                              }
                              continue loop0;
                           }
                        }
                        if(§§pop() < int(param4.length))
                        {
                           if(_loc21_)
                           {
                              _loc15_.properties["character_" + (_loc19_ + 1)] = param4[_loc19_].data.name;
                              if(_loc21_)
                              {
                              }
                           }
                        }
                        else
                        {
                           _loc15_.properties["character_" + (_loc19_ + 1)] = null;
                        }
                     }
                  }
                  return;
               }
            }
            §§push(!§§pop());
            if(_loc21_)
            {
               §§push(Boolean(§§pop()));
            }
            break loop6;
         }
      }
      
      public static function §8!U§(param1:int, param2:String, param3:String, param4:int) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:AnalyticsEvent = new AnalyticsEvent("task_completes");
         while(true)
         {
            if(!_loc6_)
            {
               _loc5_.properties["task_id"] = param1;
               if(_loc7_)
               {
                  _loc5_.properties["task_type"] = param2;
                  if(_loc7_)
                  {
                     _loc5_.properties["task_description"] = param3;
                     if(_loc6_)
                     {
                        break;
                     }
                  }
               }
            }
            _loc5_.properties["soft_currency_change"] = param4;
            break;
         }
      }
   }
}

