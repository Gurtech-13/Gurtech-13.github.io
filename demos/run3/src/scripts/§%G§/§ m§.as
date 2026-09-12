package §%G§
{
   import §!!$§.§ 6§;
   import §!]§.§4N§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§+#§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §2X§.§>N§;
   import §6!Q§.§]u§;
   import §[s§.§<!1§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.menu.§[!<§;
   import com.player03.run3.save.§2!;§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   import unitsystem.§7o§;
   
   public class § m§
   {
      
      public var §0D§:int;
      
      public var §-S§:Number;
      
      public var §[!+§:§ m§;
      
      public var §`B§:String;
      
      public var § !B§:§<!1§;
      
      public var length:Number;
      
      public var §=!7§:int;
      
      public var buffer:Number;
      
      public var §,N§:int;
      
      public var §^+§:String;
      
      public var active:Boolean;
      
      public var §;V§:Boolean;
      
      public function § m§(param1:§<!1§)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §^+§ = null;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc3_)
               {
                  §0D§ = 0;
                  if(_loc3_)
                  {
                     break;
                  }
                  §,N§ = 0;
                  if(!_loc3_)
                  {
                     §=!7§ = 1;
                     if(_loc3_)
                     {
                        break loop0;
                     }
                  }
               }
               §[!+§ = null;
               break loop0;
            }
            § !B§ = null;
            if(_loc2_)
            {
               § !B§ = param1;
            }
            §§goto(addr00c0);
         }
         §-S§ = 0;
         if(_loc2_)
         {
            length = 0;
            active = false;
            buffer = 0;
            §;V§ = false;
            §`B§ = null;
            if(_loc2_)
            {
               break loop1;
            }
         }
         addr00c0:
      }
      
      public static function §2D§(param1:Number, param2:Vector.<§ m§>) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:* = null as § m§;
         §§push(0);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc6_)
         {
            loop0:
            while(true)
            {
               §§push(_loc4_);
               if(_loc6_)
               {
                  break;
               }
               §§push(int(param2.length));
               if(!_loc6_)
               {
                  if(§§pop() >= §§pop())
                  {
                     while(true)
                     {
                        if(_loc7_)
                        {
                           §§push(0);
                           if(_loc7_)
                           {
                              break loop0;
                           }
                           addr0101:
                           _loc4_ = §§pop();
                           if(!_loc7_)
                           {
                              break;
                           }
                        }
                        while(true)
                        {
                           §§push(_loc4_);
                           while(true)
                           {
                              §§push(int(param2.length));
                           }
                        }
                        addr01c3:
                     }
                     §§goto(addr01cd);
                  }
                  _loc5_ = param2[_loc4_];
                  loop5:
                  while(true)
                  {
                     if(!_loc6_)
                     {
                        _loc4_++;
                        if(!_loc7_)
                        {
                           break;
                        }
                     }
                     loop6:
                     while(true)
                     {
                        loop7:
                        while(true)
                        {
                           §§push(false);
                           if(_loc7_)
                           {
                              if(!_loc5_.active)
                              {
                                 break;
                              }
                              if(!_loc7_)
                              {
                                 break loop6;
                              }
                           }
                           §§pop();
                           if(_loc6_)
                           {
                              continue loop0;
                           }
                           §§push(_loc3_);
                           if(_loc7_)
                           {
                              while(true)
                              {
                                 §§push(_loc5_.§=!7§);
                                 if(_loc6_)
                                 {
                                    addr00c7:
                                    addr00c8:
                                    §§push(int(§§pop()));
                                    break;
                                 }
                                 §§push(§§pop() & §§pop());
                                 if(!_loc6_)
                                 {
                                    §§push(0);
                                    if(_loc7_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(!_loc6_)
                                       {
                                          break loop6;
                                       }
                                       break loop7;
                                    }
                                    break;
                                 }
                                 _loc3_ = int(§§pop());
                                 continue loop0;
                                 addr00bf:
                              }
                              addr00c0:
                              §§push(§§pop() | §§pop());
                              if(!_loc6_)
                              {
                                 §§goto(addr00c7);
                              }
                              §§goto(addr00c8);
                           }
                           §§push(_loc5_.§?!E§());
                           if(!_loc6_)
                           {
                              §§goto(addr00bf);
                           }
                           §§goto(addr00c0);
                        }
                        if(§§pop())
                        {
                           if(!_loc6_)
                           {
                              break loop5;
                           }
                        }
                        continue loop0;
                     }
                     §§push(Boolean(§§pop()));
                     break loop7;
                  }
                  §§push(_loc3_);
                  if(_loc7_)
                  {
                     §§goto(addr00b2);
                  }
                  §§goto(addr00c8);
               }
               while(§§pop() < §§pop())
               {
                  _loc5_ = param2[_loc4_];
                  _loc4_++;
                  loop9:
                  while(true)
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
                              §§push(false);
                              if(!_loc6_)
                              {
                                 §§push(_loc5_.active);
                                 if(_loc7_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          §§pop();
                                          if(!_loc7_)
                                          {
                                             break loop12;
                                          }
                                          §§push(_loc3_);
                                          if(!_loc7_)
                                          {
                                             break loop11;
                                          }
                                          §§push(_loc5_.§=!7§);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() & §§pop());
                                             if(_loc6_)
                                             {
                                                break loop11;
                                             }
                                             §§push(0);
                                             if(!_loc7_)
                                             {
                                                break loop10;
                                             }
                                          }
                                          §§push(§§pop() == §§pop());
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          §§push(!§§pop());
                                          if(_loc6_)
                                          {
                                             break loop9;
                                          }
                                       }
                                       §§push(Boolean(§§pop()));
                                       if(_loc7_)
                                       {
                                          break;
                                       }
                                       break loop9;
                                    }
                                 }
                              }
                              if(§§pop())
                              {
                                 if(_loc6_)
                                 {
                                    addr0195:
                                    §§push(_loc5_.active);
                                    break loop9;
                                 }
                              }
                              else
                              {
                                 _loc5_.update(param1);
                                 if(_loc7_)
                                 {
                                    §§goto(addr0195);
                                 }
                              }
                              §§goto(addr01c3);
                           }
                           §§goto(addr019e);
                        }
                        §§goto(addr01c2);
                     }
                     §§goto(addr01ba);
                  }
                  if(§§pop())
                  {
                     addr01c2:
                     addr019e:
                     §§push(_loc3_);
                     if(_loc7_)
                     {
                        §§push(_loc5_.§?!E§());
                        if(_loc7_)
                        {
                           break loop10;
                        }
                        addr01ba:
                        §§push(§§pop() | §§pop());
                        if(!_loc6_)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     _loc3_ = §§pop();
                  }
                  §§goto(addr01c3);
                  §§push(int(param2.length));
               }
            }
            while(true)
            {
               §§push(int(§§pop()));
               if(_loc7_)
               {
                  §§goto(addr0101);
               }
               §§goto(addr01c5);
            }
         }
         addr01cd:
      }
      
      public static function §@!K§(param1:§ m§, param2:Vector.<§ m§>) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:* = null as § m§;
         §§push(0);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc6_)
         {
            loop0:
            while(_loc3_ < int(param2.length))
            {
               _loc4_ = param2[_loc3_];
               if(_loc5_)
               {
                  _loc3_++;
                  if(!_loc6_)
                  {
                     loop1:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(false);
                           if(_loc5_)
                           {
                              while(true)
                              {
                                 §§push(param1.§?!E§());
                                 if(!_loc6_)
                                 {
                                    §§push(int(§§pop()));
                                    if(!_loc6_)
                                    {
                                       §§push(_loc4_.§=!7§);
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop() & §§pop());
                                    }
                                 }
                                 §§push(0);
                                 break;
                              }
                              if(§§pop() == §§pop())
                              {
                                 break loop1;
                              }
                              if(!_loc6_)
                              {
                                 §§pop();
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 §§push(_loc4_ == param1);
                                 if(_loc6_)
                                 {
                                    break loop1;
                                 }
                              }
                              §§push(!§§pop());
                              if(!_loc5_)
                              {
                                 break loop1;
                              }
                           }
                           §§push(Boolean(§§pop()));
                           break loop1;
                        }
                        _loc4_.§=!J§();
                        continue loop0;
                     }
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           break loop2;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
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
                        if(§[!+§ != null)
                        {
                           §[!+§.update(param1);
                           if(!_loc2_)
                           {
                              if(!§[!+§.active)
                              {
                                 if(!_loc2_)
                                 {
                                    §[!+§ = null;
                                    if(!_loc3_)
                                    {
                                       addr007b:
                                       §<i§();
                                       break loop1;
                                    }
                                    active = false;
                                 }
                                 else
                                 {
                                    addr00d7:
                                    §§push(Number(Math.min(length - §-S§,param1)));
                                    if(!_loc2_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc2_)
                                       {
                                          break loop2;
                                       }
                                    }
                                    param1 = §§pop();
                                    addr00f7:
                                    while(true)
                                    {
                                       §§push(§§findproperty(§-S§));
                                       §§push(§-S§);
                                       if(!_loc2_)
                                       {
                                          §§push(§§pop() + param1);
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                       }
                                       §§push(Number(§§pop()));
                                       break;
                                    }
                                    §§pop().§-S§ = §§pop();
                                    §2!A§(param1);
                                    addr0125:
                                    §§push(false);
                                    if(length < 0)
                                    {
                                       break loop0;
                                    }
                                    addr012f:
                                    §§pop();
                                    if(!_loc2_)
                                    {
                                       break loop3;
                                    }
                                    §§goto(addr014e);
                                 }
                              }
                              return;
                           }
                           break loop3;
                        }
                        §§push(active);
                        if(!_loc2_)
                        {
                           if(!§§pop())
                           {
                              if(!§ A§())
                              {
                                 break loop1;
                              }
                              §§goto(addr007b);
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(§0!1§());
                                 if(!_loc2_)
                                 {
                                    §§push(!Boolean(§§pop()));
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       if(!_loc2_)
                                       {
                                          §=!J§(true);
                                          if(_loc2_)
                                          {
                                          }
                                          break loop1;
                                       }
                                    }
                                    else
                                    {
                                       §§push(length);
                                       if(_loc2_)
                                       {
                                          break loop2;
                                       }
                                       §§push(0);
                                       if(_loc2_)
                                       {
                                          break loop4;
                                       }
                                       if(§§pop() >= §§pop())
                                       {
                                          §§goto(addr00d7);
                                       }
                                    }
                                    §§goto(addr00f7);
                                 }
                                 §§goto(addr0125);
                              }
                           }
                        }
                        §§goto(addr012f);
                     }
                     §§goto(addr0148);
                  }
                  §§push(length);
                  if(_loc3_)
                  {
                     §§push(§§pop() - §-S§);
                  }
                  break;
               }
               addr0148:
               §§push(§§pop() <= 0);
               break loop0;
            }
            return;
         }
         if(§§pop())
         {
            addr014e:
            §=!J§(true);
         }
         break loop1;
      }
      
      public function §'!S§() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc1_)
               {
                  §§push(active);
                  if(_loc2_)
                  {
                     break;
                  }
                  if(!§§pop())
                  {
                     §§push(false);
                     break loop0;
                  }
               }
               §§push(§-S§ == 0);
               if(_loc1_)
               {
                  break;
               }
               break loop0;
            }
            return §§pop();
         }
         return §§pop();
      }
      
      public function §-A§() : void
      {
      }
      
      public function reset() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               if(!active)
               {
                  break;
               }
               active = false;
            }
            §-S§ = 0;
            break;
         }
         if(§[!+§ != null)
         {
            §[!+§.reset();
            if(_loc1_)
            {
               §[!+§ = null;
            }
         }
      }
      
      public function §2!A§(param1:Number) : void
      {
      }
      
      public function §?!E§() : int
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(!_loc2_)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(false);
                        if(_loc1_)
                        {
                           if(§[!+§ == null)
                           {
                              break;
                           }
                           if(!_loc1_)
                           {
                              break loop2;
                           }
                        }
                        §§pop();
                        if(_loc1_)
                        {
                           §§push(§[!+§.active);
                           if(_loc1_)
                           {
                              break loop2;
                           }
                           break;
                        }
                        §§goto(addr008e);
                     }
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           addr0063:
                           §§push(§[!+§.§?!E§());
                           if(_loc1_)
                           {
                              §§push(int(§§pop()));
                              if(_loc1_)
                              {
                                 return §§pop();
                              }
                              break loop1;
                           }
                           break loop0;
                        }
                     }
                     else
                     {
                        §§goto(addr008a);
                        §§push(active);
                     }
                     §§goto(addr008e);
                  }
                  §§push(Boolean(§§pop()));
                  if(!_loc2_)
                  {
                     break loop3;
                  }
                  addr008a:
                  if(§§pop())
                  {
                     addr008e:
                     §§push(§,N§);
                     if(!_loc2_)
                     {
                        §§push(§0D§);
                        if(!_loc2_)
                        {
                           §§push(~§§pop());
                        }
                        §§push(§§pop() & §§pop());
                        if(!_loc2_)
                        {
                           break;
                        }
                        break loop0;
                     }
                     break;
                  }
                  §§push(0);
                  break loop0;
               }
               §§goto(addr0063);
            }
            return §§pop();
         }
         return §§pop();
      }
      
      public function §2U§() : § m§
      {
         return null;
      }
      
      public function §=!J§(param1:Object = undefined) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  if(param1 == null)
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§push(false);
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                     param1 = §§pop();
                  }
                  if(§[!+§ == null)
                  {
                     var _loc2_:§ m§ = §2U§();
                     active = false;
                     while(true)
                     {
                        if(!_loc4_)
                        {
                           §-S§ = 0;
                           §§push(false);
                           if(!_loc4_)
                           {
                              if(param1)
                              {
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§pop();
                                       §§push(_loc2_ == null);
                                       if(_loc3_)
                                       {
                                          §§push(!§§pop());
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                       }
                                    }
                                    §§push(Boolean(§§pop()));
                                    break;
                                 }
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
                        _loc2_.§<i§();
                        if(!_loc4_)
                        {
                           if(_loc2_ == this)
                           {
                              break;
                           }
                           if(_loc4_)
                           {
                              break;
                           }
                           active = true;
                           if(_loc4_)
                           {
                              break;
                           }
                        }
                        §[!+§ = _loc2_;
                        break;
                     }
                     return;
                  }
                  while(true)
                  {
                     if(_loc3_)
                     {
                        §[!+§.§=!J§(param1);
                        if(!_loc4_)
                        {
                           break loop1;
                        }
                     }
                     §§goto(addr0072);
                  }
               }
               §§push(§[!+§.active);
               if(!_loc4_)
               {
                  break;
               }
               §§goto(addr0067);
            }
            addr0067:
            if(!§§pop())
            {
               if(!_loc4_)
               {
                  §[!+§ = null;
                  addr0072:
               }
            }
         }
      }
      
      public function §#!F§() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            if(!_loc2_)
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
                        if(§`B§ == null)
                        {
                           if(_loc1_)
                           {
                              addr002b:
                              §§push(true);
                              if(!_loc2_)
                              {
                                 return §§pop();
                              }
                              break loop0;
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              if(§;V§)
                              {
                                 if(_loc1_)
                                 {
                                    §§push(§7o§.controlScheme.§,h§(§`B§));
                                    break loop0;
                                 }
                                 addr0098:
                                 §§push(§7o§.controlScheme.§,h§(§`B§));
                                 if(_loc2_)
                                 {
                                    break loop3;
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                              else
                              {
                                 §§push(§ !B§.§9!S§(§`B§));
                                 if(!_loc2_)
                                 {
                                    if(Boolean(§§pop()))
                                    {
                                       if(_loc1_)
                                       {
                                          return false;
                                       }
                                    }
                                    else
                                    {
                                       §§push(buffer);
                                       if(_loc2_)
                                       {
                                          break loop2;
                                       }
                                       if(§§pop() <= 0)
                                       {
                                          §§push(§7o§.controlScheme.§+l§(§`B§));
                                          break loop1;
                                       }
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                    }
                                    §§goto(addr0098);
                                 }
                              }
                              if(§§pop())
                              {
                                 break;
                              }
                              return false;
                           }
                        }
                        §§push(§7o§.controlScheme.§5>§(§`B§));
                        if(!_loc2_)
                        {
                           §§push(Number(§§pop()));
                        }
                        break loop2;
                     }
                     §§goto(addr00f7);
                  }
                  §§push(§§pop() <= buffer);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
                  break;
               }
               addr00f7:
               return Boolean(§§pop());
            }
            §§goto(addr002b);
         }
         return Boolean(§§pop());
      }
      
      public function §0!1§() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(§#!F§());
         if(_loc1_)
         {
            return Boolean(§§pop());
         }
      }
      
      public function §<i§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            active = true;
            while(true)
            {
               if(_loc1_)
               {
                  §-S§ = 0;
                  if(!_loc2_)
                  {
                     §0D§ = 0;
                     if(!_loc1_)
                     {
                        break;
                     }
                  }
               }
               §-A§();
               break;
            }
         }
      }
      
      public function § A§() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(§#!F§());
         if(!_loc2_)
         {
            return Boolean(§§pop());
         }
      }
   }
}

