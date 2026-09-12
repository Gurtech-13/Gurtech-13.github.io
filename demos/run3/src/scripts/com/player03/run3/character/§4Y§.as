package com.player03.run3.character
{
   import §%!Q§.§>K§;
   import §%G§.§ m§;
   import §+!1§.§[!9§;
   import §`_§.§^s§;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.save.§]k§;
   import flash.events.MouseEvent;
   import nme3D.model.§7v§;
   import unitsystem.§7o§;
   
   public class §4Y§ extends §'5§
   {
      
      public var §=!I§:Number;
      
      public var §6!F§:Number;
      
      public var §0?§:Number;
      
      public var §-&§:Number;
      
      public function §4Y§(param1:§6M§, param2:Number, param3:Number, param4:Number, param5:Number = 0)
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         while(true)
         {
            if(_loc7_)
            {
               §0?§ = 0;
               super(param1);
               §6!F§ = param5;
               if(!_loc7_)
               {
                  break;
               }
            }
            §=!I§ = param3;
            §-&§ = param4;
            break;
         }
         length = param2;
      }
      
      override public function §-A§() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:* = null as §6M§;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc1_:§6M§ = §"@§;
         §§push(§"@§.§<!B§());
         if(_loc6_)
         {
            §§push(Number(§§pop()));
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc6_)
            {
               loop1:
               while(true)
               {
                  §§push(_loc1_);
                  §§push(_loc2_);
                  if(!_loc7_)
                  {
                     loop2:
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(0.6);
                              if(!_loc7_)
                              {
                                 §§push(§"@§.tunnel.power);
                                 if(!_loc7_)
                                 {
                                    §§push(0.20000000000000007);
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(!_loc6_)
                                    {
                                       break loop3;
                                    }
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc6_)
                                 {
                                    break loop2;
                                 }
                              }
                              §§push(Number(§§pop()));
                              if(!_loc7_)
                              {
                                 break loop2;
                              }
                              §§goto(addr009b);
                           }
                           §§goto(addr0099);
                        }
                        addr009b:
                        §§push(§§pop() + §§pop() * §§pop());
                        if(!_loc6_)
                        {
                           break loop1;
                        }
                     }
                     §§push(§6!F§);
                     if(!_loc7_)
                     {
                        addr0099:
                        §§push(§§pop() - _loc2_);
                     }
                     break loop3;
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               §§pop().§%8§(§§pop());
               if(!_loc7_)
               {
                  loop5:
                  while(true)
                  {
                     loop6:
                     while(true)
                     {
                        §§push(false);
                        if(!_loc7_)
                        {
                           §§push(§"@§.§;H§());
                           if(!_loc7_)
                           {
                              §§push(Number(§§pop()));
                           }
                           if(§§pop() < §=!I§)
                           {
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    §§pop();
                                    if(_loc7_)
                                    {
                                       break loop0;
                                    }
                                    §§push(§"@§.§[!L§);
                                    if(_loc7_)
                                    {
                                       break loop6;
                                    }
                                    §§push(0);
                                    if(_loc7_)
                                    {
                                       break loop5;
                                    }
                                    §§push(§§pop() <= §§pop());
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(Boolean(§§pop()));
                                 break;
                              }
                           }
                        }
                        if(§§pop())
                        {
                           _loc3_ = §"@§;
                           if(!_loc7_)
                           {
                              while(true)
                              {
                                 §§push(§"@§.§;H§());
                                 if(_loc6_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(Number(§§pop()));
                                 break;
                              }
                              _loc4_ = §§pop();
                              if(!_loc7_)
                              {
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    §§push(_loc4_);
                                    if(!_loc7_)
                                    {
                                       §§push(0.6);
                                       if(!_loc7_)
                                       {
                                          §§push(§=!I§);
                                          if(!_loc7_)
                                          {
                                             §§push(§§pop() - _loc4_);
                                          }
                                          §§push(§§pop() * §§pop());
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!_loc6_)
                                       {
                                          break;
                                       }
                                    }
                                    §§push(Number(§§pop()));
                                    break;
                                 }
                                 §§pop().§'!K§(§§pop());
                              }
                           }
                        }
                        §§push(§"@§);
                        §§push(0);
                        §§push(0);
                        §§push(§=!I§);
                        if(!_loc7_)
                        {
                           §§push(§§pop() * 0.4);
                        }
                        §§pop().applyImpulse3D(§§pop(),§§pop(),§§pop());
                        if(_loc6_)
                        {
                           §§push(§"@§.tunnel.power);
                           break;
                        }
                        continue loop7;
                     }
                     §§push(1);
                     break;
                  }
                  if(§§pop() < §§pop())
                  {
                     if(_loc7_)
                     {
                        break;
                     }
                     _loc3_ = §"@§;
                     loop7:
                     while(true)
                     {
                        while(true)
                        {
                           if(!_loc7_)
                           {
                              §§push(§"@§.§"!2§);
                              if(!_loc7_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                              }
                              _loc4_ = §§pop();
                              if(_loc7_)
                              {
                                 break loop7;
                              }
                           }
                           §§push(§"@§.§;H§());
                           if(!_loc7_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc6_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           break;
                        }
                        _loc5_ = §§pop();
                        if(!_loc7_)
                        {
                           while(true)
                           {
                              §§push(_loc3_);
                              §§push(_loc4_);
                              if(!_loc7_)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       loop12:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(0.6);
                                             if(_loc6_)
                                             {
                                                §§push(§"@§.tunnel.power);
                                                if(_loc7_)
                                                {
                                                   break;
                                                }
                                                §§push(0.4);
                                                if(!_loc6_)
                                                {
                                                   break loop12;
                                                }
                                                §§push(§§pop() * §§pop());
                                                if(_loc7_)
                                                {
                                                   break loop11;
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!_loc7_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc7_)
                                                   {
                                                      break loop10;
                                                   }
                                                }
                                             }
                                             §§push(_loc5_);
                                             if(!_loc7_)
                                             {
                                                break loop11;
                                             }
                                             break;
                                          }
                                          §§push(§§pop() * §§pop());
                                          break loop10;
                                       }
                                       §§push(§§pop() - §§pop());
                                       break loop13;
                                    }
                                    §§push(_loc4_);
                                    break loop12;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                              }
                              §§push(Number(§§pop()));
                              break;
                           }
                           §§pop().§'!K§(§§pop());
                        }
                        break;
                     }
                  }
                  break loop7;
               }
               break;
            }
            var _temp_1:* = §"@§.tunnel.analytics;
            §§push(_temp_1);
            §§push(_temp_1.§1v§);
            if(_loc6_)
            {
               §§push(§§pop() + 1);
            }
            §§pop().§1v§ = §§pop();
            super.§-A§();
            break;
         }
      }
      
      override public function §2!A§(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
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
                                          §§push(§"@§.§<!B§());
                                          if(_loc3_)
                                          {
                                             if(§§pop() > 0)
                                             {
                                                while(true)
                                                {
                                                   §§push(§"@§);
                                                   §§push(0);
                                                   §§push(§"@§.§<!B§());
                                                   if(!_loc2_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(!_loc3_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   §§push(-§§pop());
                                                   break;
                                                }
                                                §§pop().applyForce3D(§§pop(),§§pop(),0);
                                             }
                                             §§push(length);
                                             §§push(§-S§);
                                             if(!_loc3_)
                                             {
                                                break loop8;
                                             }
                                             §§push(§§pop() - §§pop());
                                             §§push(length);
                                             if(_loc2_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop() * 0.3);
                                             if(_loc2_)
                                             {
                                                break loop8;
                                             }
                                             if(§§pop() >= §§pop())
                                             {
                                                break loop7;
                                             }
                                             if(_loc2_)
                                             {
                                                break loop6;
                                             }
                                             §§push(false);
                                             if(_loc2_)
                                             {
                                                break loop5;
                                             }
                                             §§push(§0?§);
                                             if(_loc2_)
                                             {
                                                break loop4;
                                             }
                                             §§push(§-&§);
                                             if(_loc2_)
                                             {
                                                break loop3;
                                             }
                                             if(§§pop() <= §§pop())
                                             {
                                                break loop2;
                                             }
                                             if(_loc2_)
                                             {
                                                break loop1;
                                             }
                                             §§pop();
                                             §§push(§"@§.§;H§());
                                             if(_loc2_)
                                             {
                                                break loop0;
                                             }
                                             §§push(Number(§§pop()));
                                          }
                                          §§push(§-&§);
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          break loop8;
                                       }
                                       §§push(§§pop() > §§pop());
                                       if(_loc3_)
                                       {
                                          break loop2;
                                       }
                                       §§goto(addr0100);
                                    }
                                    §§goto(addr0120);
                                 }
                              }
                              §§goto(addr0106);
                           }
                           §§goto(addr0127);
                        }
                        §§goto(addr00f6);
                     }
                     §§goto(addr00fc);
                  }
                  if(§§pop())
                  {
                     §"@§.applyForce3D(0,0,-100);
                  }
                  else
                  {
                     §§push(false);
                     if(_loc3_)
                     {
                        break;
                     }
                     §§goto(addr0100);
                  }
               }
               addr00fc:
               addr00f6:
               if(§0?§ < §-&§)
               {
                  addr0100:
                  §§pop();
                  if(_loc3_)
                  {
                     addr0106:
                     §§push(§"@§.§;H§());
                     break;
                  }
                  return;
               }
               §§goto(addr0128);
            }
            addr0128:
            addr0120:
            §§push(Number(§§pop()) < §-&§);
            if(_loc3_)
            {
               addr0127:
               §§push(Boolean(§§pop()));
            }
            if(§§pop())
            {
               if(!_loc2_)
               {
                  §"@§.applyForce3D(0,0,100);
               }
            }
            else
            {
               §"@§.§'!K§(§-&§);
            }
         }
         break loop7;
      }
      
      override public function §2U§() : § m§
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Number = NaN;
         §§push(§-&§);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc3_)
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
                           while(true)
                           {
                              §§push(§"@§.§;H§());
                              §§push(_loc1_);
                              if(!_loc4_)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    break;
                                 }
                                 if(_loc4_)
                                 {
                                    break loop0;
                                 }
                                 _loc2_ = §"@§.§;H§();
                                 if(_loc4_)
                                 {
                                    break loop0;
                                 }
                                 §§push(_loc2_);
                                 §§push(0.7);
                                 if(!_loc3_)
                                 {
                                    break loop1;
                                 }
                                 §§push(_loc1_);
                                 if(_loc4_)
                                 {
                                    break loop4;
                                 }
                                 §§push(_loc2_);
                                 if(_loc4_)
                                 {
                                    break loop3;
                                 }
                                 §§push(§§pop() - §§pop());
                                 if(_loc4_)
                                 {
                                    break loop2;
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(_loc4_)
                                 {
                                    break loop1;
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc4_)
                              {
                                 _loc1_ = Number(§§pop());
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 break loop0;
                              }
                              §§goto(addr00de);
                           }
                           §§push(_loc1_);
                           if(!_loc4_)
                           {
                              §§push(1 - §"@§.tunnel.power);
                              if(_loc3_)
                              {
                                 §§push(0.5);
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(_loc4_)
                                 {
                                    break loop1;
                                 }
                              }
                              §§push(§"@§.§"!2§);
                              if(!_loc4_)
                              {
                                 break;
                              }
                              break loop2;
                           }
                           §§goto(addr00df);
                        }
                        §§push(_loc1_);
                        break;
                     }
                     §§push(§§pop() - §§pop());
                     break;
                  }
                  §§push(§§pop() * §§pop());
                  break;
               }
               addr00df:
               _loc1_ = §§pop() + §§pop();
               addr00de:
               if(_loc4_)
               {
                  break;
               }
            }
            §"@§.§'!K§(_loc1_);
            break;
         }
         return null;
      }
   }
}

