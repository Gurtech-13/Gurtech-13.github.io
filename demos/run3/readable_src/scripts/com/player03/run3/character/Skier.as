package com.player03.run3.character
{
   import §%!Q§.§>K§;
   import §%G§.§ m§;
   import §,!G§.§%M§;
   import §,!G§.§6!7§;
   import com.player03.run3.level.Level;
   import com.player03.run3.save.§]k§;
   
   public class Skier extends CharacterBase
   {
      
      public static var init__:Boolean;
      
      public static var §#q§:§%M§;
      
      public static var §1!O§:§%M§;
      
      public static var §&F§:§%M§;
      
      public var §=!L§:Number;
      
      public function Skier(param1:Level, param2:CharacterDef)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §=!L§ = 0;
         while(true)
         {
            if(!_loc4_)
            {
               super(param1,param2);
               if(_loc3_)
               {
                  §§push(§§findproperty(§3!>§));
                  §§push(§3!>§);
                  if(!_loc4_)
                  {
                     §§push(§§pop() * 1.7);
                  }
                  §§pop().§3!>§ = §§pop();
                  §>!7§ = 0;
               }
               §"!2§ = 105;
               §`!C§.push(new §'t§(this,270,null,null,§?`§));
               if(_loc4_)
               {
                  break;
               }
            }
            §?`§.§1!#§(40,116.48000000000002,0.05,0.2);
            break;
         }
      }
      
      override public function update(param1:Number) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc3_:* = null as §%M§;
         var _loc4_:* = null as §6!7§;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         if(!_loc8_)
         {
            §§push(§§findproperty(§"!+§));
            §§push(§"!+§);
            if(!_loc8_)
            {
               §§push(210);
               if(_loc7_)
               {
                  §§push(§§pop() - §"!2§);
               }
               §§push(§§pop() + §§pop());
               if(_loc7_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§pop().§"!+§ = §§pop();
         }
         while(true)
         {
            §§push(§;H§());
            if(_loc7_)
            {
               §§push(Number(§§pop()));
               if(_loc8_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc2_:* = §§pop();
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               loop16:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc8_)
                     {
                        §§push(false);
                        if(!_loc8_)
                        {
                           if(_loc2_ >= §"!+§)
                           {
                              if(!_loc8_)
                              {
                                 §§pop();
                                 §§push(§"!+§ >= 210);
                              }
                           }
                           if(§§pop())
                           {
                              if(!_loc8_)
                              {
                                 while(true)
                                 {
                                    §§push(§§findproperty(§"!+§));
                                    §§push(§"!+§);
                                    if(!_loc8_)
                                    {
                                       §§push(600);
                                       if(_loc7_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!_loc8_)
                                          {
                                             §§push(§§pop() - 210);
                                          }
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!_loc7_)
                                       {
                                          break;
                                       }
                                    }
                                    §§push(Number(§§pop()));
                                    break;
                                 }
                                 §§pop().§"!+§ = §§pop();
                                 if(_loc7_)
                                 {
                                    §§push(§5!`§());
                                    if(!_loc8_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc7_)
                                       {
                                          addr0374:
                                          if(Boolean(§§pop()))
                                          {
                                             addr0379:
                                             §-9§ = 1;
                                             break loop1;
                                          }
                                          §-9§ = 0.2;
                                          break loop1;
                                       }
                                    }
                                    addr00f0:
                                    if(§§pop())
                                    {
                                       _loc3_ = Skier.§1!O§;
                                       _loc4_ = _loc3_.range2;
                                       §§push(_loc3_.range1.§7!8§(_loc2_));
                                       if(!_loc8_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc7_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc8_)
                                             {
                                                break loop16;
                                             }
                                          }
                                          _loc5_ = §§pop();
                                          loop26:
                                          while(true)
                                          {
                                             loop27:
                                             while(true)
                                             {
                                                loop28:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§findproperty(§-9§));
                                                      §§push(_loc4_);
                                                      if(_loc7_)
                                                      {
                                                         §§push(_loc5_);
                                                         if(!_loc7_)
                                                         {
                                                            break loop27;
                                                         }
                                                         §§push(0);
                                                         if(_loc8_)
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop() < §§pop())
                                                         {
                                                            §§push(0);
                                                            break loop28;
                                                         }
                                                         if(!_loc7_)
                                                         {
                                                            break loop26;
                                                         }
                                                      }
                                                      §§push(_loc5_);
                                                      if(_loc7_)
                                                      {
                                                         §§push(1);
                                                         break;
                                                      }
                                                      break loop27;
                                                   }
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      break loop26;
                                                   }
                                                   §§push(1);
                                                   if(_loc7_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc8_)
                                                      {
                                                      }
                                                      break loop27;
                                                   }
                                                   break;
                                                }
                                                §§push(Number(§§pop()));
                                                break;
                                             }
                                             §§push(§§pop().§[!$§(§§pop()));
                                             if(!_loc8_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             §§pop().§-9§ = §§pop();
                                             if(_loc8_)
                                             {
                                                break loop2;
                                             }
                                          }
                                          §§push(_loc5_);
                                          if(_loc7_)
                                          {
                                          }
                                          break loop27;
                                       }
                                       §§goto(addr02ff);
                                    }
                                    else
                                    {
                                       §-9§ = 0;
                                       if(!_loc7_)
                                       {
                                          break loop1;
                                       }
                                    }
                                    addr01a8:
                                    §§push(_loc2_);
                                    if(_loc7_)
                                    {
                                       break loop16;
                                    }
                                    break;
                                 }
                                 addr036d:
                                 §§push(§5!`§());
                                 §§goto(addr0374);
                              }
                           }
                           else
                           {
                              §'+§.§9!U§ = null;
                              if(_loc7_)
                              {
                                 §§goto(addr036d);
                              }
                           }
                           §§goto(addr0379);
                        }
                        §§goto(addr00f0);
                     }
                     §§goto(addr01a8);
                  }
                  §§goto(addr0325);
               }
               if(§§pop() < §"!+§)
               {
                  continue loop18;
               }
               §"!+§ = _loc2_;
               if(!_loc8_)
               {
                  §'+§.§9!U§ = 6;
                  break;
               }
               §§goto(addr039a);
            }
            while(true)
            {
               §§push(§§findproperty(§=!L§));
               §§push(0.001);
               if(_loc7_)
               {
                  §§push(§§pop() + param1);
                  if(_loc8_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            §§pop().§=!L§ = §§pop();
            loop18:
            while(true)
            {
               loop19:
               while(true)
               {
                  if(§'+§.§?!<§ == §'+§.animations.run)
                  {
                     loop20:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(false);
                           §§push(false);
                           if(_loc7_)
                           {
                              while(true)
                              {
                                 §§push(false);
                                 if(_loc7_)
                                 {
                                    if(§=!L§ > 0)
                                    {
                                       break;
                                    }
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                    §§pop();
                                    if(_loc8_)
                                    {
                                       break loop20;
                                    }
                                    §§push(level.unpausedTime - physicsData.§'![§ > 0.4);
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(Boolean(§§pop()));
                                 break;
                              }
                              if(!§§pop())
                              {
                                 break;
                              }
                              if(_loc8_)
                              {
                                 break loop20;
                              }
                           }
                           §§pop();
                           §§push(§'+§.§9!U§ == null);
                           if(_loc7_)
                           {
                              break loop20;
                           }
                           break;
                        }
                        if(§§pop())
                        {
                           §§pop();
                           if(_loc8_)
                           {
                              break loop1;
                           }
                           §§push(§5!`§());
                           if(!_loc8_)
                           {
                              §§push(!Boolean(§§pop()));
                              if(!_loc7_)
                              {
                                 break loop19;
                              }
                              §§push(Boolean(§§pop()));
                           }
                        }
                        if(§§pop())
                        {
                           §§goto(addr02bc);
                        }
                     }
                     §§push(Boolean(§§pop()));
                     break loop21;
                  }
                  if(_loc8_)
                  {
                     break loop18;
                  }
                  §'+§.§9!U§ = null;
                  if(!_loc8_)
                  {
                     break loop1;
                  }
                  addr02bc:
                  _loc3_ = Skier.§&F§;
                  if(!_loc8_)
                  {
                     §§push(§§findproperty(§=!L§));
                     §§push(_loc3_.range2);
                     §§push(_loc3_.range1.§7!8§(_loc2_));
                     if(_loc7_)
                     {
                        §§push(Number(§§pop()));
                     }
                     §§push(§§pop().§[!$§(§§pop()));
                     if(!_loc8_)
                     {
                        §§push(Number(§§pop()));
                     }
                     §§pop().§=!L§ = §§pop();
                  }
                  while(true)
                  {
                     §§push(§=!L§);
                     if(!_loc8_)
                     {
                        addr02ff:
                        §§push(0);
                        if(_loc8_)
                        {
                           break;
                        }
                        if(§§pop() <= §§pop())
                        {
                           break loop1;
                        }
                        §§push(§§findproperty(§=!L§));
                        §§push(§=!L§);
                        if(_loc7_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§=!L§ = §§pop();
                        §§push(§=!L§);
                     }
                     addr0325:
                     §§push(0);
                     break;
                  }
                  if(§§pop() <= §§pop())
                  {
                     §'+§.§ ^§ = 7;
                     break loop18;
                  }
                  §'+§.§9!U§ = 6;
                  if(!_loc8_)
                  {
                     break loop1;
                  }
                  §§goto(addr039a);
               }
               §§goto(addr0396);
            }
            §'+§.§9!U§ = null;
            break;
         }
         addr0396:
         loop3:
         while(true)
         {
            if(physicsData.onGround)
            {
               addr039a:
               _loc3_ = Skier.§#q§;
               _loc4_ = _loc3_.range2;
               if(_loc7_)
               {
                  while(true)
                  {
                     §§push(_loc3_.range1.§7!8§(_loc2_));
                     if(!_loc8_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc7_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
                  _loc5_ = §§pop();
                  if(_loc8_)
                  {
                     break;
                  }
               }
               loop5:
               while(true)
               {
                  loop6:
                  while(true)
                  {
                     loop7:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(§§findproperty(§+9§));
                           §§push(_loc4_);
                           if(!_loc8_)
                           {
                              §§push(_loc5_);
                              if(!_loc7_)
                              {
                                 break loop6;
                              }
                              §§push(0);
                              if(!_loc7_)
                              {
                                 break;
                              }
                              if(§§pop() < §§pop())
                              {
                                 §§push(0);
                                 break loop7;
                              }
                              if(_loc8_)
                              {
                                 break loop5;
                              }
                           }
                           §§push(_loc5_);
                           if(!_loc8_)
                           {
                              §§push(1);
                              break;
                           }
                           break loop6;
                        }
                        if(§§pop() <= §§pop())
                        {
                           break loop5;
                        }
                        §§push(1);
                        if(_loc7_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc8_)
                           {
                           }
                           break loop6;
                        }
                        break;
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
                  §§push(§§pop().§[!$§(§§pop()));
                  if(_loc7_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§pop().§+9§ = §§pop();
                  if(!_loc7_)
                  {
                     break loop3;
                  }
               }
               §§push(_loc5_);
               if(_loc7_)
               {
               }
               break loop6;
            }
            _loc3_ = Skier.§#q§;
            _loc4_ = _loc3_.range2;
            if(!_loc8_)
            {
               loop9:
               while(true)
               {
                  §§push(_loc3_.range1.§7!8§(_loc2_));
                  if(!_loc8_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc8_)
                     {
                        break;
                     }
                     §§push(Number(§§pop()));
                     if(_loc8_)
                     {
                        break;
                     }
                  }
                  _loc5_ = §§pop();
                  loop10:
                  while(true)
                  {
                     if(_loc7_)
                     {
                        loop11:
                        while(true)
                        {
                           loop12:
                           while(true)
                           {
                              loop13:
                              while(true)
                              {
                                 loop14:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       if(_loc7_)
                                       {
                                          §§push(_loc5_);
                                          if(_loc8_)
                                          {
                                             break;
                                          }
                                          §§push(0);
                                          if(_loc8_)
                                          {
                                             break loop14;
                                          }
                                          if(§§pop() < §§pop())
                                          {
                                             §§push(0);
                                             break loop13;
                                          }
                                          if(!_loc7_)
                                          {
                                             break loop11;
                                          }
                                       }
                                       §§push(_loc5_);
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                       break loop12;
                                    }
                                    §§push(1);
                                    break;
                                 }
                                 if(§§pop() <= §§pop())
                                 {
                                    break loop11;
                                 }
                                 §§push(1);
                                 if(_loc7_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc8_)
                                    {
                                    }
                                    break loop12;
                                 }
                                 break;
                              }
                              §§push(Number(§§pop()));
                              break;
                           }
                           §§push(§§pop().§[!$§(§§pop()));
                           if(_loc7_)
                           {
                              break loop9;
                           }
                           addr04ee:
                           _loc6_ = §§pop();
                           if(_loc8_)
                           {
                              break loop10;
                           }
                        }
                        §§push(_loc5_);
                        if(_loc8_)
                        {
                        }
                        break loop12;
                     }
                     §§push(§§findproperty(§+9§));
                     §§push(_loc6_);
                     if(!_loc8_)
                     {
                        §§push(0.5);
                        if(_loc7_)
                        {
                           §§push(270);
                           if(!_loc8_)
                           {
                              §§push(§§pop() - _loc6_);
                           }
                           §§push(§§pop() * §§pop());
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc7_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     §§pop().§+9§ = §§pop();
                     break;
                  }
               }
               §§push(Number(§§pop()));
               if(!_loc8_)
               {
                  §§push(Number(§§pop()));
               }
               §§goto(addr04ee);
            }
            super.update(param1);
            break;
         }
      }
      
      public function §5!`§() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc2_)
                  {
                     §§push(false);
                     if(_loc1_)
                     {
                        break;
                     }
                     if(§'+§.§?!<§ != §'+§.animations.run)
                     {
                        break loop1;
                     }
                     §§pop();
                     if(!_loc2_)
                     {
                        break loop0;
                     }
                  }
                  §§push(§'+§.§ ^§);
                  if(_loc2_)
                  {
                     §§push(2);
                     if(_loc2_)
                     {
                        §§push(§§pop() < §§pop());
                        if(_loc2_)
                        {
                           break loop1;
                        }
                        §§goto(addr0085);
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr0080);
               }
               §§goto(addr0083);
            }
            if(!§§pop())
            {
               break;
            }
            addr0085:
            return true;
         }
         addr0083:
         return §'+§.§ ^§ > 6;
         addr0082:
         addr0080:
      }
      
      override public function §6b§() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(210);
            if(_loc1_)
            {
               §§push(0.6);
               if(_loc1_)
               {
                  while(true)
                  {
                     §§push(600);
                     if(_loc1_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc2_)
                        {
                           break;
                        }
                     }
                     §§push(§§pop() - 210);
                     break;
                  }
               }
               §§push(§§pop() + §§pop());
               if(_loc2_)
               {
                  break;
               }
            }
            return Number(§§pop());
         }
         return §§pop();
      }
   }
}

