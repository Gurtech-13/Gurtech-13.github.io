package com.player03.run3.level.trigger.specific
{
   import geom3d.Transform;
   import §6!Q§.§'!E§;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.level.trigger.§,!A§;
   import com.player03.run3.level.trigger.§<!§;
   import haxeutils.sound.§5! §;
   
   public class ModulateSound extends §,!A§
   {
      
      public static var init__:Boolean;
      
      public static var §]!N§:Number;
      
      public static var §7c§:Number = 2;
      
      public static var §+q§:Number = 3;
      
      public var §[!1§:Number;
      
      public var §,k§:Number;
      
      public function ModulateSound(param1:§<!§, param2:Level, param3:int)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            §[!1§ = 0;
            while(true)
            {
               if(!_loc4_)
               {
                  §,k§ = 0;
                  if(!_loc5_)
                  {
                     break;
                  }
               }
               super(param1,param2,param3);
               break;
            }
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc6_:* = NaN;
         var _loc2_:TunnelSection = tunnel.characters[0].§73§;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc8_)
                  {
                     §§push(true);
                     if(!_loc8_)
                     {
                        break;
                     }
                     if(_loc2_ == null)
                     {
                        break loop1;
                     }
                     if(!_loc8_)
                     {
                        break loop1;
                     }
                     §§pop();
                     if(!_loc8_)
                     {
                        break loop0;
                     }
                  }
                  §§push(_loc2_.id == §5!&§);
                  if(!_loc7_)
                  {
                     §§push(!§§pop());
                     if(!_loc7_)
                     {
                        break;
                     }
                     break loop1;
                  }
                  break;
               }
               §§push(Boolean(§§pop()));
               break;
            }
            if(§§pop())
            {
               break;
            }
            var _loc3_:Transform = tunnel.camera;
            §§push(_loc2_.startZ);
            if(_loc8_)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            loop3:
            while(true)
            {
               while(true)
               {
                  §§push(_loc3_.position.z);
                  if(_loc8_)
                  {
                     §§push(_loc4_);
                     if(_loc7_)
                     {
                        break;
                     }
                     §§push(§§pop() - §§pop());
                     if(_loc7_)
                     {
                        break loop3;
                     }
                  }
                  §§push(_loc2_.endZ);
                  if(_loc8_)
                  {
                     §§push(§§pop() - _loc4_);
                  }
                  break;
               }
               §§push(§§pop() / §§pop());
               if(_loc8_)
               {
                  break;
               }
               continue loop9;
            }
            var _loc5_:* = Number(§§pop());
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     loop9:
                     while(true)
                     {
                        loop10:
                        while(true)
                        {
                           if(!_loc7_)
                           {
                              loop11:
                              while(true)
                              {
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(true);
                                       if(!_loc7_)
                                       {
                                          if(_loc5_ <= 0)
                                          {
                                             break;
                                          }
                                          if(!_loc8_)
                                          {
                                             break loop11;
                                          }
                                          §§pop();
                                          if(!_loc8_)
                                          {
                                             continue loop17;
                                          }
                                          §§push(_loc5_);
                                          §§push(1);
                                          if(_loc7_)
                                          {
                                             break loop5;
                                          }
                                          §§push(§§pop() >= §§pop());
                                          if(!_loc8_)
                                          {
                                             break loop11;
                                          }
                                       }
                                       §§push(Boolean(§§pop()));
                                       if(!_loc7_)
                                       {
                                          break;
                                       }
                                       break loop11;
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc8_)
                                          {
                                             break loop10;
                                          }
                                          §§push(1);
                                          if(_loc8_)
                                          {
                                             _loc5_ = Number(§§pop());
                                             if(_loc7_)
                                             {
                                                break loop7;
                                             }
                                             §5! §.§@!A§().§3!K§(1);
                                             §§goto(addr021d);
                                          }
                                          else
                                          {
                                             §§goto(addr01e1);
                                          }
                                       }
                                       else
                                       {
                                          §§push(_loc5_);
                                          if(!_loc7_)
                                          {
                                             §§push(0.5);
                                             if(!_loc7_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(!_loc7_)
                                                {
                                                   _loc6_ = §§pop();
                                                   continue loop17;
                                                }
                                                §§goto(addr01d8);
                                             }
                                             else
                                             {
                                                §§goto(addr0185);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr017c);
                                          }
                                          §§goto(addr0194);
                                       }
                                       §§goto(addr01e2);
                                    }
                                    §§goto(addr0208);
                                 }
                                 loop15:
                                 while(true)
                                 {
                                    loop16:
                                    while(true)
                                    {
                                       loop17:
                                       while(true)
                                       {
                                          loop20:
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             if(_loc8_)
                                             {
                                                §§push(0);
                                                if(_loc7_)
                                                {
                                                   break loop17;
                                                }
                                                while(true)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      §§push(_loc6_);
                                                      if(_loc7_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(-_loc6_);
                                                      if(_loc7_)
                                                      {
                                                         break loop20;
                                                      }
                                                   }
                                                   addr017c:
                                                   §§push(1.5);
                                                   if(_loc8_)
                                                   {
                                                      addr0185:
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      break loop15;
                                                   }
                                                   addr0194:
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc7_)
                                                   {
                                                      break loop15;
                                                   }
                                                }
                                                §§push(0.25);
                                                if(_loc7_)
                                                {
                                                   break loop16;
                                                }
                                                §§goto(addr0194);
                                             }
                                             §§push(Number(§§pop()));
                                             if(!_loc8_)
                                             {
                                                break loop15;
                                             }
                                             _loc5_ = §§pop();
                                             while(true)
                                             {
                                                §§push(_loc5_);
                                                if(!_loc7_)
                                                {
                                                   break loop15;
                                                }
                                                §§goto(addr01e2);
                                             }
                                             §§goto(addr0208);
                                          }
                                          §§goto(addr0233);
                                       }
                                       while(true)
                                       {
                                          if(§§pop() <= §§pop())
                                          {
                                             §§goto(addr01cf);
                                          }
                                          else
                                          {
                                             addr01e1:
                                             §§push(1);
                                          }
                                          §§goto(addr01e2);
                                       }
                                       §§goto(addr0208);
                                    }
                                    while(true)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          if(_loc8_)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc5_);
                                                if(_loc8_)
                                                {
                                                   §§push(1);
                                                   if(!_loc7_)
                                                   {
                                                      break loop17;
                                                   }
                                                   break loop5;
                                                }
                                                addr01d9:
                                                _loc5_ = §§pop();
                                                break;
                                             }
                                             addr0208:
                                             §5! §.§@!A§().§3!K§(_loc5_);
                                             if(!_loc7_)
                                             {
                                                addr021d:
                                                §§push(§5! §.§@!A§().soundMuted);
                                                break loop11;
                                             }
                                             §§goto(addr022d);
                                          }
                                          addr01cf:
                                          §§push(_loc5_);
                                          if(_loc8_)
                                          {
                                             addr01d8:
                                             §§goto(addr01d9);
                                             §§push(Number(§§pop()));
                                          }
                                          else
                                          {
                                             addr01e2:
                                             _loc5_ = §§pop();
                                             if(!_loc8_)
                                             {
                                                break loop7;
                                             }
                                          }
                                          §§goto(addr0208);
                                       }
                                       else
                                       {
                                          §§push(0.5);
                                          if(!_loc7_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc7_)
                                             {
                                                break;
                                             }
                                             _loc5_ = §§pop();
                                             if(_loc7_)
                                             {
                                                break loop9;
                                             }
                                             §§goto(addr0208);
                                          }
                                       }
                                       §§goto(addr0233);
                                    }
                                    §§goto(addr0267);
                                 }
                                 §§push(0.5);
                                 break loop16;
                              }
                              if(!§§pop())
                              {
                                 break loop7;
                              }
                              addr022d:
                              addr0233:
                              §§push(§[!1§);
                              §§push(0);
                              if(_loc7_)
                              {
                                 break loop5;
                              }
                              if(§§pop() > §§pop())
                              {
                                 if(_loc7_)
                                 {
                                    break loop6;
                                 }
                                 §§push(§§findproperty(§[!1§));
                                 §§push(§[!1§);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() - param1);
                                 }
                                 §§pop().§[!1§ = §§pop();
                                 while(true)
                                 {
                                    if(_loc8_)
                                    {
                                       addr0267:
                                       §§push(§[!1§);
                                       §§push(0);
                                       if(_loc7_)
                                       {
                                          break loop5;
                                       }
                                       if(§§pop() > §§pop())
                                       {
                                          break;
                                       }
                                    }
                                    §'!E§.§@!A§().§1&§();
                                    break;
                                 }
                              }
                           }
                           §§push(§§findproperty(§,k§));
                           §§push(§,k§);
                           if(_loc8_)
                           {
                              §§push(§§pop() - param1);
                           }
                           §§pop().§,k§ = §§pop();
                           if(_loc8_)
                           {
                              §§push(§,k§);
                              §§push(0);
                              break loop5;
                           }
                           break;
                        }
                        §§goto(addr02dc);
                     }
                     §§goto(addr02ff);
                  }
                  §§goto(addr030e);
               }
               §'!E§.§@!A§().§>!W§("beeep");
               if(_loc8_)
               {
                  addr02dc:
                  while(true)
                  {
                     §§push(§§findproperty(§,k§));
                     §§push(3);
                     if(!_loc7_)
                     {
                        §§push(_loc5_);
                        if(_loc8_)
                        {
                           §§push(§§pop() * -1);
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc7_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
                  §§pop().§,k§ = §§pop();
               }
               §§goto(addr02ff);
            }
            if(§§pop() <= §§pop())
            {
               §'!E§.§@!A§().§1&§();
               if(!_loc7_)
               {
                  break loop6;
               }
               addr02ff:
               §§push(§§findproperty(§[!1§));
               §§push(2);
               if(_loc8_)
               {
                  §§push(Number(§§pop()));
               }
               §§pop().§[!1§ = §§pop();
            }
            addr030e:
            return;
         }
      }
   }
}

