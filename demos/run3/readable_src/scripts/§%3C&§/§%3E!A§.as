package §<&§
{
   import § @§.§<!+§;
   import §%!Q§.§ !>§;
   import §%!Q§.§&r§;
   import §%!Q§.§'!]§;
   import §%!Q§.§+#§;
   import §%!Q§.§>K§;
   import §'!W§.§&!A§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import scenes.§+Z§;
   import scenes.Cutscenes;
   import scenes.PlanetMissing;
   import scenes.TheGap;
   import §6!Q§.§'!E§;
   import §67§.§"v§;
   import com.player03.analytics.§8!3§;
   import com.player03.run3.Currency;
   import com.player03.run3.Save;
   import com.player03.run3.api.PlayFabAPI;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.menu.§!!1§;
   import com.player03.run3.menu.§<!J§;
   import com.player03.run3.menu.Leaderboards;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§0!?§;
   import com.player03.run3.save.§2!;§;
   import com.player03.run3.save.§4!^§;
   import com.player03.run3.save.§]k§;
   import flash.net.SharedObject;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   
   public class §>!A§
   {
      
      public function §>!A§()
      {
      }
      
      public static function §63§(param1:SharedObject) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§>!A§.§7!`§(param1));
         if(_loc3_)
         {
            §§push(Boolean(§§pop()));
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §>!A§.§-!^§();
                  }
                  §§push(true);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  return false;
               }
            }
         }
         return §§pop();
      }
      
      public static function §7!`§(param1:SharedObject) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§>!A§.§8q§(param1.data.softEarned,param1.data.lastBuildNumber));
         if(_loc3_)
         {
            return Boolean(§§pop());
         }
      }
      
      public static function §>6§(param1:§=!U§) : Boolean
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc4_:* = null as String;
         var _loc5_:* = null;
         var _loc2_:§4!^§ = Currency.§;!U§;
         §§push(_loc2_.§=-§);
         if(!_loc7_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
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
                        if(_loc6_)
                        {
                           §§push(_loc3_);
                           if(_loc7_)
                           {
                              break;
                           }
                           §§push(§§pop() in StringMap.§+!#§);
                           if(!_loc7_)
                           {
                              if(§§pop())
                              {
                                 if(_loc7_)
                                 {
                                    break loop0;
                                 }
                                 §§push(Boolean(param1.existsReserved(_loc3_)));
                                 if(_loc7_)
                                 {
                                    break loop5;
                                 }
                              }
                              else
                              {
                                 §§push(_loc3_);
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() in param1.h);
                                 if(!_loc6_)
                                 {
                                    break loop4;
                                 }
                              }
                           }
                           if(!§§pop())
                           {
                              break loop1;
                           }
                           if(_loc7_)
                           {
                              break loop0;
                           }
                        }
                        §§push(_loc2_.§=-§);
                        if(_loc6_)
                        {
                           break;
                        }
                        addr00b8:
                        §§push(§§pop() in StringMap.§+!#§);
                        if(!_loc7_)
                        {
                           break loop4;
                        }
                        break loop5;
                     }
                     §§push(§§pop());
                     if(_loc6_)
                     {
                        _loc4_ = §§pop();
                        if(!_loc6_)
                        {
                           break loop0;
                        }
                        §§push(_loc4_);
                     }
                     §§goto(addr00b8);
                  }
                  §§goto(addr012f);
               }
               if(§§pop())
               {
                  break loop0;
               }
               §§push(param1.h[_loc4_]);
               continue loop2;
            }
            addr012f:
            return false;
         }
         _loc5_ = param1.getReserved(_loc4_);
         loop2:
         while(true)
         {
            while(true)
            {
               if(_loc6_)
               {
                  §§push(§>!A§.§8q§(_loc5_.softEarned,_loc5_.buildNumber));
                  if(_loc7_)
                  {
                     break;
                  }
                  §§push(Boolean(§§pop()));
                  if(!_loc6_)
                  {
                     break;
                  }
                  if(!§§pop())
                  {
                     break loop1;
                  }
                  if(_loc7_)
                  {
                     break loop2;
                  }
               }
               PlayFabAPI.§@!A§().§9!W§();
               break loop2;
            }
            return §§pop();
         }
         §§push(true);
         break loop3;
      }
      
      public static function §8q§(param1:int, param2:int) : Boolean
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(false);
                        if(!_loc3_)
                        {
                           if(param1 <= 1000000)
                           {
                              break;
                           }
                           if(_loc3_)
                           {
                              break loop3;
                           }
                           §§pop();
                           if(_loc3_)
                           {
                              break loop2;
                           }
                           §§push(param2);
                           if(!_loc4_)
                           {
                              break loop1;
                           }
                           §§push(§§pop() < 22407);
                           if(_loc3_)
                           {
                              break loop0;
                           }
                        }
                        §§push(Boolean(§§pop()));
                        break;
                     }
                     §§push(!§§pop());
                     break loop0;
                  }
                  §§goto(addr0058);
               }
               §§goto(addr0054);
            }
            addr0058:
            return §§pop() > 200000000;
         }
         if(§§pop())
         {
            addr0054:
            §§push(param1);
            break loop1;
         }
         return true;
      }
      
      public static function §-!^§() : void
      {
         §§push(false);
         var _loc38_:Boolean = true;
         var _loc39_:* = §§pop();
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = null as §<!J§;
         var _loc8_:* = 0;
         var _loc9_:* = null as Vector.<CharacterDef>;
         var _loc10_:* = null as CharacterDef;
         var _loc11_:* = null as § !>§;
         var _loc12_:* = null as §-Q§;
         var _loc13_:int = 0;
         var _loc14_:* = 0;
         var _loc15_:* = false;
         var _loc16_:* = null as §]k§;
         var _loc17_:* = null as §2!;§;
         var _loc21_:* = null;
         var _loc23_:* = null as String;
         var _loc24_:* = null as Vector.<§+#§>;
         var _loc25_:* = null as §+#§;
         var _loc26_:* = null as §'!]§;
         var _loc27_:* = null as Vector.<§'!]§>;
         var _loc28_:* = null as §'!]§;
         var _loc29_:* = null as Vector.<§<!+§>;
         var _loc30_:* = null as §<!+§;
         var _loc31_:* = null as Vector.<§"v§>;
         var _loc32_:* = null as §"v§;
         var _loc33_:* = null as §&r§;
         var _loc34_:* = null as §&r§;
         var _loc37_:* = null as §3!I§;
         if(_loc38_)
         {
            Save.§@!A§().§@!C§();
         }
         var _loc1_:§0!?§ = Save.firstPlayTime;
         while(true)
         {
            §§push(1487320440000);
            if(_loc38_)
            {
               §§push(§§pop() - Number(§8!3§.fromString(Save.§@!A§().get(_loc1_.§=-§,_loc1_.§ -§)).getTime()));
               if(_loc39_)
               {
                  break;
               }
            }
            §§push(§§pop() / 86400000);
            if(_loc38_)
            {
               break;
            }
            addr00ff:
            var _loc2_:* = §§pop();
            var _loc3_:* = 0;
            §§push(0);
            if(!_loc39_)
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            loop22:
            while(true)
            {
               §§push(int(Leaderboards.§4"§().§2Y§.length));
               if(!_loc39_)
               {
                  §§push(int(§§pop()));
                  if(!_loc39_)
                  {
                     _loc5_ = §§pop();
                     if(_loc39_)
                     {
                        break;
                     }
                     while(true)
                     {
                        §§push(_loc4_);
                     }
                     addr0603:
                  }
               }
               while(§§pop() < _loc5_)
               {
                  §§push(_loc4_);
                  if(!_loc39_)
                  {
                     _loc4_++;
                     if(_loc38_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
                  _loc6_ = §§pop();
                  _loc7_ = Leaderboards.§4"§().§2Y§[_loc6_];
                  loop23:
                  while(true)
                  {
                     if(!_loc39_)
                     {
                        loop24:
                        while(true)
                        {
                           §§push(false);
                           if(!_loc39_)
                           {
                              if(_loc7_.timestamp != null)
                              {
                                 while(true)
                                 {
                                    if(_loc38_)
                                    {
                                       §§pop();
                                       if(!_loc38_)
                                       {
                                          break loop24;
                                       }
                                       §§push(_loc7_.timestamp < 1487320440000);
                                       if(_loc39_)
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
                              break loop23;
                           }
                           if(_loc38_)
                           {
                              break;
                           }
                        }
                        §§push(0);
                        if(!_loc39_)
                        {
                           §§push(int(§§pop()));
                        }
                        _loc8_ = §§pop();
                     }
                     _loc9_ = _loc7_.characters;
                     loop26:
                     while(true)
                     {
                        loop27:
                        while(true)
                        {
                           if(_loc38_)
                           {
                              loop20:
                              while(true)
                              {
                                 §§push(_loc8_);
                                 if(!_loc38_)
                                 {
                                    break loop27;
                                 }
                                 §§push(int(_loc9_.length));
                                 if(!_loc38_)
                                 {
                                    break loop26;
                                 }
                                 if(§§pop() < §§pop())
                                 {
                                    _loc10_ = _loc9_[_loc8_];
                                    _loc8_++;
                                    loop28:
                                    while(true)
                                    {
                                       loop29:
                                       while(true)
                                       {
                                          loop30:
                                          while(true)
                                          {
                                             if(_loc10_ == CharacterRegistry.§-P§)
                                             {
                                                if(_loc38_)
                                                {
                                                   continue loop20;
                                                }
                                                addr0343:
                                                addr034c:
                                                if(_loc10_ == CharacterRegistry.§4s§)
                                                {
                                                   if(!_loc38_)
                                                   {
                                                      break loop29;
                                                   }
                                                   addr0356:
                                                   _loc11_ = §>K§.§0x§;
                                                   _loc12_ = _loc11_.§0!R§;
                                                   _loc13_ = int(Save.§@!A§().get(_loc12_.§=-§,int(_loc12_.§ -§)));
                                                   _loc14_ = _loc11_.levelCount;
                                                   §§push(_loc13_);
                                                   §§push(_loc14_);
                                                   if(_loc38_)
                                                   {
                                                      if(§§pop() < §§pop())
                                                      {
                                                         if(_loc39_)
                                                         {
                                                            continue loop20;
                                                         }
                                                         §§push(_loc13_);
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc14_);
                                                      }
                                                      §§push(16);
                                                   }
                                                   if(§§pop() < §§pop())
                                                   {
                                                      if(_loc38_)
                                                      {
                                                         §>K§.§0x§.§0!R§.§?F§(16);
                                                      }
                                                   }
                                                   §>K§.§?t§.§0!R§.§?F§(20);
                                                   continue loop20;
                                                }
                                                §§push(true);
                                                if(_loc39_)
                                                {
                                                   break loop28;
                                                }
                                             }
                                             else if(_loc10_ == CharacterRegistry.skater)
                                             {
                                                if(!_loc38_)
                                                {
                                                   break;
                                                }
                                                _loc11_ = §>K§.§0x§;
                                                _loc12_ = _loc11_.§0!R§;
                                                while(true)
                                                {
                                                   if(_loc38_)
                                                   {
                                                      §§push(int(Save.§@!A§().get(_loc12_.§=-§,int(_loc12_.§ -§))));
                                                      if(_loc39_)
                                                      {
                                                         break;
                                                      }
                                                      _loc13_ = §§pop();
                                                      if(_loc39_)
                                                      {
                                                         continue loop20;
                                                      }
                                                   }
                                                   §§push(_loc11_.levelCount);
                                                   if(!_loc38_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(int(§§pop()));
                                                   if(!_loc39_)
                                                   {
                                                      _loc14_ = §§pop();
                                                      if(!_loc38_)
                                                      {
                                                         continue loop20;
                                                      }
                                                      §§push(_loc13_);
                                                   }
                                                   §§push(_loc14_);
                                                   if(_loc38_)
                                                   {
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         §§push(_loc14_);
                                                         break;
                                                      }
                                                      addr0280:
                                                      if(!_loc39_)
                                                      {
                                                         §§push(_loc13_);
                                                         break;
                                                      }
                                                      §>K§.§0x§.§0!R§.§?F§(10);
                                                      continue loop20;
                                                   }
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      continue loop20;
                                                   }
                                                   if(!_loc38_)
                                                   {
                                                      continue loop20;
                                                   }
                                                   §§goto(addr0280);
                                                }
                                                §§goto(addr0276);
                                             }
                                             else if(_loc10_ == CharacterRegistry.lizard)
                                             {
                                                if(_loc39_)
                                                {
                                                   break loop29;
                                                }
                                                _loc11_ = §>K§.§0x§;
                                                _loc12_ = _loc11_.§0!R§;
                                                loop33:
                                                while(true)
                                                {
                                                   if(!_loc39_)
                                                   {
                                                      _loc13_ = int(Save.§@!A§().get(_loc12_.§=-§,int(_loc12_.§ -§)));
                                                      if(!_loc38_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   _loc14_ = _loc11_.levelCount;
                                                   loop34:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc38_)
                                                         {
                                                            break loop33;
                                                         }
                                                         addr0302:
                                                         §§push(_loc13_);
                                                         break loop34;
                                                      }
                                                      addr030c:
                                                      if(§§pop() < §§pop())
                                                      {
                                                         if(_loc38_)
                                                         {
                                                            §>K§.§0x§.§0!R§.§?F§(10);
                                                         }
                                                      }
                                                      continue loop20;
                                                   }
                                                   §§push(10);
                                                   break loop35;
                                                }
                                                §§push(_loc13_);
                                                if(_loc39_)
                                                {
                                                   break loop34;
                                                }
                                                §§push(_loc14_);
                                                if(!_loc39_)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      §§push(_loc14_);
                                                      break loop34;
                                                   }
                                                   if(!_loc38_)
                                                   {
                                                      continue loop20;
                                                   }
                                                   §§goto(addr0302);
                                                }
                                                §§goto(addr030c);
                                             }
                                             else
                                             {
                                                §§push(true);
                                                if(_loc38_)
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc10_ != CharacterRegistry.§5D§)
                                                      {
                                                         §§pop();
                                                         if(_loc39_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr0343);
                                                      }
                                                      §§goto(addr034c);
                                                   }
                                                   §§goto(addr0356);
                                                }
                                             }
                                             loop37:
                                             while(true)
                                             {
                                                loop38:
                                                while(true)
                                                {
                                                   §§push(true);
                                                   if(!_loc39_)
                                                   {
                                                      if(_loc10_ == CharacterRegistry.child)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc39_)
                                                      {
                                                         break loop37;
                                                      }
                                                   }
                                                   §§pop();
                                                   while(true)
                                                   {
                                                      if(!_loc39_)
                                                      {
                                                         §§push(_loc10_ == CharacterRegistry.§52§);
                                                         if(_loc38_)
                                                         {
                                                            break loop37;
                                                         }
                                                         break loop38;
                                                      }
                                                      addr0411:
                                                      §§pop();
                                                      break loop30;
                                                   }
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc38_)
                                                            {
                                                               _loc11_ = §>K§.§0x§;
                                                               _loc12_ = _loc11_.§0!R§;
                                                               while(true)
                                                               {
                                                                  §§push(int(Save.§@!A§().get(_loc12_.§=-§,int(_loc12_.§ -§))));
                                                                  if(_loc38_)
                                                                  {
                                                                     _loc13_ = §§pop();
                                                                     §§push(_loc11_.levelCount);
                                                                     if(_loc39_)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  _loc14_ = int(§§pop());
                                                                  §§push(_loc13_);
                                                                  if(!_loc38_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(_loc14_);
                                                                  if(_loc38_)
                                                                  {
                                                                     if(§§pop() < §§pop())
                                                                     {
                                                                        §§push(_loc13_);
                                                                        if(_loc38_)
                                                                        {
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§push(_loc14_);
                                                                     break;
                                                                  }
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     if(!_loc38_)
                                                                     {
                                                                        continue loop20;
                                                                     }
                                                                     §>K§.§0x§.§0!R§.§?F§(29);
                                                                     if(_loc39_)
                                                                     {
                                                                        continue loop20;
                                                                     }
                                                                  }
                                                                  §>K§.§^!+§.§0!R§.§?F§(25);
                                                                  continue loop20;
                                                               }
                                                               §§goto(addr0491);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            if(_loc10_.§?!F§ != null)
                                                            {
                                                               break loop29;
                                                            }
                                                            §§push(false);
                                                            if(!_loc39_)
                                                            {
                                                               break loop28;
                                                            }
                                                            §§goto(addr051b);
                                                         }
                                                         §§goto(addr051d);
                                                      }
                                                      §§goto(addr051f);
                                                   }
                                                   §§goto(addr0533);
                                                }
                                                if(§§pop())
                                                {
                                                   continue loop40;
                                                }
                                                if(_loc39_)
                                                {
                                                   continue loop40;
                                                }
                                                §§goto(addr0411);
                                             }
                                             §§push(Boolean(§§pop()));
                                             break loop38;
                                          }
                                          §§push(_loc10_ == CharacterRegistry.§]![§);
                                          if(_loc38_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          continue loop40;
                                       }
                                       _loc16_ = _loc10_.§?!F§;
                                       if(!_loc39_)
                                       {
                                          while(true)
                                          {
                                             §§push(Boolean(Save.§@!A§().get(_loc16_.§=-§,Boolean(_loc16_.§ -§))));
                                             if(!_loc39_)
                                             {
                                                §§push(!§§pop());
                                                if(!_loc38_)
                                                {
                                                   break;
                                                }
                                                §§push(Boolean(§§pop()));
                                                if(_loc39_)
                                                {
                                                   break;
                                                }
                                             }
                                             _loc15_ = §§pop();
                                             if(_loc38_)
                                             {
                                                §§goto(addr051d);
                                             }
                                          }
                                          §§goto(addr051f);
                                       }
                                       §§goto(addr0533);
                                    }
                                    addr051b:
                                    _loc15_ = Boolean(§§pop());
                                    addr051d:
                                    addr051f:
                                    if(_loc15_)
                                    {
                                       if(!_loc39_)
                                       {
                                          _loc10_.§?!F§.§?F§(true);
                                       }
                                       addr0533:
                                       _loc17_ = Currency.softEarned;
                                       if(_loc38_)
                                       {
                                          §§push(_loc17_);
                                          §§push(int(Save.§@!A§().get(_loc17_.§=-§,int(_loc17_.§ -§))));
                                          if(!_loc39_)
                                          {
                                             §§push(§§pop() + _loc10_.§1V§);
                                          }
                                          §§pop().§?F§(§§pop());
                                       }
                                       _loc17_ = Currency.softSpent;
                                       if(!_loc39_)
                                       {
                                          §§push(_loc17_);
                                          §§push(int(Save.§@!A§().get(_loc17_.§=-§,int(_loc17_.§ -§))));
                                          if(_loc38_)
                                          {
                                             §§push(§§pop() + _loc10_.§1V§);
                                          }
                                          §§pop().§?F§(§§pop());
                                       }
                                    }
                                    continue;
                                 }
                                 if(_loc39_)
                                 {
                                    break loop23;
                                 }
                              }
                              break;
                           }
                           §§push(_loc7_.score);
                           if(!_loc38_)
                           {
                              break;
                           }
                           §§push(int(_loc7_.characters.length));
                           if(!_loc39_)
                           {
                              break loop26;
                           }
                           §§push(§§pop() / §§pop());
                           if(!_loc39_)
                           {
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr0602);
                        }
                        §§goto(addr05f9);
                     }
                     §§push(§§pop() / §§pop());
                     if(_loc38_)
                     {
                        if(§§pop() > _loc3_)
                        {
                           if(!_loc39_)
                           {
                              §§push(_loc7_.score);
                              break loop27;
                           }
                        }
                        break;
                     }
                     addr0602:
                     _loc3_ = §§pop();
                     break;
                  }
                  §§goto(addr0603);
               }
               loop43:
               while(true)
               {
                  loop44:
                  while(true)
                  {
                     §§push(_loc3_);
                     §§push(100);
                     if(!_loc39_)
                     {
                        §§push(§§pop() < §§pop());
                        if(!_loc39_)
                        {
                           §§push(!§§pop());
                        }
                        if(§§pop())
                        {
                           if(!_loc39_)
                           {
                              loop45:
                              while(true)
                              {
                                 if(_loc3_ < 200)
                                 {
                                    loop46:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          §§push(1.2);
                                          if(_loc38_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc38_)
                                             {
                                                break;
                                             }
                                             §§push(Number(§§pop()));
                                             if(!_loc39_)
                                             {
                                                _loc2_ = §§pop();
                                                break loop44;
                                             }
                                             addr067c:
                                             §§push(§§pop() * 2);
                                             if(_loc39_)
                                             {
                                                break loop46;
                                             }
                                          }
                                          else
                                          {
                                             addr065e:
                                             §§push(§§pop() * §§pop());
                                             if(_loc38_)
                                             {
                                                _loc2_ = §§pop();
                                                break loop44;
                                             }
                                          }
                                          §§push(Number(§§pop()));
                                          if(_loc38_)
                                          {
                                             break;
                                          }
                                          addr069a:
                                          §§push(1025);
                                          if(_loc38_)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                §§push(_loc2_);
                                                break loop46;
                                             }
                                             addr06c3:
                                             addr06c1:
                                             §§push(_loc2_ * 5);
                                             break loop43;
                                          }
                                          break loop45;
                                       }
                                       _loc2_ = §§pop();
                                       break loop44;
                                    }
                                 }
                                 else
                                 {
                                    §§push(_loc3_);
                                    if(_loc39_)
                                    {
                                       break loop46;
                                    }
                                    if(§§pop() < 413)
                                    {
                                       break loop22;
                                    }
                                    if(_loc3_ < 612)
                                    {
                                       if(!_loc38_)
                                       {
                                          break loop44;
                                       }
                                       §§goto(addr067c);
                                       §§push(_loc2_);
                                    }
                                    else
                                    {
                                       §§push(_loc3_);
                                       if(!_loc39_)
                                       {
                                          §§goto(addr069a);
                                       }
                                    }
                                    §§goto(addr06c1);
                                 }
                                 break loop46;
                              }
                              §§push(§§pop() * §§pop());
                              if(!_loc39_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc39_)
                                 {
                                    break loop43;
                                 }
                              }
                              _loc2_ = §§pop();
                           }
                        }
                        break;
                     }
                     §§goto(addr06c3);
                  }
                  §§push("real");
                  §§push(3);
                  §§push("game");
                  §§push(§>K§.§0x§.§99§(40));
                  if(!_loc39_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§push(null);
                  §§push("real");
                  §§push(10);
                  §§push("game");
                  §§push(§>K§.§0x§.§99§(65));
                  if(!_loc39_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§push(null);
                  §§push("real");
                  §§push(17);
                  §§push("game");
                  §§push(§>K§.§`S§.§99§(7));
                  if(!_loc39_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§push(null);
                  §§push("real");
                  §§push(28);
                  §§push("game");
                  §§push(§>K§.§]0§.§99§());
                  if(!_loc39_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§push(null);
                  §§push("real");
                  §§push(35);
                  §§push("game");
                  §§push(§>K§.home1.§99§(1));
                  if(_loc38_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§push(null);
                  if(!_loc39_)
                  {
                     §§push(§§pop());
                  }
                  var _loc18_:* = §§pop();
                  var _loc19_:* = 0;
                  var _loc20_:* = 0;
                  if(_loc38_)
                  {
                     loop48:
                     while(true)
                     {
                        §§push(0);
                        if(!_loc39_)
                        {
                           §§push(int(§§pop()));
                           if(!_loc38_)
                           {
                              break;
                           }
                        }
                        _loc4_ = §§pop();
                        if(_loc38_)
                        {
                           while(true)
                           {
                              §§push(_loc4_);
                              break loop48;
                           }
                        }
                     }
                     loop1:
                     while(§§pop() < int(_loc18_.length))
                     {
                        _loc21_ = _loc18_[_loc4_];
                        loop49:
                        while(true)
                        {
                           loop50:
                           while(true)
                           {
                              if(!_loc39_)
                              {
                                 _loc4_++;
                                 if(!_loc39_)
                                 {
                                    loop51:
                                    while(true)
                                    {
                                       loop52:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          §§push(Number(_loc21_.real));
                                          if(_loc38_)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                if(_loc38_)
                                                {
                                                   addr07cc:
                                                   §§push(Number(_loc21_.game));
                                                   if(_loc38_)
                                                   {
                                                      _loc19_ = §§pop();
                                                      if(_loc38_)
                                                      {
                                                         break loop49;
                                                      }
                                                      break loop1;
                                                   }
                                                   break loop50;
                                                }
                                                break loop49;
                                             }
                                             §§push(_loc19_);
                                             §§push(_loc2_);
                                             if(_loc38_)
                                             {
                                                §§push(_loc20_);
                                                if(!_loc38_)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop() - §§pop());
                                                if(!_loc38_)
                                                {
                                                   break loop51;
                                                }
                                             }
                                          }
                                          §§push(Number(_loc21_.real));
                                          if(_loc38_)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc20_);
                                                if(_loc38_)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc38_)
                                                   {
                                                      break loop52;
                                                   }
                                                   addr0848:
                                                   §§push(_loc19_);
                                                }
                                                §§push(§§pop() - §§pop());
                                                break;
                                             }
                                             addr084b:
                                             §§push(§§pop() * §§pop());
                                             break loop51;
                                          }
                                          break;
                                       }
                                       §§push(§§pop() / §§pop());
                                       if(!_loc38_)
                                       {
                                          break;
                                       }
                                       §§push(Number(_loc21_.game));
                                       if(!_loc39_)
                                       {
                                          §§goto(addr0848);
                                       }
                                       §§goto(addr084b);
                                    }
                                    §§push(§§pop() + §§pop());
                                    break;
                                 }
                                 break loop49;
                              }
                              §§goto(addr07cc);
                           }
                           §§push(Number(§§pop()));
                           if(!_loc39_)
                           {
                              §§goto(addr0855);
                           }
                           §§goto(addr0856);
                        }
                        §§push(Number(_loc21_.real));
                        if(_loc39_)
                        {
                           addr0856:
                           _loc19_ = Number(§§pop());
                           addr0855:
                           break;
                        }
                        _loc20_ = §§pop();
                        if(!_loc38_)
                        {
                           break;
                        }
                        §§push(_loc4_);
                     }
                  }
                  §§push(["primary","winter","dark","boxes","river","newlyFormed","memory","sidePathA","sidePathB","sidePathD","sidePathG","sidePathL","sidePathM","sidePathT","sidePathU","sidePathW","home0","home1","home2","wormholeN"]);
                  if(!_loc39_)
                  {
                     §§push(§§pop());
                  }
                  var _loc22_:* = §§pop();
                  loop54:
                  while(true)
                  {
                     if(_loc38_)
                     {
                        loop55:
                        while(true)
                        {
                           §§push(0);
                           if(_loc38_)
                           {
                              §§push(int(§§pop()));
                              if(!_loc38_)
                              {
                                 break;
                              }
                           }
                           _loc4_ = §§pop();
                           if(_loc38_)
                           {
                              while(true)
                              {
                                 §§push(_loc4_);
                                 break loop55;
                              }
                              addr0a86:
                           }
                           while(true)
                           {
                              _loc11_ = §>K§.§@!A§().§2! §.get(_loc23_);
                              _loc12_ = _loc11_.§0!R§;
                              loop56:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(int(Save.§@!A§().get(_loc12_.§=-§,int(_loc12_.§ -§))));
                                    if(_loc38_)
                                    {
                                       _loc5_ = §§pop();
                                       if(!_loc38_)
                                       {
                                          break;
                                       }
                                       §§push(_loc11_.levelCount);
                                       if(!_loc38_)
                                       {
                                          break loop56;
                                       }
                                    }
                                    loop58:
                                    while(true)
                                    {
                                       loop59:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             if(!_loc39_)
                                             {
                                                _loc6_ = §§pop();
                                                if(!_loc38_)
                                                {
                                                   break;
                                                }
                                                §§push(_loc5_);
                                                if(_loc38_)
                                                {
                                                   §§push(_loc6_);
                                                   if(_loc38_)
                                                   {
                                                      if(§§pop() < §§pop())
                                                      {
                                                         §§push(_loc5_);
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc6_);
                                                         if(!_loc38_)
                                                         {
                                                            break loop56;
                                                         }
                                                      }
                                                      §§push(1);
                                                      if(!_loc38_)
                                                      {
                                                         break loop59;
                                                      }
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§push(int(§§pop()));
                                                if(_loc39_)
                                                {
                                                   break loop58;
                                                }
                                             }
                                             _loc8_ = §§pop();
                                             §§push(_loc11_.levelCount);
                                             if(!_loc39_)
                                             {
                                                §§push(1);
                                                if(!_loc39_)
                                                {
                                                   break loop59;
                                                }
                                                §§goto(addr09ee);
                                             }
                                             §§goto(addr09ec);
                                          }
                                          §§goto(addr09d7);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc38_)
                                       {
                                          break;
                                       }
                                       §§goto(addr09b0);
                                    }
                                    _loc13_ = §§pop();
                                    §§goto(addr09ea);
                                 }
                                 _loc12_ = _loc11_.§0!R§;
                                 loop61:
                                 while(true)
                                 {
                                    loop62:
                                    while(true)
                                    {
                                       loop63:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             if(_loc38_)
                                             {
                                                §§push(int(Save.§@!A§().get(_loc12_.§=-§,int(_loc12_.§ -§))));
                                                if(!_loc38_)
                                                {
                                                   break loop62;
                                                }
                                                _loc5_ = §§pop();
                                                if(_loc38_)
                                                {
                                                   §§push(_loc11_.levelCount);
                                                   if(_loc38_)
                                                   {
                                                      _loc6_ = int(§§pop());
                                                      if(_loc39_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(_loc5_);
                                                      if(!_loc38_)
                                                      {
                                                         break loop62;
                                                      }
                                                   }
                                                   §§push(_loc6_);
                                                   if(_loc39_)
                                                   {
                                                      break loop63;
                                                   }
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      §§push(_loc6_);
                                                      break loop62;
                                                   }
                                                   if(_loc39_)
                                                   {
                                                      break loop61;
                                                   }
                                                }
                                             }
                                             §§push(_loc5_);
                                             if(_loc39_)
                                             {
                                             }
                                             break loop62;
                                          }
                                          Cutscenes.§3'§(_loc11_.endCutscene).§,!N§(true);
                                          break loop61;
                                       }
                                       if(§§pop() >= §§pop())
                                       {
                                          if(!_loc39_)
                                          {
                                             break loop64;
                                          }
                                       }
                                       break loop61;
                                    }
                                    §§push(_loc11_.levelCount);
                                    break loop63;
                                 }
                                 §§goto(addr0a86);
                              }
                              while(true)
                              {
                                 _loc14_ = §§pop();
                                 §§push(_loc19_);
                                 §§push(_loc11_.§99§(_loc14_));
                                 if(_loc38_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 if(§§pop() < §§pop())
                                 {
                                    break loop57;
                                 }
                                 if(_loc39_)
                                 {
                                    break loop57;
                                 }
                                 loop8:
                                 while(true)
                                 {
                                    _loc11_.§0!R§.§?F§(_loc14_);
                                    addr09ea:
                                    while(true)
                                    {
                                       §§push(_loc8_);
                                       addr09ec:
                                       loop5:
                                       while(true)
                                       {
                                          §§push(_loc13_);
                                          addr09ee:
                                          while(true)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                break loop57;
                                             }
                                             addr09b0:
                                             §§push(_loc8_);
                                             while(true)
                                             {
                                                _loc8_++;
                                                §§push(int(§§pop()));
                                                if(_loc38_)
                                                {
                                                   break loop5;
                                                }
                                                continue loop5;
                                             }
                                          }
                                          break loop57;
                                       }
                                       break loop8;
                                    }
                                 }
                              }
                              break loop57;
                           }
                        }
                        while(true)
                        {
                           if(§§pop() >= int(_loc22_.length))
                           {
                              break loop54;
                           }
                           §§push(_loc22_[_loc4_]);
                           if(!_loc39_)
                           {
                              §§push(§§pop());
                           }
                           _loc23_ = §§pop();
                           if(!_loc39_)
                           {
                              break loop61;
                           }
                           continue loop56;
                        }
                        break;
                     }
                     while(true)
                     {
                        _loc4_++;
                        if(!_loc38_)
                        {
                           break loop54;
                        }
                        continue loop56;
                     }
                     break;
                  }
                  _loc11_ = §>K§.§>y§;
                  _loc12_ = _loc11_.§0!R§;
                  loop65:
                  while(true)
                  {
                     loop66:
                     while(true)
                     {
                        §§push(int(Save.§@!A§().get(_loc12_.§=-§,int(_loc12_.§ -§))));
                        if(!_loc39_)
                        {
                           _loc4_ = int(§§pop());
                           §§push(_loc11_.levelCount);
                           if(!_loc38_)
                           {
                              break;
                           }
                           _loc5_ = int(§§pop());
                           if(_loc39_)
                           {
                              break loop65;
                           }
                           §§push(_loc4_);
                        }
                        §§push(_loc5_);
                        if(!_loc39_)
                        {
                           if(§§pop() < §§pop())
                           {
                              loop71:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    if(!_loc39_)
                                    {
                                       break loop66;
                                    }
                                    addr0d12:
                                    §§push(int(§§pop()));
                                    if(!_loc39_)
                                    {
                                       _loc6_ = §§pop();
                                       break loop71;
                                    }
                                    §§goto(addr0d24);
                                 }
                                 §§goto(addr0e67);
                              }
                              §§push(0);
                              if(!_loc39_)
                              {
                                 addr0d24:
                                 §§push(int(§§pop()));
                              }
                              _loc8_ = §§pop();
                              break loop65;
                           }
                           §§push(_loc5_);
                           break;
                        }
                        addr0af4:
                        if(§§pop() > §§pop())
                        {
                           Cutscenes.§5!H§().§,!N§(true);
                        }
                        loop73:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(_loc19_);
                              if(_loc38_)
                              {
                                 §§push(§+#§.§!B§(0));
                                 if(_loc39_)
                                 {
                                    break;
                                 }
                                 §§push(Number(§§pop()));
                                 if(_loc39_)
                                 {
                                    break;
                                 }
                                 if(§§pop() >= §§pop())
                                 {
                                    if(!_loc38_)
                                    {
                                       break loop73;
                                    }
                                    Cutscenes.§,!L§().§,!N§(true);
                                    if(!_loc38_)
                                    {
                                       break loop65;
                                    }
                                    _loc6_ = 0;
                                    _loc24_ = §+#§.§,!B§();
                                    if(!_loc39_)
                                    {
                                       loop13:
                                       while(_loc6_ < int(_loc24_.length))
                                       {
                                          _loc25_ = _loc24_[_loc6_];
                                          if(_loc38_)
                                          {
                                             _loc6_++;
                                          }
                                          _loc26_ = null;
                                          if(!_loc39_)
                                          {
                                             §§push(0);
                                             if(_loc38_)
                                             {
                                                §§push(int(§§pop()));
                                             }
                                             _loc8_ = §§pop();
                                          }
                                          _loc27_ = _loc25_.§ b§;
                                          loop75:
                                          while(true)
                                          {
                                             if(!_loc39_)
                                             {
                                                while(_loc8_ < int(_loc27_.length))
                                                {
                                                   _loc28_ = _loc27_[_loc8_];
                                                   if(_loc39_)
                                                   {
                                                      break loop75;
                                                   }
                                                   _loc8_++;
                                                   if(!_loc38_)
                                                   {
                                                      break loop75;
                                                   }
                                                   if(_loc19_ < Number(_loc28_.§3[§.customDate))
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc38_)
                                                   {
                                                      break loop75;
                                                   }
                                                   _loc26_ = _loc28_;
                                                   if(_loc38_)
                                                   {
                                                      if(_loc28_.§2!&§ != null)
                                                      {
                                                         if(!_loc39_)
                                                         {
                                                            _loc28_.§2!&§.§,!N§(true);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§push(0);
                                             if(_loc38_)
                                             {
                                                §§push(int(§§pop()));
                                             }
                                             _loc8_ = §§pop();
                                             break;
                                          }
                                          _loc29_ = _loc25_.§-!>§;
                                          loop76:
                                          while(true)
                                          {
                                             if(_loc38_)
                                             {
                                                while(_loc8_ < int(_loc29_.length))
                                                {
                                                   _loc30_ = _loc29_[_loc8_];
                                                   if(!_loc39_)
                                                   {
                                                      _loc8_++;
                                                      if(_loc39_)
                                                      {
                                                         break loop76;
                                                      }
                                                      if(_loc19_ < Number(_loc30_.§3[§.customDate))
                                                      {
                                                         break;
                                                      }
                                                      if(_loc39_)
                                                      {
                                                         break loop76;
                                                      }
                                                   }
                                                   _loc26_ = _loc30_;
                                                   if(!_loc39_)
                                                   {
                                                      if(_loc30_.§2!&§ != null)
                                                      {
                                                         if(_loc38_)
                                                         {
                                                            _loc30_.§2!&§.§,!N§(true);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             if(_loc26_ != null)
                                             {
                                                if(!_loc39_)
                                                {
                                                   _loc25_.§4!X§(_loc26_);
                                                }
                                                break;
                                             }
                                             continue loop13;
                                          }
                                          _loc17_ = _loc25_.§,U§;
                                          if(!_loc39_)
                                          {
                                             _loc25_.§+!=§ = int(Save.§@!A§().get(_loc17_.§=-§,int(_loc17_.§ -§)));
                                             if(!_loc39_)
                                             {
                                                _loc25_.§?D§.§3X§();
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§push(_loc19_);
                              }
                              §§push(1.0222);
                              break;
                           }
                           if(§§pop() >= §§pop())
                           {
                              if(_loc38_)
                              {
                                 break;
                              }
                              break loop71;
                           }
                           §§goto(addr0e67);
                        }
                        §§goto(addr0d12);
                     }
                     §§goto(addr0af4);
                  }
                  _loc27_ = §&r§.§@!A§().§;I§;
                  if(!_loc39_)
                  {
                     while(_loc8_ < int(_loc27_.length))
                     {
                        _loc26_ = _loc27_[_loc8_];
                        if(_loc38_)
                        {
                           _loc8_++;
                           if(_loc26_ != null)
                           {
                              if(_loc19_ < Number(_loc26_.§3[§.customDate))
                              {
                                 break;
                              }
                              _loc6_++;
                              continue;
                           }
                           if(!_loc38_)
                           {
                              continue;
                           }
                        }
                        _loc6_++;
                        if(!_loc38_)
                        {
                           §§goto(addr0da5);
                        }
                     }
                  }
                  §§push(0);
                  if(!_loc39_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc8_ = §§pop();
                  addr0da5:
                  _loc31_ = §&r§.§@!A§().§+!@§;
                  if(!_loc39_)
                  {
                     while(_loc8_ < int(_loc31_.length))
                     {
                        _loc32_ = _loc31_[_loc8_];
                        if(!_loc39_)
                        {
                           _loc8_++;
                           if(!_loc39_)
                           {
                              if(_loc19_ < Number(_loc32_.§=!§.§3[§.customDate))
                              {
                                 continue;
                              }
                              if(_loc39_)
                              {
                                 continue;
                              }
                           }
                           _loc32_.§+!+§.§,!N§(true);
                        }
                     }
                  }
                  _loc33_ = §&r§.§@!A§();
                  _loc17_ = §&r§.§,U§;
                  while(true)
                  {
                     if(_loc38_)
                     {
                        if(_loc6_ <= int(Save.§@!A§().get(_loc17_.§=-§,int(_loc17_.§ -§))))
                        {
                           break;
                        }
                     }
                     _loc34_ = §&r§.§@!A§();
                     if(_loc38_)
                     {
                        §&r§.§,U§.§?F§(_loc6_);
                     }
                     break;
                  }
                  addr0e67:
                  var _loc35_:§'!E§ = §'!E§.§@!A§();
                  while(true)
                  {
                     §§push(§=B§);
                     §§push(int(_loc35_.§6a§.length));
                     if(_loc38_)
                     {
                        §§push(1);
                        if(_loc39_)
                        {
                           break;
                        }
                        §§push(§§pop() - §§pop());
                     }
                     §§push(-1);
                     break;
                  }
                  var _loc36_:§3!I§ = §§pop().§@W§(§§pop(),§§pop(),-1);
                  if(_loc38_)
                  {
                     while(_loc36_.§#1§ != _loc36_.end)
                     {
                        _loc37_ = _loc36_;
                        if(!_loc39_)
                        {
                           loop69:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(_loc37_);
                                 §§push(_loc37_.§#1§);
                                 if(!_loc39_)
                                 {
                                    §§push(_loc36_.§['§);
                                    if(_loc39_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!_loc38_)
                                    {
                                       break loop69;
                                    }
                                 }
                                 §§push(int(§§pop()));
                                 if(_loc38_)
                                 {
                                    var _temp_1:* = §§pop();
                                    §§push(_temp_1);
                                    §§push(_temp_1);
                                    break;
                                 }
                                 break loop69;
                              }
                              _loc8_ = §§pop();
                              break;
                           }
                           §§pop().§#1§ = §§pop();
                           if(!_loc39_)
                           {
                              §§push(_loc8_);
                              if(!_loc39_)
                              {
                                 §§push(int(§§pop()));
                              }
                              _loc6_ = §§pop();
                              if(_loc38_)
                              {
                                 _loc35_.§6a§[_loc6_].hide();
                              }
                           }
                        }
                     }
                  }
                  return;
               }
               _loc2_ = §§pop();
               break loop44;
            }
            §§goto(addr065e);
         }
         §§goto(addr00ff);
      }
   }
}

