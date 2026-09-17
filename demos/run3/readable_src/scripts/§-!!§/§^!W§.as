package §-!!§
{
   import flash.Boot;
   import flash.errors.IllegalOperationError;
   
   public class §^!W§
   {
      
      public var §7!;§:Number;
      
      public var §"!D§:Number;
      
      public var §2!D§:Number;
      
      public function §^!W§(param1:Object = undefined)
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc5_:* = NaN;
         if(_loc10_)
         {
            if(param1 != null)
            {
               §§push(param1 >> 16);
               if(!_loc11_)
               {
                  §§push(§§pop() & 0xFF);
               }
               var _loc6_:Number = §§pop();
               §§push(param1 >> 8);
               if(_loc10_)
               {
                  §§push(§§pop() & 0xFF);
               }
               var _loc7_:Number = §§pop();
               var _loc8_:* = param1 & 0xFF;
               loop1:
               while(true)
               {
                  while(true)
                  {
                     if(_loc10_)
                     {
                        §§push(_loc6_);
                        §§push(255);
                        if(_loc11_)
                        {
                           break;
                        }
                        _loc6_ = §§pop() / §§pop();
                        if(_loc10_)
                        {
                           §§push(_loc7_);
                           §§push(255);
                           if(!_loc10_)
                           {
                              break;
                           }
                           _loc7_ = §§pop() / §§pop();
                           if(!_loc10_)
                           {
                              break loop1;
                           }
                        }
                     }
                     §§push(_loc8_);
                     §§push(255);
                     break;
                  }
                  §§push(§§pop() / §§pop());
                  if(_loc10_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc11_)
                     {
                        _loc8_ = §§pop();
                        break;
                     }
                     §§goto(addr00e5);
                  }
                  §§goto(addr00e4);
               }
               addr00e5:
               var _loc3_:Number = Number(Lambda.fold([_loc6_,_loc7_],Math.min,_loc8_));
               addr00e4:
               §§push(Number(Lambda.fold([_loc6_,_loc7_],Math.max,_loc8_)));
               if(!_loc11_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(_loc4_);
               if(!_loc11_)
               {
                  §§push(§§pop() - _loc3_);
                  if(_loc10_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc2_:* = §§pop();
               loop3:
               while(true)
               {
                  if(_loc10_)
                  {
                     loop4:
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           §§push(_loc2_);
                           §§push(0);
                           if(_loc10_)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 _loc5_ = 0;
                                 break;
                              }
                              loop6:
                              while(true)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          if(_loc4_ == _loc6_)
                                          {
                                             §§push(_loc7_);
                                             if(!_loc10_)
                                             {
                                                break loop7;
                                             }
                                             §§push(§§pop() - _loc8_);
                                             §§push(_loc2_);
                                             if(_loc10_)
                                             {
                                                §§push(§§pop() / §§pop());
                                                if(_loc11_)
                                                {
                                                   break loop7;
                                                }
                                                §§push(6);
                                                if(_loc10_)
                                                {
                                                   addr0170:
                                                   _loc5_ = §§pop() % §§pop();
                                                   if(_loc10_)
                                                   {
                                                      break loop5;
                                                   }
                                                   break loop4;
                                                }
                                                addr01aa:
                                                §§push(§§pop() + §§pop());
                                                if(_loc10_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                §§push(Number(§§pop()));
                                                if(!_loc11_)
                                                {
                                                   _loc5_ = §§pop();
                                                   break loop5;
                                                }
                                             }
                                             else
                                             {
                                                addr0189:
                                                if(§§pop() == §§pop())
                                                {
                                                   §§push(_loc8_ - _loc6_);
                                                   if(_loc11_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(_loc2_);
                                                   if(!_loc10_)
                                                   {
                                                      break loop8;
                                                   }
                                                   §§push(§§pop() / §§pop());
                                                   §§push(2);
                                                   if(!_loc10_)
                                                   {
                                                      break loop6;
                                                   }
                                                   §§goto(addr01aa);
                                                }
                                                else
                                                {
                                                   §§push(_loc6_);
                                                }
                                             }
                                             §§push(_loc7_);
                                          }
                                          else
                                          {
                                             §§push(_loc4_);
                                             §§push(_loc7_);
                                             if(_loc10_)
                                             {
                                                §§goto(addr0189);
                                             }
                                          }
                                          §§push((§§pop() - §§pop()) / _loc2_);
                                          if(_loc10_)
                                          {
                                             §§push(4);
                                             break loop6;
                                          }
                                          §§goto(addr01d6);
                                       }
                                       §§goto(addr0212);
                                    }
                                    §§goto(addr0214);
                                 }
                                 _loc5_ = §§pop();
                                 break loop5;
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc10_)
                              {
                                 break loop3;
                              }
                              addr01d6:
                              §§push(Number(§§pop()));
                              if(_loc10_)
                              {
                                 break loop7;
                              }
                              §§goto(addr0212);
                           }
                           §§goto(addr0170);
                        }
                        §2!D§ = 60 * _loc5_;
                        §§push(§§findproperty(§"!D§));
                        §§push(_loc3_);
                        if(!_loc11_)
                        {
                           §§push(§§pop() + _loc4_);
                           if(_loc10_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc11_)
                              {
                                 §§push(§§pop() / 2);
                              }
                           }
                        }
                        §§pop().§"!D§ = §§pop();
                        break;
                     }
                     addr0212:
                     addr0214:
                     if(§"!D§ <= 0.5)
                     {
                        §§push(§§findproperty(§7!;§));
                        §§push(_loc2_);
                        if(_loc10_)
                        {
                           §§push(§§pop() / (2 * §"!D§));
                        }
                        §§pop().§7!;§ = §§pop();
                     }
                     else
                     {
                        §§push(§§findproperty(§7!;§));
                        §§push(_loc2_);
                        if(_loc10_)
                        {
                           §§push(§§pop() / (2 - 2 * §"!D§));
                        }
                        §§pop().§7!;§ = §§pop();
                     }
                  }
                  §§push(§7!;§);
                  break;
               }
               var _loc9_:Number = §§pop();
               if(_loc10_)
               {
                  if(_loc9_ != _loc9_)
                  {
                     if(!_loc11_)
                     {
                        §7!;§ = 0;
                     }
                  }
               }
               return;
            }
            if(!_loc11_)
            {
               §2!D§ = 0;
               while(true)
               {
                  if(_loc10_)
                  {
                     §7!;§ = 1;
                     if(!_loc10_)
                     {
                        break;
                     }
                  }
                  §"!D§ = 0.5;
                  break;
               }
            }
         }
      }
      
      public static function §^!X§(param1:Number, param2:Number, param3:Number) : int
      {
         §§push(false);
         var _loc14_:Boolean = true;
         var _loc15_:* = §§pop();
         var _loc4_:* = NaN;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  loop28:
                  while(true)
                  {
                     loop31:
                     while(true)
                     {
                        if(!_loc15_)
                        {
                           §§push(param1);
                           if(!_loc14_)
                           {
                              continue loop29;
                           }
                           loop32:
                           while(true)
                           {
                              §§push(360);
                              if(!_loc15_)
                              {
                                 while(true)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       if(!_loc14_)
                                       {
                                          break loop1;
                                       }
                                       §§push(param1);
                                       §§push(360);
                                       if(!_loc15_)
                                       {
                                          param1 = §§pop() % §§pop();
                                          break loop32;
                                       }
                                    }
                                    else
                                    {
                                       §§push(param1);
                                       if(!_loc14_)
                                       {
                                          break loop28;
                                       }
                                       §§push(0);
                                       if(!_loc15_)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             break loop32;
                                          }
                                          §§push(param1);
                                          §§push(360);
                                          if(_loc15_)
                                          {
                                             break;
                                          }
                                       }
                                    }
                                    §§push(§§pop() % §§pop());
                                    §§push(360);
                                    break;
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc15_)
                              {
                                 param1 = §§pop();
                                 break;
                              }
                              break loop31;
                           }
                           §§push(Number(Math.max(0,Number(Math.min(1,param2)))));
                           if(!_loc14_)
                           {
                              break loop0;
                           }
                           param2 = §§pop();
                        }
                        §§push(Number(Math.max(0,Number(Math.min(1,param3)))));
                        break;
                     }
                     §§push(Number(§§pop()));
                     if(!_loc14_)
                     {
                        continue loop29;
                     }
                     param3 = §§pop();
                     §§push(param3);
                     if(_loc14_)
                     {
                        §§push(0.5);
                        if(_loc14_)
                        {
                           if(§§pop() <= §§pop())
                           {
                              break loop1;
                           }
                           §§goto(addr00f2);
                           §§push(2);
                        }
                        §§goto(addr00fe);
                     }
                     else
                     {
                        §§goto(addr00ea);
                     }
                  }
                  §§goto(addr0103);
               }
               while(true)
               {
                  while(true)
                  {
                     §§push(param2);
                     if(_loc14_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc15_)
                        {
                           break loop28;
                        }
                        §§push(Number(§§pop()));
                        if(_loc14_)
                        {
                           addr00ea:
                           _loc4_ = §§pop();
                           break;
                        }
                        §§goto(addr00f7);
                     }
                     §§goto(addr00fe);
                  }
                  §§goto(addr0102);
               }
               §§goto(addr010e);
            }
            addr010e:
            addr00f7:
            §§push(2);
            if(!_loc15_)
            {
               §§push(param3);
               if(_loc14_)
               {
                  §§push(§§pop() * §§pop());
                  break loop27;
               }
            }
            else
            {
               addr00f2:
               §§push(1 - param3);
            }
            §§push(§§pop() * §§pop());
            §§push(param2);
            if(!_loc15_)
            {
               addr00fe:
               _loc4_ = §§pop() * §§pop();
               addr0102:
               addr0103:
               §§push(param3);
               §§push(_loc4_);
               if(_loc14_)
               {
                  §§push(§§pop() / 2);
               }
            }
            §§push(§§pop() - §§pop());
            break;
         }
         var _loc5_:Number = §§pop();
         §§push(param1);
         if(!_loc15_)
         {
            §§push(§§pop() / 60);
            if(_loc14_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(!_loc15_)
            {
               §§push(§§pop() * (1 - Number(Math.abs(_loc6_ % 2 - 1))));
               if(_loc15_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc7_:* = §§pop();
         §§push(_loc5_);
         if(_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc10_);
         if(_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc9_);
         if(!_loc15_)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               loop18:
               while(true)
               {
                  loop19:
                  while(true)
                  {
                     loop20:
                     while(true)
                     {
                        loop21:
                        while(true)
                        {
                           if(!_loc15_)
                           {
                              if(Boolean(Math.isNaN(param1)))
                              {
                                 Boot.lastError = new Error();
                                 throw new IllegalOperationError("Hue is NaN");
                              }
                              loop22:
                              while(true)
                              {
                                 §§push(_loc6_);
                                 if(_loc14_)
                                 {
                                    loop23:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          if(§§pop() < 1)
                                          {
                                             if(!_loc15_)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc8_);
                                                   §§push(_loc4_);
                                                   if(_loc14_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc15_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(Number(§§pop()));
                                                      if(_loc15_)
                                                      {
                                                         break loop4;
                                                      }
                                                      _loc8_ = §§pop();
                                                      §§push(_loc9_ + _loc7_);
                                                      if(!_loc15_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc14_)
                                                         {
                                                            _loc9_ = §§pop();
                                                            if(!_loc15_)
                                                            {
                                                               break loop22;
                                                            }
                                                            addr0293:
                                                            §§push(_loc9_ + _loc7_);
                                                            if(_loc14_)
                                                            {
                                                               _loc9_ = Number(§§pop());
                                                               addr02a4:
                                                               _loc10_ += _loc4_;
                                                               if(_loc14_)
                                                               {
                                                                  break loop22;
                                                               }
                                                               break loop3;
                                                            }
                                                            addr0312:
                                                            addr0312:
                                                            §§goto(addr0314);
                                                            §§push(_loc7_);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr02e3);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr0309:
                                                         §§push(§§pop() + _loc4_);
                                                      }
                                                      §§goto(addr030c);
                                                   }
                                                   else
                                                   {
                                                      addr024b:
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc15_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc14_)
                                                            {
                                                               _loc9_ = §§pop();
                                                               if(!_loc15_)
                                                               {
                                                                  §§push(_loc10_);
                                                                  §§push(_loc7_);
                                                                  break loop23;
                                                               }
                                                               break loop3;
                                                            }
                                                            §§goto(addr030c);
                                                         }
                                                         §§goto(addr0314);
                                                      }
                                                      §§goto(addr0269);
                                                   }
                                                }
                                                §§goto(addr0324);
                                             }
                                          }
                                          else
                                          {
                                             §§push(_loc6_);
                                             §§push(2);
                                             if(!_loc14_)
                                             {
                                                break loop18;
                                             }
                                             if(§§pop() >= §§pop())
                                             {
                                                if(_loc6_ < 3)
                                                {
                                                   §§goto(addr024b);
                                                   §§push(_loc9_);
                                                   §§push(_loc4_);
                                                }
                                                else
                                                {
                                                   §§push(_loc6_);
                                                   if(!_loc15_)
                                                   {
                                                      if(§§pop() < 4)
                                                      {
                                                         §§goto(addr0293);
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc6_);
                                                         §§push(5);
                                                         if(!_loc14_)
                                                         {
                                                            break loop18;
                                                         }
                                                         if(§§pop() < §§pop())
                                                         {
                                                            if(!_loc14_)
                                                            {
                                                               break loop22;
                                                            }
                                                            §§push(_loc8_);
                                                            if(_loc14_)
                                                            {
                                                               §§goto(addr02d2);
                                                            }
                                                            §§goto(addr02f6);
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc8_);
                                                            if(_loc14_)
                                                            {
                                                               §§goto(addr0309);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr0324);
                                                   }
                                                   §§goto(addr0312);
                                                }
                                                §§goto(addr0314);
                                             }
                                          }
                                          _loc8_ += _loc7_;
                                          if(!_loc15_)
                                          {
                                             §§push(_loc9_);
                                             §§push(_loc4_);
                                             if(!_loc15_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc14_)
                                                {
                                                   _loc9_ = Number(§§pop());
                                                   if(!_loc15_)
                                                   {
                                                      break loop22;
                                                   }
                                                   break;
                                                }
                                                break loop4;
                                             }
                                             break loop23;
                                          }
                                          break loop22;
                                       }
                                       §§goto(addr0312);
                                    }
                                    addr0269:
                                    §§push(§§pop() + §§pop());
                                    if(!_loc14_)
                                    {
                                       addr02d2:
                                       §§push(_loc7_);
                                       if(_loc14_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc15_)
                                          {
                                             addr02e3:
                                             §§push(Number(§§pop()));
                                             if(!_loc15_)
                                             {
                                                _loc8_ = Number(§§pop());
                                                if(_loc14_)
                                                {
                                                   addr02fa:
                                                   _loc10_ += _loc4_;
                                                   addr02f6:
                                                   break;
                                                }
                                                break loop3;
                                             }
                                             addr030c:
                                             _loc8_ = Number(§§pop());
                                             break loop24;
                                          }
                                          break loop19;
                                       }
                                       addr0314:
                                       §§push(§§pop() + §§pop());
                                       if(!_loc15_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!_loc15_)
                                          {
                                             addr0324:
                                             §§push(Number(§§pop()));
                                             if(_loc14_)
                                             {
                                                _loc10_ = §§pop();
                                                if(_loc14_)
                                                {
                                                   break;
                                                }
                                                break loop3;
                                             }
                                             break loop20;
                                          }
                                          break loop19;
                                       }
                                       break loop21;
                                    }
                                    §§push(Number(§§pop()));
                                    if(_loc14_)
                                    {
                                       _loc10_ = §§pop();
                                       if(!_loc15_)
                                       {
                                          break;
                                       }
                                       break loop3;
                                    }
                                    §§goto(addr02fa);
                                 }
                                 §§goto(addr02a4);
                              }
                           }
                           §§push(_loc8_);
                           break;
                        }
                        if(§§pop() > 0)
                        {
                           §§push(_loc8_);
                           break loop19;
                        }
                        if(_loc14_)
                        {
                           break loop3;
                        }
                        §§goto(addr035c);
                     }
                     §§push(255);
                     break loop18;
                  }
                  §§push(1);
                  if(_loc15_)
                  {
                     break;
                  }
                  if(§§pop() < §§pop())
                  {
                     §§push(_loc8_);
                     break loop20;
                  }
                  addr035c:
                  §§push(255);
                  if(_loc15_)
                  {
                     continue loop5;
                  }
                  §§goto(addr0378);
               }
               §§push(§§pop() * §§pop());
               break;
            }
            §§push(int(§§pop()));
            if(_loc15_)
            {
               continue loop5;
            }
            §§goto(addr0378);
         }
         §§push(0);
         if(!_loc15_)
         {
            addr0378:
            §§push(int(§§pop()));
         }
         var _loc11_:* = §§pop();
         loop5:
         while(true)
         {
            loop6:
            while(true)
            {
               if(!_loc15_)
               {
                  loop14:
                  while(true)
                  {
                     loop15:
                     while(true)
                     {
                        §§push(_loc9_);
                        if(_loc14_)
                        {
                           loop16:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(0);
                                 if(!_loc15_)
                                 {
                                    if(§§pop() <= §§pop())
                                    {
                                       if(!_loc15_)
                                       {
                                          addr039d:
                                          §§push(0);
                                          if(_loc14_)
                                          {
                                             break loop6;
                                          }
                                          break loop5;
                                       }
                                       break;
                                    }
                                    §§push(_loc9_);
                                    if(!_loc14_)
                                    {
                                       break loop16;
                                    }
                                    §§push(1);
                                    if(_loc15_)
                                    {
                                       break loop15;
                                    }
                                 }
                                 if(§§pop() >= §§pop())
                                 {
                                    break;
                                 }
                                 §§push(_loc9_);
                                 if(!_loc15_)
                                 {
                                    break loop16;
                                 }
                                 break loop14;
                              }
                              §§push(255);
                              if(_loc14_)
                              {
                              }
                              break loop6;
                           }
                        }
                        break loop16;
                     }
                     §§push(§§pop() * §§pop());
                     break;
                  }
                  §§push(int(§§pop()));
                  if(!_loc15_)
                  {
                     break;
                  }
                  break loop5;
               }
               §§goto(addr039d);
            }
            §§push(int(§§pop()));
            break;
         }
         var _loc12_:* = §§pop();
         loop7:
         while(true)
         {
            if(_loc14_)
            {
               loop8:
               while(true)
               {
                  loop9:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc10_);
                        if(_loc14_)
                        {
                           §§push(0);
                           if(!_loc14_)
                           {
                              break;
                           }
                           if(§§pop() <= §§pop())
                           {
                              if(!_loc15_)
                              {
                                 addr0407:
                                 §§push(0);
                                 if(_loc14_)
                                 {
                                 }
                                 break loop7;
                              }
                              break loop9;
                           }
                           §§push(_loc10_);
                           if(!_loc14_)
                           {
                              break loop8;
                           }
                        }
                        §§push(1);
                        if(!_loc15_)
                        {
                           break;
                        }
                        addr0440:
                        §§push(§§pop() * §§pop());
                        break loop8;
                     }
                     if(§§pop() >= §§pop())
                     {
                        break;
                     }
                     §§push(_loc10_);
                     if(_loc15_)
                     {
                        break loop8;
                     }
                     §§goto(addr0440);
                     §§push(255);
                  }
                  §§push(255);
                  if(!_loc15_)
                  {
                     break loop7;
                  }
                  continue loop10;
               }
               §§push(int(§§pop()));
               if(_loc14_)
               {
                  break;
               }
               var _loc13_:* = §§pop();
               loop10:
               while(true)
               {
                  loop11:
                  while(true)
                  {
                     §§push(_loc11_);
                     if(_loc14_)
                     {
                        while(true)
                        {
                           §§push(16);
                           if(_loc14_)
                           {
                              §§push(§§pop() << §§pop());
                              if(_loc14_)
                              {
                                 §§push(int(§§pop()));
                                 if(_loc15_)
                                 {
                                    break;
                                 }
                              }
                              §§push(_loc12_);
                              if(_loc14_)
                              {
                                 §§push(§§pop() << 8);
                                 if(!_loc14_)
                                 {
                                    break loop11;
                                 }
                              }
                           }
                           §§push(int(§§pop()));
                           if(!_loc15_)
                           {
                              §§push(§§pop() | §§pop());
                              if(_loc14_)
                              {
                                 break;
                              }
                              break loop10;
                           }
                           break loop11;
                        }
                     }
                     §§push(_loc13_);
                     break;
                  }
                  return §§pop() | §§pop();
               }
               return §§pop();
            }
            §§goto(addr0407);
         }
         §§push(int(§§pop()));
         continue loop10;
      }
   }
}

