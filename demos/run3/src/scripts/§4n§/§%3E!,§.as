package §4n§
{
   import §%!Q§.§>K§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §6!Q§.§&!9§;
   import §6!Q§.§]u§;
   import §=b§.§,0§;
   import com.player03.run3.Save;
   import com.player03.run3.api.GlobalEventManager;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.trigger.§,!A§;
   import com.player03.run3.level.trigger.§<!§;
   import com.player03.run3.level.trigger.condition.§#!G§;
   import com.player03.run3.level.trigger.condition.§@!J§;
   import com.player03.run3.level.trigger.condition.ConditionChain;
   import com.player03.run3.save.§]k§;
   import haxe.§=!U§;
   import haxe.ds.IntMap;
   import haxe.ds.StringMap;
   
   public class §>!,§
   {
      
      public var §#!]§:Vector.<§,0§>;
      
      public var §[!"§:§=!U§;
      
      public var §6!S§:§=!U§;
      
      public var achievements:§=!U§;
      
      public function §>!,§()
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Vector.<§,0§> = new Vector.<§,0§>(0,false);
         if(_loc3_)
         {
            §#!]§ = _loc1_;
            if(!_loc2_)
            {
               achievements = new IntMap();
               if(_loc3_)
               {
                  §6!S§ = new IntMap();
                  if(_loc3_)
                  {
                     §[!"§ = new StringMap();
                  }
               }
            }
         }
      }
      
      public static function §&C§(param1:int, param2:int, param3:Object = undefined) : §#!G§
      {
         var achievementID:int;
         var invZ:Number;
         var percent:Number;
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc4_:* = null as §#!G§;
         var _loc6_:* = null as §#!G§;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc7_)
               {
                  if(param3 != null)
                  {
                     break;
                  }
                  if(_loc7_)
                  {
                     break loop0;
                  }
               }
               §§push(0);
               if(_loc8_)
               {
                  param3 = §§pop();
                  break;
               }
               addr0047:
               if(§§pop() >= 0)
               {
                  break loop0;
               }
               §§push(param1);
               if(!_loc7_)
               {
                  §§push(-§§pop());
                  if(_loc7_)
                  {
                     continue loop2;
                  }
               }
               §§goto(addr0067);
            }
            §§push(param1);
            if(!_loc7_)
            {
               §§goto(addr0047);
            }
            §§goto(addr0067);
         }
         §§push(param1);
         if(!_loc7_)
         {
            addr0067:
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               if(_loc8_)
               {
                  switch(_loc5_)
                  {
                     case 0:
                        _loc4_ = §@!J§.§?1§;
                        break loop3;
                     case 1:
                        _loc4_ = §@!J§.§'<§(param2);
                        break loop3;
                     case 2:
                        _loc4_ = §@!J§.§^!'§(param2);
                        break loop3;
                     case 3:
                        _loc4_ = §@!J§.§?-§(param2);
                        break loop3;
                     case 4:
                        _loc4_ = §@!J§.§3!4§(param2);
                        break loop3;
                     case 5:
                        _loc4_ = §@!J§.§,!I§();
                        break loop3;
                     case 6:
                        _loc4_ = §@!J§.§3!M§(param2);
                        break loop3;
                     case 7:
                        _loc4_ = §@!J§.§8S§();
                        break loop3;
                     case 8:
                        _loc4_ = §@!J§.§@&§(param2);
                        break loop3;
                     case 9:
                        _loc4_ = §@!J§.§8!S§(param2 / 100);
                        break loop3;
                     case 10:
                        percent = param2 / 100;
                        if(_loc8_)
                        {
                           _loc4_ = new §#!G§(function(param1:§ !W§):Number
                           {
                              var _temp_1:* = true;
                              var _loc3_:Boolean = false;
                              var _loc4_:Boolean = _temp_1;
                              §§push(param1.characters[0].§73§.startZ);
                              if(!_loc3_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc2_:* = §§pop();
                              §§push(param1.characters[0].transform.position.z);
                              if(_loc4_)
                              {
                                 loop0:
                                 while(true)
                                 {
                                    loop1:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             §§push(param1.characters[0].§73§.endZ);
                                             if(_loc3_)
                                             {
                                                break loop0;
                                             }
                                             §§push(_loc2_);
                                             if(!_loc4_)
                                             {
                                                break loop1;
                                             }
                                             §§push(§§pop() - §§pop());
                                             if(!_loc4_)
                                             {
                                                break loop0;
                                             }
                                          }
                                          §§push(percent);
                                          break loop1;
                                       }
                                    }
                                    return §§pop() * §§pop();
                                 }
                              }
                              return §§pop();
                           });
                           break loop3;
                        }
                        addr02d3:
                        _loc4_ = new §#!G§(function(param1:§ !W§):Number
                        {
                           var _temp_1:* = true;
                           var _loc2_:Boolean = false;
                           var _loc3_:Boolean = _temp_1;
                           §§push(param1.characters[0].transform.position.z);
                           if(!_loc2_)
                           {
                              while(true)
                              {
                                 §§push(param1.analytics.§0;§.§&5§.z);
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    §§push(invZ);
                                 }
                                 return §§pop() * §§pop();
                              }
                           }
                           return §§pop();
                        });
                        break loop3;
                     case 11:
                        §§push(§§newactivation());
                        §§push(1);
                        §§push(param2);
                        if(_loc8_)
                        {
                           §§push(§§pop() * 30);
                        }
                        §§pop().§§slot[2] = §§pop() / Number(§§pop());
                        if(!_loc8_)
                        {
                           break;
                        }
                        §§goto(addr02d3);
                        break;
                     case 12:
                        _loc4_ = §@!J§.§9P§(param2);
                        break loop3;
                     case 13:
                        _loc4_ = §@!J§.§9o§(param2 / 100);
                        break loop3;
                     case 14:
                        _loc4_ = §@!J§.§0!Q§(param2);
                        break loop3;
                     case 15:
                        _loc4_ = §@!J§.§`<§(param2);
                        break loop3;
                     case 16:
                        _loc4_ = §@!J§.§#?§(param2);
                        break loop3;
                     case 17:
                        _loc4_ = §@!J§.ability2UsedAtMost(param2);
                        break loop3;
                     case 18:
                        _loc4_ = §@!J§.ability2UsedAtLeast(param2);
                        break loop3;
                     case 19:
                        _loc4_ = §@!J§.§-!C§(param2);
                        break loop3;
                     case 20:
                        _loc4_ = §@!J§.§%!X§(param2);
                        break loop3;
                     case 21:
                        achievementID = param2;
                        break;
                     case 100:
                        _loc4_ = §@!J§.§2&§(param2);
                        break loop3;
                     case 101:
                        _loc4_ = §@!J§.§2&§(param2 / 100);
                        break loop3;
                     case 102:
                        _loc4_ = §@!J§.§8B§();
                        break loop3;
                     case 103:
                        _loc4_ = §@!J§.§]L§(param2);
                        break loop3;
                     case 104:
                        _loc4_ = §@!J§.§<!H§("left");
                        break loop3;
                     case 105:
                        _loc4_ = §@!J§.§<!H§("right");
                        break loop3;
                     case 106:
                        _loc4_ = §@!J§.§<!H§("jump");
                        break loop3;
                     case 107:
                        _loc4_ = §@!J§.§+!&§();
                        break loop3;
                     case 108:
                        _loc4_ = §@!J§.§6z§();
                        break loop3;
                     case 109:
                        _loc4_ = §@!J§.§`!`§(param2);
                        break loop3;
                     case 110:
                        _loc4_ = §@!J§.§@f§(param2);
                        break loop3;
                     case 111:
                        _loc4_ = §@!J§.§^!1§();
                        break loop3;
                     case 112:
                        _loc4_ = §@!J§.§[!A§(param2);
                        break loop3;
                     case 113:
                        _loc4_ = §@!J§.§9!'§(param2);
                        break loop3;
                     case 114:
                        _loc4_ = §@!J§.§,!6§(param2);
                        break loop3;
                  }
                  _loc6_ = new §#!G§(function(param1:§ !W§):Number
                  {
                     var _temp_1:* = false;
                     var _loc2_:Boolean = true;
                     var _loc3_:Boolean = _temp_1;
                     if(Boolean(Achievements.§&!#§.get(achievementID).§>i§()))
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
                  if(_loc8_)
                  {
                     §§push(_loc6_);
                     §§push(_loc6_.flags);
                     if(!_loc7_)
                     {
                        §§push(§§pop() | 1);
                     }
                     §§pop().flags = §§pop();
                     if(_loc8_)
                     {
                        §§push(_loc6_);
                        §§push(_loc6_.flags);
                        if(_loc8_)
                        {
                           §§push(§§pop() | 0x10);
                        }
                        §§pop().flags = §§pop();
                     }
                  }
                  _loc4_ = _loc6_;
                  break;
               }
               _loc4_ = null;
               if(_loc8_)
               {
                  break;
               }
               break loop2;
            }
            §§push(_loc4_);
            §§push(_loc4_.flags);
            if(!_loc7_)
            {
               §§push(§§pop() | param3);
            }
            §§pop().flags = §§pop();
            break;
         }
         return _loc4_;
      }
      
      public static function §6!3§(param1:Array, param2:Vector.<§#!G§> = undefined) : Vector.<§#!G§>
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc3_:* = null as Vector.<§#!G§>;
         var _loc5_:* = null as §3!I§;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = null as §#!G§;
         loop1:
         while(true)
         {
            while(true)
            {
               if(_loc10_)
               {
                  if(param2 != null)
                  {
                     break;
                  }
                  if(!_loc10_)
                  {
                     break loop1;
                  }
               }
               _loc3_ = new Vector.<§#!G§>(0,false);
               param2 = _loc3_;
               break;
            }
            §§push(param1);
            if(_loc10_)
            {
               while(true)
               {
                  §§push(int(§§pop().length));
                  if(_loc10_)
                  {
                     §§push(1);
                     if(!_loc10_)
                     {
                        break;
                     }
                     §§push(§§pop() & §§pop());
                  }
                  §§push(1);
                  break;
               }
               if(§§pop() == §§pop())
               {
                  if(!_loc9_)
                  {
                     break;
                  }
               }
               §§goto(addr0084);
            }
            §§goto(addr007f);
         }
         addr007f:
         param1.push(0);
         var _loc4_:§3!I§ = §=B§.§@W§(0,int(param1.length),2);
         addr0084:
         if(_loc10_)
         {
            while(_loc4_.§#1§ != _loc4_.end)
            {
               _loc5_ = _loc4_;
               loop3:
               while(true)
               {
                  if(_loc10_)
                  {
                     loop4:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc5_);
                           §§push(_loc5_.§#1§);
                           if(_loc10_)
                           {
                              §§push(_loc4_.§['§);
                              if(!_loc10_)
                              {
                                 break;
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc10_)
                              {
                                 break loop4;
                              }
                           }
                           §§push(int(§§pop()));
                           if(!_loc9_)
                           {
                              break loop4;
                           }
                           addr00ed:
                           §§pop().§#1§ = §§pop();
                           if(!_loc10_)
                           {
                              break loop3;
                           }
                        }
                        _loc7_ = §§pop();
                        §§goto(addr00ed);
                     }
                     var _temp_2:* = §§pop();
                     §§push(_temp_2);
                     §§push(_temp_2);
                     break loop5;
                  }
                  §§push(_loc7_);
                  if(_loc10_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc6_ = §§pop();
                  break;
               }
               §§push(§>!,§);
               §§push(int(param1[_loc6_]));
               §§push(param1);
               §§push(_loc6_);
               if(_loc10_)
               {
                  §§push(§§pop() + 1);
               }
               _loc8_ = §§pop().§&C§(§§pop(),int(§§pop()[§§pop()]));
               if(!_loc9_)
               {
                  if(_loc8_ == null)
                  {
                     if(_loc10_)
                     {
                     }
                  }
                  else
                  {
                     param2.push(_loc8_);
                  }
               }
            }
         }
         return param2;
      }
      
      public function §-@§(param1:Achievement, param2:Object = undefined, param3:§6O§ = undefined) : void
      {
      }
      
      public function §@B§(param1:§ !W§, param2:§,!A§, param3:Object = undefined) : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc7_:* = false;
         var _loc8_:* = null as §]k§;
         var _loc4_:Achievement = param2.result.achievement;
         while(true)
         {
            if(!_loc11_)
            {
               if(_loc4_ == null)
               {
                  §§push(true);
                  if(_loc10_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  _loc7_ = §§pop();
                  break;
               }
               if(!_loc10_)
               {
                  break;
               }
            }
            _loc8_ = _loc4_.§3!X§;
            if(!_loc11_)
            {
               §§push(!Boolean(Save.§@!A§().get(_loc8_.§=-§,Boolean(_loc8_.§ -§))));
               if(!_loc11_)
               {
                  _loc7_ = Boolean(§§pop());
                  break;
               }
               addr00a0:
               _loc6_ = §§pop();
               addr00a3:
               §§push(_loc6_);
               if(!_loc11_)
               {
                  §§push(!§§pop());
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc5_ = _loc4_ == §3!G§.§07§;
                     if(!_loc10_)
                     {
                        break;
                     }
                  }
                  else
                  {
                     _loc5_ = true;
                  }
                  addr00d8:
                  if(_loc5_)
                  {
                     if(!_loc11_)
                     {
                        param1.registerAnimation(param2);
                     }
                  }
                  break;
               }
            }
            var _loc9_:§&!9§ = §]u§.§@!A§().options;
            loop2:
            while(true)
            {
               if(!_loc11_)
               {
                  loop3:
                  while(true)
                  {
                     if(param3 != null)
                     {
                        if(_loc11_)
                        {
                           break;
                        }
                        _loc9_.§3!_§.§=! §(param3,_loc4_,param2.§<g§);
                        if(!_loc10_)
                        {
                           break loop2;
                        }
                     }
                     while(true)
                     {
                        §§push(false);
                        if(!_loc11_)
                        {
                           if(param2 is ConditionChain)
                           {
                              if(_loc10_)
                              {
                                 §§pop();
                                 if(!_loc11_)
                                 {
                                    break loop3;
                                 }
                                 break loop2;
                              }
                           }
                           break;
                        }
                        addr016b:
                        §§push(Boolean(§§pop()));
                        break;
                     }
                     addr016c:
                     if(!§§pop())
                     {
                        break loop2;
                     }
                     if(!_loc10_)
                     {
                        break loop2;
                     }
                  }
                  §§push(param2.§6!T§(param1));
                  if(_loc10_)
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc11_)
                     {
                        §§goto(addr016b);
                     }
                  }
                  §§goto(addr016c);
               }
               §]u§.§@!A§().§]]§.§[w§.§<!^§(param2);
               break;
            }
            return;
         }
         while(true)
         {
            if(!_loc7_)
            {
               _loc6_ = _loc4_.§ N§ > 0;
               if(!_loc10_)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr00a0);
               §§push(true);
            }
            §§goto(addr00a3);
         }
         §§goto(addr00d8);
      }
      
      public function §>E§(param1:int) : Boolean
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc2_:* = false;
         var _loc3_:* = null as §=!U§;
         var _loc4_:* = 0;
         var _loc5_:* = null as Vector.<§,0§>;
         var _loc6_:* = null as §,0§;
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               if(!_loc8_)
               {
                  if(§3!G§.§07§ != null)
                  {
                     if(!_loc8_)
                     {
                        _loc3_ = achievements;
                        if(_loc7_)
                        {
                           while(true)
                           {
                              §§push(param1 in _loc3_.h);
                              if(_loc7_)
                              {
                                 §§push(!§§pop());
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                              }
                              §§push(Boolean(§§pop()));
                              if(_loc7_)
                              {
                                 break;
                              }
                              break loop2;
                           }
                           _loc2_ = §§pop();
                           if(_loc8_)
                           {
                              break loop1;
                           }
                        }
                     }
                  }
                  else
                  {
                     §§push(true);
                     if(!_loc8_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     _loc2_ = §§pop();
                  }
               }
               §§push(_loc2_);
               if(!_loc8_)
               {
                  if(§§pop())
                  {
                     if(!_loc8_)
                     {
                        §§push(false);
                        if(!_loc8_)
                        {
                           return §§pop();
                        }
                        break;
                     }
                     break loop1;
                  }
                  if(achievements.h[param1].achievement.achievement == §3!G§.§07§)
                  {
                     break loop1;
                  }
                  _loc3_ = §6!S§;
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        loop7:
                        while(true)
                        {
                           while(true)
                           {
                              if(!_loc8_)
                              {
                                 §§push(param1);
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() in _loc3_.h);
                                 if(_loc8_)
                                 {
                                    break loop7;
                                 }
                                 if(!§§pop())
                                 {
                                    break loop5;
                                 }
                                 if(_loc8_)
                                 {
                                    break loop4;
                                 }
                              }
                              §§push(0);
                              if(_loc7_)
                              {
                                 §§push(int(§§pop()));
                              }
                              break;
                           }
                           _loc4_ = §§pop();
                           break loop4;
                        }
                        return §§pop();
                     }
                     §§push(false);
                     break loop7;
                  }
                  _loc5_ = §6!S§.h[param1];
                  if(!_loc8_)
                  {
                     loop0:
                     while(true)
                     {
                        if(_loc4_ >= int(_loc5_.length))
                        {
                           break loop5;
                        }
                        _loc6_ = _loc5_[_loc4_];
                        while(true)
                        {
                           if(!_loc8_)
                           {
                              _loc4_++;
                              if(!_loc7_)
                              {
                                 break;
                              }
                           }
                           if(_loc6_.achievement.achievement == §3!G§.§07§)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        return true;
                     }
                  }
                  break loop5;
               }
               break;
            }
            return §§pop();
         }
         §§push(true);
         break loop2;
      }
      
      public function §]!M§(param1:§ !W§) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = null as §,0§;
         §§push(0);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Vector.<§,0§> = §#!]§;
         if(!_loc5_)
         {
            while(_loc2_ < int(_loc3_.length))
            {
               _loc4_ = _loc3_[_loc2_];
               if(_loc6_)
               {
                  _loc2_++;
                  if(!_loc6_)
                  {
                     continue;
                  }
               }
               §@B§(param1,_loc4_.§6k§(param1,null));
            }
         }
      }
      
      public function §%X§(param1:§ !W§, param2:int) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc4_:* = null as §=!U§;
         var _loc5_:* = 0;
         var _loc6_:* = null as Vector.<§,0§>;
         var _loc7_:* = null as §,0§;
         var _loc3_:§=!U§ = achievements;
         loop1:
         while(true)
         {
            if(!_loc9_)
            {
               if(!(param2 in _loc3_.h))
               {
                  break;
               }
               if(!_loc9_)
               {
                  §@B§(param1,achievements.h[param2].§6k§(param1,param2),param2);
               }
            }
            _loc4_ = §6!S§;
            loop2:
            while(true)
            {
               while(true)
               {
                  if(_loc8_)
                  {
                     §§push(param2);
                     if(!_loc8_)
                     {
                        break;
                     }
                     if(!(§§pop() in _loc4_.h))
                     {
                        break loop1;
                     }
                     if(!_loc8_)
                     {
                        break loop2;
                     }
                  }
                  §§push(0);
                  if(_loc8_)
                  {
                     §§push(int(§§pop()));
                  }
                  break;
               }
               _loc5_ = §§pop();
               break;
            }
            _loc6_ = §6!S§.h[param2];
            if(!_loc9_)
            {
               while(true)
               {
                  if(_loc5_ >= int(_loc6_.length))
                  {
                     break loop1;
                  }
                  _loc7_ = _loc6_[_loc5_];
                  if(_loc8_)
                  {
                     _loc5_++;
                     if(_loc8_)
                     {
                        §@B§(param1,_loc7_.§6k§(param1,param2),param2);
                     }
                  }
               }
            }
            break;
         }
      }
      
      public function §-§(param1:Object, param2:§,0§) : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc3_:* = null as §=!U§;
         var _loc4_:* = 0;
         var _loc5_:* = null as §=!U§;
         var _loc6_:* = 0;
         var _loc7_:* = null as §=!U§;
         var _loc8_:* = null as Vector.<§,0§>;
         var _loc9_:* = null as Vector.<§,0§>;
         if(_loc10_)
         {
            if(param1 == null)
            {
               loop0:
               while(true)
               {
                  if(_loc10_)
                  {
                     §#!]§.push(param2);
                     if(!_loc11_)
                     {
                        break;
                     }
                  }
                  addr0070:
                  _loc3_ = achievements;
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        §§push(int(param1));
                        if(!_loc10_)
                        {
                           break;
                        }
                        _loc4_ = §§pop();
                        if(!_loc10_)
                        {
                           break loop0;
                        }
                     }
                     §§push(_loc4_);
                     break;
                  }
                  §§push(§§pop() in _loc3_.h);
                  if(_loc10_)
                  {
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     if(!_loc11_)
                     {
                        achievements.h[int(param1)] = param2;
                     }
                     break;
                  }
                  _loc5_ = §6!S§;
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc11_)
                        {
                           §§push(int(param1));
                           if(_loc11_)
                           {
                              break;
                           }
                           _loc6_ = §§pop();
                           if(_loc11_)
                           {
                              break loop2;
                           }
                        }
                        §§push(_loc6_);
                        break;
                     }
                     §§push(§§pop() in _loc5_.h);
                     if(!_loc11_)
                     {
                        §§push(!§§pop());
                     }
                     if(§§pop())
                     {
                        if(_loc10_)
                        {
                           break;
                        }
                        break loop0;
                     }
                     §§goto(addr014f);
                  }
                  _loc7_ = §6!S§;
                  _loc8_ = new Vector.<§,0§>(0,false);
                  _loc9_ = _loc8_;
                  if(_loc10_)
                  {
                     _loc7_.h[int(param1)] = _loc9_;
                  }
                  addr014f:
                  §6!S§.h[int(param1)].push(param2);
                  break;
               }
            }
            else if(param1 >= 0)
            {
               §§goto(addr0070);
            }
         }
      }
      
      public function §!c§(param1:Object, param2:Array, param3:§<!§, param4:Array = undefined, param5:Object = undefined, param6:String = undefined) : void
      {
         var a3:Boolean;
         var a2:Vector.<int>;
         var a1:Vector.<§#!G§>;
         var f:Function;
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc9_:* = null as Vector.<int>;
         var _loc10_:* = null as Vector.<int>;
         while(true)
         {
            if(_loc11_)
            {
               if(param5 != null)
               {
                  break;
               }
            }
            param5 = true;
            break;
         }
         var _loc7_:Vector.<§#!G§> = new Vector.<§#!G§>(0,false);
         var _loc8_:Vector.<§#!G§> = _loc7_;
         while(true)
         {
            if(!_loc12_)
            {
               §>!,§.§6!3§(param2,_loc8_);
               if(!_loc11_)
               {
                  break;
               }
            }
            if(param4 != null)
            {
               break;
            }
            addr00ae:
            addr00e0:
            _loc10_ = new Vector.<int>(0,false);
            _loc9_ = _loc10_;
            f = function(param1:Vector.<§#!G§>, param2:Vector.<int>, param3:Boolean, param4:§<!§, param5:§ !W§, param6:Object):ConditionChain
            {
               return new ConditionChain(param1,param2,param3,param4,param5,param6);
            };
            while(true)
            {
               if(!_loc12_)
               {
                  a1 = _loc8_;
                  if(_loc12_)
                  {
                     break;
                  }
               }
               addr00d4:
               a2 = _loc9_;
               if(_loc11_)
               {
                  break;
               }
               §§goto(addr00ec);
            }
            a3 = param5;
            if(_loc11_)
            {
               addr00ec:
               §=! §(param1,function(param1:§<!§, param2:§ !W§, param3:Object):ConditionChain
               {
                  return f(a1,a2,a3,param1,param2,param3);
               },param3,param6);
               §§goto(addr00fa);
            }
            addr00fa:
            return;
         }
         _loc9_ = Vector.<int>(param4);
         while(true)
         {
            if(!_loc12_)
            {
               §§goto(addr00ae);
            }
            §§goto(addr00d4);
         }
         §§goto(addr00e0);
      }
      
      public function §=! §(param1:Object, param2:Function, param3:§<!§, param4:String = undefined) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc6_:* = null as StringMap;
         var _loc5_:§,0§ = new §,0§(param3,param2);
         while(true)
         {
            if(param4 != null)
            {
               if(!_loc8_)
               {
                  break;
               }
               _loc6_ = §[!"§;
               if(!_loc7_)
               {
                  if(param4 in StringMap.§+!#§)
                  {
                     if(_loc8_)
                     {
                        _loc6_.setReserved(param4,_loc5_);
                        if(_loc7_)
                        {
                        }
                     }
                  }
                  else
                  {
                     _loc6_.h[param4] = _loc5_;
                  }
               }
            }
            if(param1 < 0)
            {
               return;
            }
            §-§(param1,_loc5_);
            break;
         }
         loop1:
         while(true)
         {
            while(true)
            {
               §§push(false);
               if(_loc8_)
               {
                  if(param3 == null)
                  {
                     break loop1;
                  }
                  if(_loc7_)
                  {
                     break loop1;
                  }
                  §§pop();
                  if(!_loc8_)
                  {
                     break;
                  }
                  §§push(param3.achievement == null);
                  if(!_loc8_)
                  {
                     break loop1;
                  }
               }
               §§push(!§§pop());
               if(!_loc7_)
               {
                  §§push(Boolean(§§pop()));
               }
               break loop1;
            }
            §-@§(param3.achievement,param1,param3.achievement.character);
            §§goto(addr00fa);
         }
         if(§§pop())
         {
            if(!_loc7_)
            {
               break loop2;
            }
         }
         addr00fa:
      }
   }
}

