package §2!W§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%G§.§ m§;
   import §0!"§.§-U§;
   import §0!"§.§5n§;
   import §1!a§.§!!<§;
   import §1!a§.§55§;
   import §4!6§.§=s§;
   import §<!&§.§%!§;
   import §[s§.§<!1§;
   import §]!C§.§9x§;
   import §^!0§.§%2§;
   import §^!0§.§7P§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Currency;
   import com.player03.run3.api.§<,§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.§8!M§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.menu.§ L§;
   import flash.Boot;
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Point3D;
   import nme3D.§1![§;
   import unitsystem.§7o§;
   
   public class §%U§ extends § m§
   {
      
      public var §3Q§:Boolean;
      
      public var §&!@§:Number;
      
      public var strength:Number;
      
      public var §4!0§:§3!J§;
      
      public var §?!O§:Number;
      
      public var §8@§:Number;
      
      public var §%!9§:Number;
      
      public var §?!P§:Number;
      
      public var §6B§:Number;
      
      public var §[R§:Number;
      
      public var §%3§:Boolean;
      
      public var §!!2§:int;
      
      public var §!"§:int;
      
      public var §=C§:Function;
      
      public var §#S§:Number;
      
      public var §@!_§:Number;
      
      public var §@4§:Number;
      
      public var §&z§:Number;
      
      public var §4y§:Boolean;
      
      public var §@e§:Number;
      
      public var §7O§:Boolean;
      
      public var §<F§:Boolean;
      
      public function §%U§(param1:§<!1§, param2:Number = 150, param3:Number = 680, param4:Number = 0.15, param5:int = 1, param6:Boolean = false, param7:Number = 0.9, param8:Number = 0.25, param9:Number = 0.05, param10:Boolean = false, param11:Number = 0.05, param12:Boolean = false, param13:Object = undefined, param14:Boolean = true, param15:Object = undefined, param16:§3!J§ = undefined)
      {
         var _temp_1:* = true;
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = _temp_1;
         §7O§ = true;
         §%!9§ = 1;
         §@4§ = 1;
         while(true)
         {
            loop1:
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
                        if(!_loc17_)
                        {
                           super(param1);
                           if(!_loc18_)
                           {
                              break;
                           }
                           §`B§ = "jump";
                           if(_loc17_)
                           {
                              break loop8;
                           }
                           strength = Number(Math.abs(param2));
                           if(_loc18_)
                           {
                              §!"§ = param5;
                              if(!_loc18_)
                              {
                                 break loop7;
                              }
                              §#S§ = param3;
                              length = param4;
                              if(_loc17_)
                              {
                                 break loop1;
                              }
                           }
                           §3Q§ = param6;
                           if(_loc17_)
                           {
                              continue loop2;
                           }
                        }
                        §?!P§ = param7;
                        if(_loc18_)
                        {
                           buffer = Number(Math.abs(param8));
                        }
                        break;
                     }
                     §[R§ = Number(Math.abs(param9));
                     §;V§ = param10;
                     break;
                  }
                  §@e§ = Number(Math.abs(param11));
                  if(!_loc18_)
                  {
                     break;
                  }
                  continue loop2;
               }
               §§goto(addr01b5);
            }
            if(param1 is IEventDispatcher)
            {
               if(!_loc17_)
               {
                  param1.addEventListener("jumpsRestored",§]!2§);
                  break loop4;
               }
               break loop2;
            }
            break loop4;
         }
         §<F§ = param12;
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               if(_loc18_)
               {
                  §4y§ = param14;
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        if(!_loc17_)
                        {
                           if(param13 != null)
                           {
                              break;
                           }
                           if(!_loc18_)
                           {
                              break loop4;
                           }
                        }
                        while(true)
                        {
                           §§push(Number(Math.POSITIVE_INFINITY));
                           if(_loc18_)
                           {
                              param13 = §§pop();
                              break loop5;
                           }
                           addr0147:
                           param15 = §§pop();
                           break;
                        }
                        addr014a:
                        §@!_§ = param15;
                        §4!0§ = param16;
                        §6B§ = Number(Math.POSITIVE_INFINITY);
                        if(_loc18_)
                        {
                           break loop1;
                        }
                     }
                     §&!@§ = param13;
                     if(!_loc18_)
                     {
                        break loop3;
                     }
                     if(param15 == null)
                     {
                        §§goto(addr0147);
                        §§push(Number(Math.POSITIVE_INFINITY));
                     }
                     §§goto(addr014a);
                  }
                  §!!2§ = 0;
               }
               §^+§ = "jump";
               if(!_loc17_)
               {
                  addr01b5:
                  §§push(§§findproperty(§=!7§));
                  §§push(§=!7§);
                  if(_loc18_)
                  {
                     §§push(§§pop() | 0x20);
                  }
                  §§pop().§=!7§ = §§pop();
                  if(_loc18_)
                  {
                     break;
                  }
                  break loop2;
               }
               break;
            }
            §§push(§§findproperty(§,N§));
            §§push(§,N§);
            if(_loc18_)
            {
               §§push(§§pop() | 4);
            }
            §§pop().§,N§ = §§pop();
            break;
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(!_loc2_)
            {
               §§push(false);
            }
            loop1:
            while(true)
            {
               while(true)
               {
                  addr0084:
                  §§push(active);
                  if(!_loc2_)
                  {
                     addr0091:
                     §§push(!§§pop());
                     if(!_loc2_)
                     {
                        §§push(Boolean(§§pop()));
                        break loop0;
                     }
                     §§push(Boolean(§§pop()));
                     break loop1;
                  }
                  §§pop();
                  §§push(active);
                  if(!_loc3_)
                  {
                     break loop1;
                  }
                  §§goto(addr0091);
                  §§push(!§§pop());
               }
               §§goto(addr009e);
            }
            if(§§pop())
            {
               §@4§ = 1;
            }
            break loop2;
         }
         if(§§pop())
         {
            §!!2§ = 0;
         }
         super.update(param1);
         if(!_loc2_)
         {
            §§push(false);
            if(!§ !B§.physicsData.onGround)
            {
               break loop1;
            }
            §§goto(addr0084);
         }
         addr009e:
      }
      
      override public function §-A§() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         §§push(§§findproperty(§!!2§));
         §§push(§!!2§);
         if(!_loc6_)
         {
            §§push(§§pop() + 1);
         }
         §§pop().§!!2§ = §§pop();
         §&z§ = 0;
         §?!O§ = § !B§.level.unpausedTime;
         if(_loc5_)
         {
            §%3§ = false;
            if(!_loc6_)
            {
               § !B§.§%$§(§`B§);
            }
         }
         § !B§.§<!R§(this);
         §§push(strength);
         if(!_loc6_)
         {
            §§push(§§pop() * §@4§);
            if(_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         var _loc2_:* = 1;
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  §§push(!§ !B§.physicsData.onGround);
                  if(_loc5_)
                  {
                     if(!§§pop())
                     {
                        continue loop9;
                     }
                     §§push(§?!P§);
                     if(_loc5_)
                     {
                        _loc2_ = Number(§§pop());
                        §§push(false);
                        if(_loc6_)
                        {
                           break loop1;
                        }
                        if(§%!9§ == 1)
                        {
                           continue loop2;
                        }
                        if(_loc6_)
                        {
                           continue loop2;
                        }
                     }
                     else
                     {
                        §§goto(addr0134);
                     }
                  }
                  §§pop();
                  if(_loc5_)
                  {
                     §§push(§!!2§ > 1);
                     continue loop2;
                  }
                  §§goto(addr01d1);
               }
               §§goto(addr01d2);
            }
            if(!§§pop())
            {
               break loop12;
            }
            if(_loc5_)
            {
               addr01d1:
               §§push(_loc3_);
               break loop14;
            }
            §§goto(addr030a);
         }
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               if(§§pop())
               {
                  if(!_loc6_)
                  {
                     §§push(_loc2_ * Number(Math.pow(§%!9§,§!!2§ - 1)));
                     if(_loc6_)
                     {
                        break;
                     }
                     _loc2_ = §§pop();
                     if(_loc6_)
                     {
                        break loop2;
                     }
                  }
               }
               loop4:
               while(true)
               {
                  while(true)
                  {
                     loop6:
                     while(true)
                     {
                        while(true)
                        {
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(§ !B§.§<!B§());
                                 if(_loc5_)
                                 {
                                    break loop3;
                                 }
                                 addr029a:
                                 §§push(Number(§§pop()));
                                 break loop6;
                              }
                              §§goto(addr030a);
                           }
                           §§goto(addr02a1);
                        }
                        §§goto(addr030b);
                     }
                     addr02a1:
                     §§push(-strength);
                     §§push(§@!_§);
                     if(!_loc5_)
                     {
                        break loop4;
                     }
                     if(§§pop() <= §§pop() + §§pop())
                     {
                        break;
                     }
                     §§push(§ !B§);
                     §§push(strength);
                     if(!_loc6_)
                     {
                        while(true)
                        {
                           §§push(-§§pop());
                           if(!_loc6_)
                           {
                              §§push(§§pop() + §@!_§);
                              if(!_loc5_)
                              {
                                 break;
                              }
                           }
                           §§push(Number(§§pop()));
                           break;
                        }
                     }
                     §§pop().§%8§(§§pop());
                     if(!_loc6_)
                     {
                        break;
                     }
                     §§goto(addr030a);
                  }
                  §§goto(addr02e6);
               }
               §§goto(addr02ef);
            }
            loop11:
            while(true)
            {
               loop12:
               while(true)
               {
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc6_)
                     {
                        addr0134:
                        if(§§pop() > -1e-10)
                        {
                           §§push(§4y§);
                        }
                        else
                        {
                           §§push(§<F§);
                           if(!_loc5_)
                           {
                              break loop7;
                           }
                           §§push(!§§pop());
                        }
                        if(§§pop())
                        {
                           § !B§.§%8§(0);
                           §§push(§ !B§);
                           §§push(0);
                           §§push(_loc1_);
                           if(_loc5_)
                           {
                              §§push(-§§pop());
                              if(_loc5_)
                              {
                                 §§push(§§pop() * _loc2_);
                              }
                           }
                           §§pop().§=J§(§§pop(),§§pop());
                           if(!_loc6_)
                           {
                              break;
                           }
                           break loop5;
                        }
                        addr01d2:
                        §§push(§ !B§.§<!B§());
                        if(_loc5_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc6_)
                           {
                              _loc3_ = §§pop();
                              addr01f1:
                              §§push(-_loc1_);
                              if(!_loc6_)
                              {
                                 _loc4_ = §§pop() * _loc2_;
                                 §§push(§7O§);
                                 break loop1;
                              }
                              _loc4_ = §§pop();
                              break loop12;
                           }
                           addr01ea:
                           §§push(Number(§§pop()));
                           if(!_loc5_)
                           {
                              break loop11;
                           }
                           §§goto(addr01f1);
                        }
                        if(§§pop() >= _loc4_)
                        {
                           §§push(§ !B§);
                           §§push(§ !B§.§<!B§());
                           if(!_loc6_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc6_)
                              {
                                 §§push(§§pop() * 0.5);
                              }
                           }
                           §§pop().§%8§(§§pop());
                           if(!_loc6_)
                           {
                              break loop12;
                           }
                           break loop5;
                        }
                        if(!_loc5_)
                        {
                           break loop5;
                        }
                        §§push(_loc4_);
                     }
                     §§push(0.4);
                     if(_loc6_)
                     {
                        break loop9;
                     }
                     §§goto(addr01ea);
                     §§push(§§pop() * §§pop());
                  }
                  §§goto(addr030a);
               }
               § !B§.§=J§(0,_loc4_);
               §§push(§ !B§.§<!B§());
               if(_loc5_)
               {
                  break;
               }
               §§goto(addr0249);
            }
            §§push(Number(§§pop()));
            if(!_loc5_)
            {
               break loop6;
            }
            addr0249:
            §§push(-strength);
            §§push(§&!@§);
            if(!_loc5_)
            {
               break loop4;
            }
            if(§§pop() < §§pop() - §§pop())
            {
               if(!_loc6_)
               {
                  break;
               }
               break loop5;
            }
            §§goto(addr029a);
            §§push(§ !B§.§<!B§());
         }
         §§push(§ !B§);
         §§push(strength);
         if(!_loc6_)
         {
            §§push(-§§pop());
            if(_loc5_)
            {
               §§push(§§pop() - §&!@§);
            }
         }
         §§pop().§%8§(§§pop());
         addr02ef:
         addr02e6:
         if(_loc3_ < _loc4_ - §&!@§)
         {
            § !B§.§%8§(_loc3_);
         }
         addr030a:
         addr030b:
         §§push(false);
         if(§4!0§ != null)
         {
            §§pop();
            §§push(!§ !B§.physicsData.onGround);
            if(_loc5_)
            {
               §§push(Boolean(§§pop()));
            }
         }
         if(§§pop())
         {
            §4!0§.§4!`§(§ !B§);
         }
      }
      
      public function §1!#§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var a1:Number;
         var f:Function;
         var _temp_1:* = true;
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = _temp_1;
         var _loc5_:Number = Number(§ !B§.level.gravity.y);
         var _loc6_:Number = Number(§ !B§.physicsData.mass);
         §§push(§§findproperty(strength));
         §§push(Number(Math.sqrt(2 * _loc5_ * param1)));
         if(!_loc15_)
         {
            §§push(§§pop() * _loc6_);
         }
         §§pop().strength = §§pop();
         if(_loc16_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(param2);
                  if(!_loc15_)
                  {
                     §§push(param1);
                     if(_loc15_)
                     {
                        break;
                     }
                     if(§§pop() <= §§pop())
                     {
                        §§goto(addr0074);
                     }
                     §8@§ = 0;
                     §§push(param4);
                     if(_loc15_)
                     {
                        break loop0;
                     }
                  }
                  §§push(param3);
                  break;
               }
               §§push(§§pop() - §§pop());
               if(_loc16_)
               {
                  break;
               }
               §§goto(addr00ab);
            }
            addr00ab:
            var _loc7_:Number = §§pop();
            while(true)
            {
               §§push(strength);
               if(_loc16_)
               {
                  §§push(_loc5_);
                  if(_loc16_)
                  {
                     §§push(§§pop() * param3);
                  }
                  §§push(§§pop() - §§pop());
                  if(!_loc16_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            var _loc8_:* = §§pop();
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  while(true)
                  {
                     §§push(strength);
                     if(!_loc15_)
                     {
                        §§push(_loc8_);
                        if(_loc15_)
                        {
                           break;
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc16_)
                        {
                           break loop4;
                        }
                        §§push(Number(§§pop()));
                        if(_loc16_)
                        {
                           §§push(§§pop() / 2);
                           if(_loc15_)
                           {
                              break loop3;
                           }
                        }
                     }
                     §§push(param3);
                     break;
                  }
                  §§push(§§pop() * §§pop());
                  if(_loc16_)
                  {
                     break loop3;
                  }
                  break;
               }
               var _loc9_:* = §§pop();
               §§push(_loc8_);
               if(_loc16_)
               {
                  §§push(_loc5_);
                  if(!_loc15_)
                  {
                     §§push(§§pop() * _loc7_);
                  }
                  §§push(§§pop() - §§pop());
                  if(!_loc15_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc10_:* = §§pop();
               loop6:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc15_)
                     {
                        §§push(_loc7_);
                        if(!_loc16_)
                        {
                           break;
                        }
                        if(§§pop() > 0)
                        {
                           §§push(§§newactivation());
                           §§push(§>r§);
                           if(!_loc15_)
                           {
                              §§push(§§pop());
                           }
                           §§pop().§§slot[1] = §§pop();
                           a1 = param3;
                           break loop6;
                        }
                        §§push(§§findproperty(§=C§));
                        §§push(§7^§);
                        if(!_loc15_)
                        {
                           §§push(§§pop());
                        }
                        §§pop().§=C§ = §§pop();
                        §§push(§§findproperty(§#S§));
                        §§push(Number(Math.sqrt(2 * _loc5_ * (param2 - _loc9_))));
                        if(_loc16_)
                        {
                           §§push(§§pop() - _loc10_);
                        }
                        §§pop().§#S§ = §§pop();
                     }
                     §6B§ = §#S§;
                     length = param3;
                     if(_loc16_)
                     {
                        return;
                     }
                     break loop6;
                  }
                  §§push(Number(§§pop()));
                  continue loop8;
               }
               §=C§ = function(param1:Number):Number
               {
                  return Number(f(a1,param1));
               };
               §§push(_loc7_);
               if(_loc16_)
               {
                  §§push(-§§pop());
                  if(_loc16_)
                  {
                     §§push(§§pop() * _loc7_);
                     if(!_loc15_)
                     {
                        break loop7;
                     }
                     var _loc11_:* = §§pop();
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc5_);
                           if(_loc16_)
                           {
                              §§push(_loc7_);
                              if(!_loc16_)
                              {
                                 break;
                              }
                              §§push(§§pop() * §§pop());
                              if(!_loc15_)
                              {
                                 §§push(2 * _loc10_);
                                 if(_loc15_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc16_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc16_)
                                    {
                                       continue loop10;
                                    }
                                 }
                              }
                           }
                           §§push(_loc7_);
                           break;
                        }
                        §§push(§§pop() * §§pop());
                        if(!_loc15_)
                        {
                           §§push(Number(§§pop()));
                        }
                        continue loop10;
                     }
                     var _loc12_:* = §§pop();
                     loop10:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc10_);
                           if(!_loc15_)
                           {
                              §§push(-§§pop());
                              if(_loc16_)
                              {
                                 §§push(_loc10_);
                                 if(_loc15_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(!_loc16_)
                                 {
                                    break loop10;
                                 }
                              }
                           }
                           §§push(2 * _loc5_);
                           break;
                        }
                        while(true)
                        {
                           §§push(param2);
                           if(!_loc15_)
                           {
                              loop18:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(_loc9_);
                                    if(!_loc15_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!_loc16_)
                                       {
                                          break;
                                       }
                                       §§push(_loc8_);
                                       if(_loc15_)
                                       {
                                          break loop18;
                                       }
                                    }
                                    §§push(§§pop() * _loc7_);
                                    break loop18;
                                 }
                                 §§push(§§pop() + §§pop() * §§pop());
                                 if(!_loc15_)
                                 {
                                    §§push(Number(§§pop()));
                                    break loop10;
                                 }
                                 continue loop13;
                              }
                              §§push(§§pop() - §§pop());
                              if(_loc16_)
                              {
                                 break loop19;
                              }
                           }
                           §§goto(addr0282);
                        }
                        §§goto(addr028b);
                     }
                     while(true)
                     {
                        §§push(_loc5_);
                        §§push(_loc5_);
                        if(_loc16_)
                        {
                           §§push(§§pop() * §§pop());
                           §§push(_loc7_);
                           if(_loc15_)
                           {
                              break;
                           }
                        }
                        §§goto(addr028c);
                     }
                     addr028b:
                     addr028c:
                     addr0282:
                     §§push(§§pop() * §§pop());
                     if(_loc16_)
                     {
                        §§push(_loc7_);
                        break loop12;
                     }
                     var _loc13_:Number = §§pop() - §§pop();
                     loop13:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc12_);
                           if(!_loc15_)
                           {
                              §§push(_loc12_);
                              if(!_loc16_)
                              {
                                 break;
                              }
                              §§push(§§pop() * §§pop());
                              if(_loc15_)
                              {
                                 break loop13;
                              }
                           }
                           §§push(4 * _loc11_);
                           if(_loc16_)
                           {
                              break;
                           }
                           addr02b8:
                           §§push(§§pop() - §§pop());
                           if(_loc16_)
                           {
                              §§push(Number(§§pop()));
                           }
                           break loop13;
                        }
                        §§goto(addr02b8);
                     }
                     var _loc14_:* = §§pop();
                     if(_loc16_)
                     {
                        if(_loc14_ < 0)
                        {
                           if(!_loc15_)
                           {
                              Boot.lastError = new Error();
                              if(_loc16_)
                              {
                                 throw new Error("Unable to calculate the desired jump behavior.");
                              }
                           }
                        }
                     }
                     loop15:
                     while(true)
                     {
                        §§push(§§findproperty(§#S§));
                        §§push(-_loc12_);
                        §§push(Number(Math.sqrt(_loc14_)));
                        if(!_loc15_)
                        {
                           while(true)
                           {
                              §§push(-(§§pop() + §§pop()));
                              if(_loc16_)
                              {
                                 §§push(2 * _loc11_);
                                 if(!_loc16_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() / §§pop());
                                 if(!_loc16_)
                                 {
                                    break loop15;
                                 }
                              }
                              §§push(_loc6_);
                              break;
                           }
                        }
                        §§push(§§pop() * §§pop());
                        break;
                     }
                     §§pop().§#S§ = §§pop();
                     if(!_loc15_)
                     {
                        length = param4;
                     }
                     return;
                  }
               }
               break loop7;
            }
            §§push(Number(§§pop()));
            break loop4;
         }
         addr0074:
         §#S§ = 0;
         if(!_loc15_)
         {
            §=C§ = null;
         }
         length = param3;
      }
      
      public function §]!2§(param1:§&!6§ = undefined) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §!!2§ = 0;
         }
      }
      
      override public function reset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               super.reset();
               if(!_loc2_)
               {
                  break;
               }
            }
            §?!O§ = -1;
            if(!_loc1_)
            {
               §!!2§ = 0;
            }
            break;
         }
      }
      
      override public function §2!A§(param1:Number) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Number = NaN;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               §§push(!§%3§);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     §§push(true);
                     §§push(§7o§.controlScheme.§,h§(§`B§));
                     if(!_loc4_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§pop();
                           §§push(§-S§);
                           §§push(§8@§);
                           if(_loc4_)
                           {
                              break;
                           }
                           §§push(§§pop() <= §§pop());
                           if(!_loc3_)
                           {
                              addr01ee:
                              if(§§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    break loop1;
                                 }
                              }
                              break loop0;
                           }
                        }
                        if(§§pop())
                        {
                           _loc2_ = §#S§;
                           if(!_loc3_)
                           {
                              break loop0;
                           }
                           loop3:
                           while(true)
                           {
                              §§push(§=C§);
                              if(_loc3_)
                              {
                                 §§push(§§pop());
                                 if(!_loc4_)
                                 {
                                    §§push(null);
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    if(§§pop() != §§pop())
                                    {
                                       _loc2_ = Number(§=C§(§-S§));
                                       if(!_loc3_)
                                       {
                                          break loop1;
                                       }
                                    }
                                    loop4:
                                    while(true)
                                    {
                                       §§push(§&z§);
                                       §§push(param1);
                                       if(_loc3_)
                                       {
                                          §§push(§§pop() * _loc2_);
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc3_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                          }
                                          §§push(§6B§);
                                          if(!_loc4_)
                                          {
                                             break loop2;
                                          }
                                          break loop4;
                                       }
                                       addr010b:
                                       _loc2_ = §§pop();
                                       addr010a:
                                       if(_loc3_)
                                       {
                                          §&z§ = §6B§;
                                          if(!_loc4_)
                                          {
                                             addr0160:
                                             addr0152:
                                             §§push(§=C§);
                                             if(_loc3_)
                                             {
                                                §§push(§§pop());
                                             }
                                             §§push(§7^§);
                                             if(_loc3_)
                                             {
                                                break loop3;
                                             }
                                             addr016e:
                                             if(§§pop() == §§pop())
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§push(§ !B§);
                                                   §§push(0);
                                                   §§push(_loc2_);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(-§§pop());
                                                   }
                                                   §§pop().§=J§(§§pop(),§§pop());
                                                }
                                                break loop0;
                                             }
                                             §§push(§ !B§);
                                             §§push(0);
                                             §§push(_loc2_);
                                             if(!_loc4_)
                                             {
                                                §§push(-§§pop());
                                             }
                                             §§pop().§'I§(§§pop(),§§pop());
                                             if(_loc4_)
                                             {
                                             }
                                             break loop0;
                                          }
                                       }
                                       addr01c8:
                                       §§push(§§findproperty(§0D§));
                                       §§push(§?!E§());
                                       if(_loc3_)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       §§pop().§0D§ = §§pop();
                                       if(_loc3_)
                                       {
                                          break loop0;
                                       }
                                       break loop1;
                                    }
                                    §§goto(addr010a);
                                 }
                              }
                              §§goto(addr0160);
                           }
                           §§goto(addr016e);
                        }
                        else
                        {
                           §%3§ = true;
                           if(!_loc3_)
                           {
                              break loop0;
                           }
                        }
                        §§goto(addr01c8);
                     }
                     if(§§pop() >= §§pop())
                     {
                        §%3§ = true;
                        §§push(§6B§);
                        if(!_loc4_)
                        {
                           §§push(§&z§);
                           if(!_loc4_)
                           {
                              §§push(§§pop() - §§pop());
                              §§push(param1);
                           }
                           §§goto(addr0109);
                        }
                        §§goto(addr010b);
                     }
                     else
                     {
                        while(true)
                        {
                           §§push(§§findproperty(§&z§));
                           §§push(§&z§);
                           if(!_loc4_)
                           {
                              §§push(param1);
                              if(!_loc4_)
                              {
                                 §§push(§§pop() * _loc2_);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc4_)
                              {
                                 break;
                              }
                           }
                           §§push(Number(§§pop()));
                           break;
                        }
                        §§pop().§&z§ = §§pop();
                        if(!_loc3_)
                        {
                           break loop0;
                        }
                     }
                     §§goto(addr0152);
                  }
                  else
                  {
                     §§push(§ A§());
                  }
               }
               §§goto(addr01ee);
            }
            §-S§ = length;
            break;
         }
      }
      
      override public function §2U§() : § m§
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               § !B§.§ !F§();
               if(!_loc2_)
               {
                  break;
               }
            }
            §§push(§ A§());
            if(_loc2_)
            {
               §§push(Boolean(§§pop()));
            }
            if(§§pop())
            {
               break;
            }
            return null;
         }
         return this;
      }
      
      override public function §0!1§() : Boolean
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
                  §§push(§-S§ < 0.05);
                  if(!_loc1_)
                  {
                     break;
                  }
                  §§push(!§§pop());
                  if(_loc2_)
                  {
                     break loop0;
                  }
                  if(!§§pop())
                  {
                     §§push(true);
                     break loop0;
                  }
               }
               §§push(!§ !B§.physicsData.onGround);
               if(!_loc2_)
               {
                  break;
               }
               break loop0;
            }
            return §§pop();
         }
         return §§pop();
      }
      
      public function §7^§(param1:Number) : Number
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               §§push(param1);
               if(!_loc2_)
               {
                  break;
               }
               if(§§pop() != length)
               {
                  return 0;
               }
            }
            return §#S§;
         }
         return §§pop();
      }
      
      public function §>r§(param1:Number, param2:Number) : Number
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(!_loc4_)
            {
               §§push(param2);
               if(_loc4_)
               {
                  break;
               }
               if(§§pop() < param1)
               {
                  return 0;
               }
            }
            return §#S§;
         }
         return §§pop();
      }
      
      override public function § A§() : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:§9x§ = § !B§.physicsData;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop10:
               while(true)
               {
                  if(_loc3_)
                  {
                     loop14:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(false);
                           §§push(false);
                           §§push(false);
                           §§push(§ !B§.level.unpausedTime - _loc1_.§&!>§);
                           if(_loc3_)
                           {
                              §§push(§[R§);
                              if(_loc3_)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    §§pop();
                                    if(_loc3_)
                                    {
                                       §§push(§3Q§);
                                       if(!_loc2_)
                                       {
                                          §§push(!§§pop());
                                          if(_loc2_)
                                          {
                                             break loop14;
                                          }
                                          §§push(Boolean(§§pop()));
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                       }
                                       addr0074:
                                       if(§§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             §§pop();
                                             §§push(§!!2§);
                                             if(_loc3_)
                                             {
                                                §§push(0);
                                                if(!_loc2_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(!_loc2_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc2_)
                                                      {
                                                         break loop1;
                                                      }
                                                      addr009d:
                                                      if(!§§pop())
                                                      {
                                                         break loop0;
                                                      }
                                                      §§pop();
                                                      §§push(_loc1_.onGround);
                                                      if(_loc2_)
                                                      {
                                                         break loop10;
                                                      }
                                                      §§push(!§§pop());
                                                      if(_loc3_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         break loop0;
                                                      }
                                                      continue loop8;
                                                   }
                                                   §§goto(addr0180);
                                                }
                                                §§goto(addr010b);
                                             }
                                             §§goto(addr0109);
                                          }
                                          §§goto(addr0102);
                                       }
                                       §§goto(addr009d);
                                    }
                                    §§goto(addr0173);
                                 }
                                 §§goto(addr0074);
                              }
                           }
                           else
                           {
                              §§goto(addr0130);
                           }
                           §§goto(addr0136);
                        }
                        §§goto(addr013a);
                     }
                     §§goto(addr0153);
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr01e4);
            }
            if(§!!2§ >= §!"§)
            {
               addr0102:
               §§pop();
               addr010b:
               addr0109:
               §§push(§!"§ < 0);
            }
            if(!§§pop())
            {
               break loop10;
            }
            §§pop();
            while(true)
            {
               while(true)
               {
                  §§push(true);
                  §§push(false);
                  §§push(true);
                  if(!_loc2_)
                  {
                     addr0130:
                     addr0136:
                     §§push(§7o§.controlScheme.§5>§(§`B§));
                     if(!_loc2_)
                     {
                        §§push(Number(§§pop()));
                     }
                     while(true)
                     {
                        if(§§pop() > buffer)
                        {
                           addr013a:
                           §§pop();
                           §§push(§7o§.controlScheme.§+l§(§`B§));
                           if(!_loc3_)
                           {
                              break;
                           }
                           §§push(Boolean(§§pop()));
                        }
                        addr0153:
                        if(!§§pop())
                        {
                           break loop8;
                        }
                        if(!_loc3_)
                        {
                           break loop7;
                        }
                        §§pop();
                        §§push(§ !B§.§9!S§(§`B§));
                        if(!_loc3_)
                        {
                           break loop6;
                        }
                        §§goto(addr0173);
                     }
                  }
                  §§goto(addr019d);
               }
               §§goto(addr01e8);
            }
            §§goto(addr01a7);
         }
         loop2:
         while(true)
         {
            if(§§pop())
            {
               §!!2§ = 1;
               if(_loc2_)
               {
                  break;
               }
            }
            loop3:
            while(true)
            {
               if(§7o§.controlScheme.§,h§(§`B§))
               {
                  loop4:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc2_)
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
                                       §§push(false);
                                       §§push(true);
                                       if(!_loc2_)
                                       {
                                          break loop1;
                                       }
                                       addr0173:
                                       §§push(Boolean(§§pop()));
                                       if(_loc3_)
                                       {
                                          break loop6;
                                       }
                                       break loop8;
                                    }
                                    addr019d:
                                    if(§§pop())
                                    {
                                       break loop7;
                                    }
                                    §§goto(addr01a7);
                                 }
                                 §§goto(addr0186);
                              }
                              §§pop();
                              addr01a7:
                              if(!_loc1_.onGround)
                              {
                                 break loop4;
                              }
                              §§pop();
                           }
                           §§push(!§§pop());
                           if(!_loc2_)
                           {
                              addr0180:
                              §§push(Boolean(§§pop()));
                              if(_loc2_)
                              {
                                 break loop7;
                              }
                           }
                           addr0186:
                           if(!§§pop())
                           {
                              §§pop();
                              if(_loc3_)
                              {
                                 break loop2;
                              }
                              §§goto(addr01e8);
                           }
                           §§goto(addr01dd);
                        }
                        §§push(§ !B§.level.unpausedTime - _loc1_.§'![§ > §@e§);
                        if(!_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc2_)
                           {
                              break loop4;
                           }
                           break loop3;
                        }
                        §§goto(addr01dd);
                     }
                     addr01e4:
                     if(§§pop())
                     {
                        addr01e8:
                        return true;
                     }
                  }
                  addr01dd:
                  §§push(Boolean(§§pop()));
                  if(_loc3_)
                  {
                     break loop5;
                  }
                  break;
               }
               return false;
            }
            return §§pop();
         }
         §§push(false);
         §§push(false);
         if(_loc3_)
         {
            §§goto(addr019d);
            §§push(§;V§);
         }
         §§goto(addr01a7);
      }
   }
}

