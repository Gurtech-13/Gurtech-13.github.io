package com.player03.run3.character
{
   import §!!$§.§ 6§;
   import §%G§.§ m§;
   import com.player03.layout.§ 7§;
   import flash.geom.Rectangle;
   import unitsystem.§7o§;
   
   public class §,S§ extends § m§
   {
      
      public var §!5§:Number;
      
      public var §"@§:CharacterBase;
      
      public var §%!L§:Number;
      
      public var §`M§:Number;
      
      public function §,S§(param1:CharacterBase, param2:Number, param3:Number, param4:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         while(true)
         {
            if(_loc6_)
            {
               if(param4 != null)
               {
                  break;
               }
            }
            param4 = 0.5;
            break;
         }
         super(param1);
         §"@§ = param1;
         length = param4 + 0.5;
         §`B§ = "jump";
         if(_loc6_)
         {
            buffer = 0.2;
            §%!L§ = param2;
            §`M§ = param3;
         }
         §=!7§ = 32;
         if(_loc6_)
         {
            §§push(§§findproperty(§,N§));
            §§push(16);
            if(_loc6_)
            {
               §§push(§§pop() | 0x20);
            }
            §§pop().§,N§ = §§pop();
         }
      }
      
      override public function §-A§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               §"@§.§-,§ = 0.7;
               if(_loc1_)
               {
                  break;
               }
            }
            §!5§ = 0;
            if(_loc2_)
            {
               break;
            }
            §§goto(addr004b);
         }
         §2!A§(0.1);
         addr004b:
      }
      
      override public function §2!A§(param1:Number) : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         if(!_loc10_)
         {
            §"@§.§6N§ = 0;
         }
         var _loc2_:* = 0;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc10_)
                  {
                     §§push(§7o§.controlScheme.§,h§("left"));
                     if(_loc10_)
                     {
                        break;
                     }
                     §§push(Boolean(§§pop()));
                     if(!_loc9_)
                     {
                        break;
                     }
                     if(!§§pop())
                     {
                        break loop1;
                     }
                     if(!_loc9_)
                     {
                        break loop0;
                     }
                  }
                  §§push(_loc2_);
                  if(_loc9_)
                  {
                     loop15:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(§§pop() - 1);
                           if(_loc9_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc10_)
                              {
                                 break;
                              }
                              _loc2_ = §§pop();
                              if(!_loc10_)
                              {
                                 break loop1;
                              }
                              §§push(_loc2_);
                              if(!_loc9_)
                              {
                                 break loop15;
                              }
                           }
                           §§push(§§pop() + 1);
                           break;
                        }
                        _loc2_ = §§pop();
                        break loop0;
                     }
                  }
                  break loop15;
               }
               if(!§§pop())
               {
                  break loop0;
               }
               if(_loc10_)
               {
                  break loop0;
               }
               §§goto(addr0096);
            }
            §§push(§7o§.controlScheme.§,h§("right"));
            if(_loc9_)
            {
               §§push(Boolean(§§pop()));
            }
            break loop14;
         }
         §§push(_loc2_ - §!5§);
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Number = 0;
         if(!_loc10_)
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
                        §§push(§§findproperty(§!5§));
                        §§push(§!5§);
                        if(!_loc10_)
                        {
                           while(true)
                           {
                              §§push(_loc3_);
                              if(_loc9_)
                              {
                                 §§push(_loc4_);
                                 if(!_loc9_)
                                 {
                                    break;
                                 }
                                 if(§§pop() > §§pop())
                                 {
                                    if(_loc9_)
                                    {
                                       §§push(1);
                                       if(_loc10_)
                                       {
                                       }
                                       break loop3;
                                    }
                                    §§goto(addr0146);
                                 }
                                 else
                                 {
                                    §§push(_loc3_);
                                    if(_loc10_)
                                    {
                                       break loop5;
                                    }
                                 }
                              }
                              §§push(_loc4_);
                              if(_loc9_)
                              {
                                 break;
                              }
                              addr0118:
                              if(§§pop() >= §§pop())
                              {
                                 §§push(0);
                                 break loop3;
                              }
                              if(_loc10_)
                              {
                                 break loop2;
                              }
                           }
                           §§push(-§§pop());
                           if(!_loc9_)
                           {
                              break loop4;
                           }
                           §§goto(addr0118);
                        }
                        §§push(-1);
                        if(_loc10_)
                        {
                        }
                        break loop3;
                     }
                     §§goto(addr0138);
                  }
                  §§goto(addr013d);
               }
               addr013d:
               §§push(§§pop() * param1);
               if(!_loc10_)
               {
                  addr0138:
                  §§push(length);
                  break loop4;
               }
               §§push(§§pop() + §§pop());
               if(_loc9_)
               {
                  break;
               }
               §§goto(addr0146);
            }
            addr0146:
            §§pop().§!5§ = Number(§§pop());
         }
         loop7:
         while(true)
         {
            while(true)
            {
               §§push(60);
               if(_loc9_)
               {
                  §§push(§"@§.§"!+§);
                  if(!_loc9_)
                  {
                     break;
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc10_)
                  {
                     break loop7;
                  }
               }
               §§push(Number(§§pop()));
               if(!_loc10_)
               {
                  §§push(§"@§.§"!2§);
                  break;
               }
               break loop7;
            }
            §§push(§§pop() - §§pop());
            if(_loc9_)
            {
               break;
            }
            §§goto(addr017e);
         }
         addr017e:
         var _loc5_:Number = §§pop();
         var _loc6_:CharacterBase = §"@§;
         §§push(§"@§.§;H§());
         if(!_loc10_)
         {
            §§push(Number(§§pop()));
            if(!_loc10_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         while(true)
         {
            §§push(param1);
            if(!_loc10_)
            {
               §§push(§§pop() * 5);
               if(!_loc9_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc8_:* = §§pop();
         if(_loc9_)
         {
            loop10:
            while(true)
            {
               §§push(_loc6_);
               §§push(_loc7_);
               if(_loc9_)
               {
                  loop11:
                  while(true)
                  {
                     loop12:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(0.7);
                           if(_loc9_)
                           {
                              §§push(_loc8_);
                              if(!_loc9_)
                              {
                                 break;
                              }
                              if(§§pop() < §§pop())
                              {
                                 if(_loc10_)
                                 {
                                    break loop10;
                                 }
                                 §§push(0.7);
                                 if(!_loc9_)
                                 {
                                    break loop12;
                                 }
                              }
                              else
                              {
                                 §§push(_loc8_);
                                 if(_loc10_)
                                 {
                                    break loop11;
                                 }
                              }
                           }
                           §§push(§"@§.§-9§);
                           if(_loc9_)
                           {
                              break;
                           }
                           §§goto(addr0224);
                        }
                        §§push(§§pop() * §§pop());
                        if(!_loc10_)
                        {
                           break loop11;
                        }
                        break;
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc10_)
                     {
                        break loop10;
                     }
                  }
                  addr0224:
                  §§push(_loc5_);
                  if(!_loc10_)
                  {
                     §§push(§§pop() - _loc7_);
                  }
                  §§push(§§pop() * §§pop());
                  break loop12;
               }
               §§push(Number(§§pop()));
               break;
            }
            §§pop().§'!K§(§§pop());
         }
      }
      
      override public function §2U§() : § m§
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         if(_loc8_)
         {
            §"@§.§-,§ = 1;
         }
         §§push(§-S§);
         if(_loc8_)
         {
            §§push(length);
            if(!_loc9_)
            {
               §§push(§§pop() - 0.5);
            }
            §§push(§§pop() / §§pop());
            if(_loc8_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop12:
               while(true)
               {
                  if(_loc8_)
                  {
                     while(true)
                     {
                        §§push(1);
                        if(!_loc9_)
                        {
                           if(§§pop() >= _loc1_)
                           {
                              §§push(_loc1_);
                              if(!_loc9_)
                              {
                                 §§push(Number(§§pop()));
                                 break;
                              }
                              break loop12;
                           }
                           if(!_loc8_)
                           {
                              break loop0;
                           }
                           §§push(1);
                        }
                        §§push(Number(§§pop()));
                        if(!_loc8_)
                        {
                           break;
                        }
                        _loc1_ = §§pop();
                        if(!_loc8_)
                        {
                           break loop1;
                        }
                     }
                     _loc1_ = §§pop();
                     if(!_loc8_)
                     {
                        break loop0;
                     }
                  }
                  §§push(§"@§.physicsData.onGround);
                  if(_loc8_)
                  {
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     if(!_loc9_)
                     {
                        break loop1;
                     }
                  }
                  break loop0;
               }
               §§push(0.4);
               if(!_loc9_)
               {
                  §§push(§§pop() * (1 - _loc1_));
               }
               _loc1_ = §§pop() + §§pop();
               break loop0;
            }
            §§push(_loc1_);
            break loop12;
         }
         var _loc2_:CharacterBase = §"@§;
         §§push(§"@§.§`!1§());
         if(!_loc9_)
         {
            §§push(Number(§§pop()));
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(§!5§);
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc9_)
         {
            §§push(_loc2_);
            §§push(_loc3_);
            if(!_loc9_)
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
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() * 0.9);
                                    if(_loc9_)
                                    {
                                       break;
                                    }
                                    §§push(_loc4_);
                                    if(!_loc8_)
                                    {
                                       break loop6;
                                    }
                                    §§push(-1);
                                    if(!_loc8_)
                                    {
                                       break loop5;
                                    }
                                    if(§§pop() < §§pop())
                                    {
                                       §§push(-1);
                                       break loop4;
                                    }
                                    if(_loc9_)
                                    {
                                       break loop2;
                                    }
                                 }
                                 §§push(_loc4_);
                                 if(_loc8_)
                                 {
                                    §§push(1);
                                    break loop5;
                                 }
                                 break loop3;
                              }
                              §§goto(addr017d);
                           }
                           §§goto(addr016b);
                        }
                        if(§§pop() > §§pop())
                        {
                           §§push(1);
                           if(_loc8_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc8_)
                              {
                                 break loop6;
                              }
                              break loop3;
                           }
                           break;
                        }
                        if(_loc8_)
                        {
                           break loop2;
                        }
                        §§goto(addr017d);
                     }
                     §§push(Number(§§pop()));
                     if(!_loc9_)
                     {
                        §§goto(addr016b);
                     }
                     §§goto(addr017c);
                  }
                  §§goto(addr017b);
               }
               addr017b:
               addr016b:
               addr017c:
               addr017d:
               §§push(_loc4_);
               §§push(§"@§.§+9§);
               if(!_loc9_)
               {
                  §§push(§§pop() * §§pop());
                  break loop3;
               }
               §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
               if(!_loc9_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§pop().§4!A§(§§pop());
         }
         §§push(§%!L§);
         if(!_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!_loc9_)
         {
            while(true)
            {
               §§push(§"@§);
               §§push(_loc5_);
               if(!_loc9_)
               {
                  §§push(_loc1_);
                  if(!_loc9_)
                  {
                     §§push(§`M§);
                     if(!_loc9_)
                     {
                        §§push(§§pop() - _loc5_);
                     }
                     §§push(§§pop() * §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc9_)
                  {
                     break;
                  }
                  §§push(Number(§§pop()));
                  if(!_loc8_)
                  {
                     break;
                  }
               }
               §§push(-§§pop());
               break;
            }
            §§pop().§%8§(§§pop());
         }
         var _loc6_:CharacterBase = §"@§;
         while(true)
         {
            §§push(§"@§.§;H§());
            if(_loc8_)
            {
               §§push(Number(§§pop()));
               if(!_loc8_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc7_:* = §§pop();
         while(true)
         {
            if(!_loc9_)
            {
               while(true)
               {
                  §§push(_loc6_);
                  §§push(_loc7_);
                  if(!_loc9_)
                  {
                     §§push(_loc1_);
                     if(_loc8_)
                     {
                        §§push(§"@§.§"!+§);
                        if(!_loc9_)
                        {
                           §§push(§§pop() - _loc7_);
                        }
                        §§push(§§pop() * §§pop());
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc9_)
                     {
                        break;
                     }
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               §§pop().§'!K§(§§pop());
               if(_loc9_)
               {
                  break;
               }
            }
            var _temp_1:* = §"@§.tunnel.analytics;
            §§push(_temp_1);
            §§push(_temp_1.§1v§);
            if(!_loc9_)
            {
               §§push(§§pop() + 1);
            }
            §§pop().§1v§ = §§pop();
            break;
         }
         return null;
      }
      
      override public function §0!1§() : Boolean
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:* = false;
         var _loc2_:* = null as CharacterBase;
         loop0:
         while(true)
         {
            if(!_loc4_)
            {
               §§push(§"@§.physicsData.onGround);
               if(_loc3_)
               {
                  while(true)
                  {
                     §§push(!§§pop());
                     if(!_loc4_)
                     {
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              §§goto(addr0047);
                           }
                           break loop0;
                        }
                        §§push(true);
                        if(_loc4_)
                        {
                           break;
                        }
                     }
                     §§push(Boolean(§§pop()));
                     break;
                  }
               }
               _loc1_ = §§pop();
               break;
            }
            addr0047:
            _loc2_ = §"@§;
            while(true)
            {
               if(!_loc4_)
               {
                  §§push(_loc2_.level.unpausedTime - _loc2_.physicsData.§&!>§ < §"@§.§?`§.§[R§);
                  if(_loc4_)
                  {
                     break;
                  }
                  §§push(Boolean(§§pop()));
                  if(!_loc3_)
                  {
                     break;
                  }
                  _loc1_ = §§pop();
                  if(_loc3_)
                  {
                     break loop0;
                  }
               }
               addr00b3:
               §§push(§7o§.controlScheme.§,h§(§`B§));
               if(_loc3_)
               {
                  addr00c8:
                  §§push(Boolean(§§pop()));
                  if(!_loc4_)
                  {
                     return §§pop();
                  }
               }
               break;
            }
            §§goto(addr00d1);
         }
         while(true)
         {
            §§push(_loc1_);
            if(!_loc4_)
            {
               if(!§§pop())
               {
                  §§push(false);
                  break;
               }
               §§goto(addr00b3);
            }
            §§goto(addr00c8);
         }
         addr00d1:
         return §§pop();
      }
      
      override public function § A§() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc1_)
               {
                  §§push(§"@§.physicsData.onGround);
                  if(_loc1_)
                  {
                     break;
                  }
                  if(!§§pop())
                  {
                     §§push(false);
                     break loop0;
                  }
               }
               §§push(§#!F§());
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr004a);
            }
            §§push(Boolean(§§pop()));
            if(_loc2_)
            {
               addr004a:
               return §§pop();
            }
            break;
         }
         return §§pop();
      }
   }
}

