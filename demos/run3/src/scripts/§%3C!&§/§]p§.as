package §<!&§
{
   import §%G§.§ m§;
   import §'!1§.§7!b§;
   import §+Y§.§#d§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §0!"§.§,!Z§;
   import §0!"§.§-U§;
   import §0!"§.§[T§;
   import §1^§.Transform;
   import §1^§.§]!Q§;
   import §2!"§.§1e§;
   import §2!W§.§%U§;
   import §=w§.§@[§;
   import §>T§.§8R§;
   import §>T§.Bridge;
   import §]!C§.§9x§;
   import §`_§.§']§;
   import §`_§.§^s§;
   import com.player03.run3.Save;
   import com.player03.run3.character.§'t§;
   import com.player03.run3.character.§4S§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.character.§8J§;
   import com.player03.run3.character.Shadow;
   import com.player03.run3.character.§[!H§;
   import com.player03.run3.character.§]r§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.trigger.condition.§#!G§;
   import com.player03.run3.level.trigger.condition.§5U§;
   import com.player03.run3.save.§2o§;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   import nme3D.shader.§'H§;
   
   public class §]p§ implements §@[§
   {
      
      public var §>l§:Point3D;
      
      public var §^w§:Function;
      
      public var physicsData3D:§3!`§;
      
      public var physicsData:§9x§;
      
      public var §=O§:Boolean;
      
      public var §0e§:Function;
      
      public var §!K§:§%!§;
      
      public var §#!Q§:Point3D;
      
      public var §5!!§:Boolean;
      
      public var §"^§:Point3D;
      
      public var §%9§:Function;
      
      public function §]p§(param1:§%!§)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc3_)
               {
                  §5!!§ = false;
                  if(_loc3_)
                  {
                     break;
                  }
                  §=O§ = false;
                  if(!_loc2_)
                  {
                     break loop0;
                  }
                  §!K§ = param1;
                  if(_loc2_)
                  {
                     §>l§ = new Point3D(0,0,0);
                     §#!Q§ = new Point3D(0,0,0);
                     §"^§ = new Point3D(0,0,0);
                  }
               }
               §§push(§§findproperty(physicsData3D));
               §§push(§§findproperty(§3!`§));
               §§push(param1.§!C§.§6!=§());
               if(!_loc3_)
               {
                  §§push(Number(§§pop()));
               }
               §§pop().physicsData3D = new §§pop().§3!`§(§§pop());
               break;
            }
            physicsData = physicsData3D;
            break;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         while(true)
         {
            if(_loc5_)
            {
               physicsData3D.§?!D§(§!K§.level.unpausedTime,§>l§.x,§>l§.y,§>l§.z);
               if(_loc4_)
               {
                  break;
               }
            }
            §3_§(param1);
            break;
         }
         var _loc2_:Transform = §!K§.transform;
         var _loc3_:Point3D = _loc2_.§<!C§();
         loop1:
         while(true)
         {
            while(true)
            {
               if(_loc5_)
               {
                  _loc3_.x += (§>l§.x + physicsData3D.§?z§) / 2 * param1;
                  if(!_loc5_)
                  {
                     break;
                  }
                  _loc3_.y += (§>l§.y + physicsData3D.§"![§) / 2 * param1;
                  if(_loc4_)
                  {
                     break loop1;
                  }
               }
               §§push(_loc3_);
               §§push(_loc3_.z);
               if(_loc5_)
               {
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§>l§.z);
                        if(_loc5_)
                        {
                           §§push(physicsData3D.§#O§);
                           if(!_loc5_)
                           {
                              break;
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc5_)
                           {
                              break loop3;
                           }
                        }
                        §§push(Number(§§pop()));
                        if(_loc5_)
                        {
                           break loop3;
                        }
                        §§goto(addr00f7);
                     }
                     §§goto(addr00f7);
                  }
                  addr00f7:
                  §§push(§§pop() / 2);
                  if(_loc5_)
                  {
                     §§push(param1);
                     break loop4;
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc4_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§pop().z = §§pop();
               if(!_loc4_)
               {
                  break loop1;
               }
               break;
            }
            return;
         }
         _loc2_.§"w§(_loc3_);
         break loop2;
      }
      
      public function reset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               §>l§.x = 0;
               if(_loc1_)
               {
                  break;
               }
               §>l§.y = 0;
               §>l§.z = 0;
               §#!Q§.x = 0;
               §#!Q§.y = 0;
               §#!Q§.z = 0;
               if(_loc1_)
               {
                  break;
               }
            }
            physicsData3D.reset();
            break;
         }
      }
      
      public function §[!K§(param1:Number, param2:Number, param3:Number) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:* = null as Transform;
         while(true)
         {
            if(!_loc6_)
            {
               if(physicsData3D == null)
               {
                  break;
               }
            }
            _loc4_ = §!K§.transform.§=0§;
            if(!_loc6_)
            {
               while(true)
               {
                  §§push(physicsData3D);
                  if(!_loc6_)
                  {
                     if(_loc4_ == null)
                     {
                        §§push(null);
                        break;
                     }
                  }
                  §§push(_loc4_.§+n§());
                  break;
               }
               §§pop().§2!`§(§§pop(),param1,param2,param3);
            }
            break;
         }
      }
      
      public function §0!b§(param1:§%!§, param2:Number) : void
      {
         var _temp_1:* = false;
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = _temp_1;
         if(!_loc7_)
         {
            while(true)
            {
               while(true)
               {
                  §§push(true);
                  §§push(true);
                  if(!_loc7_)
                  {
                     §§push(true);
                     if(!_loc7_)
                     {
                        if(§!K§.§;!C§ == null)
                        {
                           break;
                        }
                        if(_loc7_)
                        {
                           break;
                        }
                     }
                     §§pop();
                     if(!_loc6_)
                     {
                        continue loop3;
                     }
                  }
                  §§push(param1.§;!C§ == null);
                  if(!_loc7_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  break;
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     if(_loc6_)
                     {
                        continue loop3;
                     }
                  }
                  else
                  {
                     §§goto(addr006c);
                  }
                  §§goto(addr0085);
               }
               §§goto(addr00a4);
            }
            §§pop();
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  while(true)
                  {
                     §§push(param2 <= 0);
                     if(!_loc7_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc7_)
                        {
                           addr006c:
                           if(§§pop())
                           {
                              break;
                           }
                           if(!_loc6_)
                           {
                              break loop3;
                           }
                           §§pop();
                           if(_loc7_)
                           {
                              break loop2;
                           }
                           §§push(false);
                           §§push(§=O§);
                        }
                     }
                     addr0085:
                     if(§§pop())
                     {
                        if(_loc6_)
                        {
                           §§pop();
                           if(_loc7_)
                           {
                              break loop2;
                           }
                           §§push(param1.§-J§);
                        }
                        §§push(!§§pop());
                        if(!_loc7_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                     }
                     break loop3;
                  }
                  addr00a4:
                  if(§§pop())
                  {
                     break loop2;
                  }
                  var _loc3_:§]!Q§ = §!K§.§;!C§.§8W§;
                  var _loc4_:§]!Q§ = param1.§;!C§.§8W§;
                  var _loc5_:Number = 0;
                  while(true)
                  {
                     if(_loc6_)
                     {
                        loop6:
                        while(true)
                        {
                           loop7:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(false);
                                 §§push(false);
                                 §§push(false);
                                 §§push(false);
                                 if(_loc6_)
                                 {
                                    §§push(false);
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    if(_loc3_.min.x > _loc4_.max.x + _loc5_)
                                    {
                                       break;
                                    }
                                    if(_loc7_)
                                    {
                                       break loop7;
                                    }
                                    §§pop();
                                    if(!_loc6_)
                                    {
                                       break loop6;
                                    }
                                 }
                                 §§push(_loc3_.max.x >= _loc4_.min.x - _loc5_);
                                 if(!_loc7_)
                                 {
                                    break loop7;
                                 }
                                 break;
                              }
                              if(§§pop())
                              {
                                 if(!_loc7_)
                                 {
                                    break loop6;
                                 }
                              }
                              §§goto(addr0145);
                           }
                           §§push(Boolean(§§pop()));
                           break loop20;
                        }
                        §§pop();
                        addr0145:
                        §§push(_loc3_.min.y <= _loc4_.max.y + _loc5_);
                        if(!_loc7_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           §§pop();
                           §§push(_loc3_.max.y >= _loc4_.min.y - _loc5_);
                        }
                        loop8:
                        while(true)
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 §§push(_loc3_.min.z);
                                 §§push(_loc4_.max.z);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() + _loc5_);
                                    if(!_loc7_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 §§push(§§pop() <= §§pop());
                                 if(_loc7_)
                                 {
                                    break loop8;
                                 }
                              }
                              if(§§pop())
                              {
                                 §§pop();
                                 §§push(_loc3_.max.z);
                                 §§push(_loc4_.min.z);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() - _loc5_);
                                 }
                                 §§push(§§pop() >= §§pop());
                              }
                              loop11:
                              while(true)
                              {
                                 loop12:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       if(!_loc7_)
                                       {
                                          return;
                                       }
                                    }
                                    else
                                    {
                                       loop13:
                                       while(true)
                                       {
                                          loop14:
                                          while(true)
                                          {
                                             loop15:
                                             while(true)
                                             {
                                                loop16:
                                                while(true)
                                                {
                                                   loop17:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(false);
                                                         if(_loc6_)
                                                         {
                                                            §§push(§^w§);
                                                            if(_loc7_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop());
                                                            if(_loc7_)
                                                            {
                                                               break loop17;
                                                            }
                                                            §§push(null);
                                                            if(!_loc6_)
                                                            {
                                                               break loop16;
                                                            }
                                                            §§push(§§pop());
                                                            if(_loc7_)
                                                            {
                                                               break loop15;
                                                            }
                                                            if(§§pop() != §§pop())
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  break loop14;
                                                               }
                                                               §§pop();
                                                               if(!_loc6_)
                                                               {
                                                                  break loop13;
                                                               }
                                                               §§push(!Boolean(§^w§(param1)));
                                                            }
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               return;
                                                            }
                                                            break loop12;
                                                         }
                                                         while(true)
                                                         {
                                                            if(param1.§[!G§ != null)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(true);
                                                               §§push(false);
                                                               if(!§!K§.§-J§)
                                                               {
                                                                  §§pop();
                                                                  if(!_loc6_)
                                                                  {
                                                                     break loop11;
                                                                  }
                                                                  §§push(param1.§[!G§.§=O§);
                                                                  if(!_loc7_)
                                                                  {
                                                                     break loop8;
                                                                  }
                                                               }
                                                               §§goto(addr0246);
                                                            }
                                                            §§goto(addr029c);
                                                         }
                                                      }
                                                      §§goto(addr0262);
                                                   }
                                                   §§goto(addr0260);
                                                }
                                                §§goto(addr0263);
                                             }
                                             §§goto(addr0265);
                                          }
                                          §§goto(addr0252);
                                       }
                                       §§goto(addr0271);
                                    }
                                    §§goto(addr02bb);
                                 }
                                 §§goto(addr02cc);
                              }
                              §§goto(addr02db);
                           }
                           §§push(Boolean(§§pop()));
                           if(_loc7_)
                           {
                              break loop11;
                           }
                           §§goto(addr0290);
                        }
                        addr0246:
                        while(true)
                        {
                           if(!Boolean(§§pop()))
                           {
                              §§pop();
                              if(!_loc6_)
                              {
                                 break;
                              }
                              §§push(false);
                              §§push(param1.§[!G§.§^w§);
                              if(!_loc7_)
                              {
                                 addr0260:
                                 §§push(§§pop());
                              }
                              if(§§pop() == null)
                              {
                                 break loop9;
                              }
                              if(_loc6_)
                              {
                                 §§pop();
                                 addr0271:
                                 §§push(Boolean(param1.§[!G§.§^w§(§!K§)));
                                 if(_loc6_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 break loop9;
                              }
                           }
                           addr0290:
                           if(!§§pop())
                           {
                              addr029c:
                              §!K§.§;!C§.§ i§.reset();
                              if(!_loc7_)
                              {
                                 param1.§;!C§.§ i§.reset();
                              }
                              break;
                           }
                           if(_loc6_)
                           {
                              return;
                           }
                        }
                        addr02bb:
                        §!K§.§;!C§.§&D§(param1.§;!C§);
                        addr02db:
                        addr02cc:
                        if(!§!K§.§;!C§.§ i§.§%r§)
                        {
                           break;
                        }
                        if(!_loc6_)
                        {
                           break;
                        }
                        §3o§(param2,param1);
                        if(_loc7_)
                        {
                           break;
                        }
                     }
                     if(param1.§[!G§ != null)
                     {
                        if(!_loc7_)
                        {
                           param1.§[!G§.§3o§(param2,§!K§);
                        }
                     }
                     break;
                  }
                  return;
               }
               §§push(Boolean(§§pop()));
               break loop4;
            }
         }
         break loop2;
      }
      
      public function §=J§(param1:Number, param2:Number, param3:Number) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            _temp_1.x += param1 * physicsData.§?U§;
            if(!_loc5_)
            {
               _temp_2.y += param2 * physicsData.§?U§;
               if(_loc4_)
               {
                  var _temp_3:* = §>l§;
                  while(true)
                  {
                     §§push(_temp_3);
                     §§push(_temp_3.z);
                     if(!_loc5_)
                     {
                        §§push(param3);
                        if(!_loc5_)
                        {
                           §§push(§§pop() * physicsData.§?U§);
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc4_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
                  §§pop().z = §§pop();
               }
            }
         }
      }
      
      public function §'I§(param1:Number, param2:Number, param3:Number) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            var _temp_2:* = §#!Q§;
            _temp_2.x += param1;
            while(true)
            {
               if(!_loc4_)
               {
                  _temp_3.y += param2;
                  if(!_loc5_)
                  {
                     break;
                  }
               }
               var _temp_4:* = §#!Q§;
               §§push(_temp_4);
               §§push(_temp_4.z);
               if(!_loc4_)
               {
                  §§push(§§pop() + param3);
                  if(!_loc4_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§pop().z = §§pop();
               break;
            }
         }
      }
      
      public function §3_§(param1:Number) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:* = null as Point3D;
         var _loc4_:* = null as Point3D;
         _loc2_ = §#!Q§;
         while(true)
         {
            §§push(param1);
            if(!_loc7_)
            {
               §§push(§§pop() * physicsData.§?U§);
               if(!_loc6_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc3_:* = §§pop();
         _loc4_ = §#!Q§;
         if(_loc6_)
         {
            while(true)
            {
               if(_loc4_ == null)
               {
                  if(_loc7_)
                  {
                     break;
                  }
                  _loc4_ = new Point3D(0,0,0);
               }
               _loc4_.x = _loc2_.x * _loc3_;
               if(_loc7_)
               {
                  break;
               }
               _loc4_.y = _loc2_.y * _loc3_;
               if(!_loc7_)
               {
                  break;
               }
            }
            §§push(_loc4_);
            §§push(_loc2_.z);
            if(!_loc7_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().z = §§pop();
         }
         _loc2_ = §>l§;
         _loc4_ = §#!Q§;
         var _loc5_:Point3D = §>l§;
         if(_loc5_ == null)
         {
            _loc5_ = new Point3D(0,0,0);
         }
         _loc5_.x = _loc2_.x + _loc4_.x;
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               while(true)
               {
                  if(_loc6_)
                  {
                     _loc5_.y = _loc2_.y + _loc4_.y;
                     §§push(_loc5_);
                     §§push(_loc2_.z);
                     if(!_loc7_)
                     {
                        §§push(§§pop() + _loc4_.z);
                        if(!_loc7_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     §§pop().z = §§pop();
                     §§push(false);
                     if(_loc7_)
                     {
                        break loop3;
                     }
                     if(§!K§.§!C§ == null)
                     {
                        break;
                     }
                     if(_loc7_)
                     {
                        break loop3;
                     }
                     §§pop();
                     if(_loc7_)
                     {
                        break loop2;
                     }
                  }
                  §§push(§5!!§);
                  if(_loc6_)
                  {
                     break loop3;
                  }
                  break;
               }
               if(§§pop())
               {
                  _loc2_ = §#!Q§;
                  _loc4_ = §!K§.§!C§.gravity3D;
                  if(!_loc7_)
                  {
                     _loc2_.x = _loc4_.x;
                     if(_loc6_)
                     {
                        _loc2_.y = _loc4_.y;
                        if(_loc7_)
                        {
                           break loop2;
                        }
                     }
                  }
                  _loc2_.z = _loc4_.z;
                  break loop2;
               }
               §#!Q§.x = 0;
               if(!_loc7_)
               {
                  §#!Q§.y = 0;
                  §#!Q§.z = 0;
               }
               break loop2;
            }
            §§push(!§§pop());
            if(_loc6_)
            {
               §§push(Boolean(§§pop()));
            }
            break loop4;
         }
      }
      
      public function §3o§(param1:Number, param2:§%!§) : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc6_:* = null as Point3D;
         var _loc7_:* = NaN;
         var _loc8_:* = null as Point3D;
         var _loc3_:§-U§ = §!K§.§;!C§.§ i§;
         var _loc4_:Point3D = _loc3_.normal;
         var _loc5_:Point3D = §>l§;
         _loc6_ = §"^§;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc10_)
               {
                  if(_loc6_ != null)
                  {
                     break;
                  }
                  if(_loc10_)
                  {
                     break loop0;
                  }
               }
               _loc6_ = new Point3D(0,0,0);
               break;
            }
            loop22:
            while(true)
            {
               §§push(_loc5_.x * _loc4_.x);
               if(!_loc10_)
               {
                  while(true)
                  {
                     §§push(_loc5_.y * _loc4_.y);
                     if(!_loc10_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!_loc11_)
                        {
                           break loop22;
                        }
                        §§push(Number(§§pop()));
                        if(!_loc11_)
                        {
                           break;
                        }
                        §§push(_loc5_.z);
                        if(_loc11_)
                        {
                           §§push(§§pop() * _loc4_.z);
                        }
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc11_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc10_)
                        {
                           break;
                        }
                     }
                     break loop22;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            _loc7_ = §§pop();
            if(!_loc10_)
            {
               break;
            }
            §§goto(addr010d);
         }
         §§push(_loc6_);
         §§push(_loc7_);
         if(_loc11_)
         {
            §§push(§§pop() * _loc4_.x);
         }
         §§pop().x = §§pop();
         while(true)
         {
            if(_loc11_)
            {
               §§push(_loc6_);
               §§push(_loc7_);
               if(_loc11_)
               {
                  §§push(§§pop() * _loc4_.y);
               }
               §§pop().y = §§pop();
               if(!_loc11_)
               {
                  break;
               }
            }
            §§push(_loc6_);
            §§push(_loc7_);
            if(_loc11_)
            {
               §§push(§§pop() * _loc4_.z);
            }
            §§pop().z = §§pop();
            break;
         }
         addr010d:
         _loc5_ = §"^§;
         if(_loc11_)
         {
            loop3:
            while(true)
            {
               while(true)
               {
                  §§push(_loc5_.x * _loc4_.x);
                  if(!_loc10_)
                  {
                     §§push(_loc5_.y * _loc4_.y);
                     if(_loc10_)
                     {
                        break;
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc11_)
                     {
                        break loop3;
                     }
                  }
                  §§push(Number(§§pop()));
                  if(!_loc11_)
                  {
                     break loop3;
                  }
                  §§push(_loc5_.z);
                  if(!_loc10_)
                  {
                     §§push(§§pop() * _loc4_.z);
                     if(_loc11_)
                     {
                        break;
                     }
                  }
                  §§goto(addr016c);
               }
               §§push(§§pop() + §§pop());
               if(_loc11_)
               {
                  §§push(Number(§§pop()));
               }
               break;
            }
            addr016c:
            if(§§pop() < 1e-10)
            {
               if(!_loc10_)
               {
                  _loc6_ = §"^§;
                  _loc8_ = §"^§;
                  loop5:
                  while(true)
                  {
                     if(_loc8_ == null)
                     {
                        if(_loc10_)
                        {
                           break;
                        }
                        _loc8_ = new Point3D(0,0,0);
                     }
                     _loc8_.x = _loc6_.x * -1;
                     _loc8_.y = _loc6_.y * -1;
                     §§push(_loc8_);
                     §§push(_loc6_.z);
                     if(_loc11_)
                     {
                        §§push(§§pop() * -1);
                     }
                     §§pop().z = §§pop();
                     if(!_loc10_)
                     {
                        §§push(true);
                        if(!_loc10_)
                        {
                           loop6:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(true);
                                 if(_loc11_)
                                 {
                                    §§push(false);
                                    if(_loc11_)
                                    {
                                       §§push(§%9§);
                                       if(!_loc10_)
                                       {
                                          §§push(§§pop());
                                       }
                                       if(§§pop() != null)
                                       {
                                          while(true)
                                          {
                                             if(!_loc10_)
                                             {
                                                §§pop();
                                                if(_loc10_)
                                                {
                                                   break loop6;
                                                }
                                                §§push(Boolean(§%9§(param2,§"^§)));
                                                if(!_loc11_)
                                                {
                                                   break;
                                                }
                                                §§push(!§§pop());
                                                if(_loc10_)
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
                                       break loop6;
                                    }
                                    if(!_loc10_)
                                    {
                                       §§pop();
                                       if(_loc10_)
                                       {
                                          break;
                                       }
                                       §§push(§!K§.§-J§);
                                       if(!_loc11_)
                                       {
                                          break loop6;
                                       }
                                    }
                                 }
                                 §§push(Boolean(§§pop()));
                                 break loop6;
                              }
                              if(§§pop())
                              {
                                 return;
                              }
                              §§push(_loc3_.§>G§);
                              if(_loc11_)
                              {
                                 if(§§pop())
                                 {
                                    var _temp_2:* = §>l§;
                                    _temp_2.x += §"^§.x;
                                    if(_loc10_)
                                    {
                                       break loop5;
                                    }
                                 }
                                 §§push(_loc3_.§3q§);
                              }
                           }
                           if(!§§pop())
                           {
                              §§pop();
                              §§push(param2.§-J§);
                           }
                           break loop7;
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc10_)
                              {
                                 _temp_3.y += §"^§.y;
                                 if(_loc10_)
                                 {
                                    break;
                                 }
                              }
                           }
                           if(_loc3_.§&!L§)
                           {
                              break;
                           }
                           break loop5;
                        }
                        var _temp_4:* = §>l§;
                        while(true)
                        {
                           §§push(_temp_4);
                           §§push(_temp_4.z);
                           if(!_loc10_)
                           {
                              §§push(§§pop() + §"^§.z);
                              if(!_loc11_)
                              {
                                 break;
                              }
                           }
                           §§push(Number(§§pop()));
                           break;
                        }
                        §§pop().z = §§pop();
                     }
                     break;
                  }
                  _loc6_ = §"^§;
                  if(!_loc10_)
                  {
                     while(true)
                     {
                        §§push(physicsData.mass);
                        if(!_loc10_)
                        {
                           §§push(§§pop() / param1);
                           if(!_loc11_)
                           {
                              break;
                           }
                        }
                        §§push(Number(§§pop()));
                        break;
                     }
                     _loc7_ = §§pop();
                  }
                  _loc8_ = §"^§;
                  while(true)
                  {
                     if(_loc8_ == null)
                     {
                        if(!_loc11_)
                        {
                           break;
                        }
                        _loc8_ = new Point3D(0,0,0);
                     }
                     _loc8_.x = _loc6_.x * _loc7_;
                     if(_loc11_)
                     {
                        _loc8_.y = _loc6_.y * _loc7_;
                        if(!_loc10_)
                        {
                           §§push(_loc8_);
                           §§push(_loc6_.z);
                           if(!_loc10_)
                           {
                              §§push(§§pop() * _loc7_);
                           }
                           §§pop().z = §§pop();
                           if(§!K§.transform.§=0§ != null)
                           {
                              if(_loc10_)
                              {
                                 break;
                              }
                              §4!R§.§@!M§(§!K§.transform.§=0§.§<!A§(),§"^§,§"^§);
                           }
                        }
                        §[!K§(§"^§.x,§"^§.y,§"^§.z);
                     }
                     break;
                  }
               }
               else
               {
                  §§goto(addr0468);
               }
            }
            else
            {
               loop13:
               while(true)
               {
                  while(true)
                  {
                     §§push(true);
                     if(!_loc10_)
                     {
                        loop15:
                        while(true)
                        {
                           loop16:
                           while(true)
                           {
                              §§push(true);
                              if(_loc11_)
                              {
                                 loop17:
                                 while(true)
                                 {
                                    loop18:
                                    while(true)
                                    {
                                       §§push(false);
                                       if(!_loc10_)
                                       {
                                          §§push(§0e§);
                                          if(_loc11_)
                                          {
                                             §§push(§§pop());
                                          }
                                          if(§§pop() == null)
                                          {
                                             break;
                                          }
                                          if(_loc10_)
                                          {
                                             break loop17;
                                          }
                                       }
                                       §§pop();
                                       while(true)
                                       {
                                          if(!_loc10_)
                                          {
                                             §§push(Boolean(§0e§(param2)));
                                             if(!_loc10_)
                                             {
                                                §§push(!§§pop());
                                                if(_loc11_)
                                                {
                                                   break loop17;
                                                }
                                                break loop18;
                                             }
                                             break loop17;
                                          }
                                          addr0430:
                                          §§pop();
                                          if(_loc11_)
                                          {
                                             §§push(§!K§.§-J§);
                                             if(!_loc10_)
                                             {
                                                break;
                                             }
                                             break loop15;
                                          }
                                          break loop16;
                                       }
                                    }
                                    if(§§pop())
                                    {
                                       break loop15;
                                    }
                                    if(!_loc10_)
                                    {
                                       §§goto(addr0430);
                                    }
                                 }
                                 §§push(Boolean(§§pop()));
                                 break loop18;
                              }
                              §§push(Boolean(§§pop()));
                              break loop15;
                           }
                        }
                        if(!§§pop())
                        {
                           if(_loc11_)
                           {
                              §§pop();
                              if(!_loc10_)
                              {
                                 §§push(param2.§-J§);
                                 if(_loc11_)
                                 {
                                    break loop16;
                                 }
                                 break loop13;
                              }
                              break;
                           }
                           break loop16;
                        }
                        break loop13;
                     }
                     §§push(Boolean(§§pop()));
                     break loop13;
                  }
                  §§goto(addr0468);
               }
               if(§§pop())
               {
                  break loop14;
               }
            }
            _loc6_ = §"^§;
            _loc8_ = §!K§.transform.§<!C§();
            if(!_loc10_)
            {
               §§push(_loc3_.§]!R§);
               if(!_loc10_)
               {
                  §§push(Number(§§pop()));
               }
               _loc7_ = §§pop();
            }
            var _loc9_:Point3D = _loc6_;
            loop20:
            while(true)
            {
               if(_loc11_)
               {
                  while(true)
                  {
                     if(_loc9_ == null)
                     {
                        if(_loc10_)
                        {
                           break;
                        }
                        _loc9_ = new Point3D(0,0,0);
                     }
                     _loc9_.x = _loc8_.x + _loc4_.x * _loc7_;
                     if(_loc11_)
                     {
                        _loc9_.y = _loc8_.y + _loc4_.y * _loc7_;
                        if(!_loc11_)
                        {
                           break;
                        }
                     }
                     §§push(_loc9_);
                     §§push(_loc8_.z);
                     if(!_loc10_)
                     {
                        §§push(_loc4_.z);
                        if(!_loc10_)
                        {
                           §§push(§§pop() * _loc7_);
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc11_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     §§pop().z = §§pop();
                     if(_loc11_)
                     {
                        break;
                     }
                     break loop20;
                  }
               }
               §!K§.transform.§"w§(_loc6_);
               break;
            }
            return;
         }
         addr0468:
      }
   }
}

