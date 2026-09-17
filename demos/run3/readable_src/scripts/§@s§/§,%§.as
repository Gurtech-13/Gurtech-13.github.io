package §@s§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§>K§;
   import §%!Z§.§'§;
   import §%!Z§.§^U§;
   import §%!Z§.§`! §;
   import scenes.MyTurn;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Save;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§2!;§;
   import com.player03.run3.save.§9t§;
   import flash.geom.Rectangle;
   
   public class §,%§
   {
      
      public var §5!+§:int;
      
      public var §2!^§:§ !>§;
      
      public var §%?§:§-Q§;
      
      public var §3=§:§-Q§;
      
      public var § !B§:§ !>§;
      
      public var §#J§:int;
      
      public var §^l§:Boolean;
      
      public function §,%§(param1:§ !>§, param2:Object)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:* = null as String;
         while(true)
         {
            if(_loc5_)
            {
               §^l§ = false;
               if(_loc6_)
               {
                  break;
               }
            }
            § !B§ = param1;
            break;
         }
         §§push(param2.altUnlockPath);
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         loop1:
         while(true)
         {
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
                        loop6:
                        while(true)
                        {
                           loop7:
                           while(true)
                           {
                              loop8:
                              while(true)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             §2!^§ = §>K§.§@!A§().§2! §.get(_loc3_);
                                             loop12:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   if(§2!^§ == null)
                                                   {
                                                      §§push(param2.altUnlockPath);
                                                      if(!_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      _loc4_ = §§pop();
                                                      §2!^§ = §>K§.§@!A§().§7j§.get(_loc4_);
                                                      if(_loc6_)
                                                      {
                                                         break loop3;
                                                      }
                                                      if(§2!^§ == null)
                                                      {
                                                         §2!^§ = §>K§.§0x§;
                                                         if(!_loc5_)
                                                         {
                                                            break loop12;
                                                         }
                                                      }
                                                   }
                                                   if(param2.altUnlockPoint != null)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         break loop11;
                                                      }
                                                      §5!+§ = param2.altUnlockPoint;
                                                   }
                                                   else
                                                   {
                                                      §5!+§ = §2!^§.levelCount;
                                                   }
                                                   §#J§ = param2.altEntryPoint;
                                                   if(!_loc5_)
                                                   {
                                                      break loop10;
                                                   }
                                                   §§push(§#J§);
                                                   §§push(param1.levelCount);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop() - 1);
                                                   }
                                                   if(§§pop() < §§pop())
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§push("explore");
                                                         §§push(param1.pathName);
                                                         if(_loc5_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc6_)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc6_)
                                                               {
                                                                  §§push("_alt");
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!_loc6_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        break loop5;
                                                                     }
                                                                     break loop6;
                                                                  }
                                                                  break loop7;
                                                               }
                                                            }
                                                            break loop8;
                                                         }
                                                         break loop9;
                                                      }
                                                   }
                                                }
                                                §§push(§§pop());
                                                if(_loc6_)
                                                {
                                                   break loop4;
                                                }
                                                _loc4_ = §§pop();
                                                while(true)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      break loop12;
                                                   }
                                                   §§goto(addr018b);
                                                }
                                             }
                                             §§push(param1.available);
                                             if(_loc6_)
                                             {
                                                break loop2;
                                             }
                                             if(§§pop())
                                             {
                                                if(!_loc5_)
                                                {
                                                   break loop1;
                                                }
                                                addr018b:
                                                §%?§ = new §2!;§(_loc4_);
                                             }
                                             else
                                             {
                                                §%?§ = new §9t§(_loc4_);
                                             }
                                          }
                                          §§push("explore");
                                          if(!_loc6_)
                                          {
                                             break loop8;
                                          }
                                          §§goto(addr01d1);
                                       }
                                       §§goto(addr01e3);
                                    }
                                    §§goto(addr0205);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc5_)
                                 {
                                    break loop4;
                                 }
                                 break loop5;
                              }
                              §§push(param1.pathName);
                              break loop9;
                           }
                           §§goto(addr01d4);
                        }
                        _loc4_ = §§pop();
                        break loop3;
                     }
                     §§push(§§pop());
                     break loop6;
                  }
                  addr01d4:
                  addr01d1:
                  §§push(§§pop() + "_altbackwards");
                  break loop5;
               }
               §§push(param1.available);
               break;
            }
            if(§§pop())
            {
               addr01e3:
               §3=§ = new §2!;§(_loc4_);
            }
            else
            {
               §3=§ = new §9t§(_loc4_);
            }
            addr0205:
            §#!M§();
            break;
         }
      }
      
      public function §5,§(param1:int, param2:Boolean) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:int = 0;
         var _loc4_:* = false;
         var _loc5_:* = null as §-Q§;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               §§push(param2);
               if(!_loc7_)
               {
                  §§push(!§§pop());
                  if(!_loc7_)
                  {
                     loop2:
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(_loc6_)
                                       {
                                          §§push(param1);
                                          if(_loc7_)
                                          {
                                             break loop4;
                                          }
                                          §§push(§#J§);
                                          if(!_loc7_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!_loc6_)
                                             {
                                                break loop4;
                                             }
                                             §§push(1);
                                             if(!_loc6_)
                                             {
                                                addr00f9:
                                                §§push(§§pop() - §§pop());
                                                break loop4;
                                             }
                                          }
                                          _loc3_ = §§pop() + §§pop();
                                          if(_loc6_)
                                          {
                                             if(§%?§ == null)
                                             {
                                                §§push(false);
                                                if(!_loc7_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(!_loc7_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      break;
                                                   }
                                                }
                                                break loop3;
                                             }
                                          }
                                       }
                                       _loc5_ = §%?§;
                                       if(!_loc7_)
                                       {
                                          §§push(_loc3_ > int(Save.§@!A§().get(_loc5_.§=-§,int(_loc5_.§ -§))));
                                          if(!_loc7_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(_loc6_)
                                             {
                                                _loc4_ = §§pop();
                                                if(!_loc7_)
                                                {
                                                   break;
                                                }
                                                break loop0;
                                             }
                                          }
                                          break loop5;
                                       }
                                       break loop0;
                                    }
                                    §§push(_loc4_);
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       §%?§.§?F§(_loc3_);
                                    }
                                 }
                                 break loop0;
                              }
                              §§push(§#J§);
                              §§push(param1);
                              §§goto(addr00f9);
                           }
                           _loc3_ = §§pop();
                           if(§3=§ != null)
                           {
                              _loc5_ = §3=§;
                              if(_loc6_)
                              {
                                 while(true)
                                 {
                                    §§push(_loc3_ > int(Save.§@!A§().get(_loc5_.§=-§,int(_loc5_.§ -§))));
                                    if(_loc6_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc7_)
                                       {
                                          break;
                                       }
                                    }
                                    _loc4_ = §§pop();
                                    if(_loc6_)
                                    {
                                       break loop1;
                                    }
                                    break loop0;
                                 }
                                 addr0162:
                                 if(§§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       §3=§.§?F§(_loc3_);
                                       if(_loc6_)
                                       {
                                          §#!M§();
                                       }
                                    }
                                 }
                                 break loop0;
                              }
                              break loop1;
                           }
                           §§push(false);
                           if(!_loc7_)
                           {
                              break;
                           }
                           break loop2;
                        }
                        §§push(Boolean(§§pop()));
                        break;
                     }
                  }
               }
               break loop2;
            }
            §§goto(addr0162);
         }
      }
      
      public function §'m§(param1:int, param2:Object = undefined) : Boolean
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:* = false;
         var _loc4_:* = null as §-Q§;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc6_)
               {
                  if(param2 != null)
                  {
                     break;
                  }
                  if(_loc6_)
                  {
                     break loop0;
                  }
               }
               §§push(false);
               if(_loc5_)
               {
                  param2 = §§pop();
                  break;
               }
               addr00db:
               _loc3_ = §§pop();
               break loop0;
            }
            if(§%?§ != null)
            {
               if(!_loc5_)
               {
                  break;
               }
               _loc4_ = §%?§;
               while(true)
               {
                  if(!_loc6_)
                  {
                     loop5:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(param1);
                           §§push(§#J§);
                           if(_loc5_)
                           {
                              §§push(int(Save.§@!A§().get(_loc4_.§=-§,int(_loc4_.§ -§))));
                              if(_loc6_)
                              {
                                 break;
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc6_)
                              {
                                 break loop5;
                              }
                              if(!param2)
                              {
                                 §§push(0);
                                 break;
                              }
                              if(!_loc5_)
                              {
                                 break loop5;
                              }
                           }
                           §§push(1);
                           if(_loc5_)
                           {
                           }
                           break;
                        }
                        §§push(§§pop() - §§pop());
                        break;
                     }
                     while(true)
                     {
                        §§push(§§pop() > §§pop());
                        if(!_loc6_)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc6_)
                           {
                              break;
                           }
                        }
                        _loc3_ = §§pop();
                        if(!_loc6_)
                        {
                           break loop0;
                        }
                        §§goto(addr0103);
                     }
                     §§goto(addr00e3);
                  }
                  §§goto(addr00ee);
               }
               §§goto(addr0167);
            }
            else
            {
               §§push(false);
               if(!_loc6_)
               {
                  §§push(Boolean(§§pop()));
               }
               §§goto(addr00db);
            }
         }
         §§push(_loc3_);
         if(_loc5_)
         {
            addr00e3:
            if(§§pop())
            {
               if(_loc5_)
               {
                  addr00ee:
                  §§push(false);
                  if(_loc5_)
                  {
                     return §§pop();
                  }
                  §§goto(addr0167);
               }
            }
            else if(§3=§ == null)
            {
               addr0167:
               return §§pop();
               §§push(true);
            }
            addr0103:
            _loc4_ = §3=§;
            §§push(param1);
            §§push(§#J§);
            if(!_loc6_)
            {
               loop2:
               while(true)
               {
                  §§push(int(Save.§@!A§().get(_loc4_.§=-§,int(_loc4_.§ -§))));
                  if(_loc5_)
                  {
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc5_)
                        {
                           if(!param2)
                           {
                              §§push(0);
                              break;
                           }
                           if(_loc6_)
                           {
                              break loop2;
                           }
                        }
                        §§push(1);
                        if(_loc6_)
                        {
                        }
                        break;
                     }
                  }
                  §§push(§§pop() - §§pop());
                  break;
               }
            }
            return §§pop() >= §§pop();
         }
         §§goto(addr0167);
      }
      
      public function §2!2§() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(§2!^§.§'m§(§5!+§));
         if(!_loc2_)
         {
            return Boolean(§§pop());
         }
      }
      
      public function §#!M§() : Boolean
      {
         §§push(false);
         var _loc13_:Boolean = true;
         var _loc14_:* = §§pop();
         var _loc7_:* = false;
         var _loc8_:* = null as § !>§;
         var _loc9_:* = null as §-Q§;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:* = null as §-Q§;
         var _loc1_:§ !>§ = § !B§;
         var _loc2_:§-Q§ = _loc1_.§0!R§;
         §§push(int(Save.§@!A§().get(_loc2_.§=-§,int(_loc2_.§ -§))));
         if(!_loc14_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_.levelCount);
         if(!_loc14_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:§-Q§ = §3=§;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc13_)
               {
                  §§push(_loc3_);
                  if(_loc14_)
                  {
                     break loop0;
                  }
                  §§push(_loc4_);
                  if(_loc14_)
                  {
                     break;
                  }
                  if(§§pop() >= §§pop())
                  {
                     §§push(_loc4_);
                     break loop0;
                  }
               }
               §§push(_loc3_);
               if(_loc14_)
               {
               }
               break loop0;
            }
            while(true)
            {
               §§push(2);
               if(_loc13_)
               {
                  §§push(§§pop() - §§pop());
                  if(!_loc13_)
                  {
                     break;
                  }
                  §§goto(addr00b8);
               }
               §§goto(addr00cc);
            }
            §§goto(addr00cd);
         }
         while(true)
         {
            §§push(§#J§);
            if(!_loc14_)
            {
               break loop1;
            }
            addr00b8:
            addr00cc:
            §§push(§§pop() - int(Save.§@!A§().get(_loc5_.§=-§,int(_loc5_.§ -§))));
            break;
         }
         addr00cd:
         §§push(§§pop() >= §§pop());
         if(!_loc14_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc6_:* = §§pop();
         while(true)
         {
            loop4:
            while(true)
            {
               loop11:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc14_)
                     {
                        §§push(§^l§);
                        if(!_loc14_)
                        {
                           if(§§pop() == _loc6_)
                           {
                              break loop4;
                           }
                           if(_loc14_)
                           {
                              continue loop6;
                           }
                        }
                        else
                        {
                           §§goto(addr0202);
                        }
                     }
                     §^l§ = _loc6_;
                     if(_loc14_)
                     {
                        break loop11;
                     }
                     §§push(§^l§);
                     if(!_loc13_)
                     {
                        break;
                     }
                     if(!§§pop())
                     {
                        break loop4;
                     }
                     if(!_loc14_)
                     {
                        continue loop6;
                     }
                     §§goto(addr0130);
                  }
                  §§goto(addr0209);
               }
               §§goto(addr020b);
            }
            §§goto(addr02ab);
         }
         loop5:
         while(true)
         {
            loop6:
            while(true)
            {
               while(true)
               {
                  if(§%?§ != null)
                  {
                     if(_loc13_)
                     {
                        _loc8_ = § !B§;
                        _loc9_ = _loc8_.§0!R§;
                        addr0130:
                        if(!_loc14_)
                        {
                           loop8:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(int(Save.§@!A§().get(_loc9_.§=-§,int(_loc9_.§ -§))));
                                 if(!_loc14_)
                                 {
                                    §§push(int(§§pop()));
                                    if(!_loc14_)
                                    {
                                       _loc10_ = §§pop();
                                       if(_loc14_)
                                       {
                                          break;
                                       }
                                       §§push(_loc8_.levelCount);
                                       if(!_loc13_)
                                       {
                                          break loop8;
                                       }
                                    }
                                 }
                                 §§push(int(§§pop()));
                                 break loop8;
                              }
                           }
                           _loc11_ = §§pop();
                           break loop9;
                        }
                        _loc12_ = §%?§;
                        if(_loc14_)
                        {
                           break loop6;
                        }
                        while(true)
                        {
                           §§push(_loc10_);
                           if(_loc13_)
                           {
                              §§push(_loc11_);
                              if(!_loc13_)
                              {
                                 break;
                              }
                              if(§§pop() < §§pop())
                              {
                                 §§push(_loc10_);
                                 if(_loc13_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§push(_loc11_);
                              }
                           }
                           §§push(§#J§);
                           if(_loc13_)
                           {
                              break;
                           }
                           addr01e5:
                           §§push(§§pop() < §§pop());
                           if(!_loc14_)
                           {
                              §§push(Boolean(§§pop()));
                              if(!_loc13_)
                              {
                                 break loop5;
                              }
                           }
                           _loc7_ = §§pop();
                        }
                        §§goto(addr01e5);
                     }
                  }
                  else
                  {
                     §§push(false);
                     if(_loc14_)
                     {
                        break;
                     }
                     §§push(Boolean(§§pop()));
                     if(_loc14_)
                     {
                        break;
                     }
                     _loc7_ = §§pop();
                  }
                  addr020b:
                  §§push(_loc7_);
                  break loop5;
               }
               addr02ab:
               return §§pop();
            }
            if(§%?§ != null)
            {
               if(_loc13_)
               {
                  §%?§.§3X§();
               }
            }
            break loop4;
         }
         if(§§pop())
         {
            if(_loc14_)
            {
               break loop6;
            }
            _loc8_ = § !B§;
            _loc9_ = §%?§;
            if(!_loc14_)
            {
               §§push(§#J§);
               if(!_loc14_)
               {
                  §§push(§§pop() + int(Save.§@!A§().get(_loc9_.§=-§,int(_loc9_.§ -§))));
                  if(!_loc14_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc10_ = §§pop();
               if(!_loc14_)
               {
                  _loc8_.§0!R§.§?F§(_loc10_);
               }
            }
         }
         §3=§.§3X§();
         break loop6;
      }
   }
}

