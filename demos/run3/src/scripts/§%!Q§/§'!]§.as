package §%!Q§
{
   import §3!b§.§+Z§;
   import com.player03.run3.Main;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.§,a§;
   
   public class §'!]§
   {
      
      public var §8!>§:int;
      
      public var §&!-§:§ !>§;
      
      public var §3[§:Object;
      
      public var §!'§:Object;
      
      public var §#!>§:String;
      
      public var §3T§:int;
      
      public var §5![§:Number;
      
      public var §'r§:§6O§;
      
      public var §?,§:Function;
      
      public var §2!&§:§+Z§;
      
      public function §'!]§(param1:§6O§, param2:§ !>§, param3:int, param4:Object = undefined, param5:Object = undefined, param6:String = undefined, param7:Object = undefined, param8:Object = undefined, param9:§+Z§ = undefined)
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc10_)
            {
               loop1:
               while(true)
               {
                  if(param5 == null)
                  {
                     if(_loc10_)
                     {
                        break;
                     }
                     param5 = 0;
                  }
                  §'r§ = param1;
                  while(true)
                  {
                     if(!_loc10_)
                     {
                        §&!-§ = param2;
                        if(_loc10_)
                        {
                           break;
                        }
                     }
                     §8!>§ = param3;
                     if(_loc11_)
                     {
                        §5![§ = param5;
                     }
                     §!'§ = param4;
                     if(!_loc10_)
                     {
                        break loop1;
                     }
                     break;
                  }
                  addr008e:
                  §2!&§ = param9;
               }
               §#!>§ = param6;
               §?,§ = param8;
               if(!_loc11_)
               {
                  break;
               }
               §§goto(addr008e);
            }
            while(true)
            {
               §§push(false);
               if(!_loc10_)
               {
                  if(param4 == null)
                  {
                     break;
                  }
                  if(!_loc10_)
                  {
                     §§pop();
                     §§push(param4 > 1);
                     if(_loc10_)
                     {
                        break;
                     }
                  }
               }
               §§push(Boolean(§§pop()));
               break;
            }
            if(§§pop())
            {
               if(!_loc10_)
               {
                  break;
               }
               addr014c:
               §,,§(param7);
            }
            else
            {
               §3T§ = param3;
               if(_loc11_)
               {
                  §§goto(addr014c);
               }
            }
            return;
         }
         §§push(§§findproperty(§3T§));
         §§push(param3);
         if(_loc11_)
         {
            loop4:
            while(true)
            {
               while(true)
               {
                  §§push(param4 - 1);
                  if(_loc11_)
                  {
                     §§push(false);
                     if(!_loc11_)
                     {
                        break;
                     }
                     if(param7 == null)
                     {
                        break;
                     }
                     if(_loc10_)
                     {
                        break;
                     }
                     §§pop();
                     if(_loc10_)
                     {
                        break loop4;
                     }
                  }
                  §§push(Boolean(param7.backwards));
                  break;
               }
               if(§§pop())
               {
                  break;
               }
               §§goto(addr012e);
               §§push(1);
            }
            §§push(-1);
            if(_loc10_)
            {
            }
            addr012e:
         }
         §§pop().§3T§ = §§pop();
         if(_loc10_)
         {
         }
         §§goto(addr014c);
      }
      
      public function §!;§(param1:§6M§) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(_loc2_)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           if(param1.tunnel.backwards)
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              §§push(param1.§73§.§[9§);
                              if(_loc3_)
                              {
                                 break loop0;
                              }
                              §§push(§3T§);
                              if(!_loc3_)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(_loc2_)
                                    {
                                       return true;
                                    }
                                    break loop3;
                                 }
                                 break loop2;
                              }
                           }
                           else
                           {
                              §§push(param1.§73§.§[9§);
                              if(!_loc2_)
                              {
                                 break loop0;
                              }
                              §§push(§3T§);
                              if(!_loc2_)
                              {
                                 break loop1;
                              }
                           }
                           if(§§pop() <= §§pop())
                           {
                              break loop2;
                           }
                           if(!_loc3_)
                           {
                              break loop3;
                           }
                           §§goto(addr00a9);
                        }
                     }
                     return true;
                  }
                  while(true)
                  {
                     §§push(false);
                     if(_loc2_)
                     {
                        if(param1.§73§.§[9§ != §3T§)
                        {
                           break;
                        }
                        if(_loc3_)
                        {
                           break;
                        }
                     }
                     §§pop();
                     if(!_loc3_)
                     {
                        addr00a9:
                        while(true)
                        {
                           §§push(param1.transform.position.z);
                           §§push(param1.§73§.endZ);
                           if(!_loc3_)
                           {
                              §§push(§§pop() + §5![§);
                              if(_loc3_)
                              {
                                 break;
                              }
                           }
                           §§push(Number(§§pop()));
                           break;
                        }
                        §§push(§§pop() >= §§pop());
                        break;
                     }
                  }
                  if(!§§pop())
                  {
                     return false;
                  }
               }
               §§push(param1.§4!Z§);
               break loop0;
            }
            return §§pop() == §§pop();
         }
         §§push(0);
         break loop1;
      }
      
      public function §,,§(param1:Object) : Object
      {
         var a1:§'!]§;
         var f:Function;
         var _gthis:§'!]§;
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = null as Function;
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
                     loop4:
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              _gthis = this;
                              if(param1 == null)
                              {
                                 §3[§ = {};
                              }
                              else
                              {
                                 §3[§ = param1;
                              }
                              while(true)
                              {
                                 §§push(false);
                                 if(_loc3_)
                                 {
                                    while(true)
                                    {
                                       §§push(false);
                                       if(_loc3_)
                                       {
                                          §§push(Reflect.hasField(§3[§,"endTiles"));
                                          if(!_loc4_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(!_loc4_)
                                             {
                                                §§push(!§§pop());
                                             }
                                          }
                                          if(!§§pop())
                                          {
                                             break;
                                          }
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                       }
                                       §§pop();
                                       if(_loc3_)
                                       {
                                          §§push(§&!-§ == null);
                                          if(_loc3_)
                                          {
                                             §§push(!§§pop());
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                          }
                                          §§push(Boolean(§§pop()));
                                          break;
                                       }
                                       break loop4;
                                    }
                                    if(!§§pop())
                                    {
                                       break;
                                    }
                                    if(!_loc3_)
                                    {
                                       break loop4;
                                    }
                                    §§pop();
                                    loop8:
                                    while(true)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(§8!>§);
                                             if(_loc3_)
                                             {
                                                §§push(0);
                                                if(!_loc4_)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      §§push(§8!>§);
                                                      if(_loc3_)
                                                      {
                                                         addr00c4:
                                                         §§push(§&!-§.levelCount);
                                                         if(!_loc4_)
                                                         {
                                                            §§push(§§pop() - 1);
                                                            if(_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            break loop9;
                                                         }
                                                         break;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(§8!>§);
                                                   }
                                                   §§push(-1);
                                                   break loop9;
                                                }
                                                break;
                                             }
                                             §§goto(addr00c4);
                                          }
                                          §§push(§§pop() < §§pop());
                                          break loop8;
                                       }
                                       §§push(§§pop() < §§pop());
                                       break;
                                    }
                                 }
                                 break loop8;
                              }
                              if(§§pop())
                              {
                                 §3[§.endTiles = true;
                              }
                              §3[§.fadeOutOnVictory = 0.2;
                              loop11:
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       §3[§.character = §'r§;
                                       if(_loc4_)
                                       {
                                          break loop3;
                                       }
                                       §§push(false);
                                       if(_loc4_)
                                       {
                                          break loop2;
                                       }
                                       if(§!'§ == null)
                                       {
                                          break;
                                       }
                                       §§pop();
                                       if(!_loc3_)
                                       {
                                          break loop11;
                                       }
                                    }
                                    §§push(§!'§ > 1);
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    break;
                                 }
                                 §§push(false);
                                 if(§5![§ != 0)
                                 {
                                    if(_loc3_)
                                    {
                                       §§pop();
                                       if(!_loc3_)
                                       {
                                          break loop3;
                                       }
                                       §§push(§3[§.victoryCondition == null);
                                    }
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       break loop5;
                                    }
                                    §3[§.victoryCondition = §!;§;
                                    if(_loc4_)
                                    {
                                       break loop0;
                                    }
                                 }
                                 §§goto(addr01c8);
                              }
                              if(§3[§.victoryCondition == null)
                              {
                                 if(!_loc3_)
                                 {
                                    break loop1;
                                 }
                                 §3[§.victoryCondition = §!;§;
                              }
                              addr01c8:
                              while(true)
                              {
                                 if(§#!>§ != null)
                                 {
                                    §3[§.modifyData = function(param1:int, param2:String):String
                                    {
                                       var _temp_1:* = true;
                                       var _loc3_:Boolean = false;
                                       var _loc4_:Boolean = _temp_1;
                                       if(param1 == _gthis.§3T§)
                                       {
                                          §§push(param2);
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop() + _gthis.§#!>§);
                                             if(!_loc4_)
                                             {
                                                §§goto(addr002a);
                                             }
                                          }
                                          return §§pop();
                                       }
                                       §§push(param2);
                                       addr002a:
                                       return §§pop();
                                    };
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(false);
                                 if(!_loc4_)
                                 {
                                    §§push(§?,§);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop());
                                    }
                                    if(§§pop() != null)
                                    {
                                       §§pop();
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       break loop0;
                                    }
                                    break loop4;
                                 }
                                 break loop2;
                              }
                           }
                           §§push(§3[§.victoryCallback == null);
                           if(_loc3_)
                           {
                              break loop2;
                           }
                           break loop4;
                        }
                        §§goto(addr0259);
                     }
                     §§goto(addr021e);
                  }
                  §§push(§§newactivation());
                  §§push(§?,§);
                  if(_loc3_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().§§slot[2] = §§pop();
                  a1 = this;
                  if(!_loc4_)
                  {
                     break loop1;
                  }
                  §§goto(addr0259);
               }
               addr021e:
               if(Boolean(§§pop()))
               {
                  break loop3;
               }
               break loop0;
            }
            if(!_loc4_)
            {
               §§push(§§pop());
            }
            _loc2_ = §§pop();
            addr0259:
            §3[§.victoryCallback = _loc2_;
            break;
         }
         return §3[§;
      }
      
      public function § !7§(param1:Object = undefined) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc3_)
               {
                  if(param1 != null)
                  {
                     break;
                  }
                  if(_loc2_)
                  {
                     break loop0;
                  }
               }
               param1 = 0;
               break;
            }
            §§push(Main.instance);
            §§push(§§findproperty(§ !W§));
            §§push(§8!>§);
            if(!_loc2_)
            {
               while(true)
               {
                  if(Boolean(§3[§.backwards))
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     §§push(-param1);
                  }
                  else
                  {
                     §§push(param1);
                  }
                  §§push(int(§§pop() + §§pop()));
                  break;
               }
            }
            §§pop().§,Z§(new §§pop().§ !W§(§§pop(),§&!-§,§,a§.CHALLENGE,§3[§));
            break;
         }
      }
   }
}

