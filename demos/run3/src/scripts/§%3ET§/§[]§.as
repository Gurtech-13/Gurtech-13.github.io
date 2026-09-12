package §>T§
{
   import §+!4§.§5!§;
   import §+!4§.§`N§;
   import §,!G§.§6!7§;
   import §2X§.PositionData3D;
   import §=w§.§,D§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.menu.§ L§;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.Point3D;
   
   public class §[]§ implements §,D§
   {
      
      public var z:Number;
      
      public var tunnel:§ !W§;
      
      public var §@!R§:§6!7§;
      
      public var §]!D§:Vector.<§0!E§>;
      
      public var §!#§:PositionData3D;
      
      public var pos:Point3D;
      
      public var §#]§:Number;
      
      public var §-z§:Number;
      
      public var §-!O§:Number;
      
      public var §^!$§:Vector.<Function>;
      
      public var §18§:Function;
      
      public function §[]§(param1:§ !W§, param2:Array, param3:Number, param4:Number, param5:Object = undefined, param6:Object = undefined, param7:Object = undefined)
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc10_:* = null as String;
         if(param6 == null)
         {
            param6 = 100;
         }
         §#]§ = 0;
         tunnel = param1;
         if(!_loc12_)
         {
            §-!O§ = param3;
            while(true)
            {
               §§push(§§findproperty(§@!R§));
               §§push(§§findproperty(§6!7§));
               §§push(param4);
               if(_loc11_)
               {
                  if(param5 != null)
                  {
                     §§push(Number(param5));
                     break;
                  }
               }
               §§push(param4);
               if(!_loc12_)
               {
                  §§push(§§pop() * 1.5);
                  if(_loc11_)
                  {
                  }
               }
               break;
            }
            §§pop().§@!R§ = new §§pop().§6!7§(§§pop(),§§pop());
            if(_loc11_)
            {
               §-z§ = param6;
               while(true)
               {
                  §§push(§§findproperty(§18§));
                  if(_loc11_)
                  {
                     if(param7 == null)
                     {
                        §§push(§^_§);
                        if(_loc11_)
                        {
                           §§push(§§pop());
                        }
                        break;
                     }
                  }
                  §§push(param7);
                  if(_loc11_)
                  {
                  }
                  break;
               }
               §§pop().§18§ = §§pop();
            }
         }
         var _loc8_:Vector.<§0!E§> = new Vector.<§0!E§>(0,false);
         if(_loc11_)
         {
            §]!D§ = _loc8_;
         }
         §§push(0);
         if(!_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         if(_loc11_)
         {
            while(_loc9_ < int(param2.length))
            {
               §§push(param2[_loc9_]);
               if(_loc11_)
               {
                  §§push(§§pop());
               }
               _loc10_ = §§pop();
               if(!_loc12_)
               {
                  _loc9_++;
                  if(_loc12_)
                  {
                     continue;
                  }
               }
               §]!D§.push(§"=§.§]R§(param1,_loc10_));
            }
            while(true)
            {
               if(_loc11_)
               {
                  pos = new Point3D(0,0,0);
                  if(_loc12_)
                  {
                     break;
                  }
               }
               §!#§ = new PositionData3D(0,0,0);
               if(!_loc12_)
               {
                  break;
               }
            }
            reset();
         }
      }
      
      public function update(param1:Number) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = null as TunnelSection;
         while(true)
         {
            if(!_loc4_)
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
                        §§push(z);
                        if(_loc3_)
                        {
                           while(true)
                           {
                              §§push(§-!O§);
                              if(_loc3_)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       return;
                                    }
                                    break loop2;
                                 }
                                 §§push(tunnel.§<!M§.position.z);
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 §§push(3000);
                                 if(_loc4_)
                                 {
                                    break loop3;
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc3_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                              }
                              break loop1;
                           }
                        }
                        §§push(§§pop() + 200);
                        if(_loc3_)
                        {
                           break loop1;
                        }
                        §§goto(addr0071);
                     }
                     §§goto(addr0075);
                  }
               }
               addr0071:
               addr0075:
               if(Number(§§pop()) >= z)
               {
                  break loop2;
               }
               break;
            }
            break loop2;
         }
      }
      
      public function reset() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               §§push(Number(Math.random()));
               if(!_loc3_)
               {
                  §§push(0.7);
                  if(_loc3_)
                  {
                     break;
                  }
                  §§push(§§pop() * §§pop());
                  if(!_loc4_)
                  {
                     break loop0;
                  }
               }
               §§push(0.3);
               if(_loc3_)
               {
                  break;
               }
               §§push(§§pop() + §§pop());
               if(!_loc3_)
               {
                  break loop0;
               }
               §§goto(addr0066);
            }
            §§push(§§pop() * §§pop());
            if(!_loc3_)
            {
               §§push(Number(§§pop()));
            }
            §§goto(addr0066);
         }
         addr0066:
         §§push(Number(§§pop()));
         if(_loc4_)
         {
            §§push(§@!R§.end);
            break loop1;
         }
         var _loc1_:* = §§pop();
         §§push(§#]§);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            while(true)
            {
               §§push(§§findproperty(z));
               §§push(tunnel.§1W§.startZ);
               if(_loc4_)
               {
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     if(§§pop() > _loc2_)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        §§push(_loc1_);
                        if(_loc3_)
                        {
                        }
                     }
                     else
                     {
                        §§push(_loc2_);
                     }
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
      
      public function §^_§(param1:§[C§) : Boolean
      {
         return param1 == null;
      }
      
      public function §=!V§() : Boolean
      {
         return false;
      }
      
      public function §3N§(param1:TunnelSection) : void
      {
         var _temp_1:* = true;
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = _temp_1;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc9_:* = 0;
         var _loc12_:* = NaN;
         var _loc14_:* = null as Point3D;
         var _loc15_:* = null as Point3D;
         var _loc16_:* = 0;
         var _loc17_:* = null as Vector.<Function>;
         var _loc18_:* = null;
         if(!_loc19_)
         {
            pos.x = 1;
            while(true)
            {
               if(!_loc19_)
               {
                  pos.y = 0;
                  if(_loc19_)
                  {
                     break;
                  }
               }
               pos.z = z;
               break;
            }
         }
         while(true)
         {
            §§push(param1.§!N§(pos));
            if(_loc20_)
            {
               §§push(int(§§pop()));
               if(!_loc20_)
               {
                  break;
               }
            }
            §§push(int(§§pop()));
            break;
         }
         var _loc2_:* = §§pop();
         §§push(param1.layout.§6!,§(_loc2_,0,0,1));
         if(_loc20_)
         {
            §§push(int(§§pop()));
            if(!_loc19_)
            {
               §§push(int(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(!_loc19_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc2_);
         if(!_loc19_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         while(true)
         {
            loop13:
            while(true)
            {
               loop35:
               while(true)
               {
                  loop40:
                  while(true)
                  {
                     §§push(int(_loc3_));
                     if(!_loc19_)
                     {
                        _loc6_ = §§pop();
                        while(true)
                        {
                           §§push(_loc5_);
                           §§push(_loc6_);
                           if(_loc19_)
                           {
                              break;
                           }
                           if(§§pop() < §§pop())
                           {
                              while(true)
                              {
                                 §§push(_loc5_);
                                 if(_loc20_)
                                 {
                                    _loc5_++;
                                    if(_loc19_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(int(§§pop()));
                                 break;
                              }
                              _loc7_ = §§pop();
                              if(!_loc19_)
                              {
                                 § L§.low = 948729;
                                 if(_loc20_)
                                 {
                                    loop42:
                                    while(true)
                                    {
                                       loop43:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(§§findproperty(§18§));
                                             if(!_loc19_)
                                             {
                                                §§push(false);
                                                if(!_loc20_)
                                                {
                                                   break;
                                                }
                                                if(_loc7_ < 0)
                                                {
                                                   break loop43;
                                                }
                                                if(_loc19_)
                                                {
                                                   break loop43;
                                                }
                                                §§pop();
                                                if(_loc19_)
                                                {
                                                   break loop42;
                                                }
                                             }
                                             §§push(_loc7_ < int(param1.terrain.length));
                                             if(_loc20_)
                                             {
                                                break;
                                             }
                                             break loop43;
                                          }
                                          §§push(Boolean(§§pop()));
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          break;
                                       }
                                       §§goto(addr014b);
                                       §§push(null);
                                    }
                                    addr014b:
                                    if(!Boolean(§§pop().§18§(param1.terrain[_loc7_])))
                                    {
                                       continue;
                                    }
                                    if(!_loc20_)
                                    {
                                       continue;
                                    }
                                 }
                              }
                              _loc4_++;
                              continue;
                           }
                           if(!_loc20_)
                           {
                              continue loop15;
                           }
                           §§push(_loc4_);
                           if(!_loc19_)
                           {
                              §§push(0);
                              if(_loc20_)
                              {
                                 break;
                              }
                              break loop40;
                           }
                           _loc5_ = int(§§pop());
                           §§push(_loc3_);
                        }
                        if(§§pop() == §§pop())
                        {
                           if(!_loc19_)
                           {
                              §§push(§§findproperty(z));
                              §§push(z);
                              if(_loc20_)
                              {
                                 §§push(§§pop() + 75);
                                 if(_loc20_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§pop().z = §§pop();
                              return;
                           }
                           break loop35;
                        }
                        §§push(Number(Math.random()));
                        if(_loc20_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§push(int(§§pop()));
                        if(_loc19_)
                        {
                           break loop13;
                        }
                        _loc4_ = int(§§pop());
                        if(!_loc20_)
                        {
                           continue loop15;
                        }
                        §§goto(addr01c7);
                        §§push(_loc2_);
                     }
                     _loc6_ = int(§§pop());
                     break loop35;
                  }
                  §§goto(addr0273);
               }
               while(true)
               {
                  §§push(_loc5_);
                  break loop13;
               }
            }
            while(true)
            {
               §§push(_loc6_);
               addr0273:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     continue loop15;
                  }
                  while(true)
                  {
                     §§push(_loc5_);
                     if(!_loc19_)
                     {
                        _loc5_++;
                        _loc7_ = int(§§pop());
                        § L§.low = 948729;
                        loop37:
                        while(true)
                        {
                           §§push(§§findproperty(§18§));
                           if(_loc20_)
                           {
                              loop38:
                              while(true)
                              {
                                 §§push(false);
                                 if(_loc20_)
                                 {
                                    if(_loc7_ >= 0)
                                    {
                                       while(true)
                                       {
                                          if(!_loc19_)
                                          {
                                             §§pop();
                                             if(_loc19_)
                                             {
                                                break loop38;
                                             }
                                             §§push(_loc7_ < int(param1.terrain.length));
                                             if(!_loc20_)
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
                                    break;
                                 }
                                 §§push(null);
                                 break loop37;
                              }
                           }
                           §§push(param1.terrain[_loc7_]);
                           break;
                        }
                        §§push(Boolean(§§pop().§18§(§§pop())));
                        if(_loc19_)
                        {
                           break loop14;
                        }
                        if(!§§pop())
                        {
                           break loop35;
                        }
                        §§push(_loc4_);
                        if(!_loc20_)
                        {
                           break;
                        }
                        §§push(0);
                        if(!_loc19_)
                        {
                           if(§§pop() > §§pop())
                           {
                              _loc4_--;
                              break loop35;
                           }
                           §§push(_loc7_);
                           if(!_loc20_)
                           {
                              break;
                           }
                           _loc2_ = int(§§pop());
                           if(_loc20_)
                           {
                              continue loop15;
                           }
                        }
                        else
                        {
                           §§goto(addr029c);
                        }
                        §§goto(addr0338);
                     }
                     §§goto(addr0364);
                  }
                  §§goto(addr03a9);
               }
               continue loop15;
            }
         }
         loop14:
         while(true)
         {
            loop15:
            while(true)
            {
               while(true)
               {
                  §§push(false);
                  if(_loc2_ >= 0)
                  {
                     if(_loc20_)
                     {
                        §§pop();
                        §§push(_loc2_);
                        if(!_loc20_)
                        {
                           break;
                        }
                        §§push(int(param1.terrain.length));
                        if(_loc19_)
                        {
                           break loop15;
                        }
                        §§push(§§pop() < §§pop());
                        if(_loc19_)
                        {
                           break loop14;
                        }
                     }
                     §§push(Boolean(§§pop()));
                     if(_loc19_)
                     {
                        break loop14;
                     }
                  }
                  §§push(!§§pop());
                  if(!_loc19_)
                  {
                     break loop14;
                  }
                  §§goto(addr0334);
               }
               §§goto(addr036f);
            }
            if(§§pop() <= §§pop())
            {
               §§push(§§findproperty(z));
               §§push(z);
               if(_loc20_)
               {
                  §§push(§§pop() + 75);
                  if(!_loc19_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§pop().z = §§pop();
               return;
            }
            while(true)
            {
               §§push(1);
               if(_loc20_)
               {
                  §§push(int(§§pop()));
                  if(!_loc20_)
                  {
                     break;
                  }
               }
               _loc7_ = §§pop();
               §§push(_loc5_);
               if(!_loc20_)
               {
                  break;
               }
               §§goto(addr03a9);
            }
            §§goto(addr03aa);
         }
         if(§§pop())
         {
            §§push(§§findproperty(z));
            §§push(z);
            if(_loc20_)
            {
               §§push(§§pop() + 75);
               if(_loc20_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§pop().z = §§pop();
            if(_loc20_)
            {
               return;
            }
         }
         else
         {
            § L§.low = 948729;
         }
         loop16:
         while(true)
         {
            while(true)
            {
               §§push(§§findproperty(§18§));
               if(!_loc19_)
               {
                  §§push(false);
                  if(_loc19_)
                  {
                     break;
                  }
                  if(_loc2_ < 0)
                  {
                     break;
                  }
                  if(_loc19_)
                  {
                     break;
                  }
                  §§pop();
                  if(_loc19_)
                  {
                     break loop16;
                  }
               }
               §§push(_loc2_ < int(param1.terrain.length));
               if(_loc20_)
               {
                  §§push(Boolean(§§pop()));
               }
               break;
            }
            if(§§pop())
            {
               break;
            }
            §§goto(addr0327);
            §§push(null);
         }
         addr0327:
         addr0334:
         §§push(Boolean(§§pop().§18§(param1.terrain[_loc2_])));
         if(_loc20_)
         {
            §§push(!§§pop());
         }
         if(§§pop())
         {
            addr0338:
            §§push(§§findproperty(z));
            §§push(z);
            if(_loc20_)
            {
               §§push(§§pop() + 75);
               if(_loc20_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§pop().z = §§pop();
            return;
         }
         addr0364:
         _loc5_ = int(Math.ceil(§-z§ / param1.tileWidth));
         while(true)
         {
            addr03a9:
            §§push(_loc5_);
            if(_loc20_)
            {
               addr036f:
               §§push(0);
               break loop15;
            }
            §§push(int(§§pop()));
            break;
         }
         addr03aa:
         var _loc8_:* = §§pop();
         if(_loc20_)
         {
            while(true)
            {
               §§push(_loc7_);
               while(true)
               {
                  §§push(_loc8_);
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        §§push(§]!D§);
                        §§push(Number(Math.random()));
                        if(_loc20_)
                        {
                           §§push(§§pop() * int(§]!D§.length));
                        }
                        var _loc10_:§0!E§ = §§pop()[int(§§pop())];
                        §§push(_loc10_.§0w§);
                        if(_loc20_)
                        {
                           §§push(§§pop() - param1.tileWidth / 2);
                           if(!_loc19_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc11_:* = §§pop();
                        if(_loc20_)
                        {
                           loop29:
                           while(true)
                           {
                              §§push(_loc11_);
                              if(!_loc19_)
                              {
                                 if(§§pop() >= 0)
                                 {
                                    if(!_loc20_)
                                    {
                                       break;
                                    }
                                    §§push(_loc11_);
                                    if(!_loc20_)
                                    {
                                       addr0562:
                                       §§push(-§§pop());
                                    }
                                 }
                                 else
                                 {
                                    §§push(_loc11_);
                                    if(_loc20_)
                                    {
                                       §§goto(addr0562);
                                    }
                                 }
                              }
                              §§push(§§pop() < 1e-10);
                              if(_loc20_)
                              {
                                 §§push(!§§pop());
                              }
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    if(_loc20_)
                                    {
                                       break loop29;
                                    }
                                    addr05cb:
                                    _loc10_.§>z§();
                                    break;
                                 }
                              }
                           }
                           §§push(_loc10_);
                           if(_loc20_)
                           {
                              §§push(_loc10_);
                              if(!_loc19_)
                              {
                                 while(true)
                                 {
                                    §§push(_loc10_);
                                    §§push(param1.tileWidth / 2);
                                    if(!_loc19_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc20_)
                                       {
                                          break;
                                       }
                                    }
                                    _loc12_ = §§pop();
                                    §§push(_loc12_);
                                    break;
                                 }
                                 §§pop().§[l§ = §§pop();
                              }
                              §§push(_loc12_);
                              if(_loc20_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc20_)
                                 {
                                    _loc12_ = §§pop();
                                    §§push(_loc12_);
                                 }
                              }
                              §§pop().§0w§ = §§pop();
                           }
                           §§pop().§^=§ = _loc12_;
                           if(!_loc19_)
                           {
                              §§goto(addr05cb);
                           }
                        }
                        var _loc13_:§[C§ = null;
                        _loc7_ = 0;
                        _loc8_ = int(_loc5_);
                        loop7:
                        while(true)
                        {
                           §§push(_loc7_);
                           while(§§pop() < _loc8_)
                           {
                              §§push(_loc7_++);
                              if(_loc20_)
                              {
                                 _loc9_ = §§pop();
                                 if(!_loc20_)
                                 {
                                    break;
                                 }
                                 §§push(param1.layout.§6!,§(_loc2_,0,0,_loc9_));
                                 if(!_loc19_)
                                 {
                                    §§push(int(§§pop()));
                                    if(_loc20_)
                                    {
                                       _loc6_ = §§pop();
                                       param1.§<!C§(_loc6_,§!#§);
                                       _loc13_ = §[C§.§4r§(tunnel,_loc10_);
                                       if(_loc20_)
                                       {
                                          _loc13_.§,W§(§!#§,param1);
                                       }
                                       _loc14_ = _loc13_.transform.§%!7§;
                                       if(!_loc19_)
                                       {
                                          §§push(1 / param1.tileWidth);
                                          if(!_loc19_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          _loc12_ = §§pop();
                                       }
                                       _loc15_ = _loc13_.transform.§%!7§;
                                       if(_loc20_)
                                       {
                                          if(_loc15_ == null)
                                          {
                                             _loc15_ = new Point3D(0,0,0);
                                          }
                                          _loc15_.x = _loc14_.x * _loc12_;
                                       }
                                       _loc15_.y = _loc14_.y * _loc12_;
                                       §§push(_loc15_);
                                       §§push(_loc14_.z);
                                       if(_loc20_)
                                       {
                                          §§push(§§pop() * _loc12_);
                                       }
                                       §§pop().z = §§pop();
                                       if(§^!$§ != null)
                                       {
                                          §§push(0);
                                          if(_loc20_)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                          _loc16_ = §§pop();
                                          _loc17_ = §^!$§;
                                          if(!_loc19_)
                                          {
                                             while(_loc16_ < int(_loc17_.length))
                                             {
                                                §§push(_loc17_[_loc16_]);
                                                if(!_loc19_)
                                                {
                                                   §§push(§§pop());
                                                }
                                                _loc18_ = §§pop();
                                                if(_loc20_)
                                                {
                                                   _loc16_++;
                                                   if(!_loc19_)
                                                   {
                                                      _loc18_(_loc13_,_loc9_,_loc5_);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       _loc13_.reset();
                                       tunnel.§`=§(_loc13_);
                                       if(!_loc19_)
                                       {
                                          param1.§ &§(_loc6_,_loc13_,true);
                                       }
                                       continue loop7;
                                    }
                                 }
                              }
                           }
                           break;
                        }
                        if(_loc13_ != null)
                        {
                           z = _loc13_.transform.position.z;
                        }
                        §§push(§§findproperty(z));
                        §§push(z);
                        if(!_loc19_)
                        {
                           §§push(§@!R§.§[!$§(Number(Math.random())));
                           if(_loc20_)
                           {
                              §§push(Number(§§pop()));
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc20_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        §§pop().z = §§pop();
                        return;
                     }
                     _loc9_ = _loc7_++;
                     §§push(param1.layout.§6!,§(_loc2_,0,0,_loc9_));
                     if(_loc19_)
                     {
                        break;
                     }
                     continue loop20;
                  }
               }
               break;
            }
            while(true)
            {
               §§push(§§findproperty(z));
               §§push(z);
               if(!_loc19_)
               {
                  §§push(§§pop() + 75);
                  if(!_loc20_)
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
      
      public function §68§(param1:Function) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = null as Vector.<Function>;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc4_)
               {
                  if(§^!$§ != null)
                  {
                     break;
                  }
                  if(!_loc3_)
                  {
                     break loop0;
                  }
               }
               _loc2_ = new Vector.<Function>(0,false);
               if(_loc3_)
               {
                  §^!$§ = _loc2_;
               }
               break;
            }
            §^!$§.push(param1);
            break;
         }
      }
   }
}

