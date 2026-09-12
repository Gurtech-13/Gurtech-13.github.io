package §2!"§
{
   import §+!1§.§'!b§;
   import §+!1§.§[!9§;
   import §4!6§.§!!V§;
   import §4!6§.§=s§;
   import nme3D.model.§4!O§;
   import nme3D.model.Model;
   import nme3D.shader.§'H§;
   import nme3D.shader.§^&§;
   import nme3D.shader.vertex.PositionUVVertex;
   
   public class §8f§ extends Model
   {
      
      public var §#+§:§[!9§;
      
      public function §8f§(param1:String, param2:Number, param3:Number, param4:Object = undefined, param5:§'H§ = undefined, param6:Object = undefined, param7:§[!9§ = undefined)
      {
         var _temp_1:* = true;
         var _loc34_:Boolean = false;
         var _loc35_:Boolean = _temp_1;
         var _loc16_:* = null as Vector.<uint>;
         var _loc17_:* = NaN;
         var _loc18_:* = null as Vector.<uint>;
         var _loc19_:* = 0;
         var _loc20_:* = 0;
         var _loc21_:int = 0;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         var _loc25_:int = 0;
         var _loc26_:* = null as PositionUVVertex;
         var _loc27_:* = null as §=s§;
         var _loc28_:Number = NaN;
         var _loc29_:* = NaN;
         var _loc30_:* = 0;
         var _loc31_:int = 0;
         var _loc32_:* = 0;
         var _loc33_:* = 0;
         if(_loc35_)
         {
            loop10:
            while(true)
            {
               if(param4 == null)
               {
                  if(!_loc35_)
                  {
                     break;
                  }
                  param4 = true;
               }
               while(true)
               {
                  if(param6 == null)
                  {
                     if(!_loc35_)
                     {
                        break;
                     }
                     param6 = 1;
                  }
                  if(param7 != null)
                  {
                     if(!_loc34_)
                     {
                        break;
                     }
                     break loop10;
                  }
                  §=!a§(§'!b§.§?!3§(param1,param4));
                  break loop10;
               }
               §=!a§(param7);
               if(_loc35_)
               {
               }
               break;
            }
         }
         §§push(Type);
         §§push(PositionUVVertex);
         §§push(int(param6 + 1));
         if(!_loc34_)
         {
            §§push(§§pop() * (int(param6 + 1)));
         }
         var _loc8_:§!!V§ = §§pop().createInstance(§§pop(),null);
         var _loc9_:§!!V§ = _loc8_;
         §§push(param2);
         if(_loc35_)
         {
            §§push(-§§pop());
            if(_loc35_)
            {
               §§push(§§pop() / 2);
               if(!_loc34_)
               {
                  §§push(Number(§§pop()));
               }
            }
         }
         var _loc10_:* = §§pop();
         while(true)
         {
            §§push(param3);
            if(_loc35_)
            {
               §§push(-§§pop());
               if(!_loc35_)
               {
                  break;
               }
               §§push(§§pop() / 2);
               if(_loc34_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc11_:* = §§pop();
         §§push(§#+§.§;9§);
         if(_loc35_)
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(§#+§.§0]§);
         if(_loc35_)
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         §§push(§#+§.§,'§);
         if(_loc35_)
         {
            §§push(Number(§§pop()));
         }
         var _loc14_:* = §§pop();
         §§push(§#+§.§0]§);
         if(!_loc34_)
         {
            §§push(Number(§§pop()));
         }
         var _loc15_:* = §§pop();
         while(true)
         {
            if(_loc35_)
            {
               if(param6 <= 1)
               {
                  §§push(_loc9_);
                  §§push(_loc9_.§5G§);
                  if(_loc35_)
                  {
                     §§push(§§pop() * 0);
                  }
                  §§pop().offset = §§pop();
                  break;
               }
               if(!_loc35_)
               {
                  break;
               }
            }
            §§push(1 / param6);
            if(_loc35_)
            {
               §§push(Number(§§pop()));
            }
            _loc17_ = §§pop();
            if(_loc35_)
            {
               _loc18_ = new Vector.<uint>(0,false);
               _loc16_ = _loc18_;
               loop14:
               while(true)
               {
                  while(true)
                  {
                     if(_loc35_)
                     {
                        §§push(0);
                        if(!_loc34_)
                        {
                           §§push(int(§§pop()));
                           if(_loc34_)
                           {
                              break;
                           }
                        }
                        _loc19_ = §§pop();
                        if(_loc34_)
                        {
                           break loop14;
                        }
                     }
                     §§push(int(param6 + 1));
                     if(!_loc34_)
                     {
                        break;
                     }
                     addr01ef:
                     _loc20_ = §§pop();
                     if(!_loc34_)
                     {
                        loop0:
                        while(true)
                        {
                           §§push(_loc19_);
                           addr0512:
                           while(§§pop() < _loc20_)
                           {
                              §§push(_loc19_);
                              if(_loc35_)
                              {
                                 _loc19_++;
                                 if(_loc35_)
                                 {
                                    _loc21_ = §§pop();
                                    if(_loc35_)
                                    {
                                       _loc22_ = 0;
                                       §§push(int(param6 + 1));
                                       if(!_loc34_)
                                       {
                                          _loc23_ = §§pop();
                                          if(!_loc34_)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc22_);
                                                addr050a:
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(_loc23_);
                                                   loop5:
                                                   while(§§pop() < §§pop())
                                                   {
                                                      §§push(_loc22_);
                                                      if(!_loc34_)
                                                      {
                                                         _loc22_++;
                                                         loop16:
                                                         while(true)
                                                         {
                                                            if(_loc35_)
                                                            {
                                                               _loc24_ = §§pop();
                                                               if(!_loc34_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc21_);
                                                                     §§push(int(param6 + 1));
                                                                     if(!_loc34_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc24_);
                                                                           if(_loc35_)
                                                                           {
                                                                              break loop16;
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        break loop5;
                                                                        addr0261:
                                                                     }
                                                                     break loop16;
                                                                  }
                                                                  break loop5;
                                                                  addr0251:
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc26_ = _loc9_;
                                                                  if(_loc35_)
                                                                  {
                                                                     _loc26_.§+R§.offset = _loc26_.offset;
                                                                  }
                                                                  _loc27_ = _loc26_.§+R§;
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        loop31:
                                                                        while(true)
                                                                        {
                                                                           loop32:
                                                                           while(true)
                                                                           {
                                                                              loop33:
                                                                              while(true)
                                                                              {
                                                                                 loop34:
                                                                                 while(true)
                                                                                 {
                                                                                    loop35:
                                                                                    while(true)
                                                                                    {
                                                                                       loop36:
                                                                                       while(true)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc35_)
                                                                                             {
                                                                                                §§push(_loc10_);
                                                                                                §§push(_loc21_);
                                                                                                if(_loc34_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§push(_loc17_);
                                                                                                if(_loc34_)
                                                                                                {
                                                                                                   break loop36;
                                                                                                }
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc34_)
                                                                                                {
                                                                                                   break loop31;
                                                                                                }
                                                                                                §§push(_loc10_);
                                                                                                if(_loc34_)
                                                                                                {
                                                                                                   break loop35;
                                                                                                }
                                                                                                §§push(-§§pop());
                                                                                                if(!_loc35_)
                                                                                                {
                                                                                                   break loop34;
                                                                                                }
                                                                                                §§push(_loc10_);
                                                                                                if(!_loc35_)
                                                                                                {
                                                                                                   break loop33;
                                                                                                }
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(!_loc35_)
                                                                                                {
                                                                                                   break loop32;
                                                                                                }
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc34_)
                                                                                                {
                                                                                                   break loop31;
                                                                                                }
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc34_)
                                                                                                {
                                                                                                   break loop18;
                                                                                                }
                                                                                                _loc28_ = Number(§§pop());
                                                                                                if(_loc34_)
                                                                                                {
                                                                                                   break loop17;
                                                                                                }
                                                                                             }
                                                                                             §§push(_loc11_);
                                                                                             §§push(_loc24_);
                                                                                             break;
                                                                                          }
                                                                                          §§push(_loc17_);
                                                                                          break;
                                                                                       }
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc35_)
                                                                                       {
                                                                                          break loop31;
                                                                                       }
                                                                                       §§goto(addr031f);
                                                                                    }
                                                                                    §§goto(addr0313);
                                                                                 }
                                                                                 §§goto(addr031e);
                                                                              }
                                                                              §§push(§§pop() - §§pop());
                                                                              break loop34;
                                                                           }
                                                                           §§push(_loc11_);
                                                                           break loop33;
                                                                        }
                                                                        §§push(_loc11_);
                                                                        if(_loc35_)
                                                                        {
                                                                           addr0313:
                                                                           §§push(-§§pop());
                                                                           if(!_loc34_)
                                                                           {
                                                                              break loop32;
                                                                           }
                                                                        }
                                                                        addr031e:
                                                                        addr031f:
                                                                        §§push(§§pop() + §§pop() * §§pop());
                                                                        break;
                                                                     }
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc35_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     _loc29_ = §§pop();
                                                                     _loc27_.§@!Y§[_loc27_.offset] = _loc28_;
                                                                     break;
                                                                  }
                                                                  §§push(_loc27_.§@!Y§);
                                                                  §§push(_loc27_.offset);
                                                                  if(!_loc34_)
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                  }
                                                                  §§pop()[§§pop()] = _loc29_;
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc27_.§@!Y§);
                                                                     §§push(_loc27_.offset);
                                                                     if(!_loc34_)
                                                                     {
                                                                        §§push(2);
                                                                        if(!_loc35_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                     §§push(0);
                                                                     break;
                                                                  }
                                                                  §§pop()[§§pop()] = §§pop();
                                                                  §§push(_loc26_.§+R§);
                                                                  §§push(_loc26_.offset);
                                                                  if(_loc35_)
                                                                  {
                                                                     §§push(§§pop() + 3);
                                                                  }
                                                                  §§pop().offset = §§pop();
                                                                  _loc27_ = _loc26_.§+R§;
                                                                  loop20:
                                                                  while(true)
                                                                  {
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        loop28:
                                                                        while(true)
                                                                        {
                                                                           loop29:
                                                                           while(true)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc12_);
                                                                                 §§push(_loc21_);
                                                                                 if(!_loc34_)
                                                                                 {
                                                                                    §§push(_loc17_);
                                                                                    if(!_loc35_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc35_)
                                                                                    {
                                                                                       §§push(_loc13_);
                                                                                       if(_loc34_)
                                                                                       {
                                                                                          break loop28;
                                                                                       }
                                                                                       §§push(_loc12_);
                                                                                       if(_loc34_)
                                                                                       {
                                                                                          break loop29;
                                                                                       }
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(!_loc35_)
                                                                                       {
                                                                                          break loop28;
                                                                                       }
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc34_)
                                                                                       {
                                                                                          break loop21;
                                                                                       }
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc35_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    _loc28_ = §§pop();
                                                                                    §§push(_loc14_);
                                                                                    if(!_loc35_)
                                                                                    {
                                                                                       break loop20;
                                                                                    }
                                                                                    §§push(_loc24_);
                                                                                 }
                                                                                 §§push(_loc17_);
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc34_)
                                                                              {
                                                                                 §§push(_loc15_);
                                                                                 if(_loc35_)
                                                                                 {
                                                                                    §§push(_loc14_);
                                                                                    break;
                                                                                 }
                                                                                 break loop28;
                                                                              }
                                                                              break loop21;
                                                                           }
                                                                           §§push(§§pop() - §§pop());
                                                                           break;
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                        break;
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     break;
                                                                  }
                                                                  _loc29_ = §§pop();
                                                                  _loc27_.§@!Y§[_loc27_.offset] = _loc28_;
                                                                  if(_loc34_)
                                                                  {
                                                                     break loop8;
                                                                  }
                                                                  §§push(_loc27_.§@!Y§);
                                                                  §§push(_loc27_.offset);
                                                                  if(_loc35_)
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                  }
                                                                  §§pop()[§§pop()] = _loc29_;
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     §§push(false);
                                                                     if(_loc35_)
                                                                     {
                                                                        if(_loc21_ > 0)
                                                                        {
                                                                           if(_loc35_)
                                                                           {
                                                                              §§pop();
                                                                              §§push(_loc24_);
                                                                              if(!_loc35_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop() > 0);
                                                                              if(!_loc34_)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        loop23:
                                                                        while(true)
                                                                        {
                                                                           loop24:
                                                                           while(true)
                                                                           {
                                                                              loop25:
                                                                              while(true)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc21_ - 1);
                                                                                    if(!_loc34_)
                                                                                    {
                                                                                       §§push(§§pop() * (int(param6 + 1)) + _loc24_ - 1);
                                                                                       if(!_loc34_)
                                                                                       {
                                                                                          break loop22;
                                                                                       }
                                                                                       addr0477:
                                                                                       §§push(§§pop() * (int(param6 + 1)));
                                                                                       §§push(_loc24_);
                                                                                       if(!_loc35_)
                                                                                       {
                                                                                          break loop25;
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!_loc34_)
                                                                                       {
                                                                                          §§push(1);
                                                                                          if(_loc34_)
                                                                                          {
                                                                                             break loop24;
                                                                                          }
                                                                                          _loc31_ = §§pop() - §§pop();
                                                                                          §§push(_loc21_);
                                                                                       }
                                                                                       §§push(§§pop() - 1);
                                                                                       if(_loc34_)
                                                                                       {
                                                                                          break loop23;
                                                                                       }
                                                                                    }
                                                                                    §§push(int(param6 + 1));
                                                                                    break loop25;
                                                                                 }
                                                                                 §§goto(addr04d8);
                                                                              }
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc34_)
                                                                              {
                                                                                 §§push(_loc24_);
                                                                                 break;
                                                                              }
                                                                              §§goto(addr04c3);
                                                                           }
                                                                           addr04c3:
                                                                           §§push(int(§§pop() + §§pop()));
                                                                           if(!_loc34_)
                                                                           {
                                                                              _loc32_ = §§pop();
                                                                              §§push(_loc25_);
                                                                           }
                                                                           break;
                                                                        }
                                                                        _loc33_ = §§pop();
                                                                        _loc16_.push(_loc30_);
                                                                        addr04d8:
                                                                        _loc16_.push(_loc31_);
                                                                        _loc16_.push(_loc32_);
                                                                        if(_loc35_)
                                                                        {
                                                                           _loc16_.push(_loc31_);
                                                                           if(_loc35_)
                                                                           {
                                                                              _loc16_.push(_loc32_);
                                                                           }
                                                                        }
                                                                        _loc16_.push(_loc33_);
                                                                     }
                                                                     break loop8;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     if(_loc35_)
                                                                     {
                                                                        _loc30_ = §§pop();
                                                                        if(!_loc35_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr0477);
                                                                        §§push(_loc21_);
                                                                     }
                                                                     §§goto(addr04a9);
                                                                  }
                                                                  §§goto(addr04d8);
                                                               }
                                                               addr0280:
                                                            }
                                                            §§goto(addr0261);
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         _loc25_ = §§pop();
                                                         §§push(_loc9_);
                                                         §§push(_loc9_.§5G§);
                                                         if(!_loc34_)
                                                         {
                                                            §§push(§§pop() * _loc25_);
                                                         }
                                                         §§pop().offset = §§pop();
                                                         §§goto(addr0280);
                                                      }
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                          }
                                          §§goto(addr0251);
                                       }
                                       §§goto(addr026b);
                                    }
                                    §§goto(addr0280);
                                 }
                                 §§goto(addr050a);
                              }
                              §§goto(addr026b);
                           }
                           if(!_loc35_)
                           {
                              break loop14;
                           }
                        }
                     }
                     addr096e:
                     if(param5 == null)
                     {
                        if(!_loc34_)
                        {
                           break loop14;
                        }
                        §§goto(addr099c);
                     }
                     §§goto(addr0993);
                  }
                  while(true)
                  {
                     §§push(int(§§pop()));
                     if(!_loc34_)
                     {
                        §§goto(addr01ef);
                     }
                     §§goto(addr0512);
                  }
                  §§goto(addr096e);
               }
               param5 = §^&§.§1r§(§#+§);
               addr0993:
               super(_loc9_,_loc16_,param5);
               addr099c:
               return;
            }
            break;
         }
         _loc26_ = _loc9_;
         if(_loc35_)
         {
            _loc26_.§+R§.offset = _loc26_.offset;
         }
         _loc27_ = _loc26_.§+R§;
         while(true)
         {
            if(!_loc34_)
            {
               _loc27_.§@!Y§[_loc27_.offset] = _loc10_;
               if(!_loc35_)
               {
                  break;
               }
            }
            §§push(_loc27_.§@!Y§);
            §§push(_loc27_.offset);
            if(!_loc34_)
            {
               §§push(§§pop() + 1);
            }
            §§pop()[§§pop()] = _loc11_;
            if(_loc35_)
            {
               break;
            }
            addr05b8:
            _loc26_ = _loc9_;
            if(_loc35_)
            {
               _loc26_.§+R§.offset = _loc26_.offset;
            }
            _loc27_ = _loc26_.§+R§;
            while(true)
            {
               if(_loc35_)
               {
                  while(true)
                  {
                     §§push(_loc11_);
                     if(!_loc34_)
                     {
                        §§push(-§§pop());
                        if(!_loc35_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
                  _loc17_ = §§pop();
                  if(_loc34_)
                  {
                     break;
                  }
               }
               _loc27_.§@!Y§[_loc27_.offset] = _loc10_;
               if(_loc35_)
               {
                  §§push(_loc27_.§@!Y§);
                  §§push(_loc27_.offset);
                  if(_loc35_)
                  {
                     §§push(§§pop() + 1);
                  }
                  §§pop()[§§pop()] = _loc17_;
                  if(_loc34_)
                  {
                     break;
                  }
                  while(true)
                  {
                     §§push(_loc27_.§@!Y§);
                     §§push(_loc27_.offset);
                     if(!_loc34_)
                     {
                        §§push(2);
                        if(!_loc35_)
                        {
                           break;
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§push(0);
                     break;
                  }
                  §§pop()[§§pop()] = §§pop();
                  if(!_loc35_)
                  {
                     break;
                  }
               }
               §§push(_loc9_);
               §§push(_loc9_.§5G§);
               if(!_loc34_)
               {
                  §§push(§§pop() * 2);
               }
               §§pop().offset = §§pop();
               break;
            }
            _loc26_ = _loc9_;
            if(_loc35_)
            {
               _loc26_.§+R§.offset = _loc26_.offset;
            }
            _loc27_ = _loc26_.§+R§;
            loop43:
            while(true)
            {
               if(_loc35_)
               {
                  while(true)
                  {
                     §§push(_loc10_);
                     if(!_loc34_)
                     {
                        §§push(-§§pop());
                        if(_loc34_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
                  _loc17_ = §§pop();
                  if(_loc35_)
                  {
                     _loc27_.§@!Y§[_loc27_.offset] = _loc17_;
                     while(true)
                     {
                        if(_loc35_)
                        {
                           §§push(_loc27_.§@!Y§);
                           §§push(_loc27_.offset);
                           if(_loc35_)
                           {
                              §§push(§§pop() + 1);
                           }
                           §§pop()[§§pop()] = _loc11_;
                           if(!_loc35_)
                           {
                              break;
                           }
                        }
                        while(true)
                        {
                           §§push(_loc27_.§@!Y§);
                           §§push(_loc27_.offset);
                           if(!_loc34_)
                           {
                              §§push(2);
                              if(!_loc35_)
                              {
                                 break;
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(0);
                           break;
                        }
                        §§pop()[§§pop()] = §§pop();
                        if(!_loc34_)
                        {
                           break;
                        }
                        break loop43;
                     }
                  }
               }
               §§push(_loc9_);
               §§push(_loc9_.§5G§);
               if(!_loc34_)
               {
                  §§push(§§pop() * 3);
               }
               §§pop().offset = §§pop();
               break;
            }
            _loc26_ = _loc9_;
            if(!_loc34_)
            {
               _loc26_.§+R§.offset = _loc26_.offset;
            }
            _loc27_ = _loc26_.§+R§;
            loop47:
            while(true)
            {
               while(true)
               {
                  §§push(_loc10_);
                  if(_loc35_)
                  {
                     §§push(-§§pop());
                     if(!_loc35_)
                     {
                        break;
                     }
                     §§push(Number(§§pop()));
                     if(_loc34_)
                     {
                        break loop47;
                     }
                  }
                  _loc17_ = §§pop();
                  §§push(_loc11_);
                  if(!_loc34_)
                  {
                     break;
                  }
                  break loop47;
               }
               §§push(-§§pop());
               if(!_loc34_)
               {
                  break;
               }
               §§goto(addr0750);
            }
            addr0750:
            _loc28_ = §§pop();
            if(!_loc34_)
            {
               _loc27_.§@!Y§[_loc27_.offset] = _loc17_;
               §§push(_loc27_.§@!Y§);
               §§push(_loc27_.offset);
               if(!_loc34_)
               {
                  §§push(§§pop() + 1);
               }
               §§pop()[§§pop()] = _loc28_;
               if(_loc35_)
               {
                  while(true)
                  {
                     §§push(_loc27_.§@!Y§);
                     §§push(_loc27_.offset);
                     if(!_loc34_)
                     {
                        §§push(2);
                        if(!_loc35_)
                        {
                           break;
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§push(0);
                     break;
                  }
                  §§pop()[§§pop()] = §§pop();
               }
               §§push(_loc9_);
               §§push(_loc9_.§5G§);
               if(!_loc34_)
               {
                  §§push(§§pop() * 0);
               }
               §§pop().offset = §§pop();
            }
            _loc26_ = _loc9_;
            if(!_loc34_)
            {
               §§push(_loc26_.§+R§);
               §§push(_loc26_.offset);
               if(!_loc34_)
               {
                  §§push(§§pop() + 3);
               }
               §§pop().offset = §§pop();
            }
            _loc27_ = _loc26_.§+R§;
            if(_loc35_)
            {
               _loc27_.§@!Y§[_loc27_.offset] = _loc12_;
               while(true)
               {
                  if(_loc35_)
                  {
                     §§push(_loc27_.§@!Y§);
                     §§push(_loc27_.offset);
                     if(_loc35_)
                     {
                        §§push(§§pop() + 1);
                     }
                     §§pop()[§§pop()] = _loc14_;
                     if(!_loc35_)
                     {
                        break;
                     }
                  }
                  _loc9_.offset = _loc9_.§5G§;
                  break;
               }
            }
            _loc26_ = _loc9_;
            if(_loc35_)
            {
               §§push(_loc26_.§+R§);
               §§push(_loc26_.offset);
               if(!_loc34_)
               {
                  §§push(§§pop() + 3);
               }
               §§pop().offset = §§pop();
            }
            _loc27_ = _loc26_.§+R§;
            while(true)
            {
               if(!_loc34_)
               {
                  _loc27_.§@!Y§[_loc27_.offset] = _loc12_;
                  if(_loc34_)
                  {
                     break;
                  }
               }
               §§push(_loc27_.§@!Y§);
               §§push(_loc27_.offset);
               if(!_loc34_)
               {
                  §§push(§§pop() + 1);
               }
               §§pop()[§§pop()] = _loc15_;
               if(_loc35_)
               {
                  §§push(_loc9_);
                  §§push(_loc9_.§5G§);
                  if(_loc35_)
                  {
                     §§push(§§pop() * 2);
                  }
                  §§pop().offset = §§pop();
               }
               break;
            }
            _loc26_ = _loc9_;
            if(_loc35_)
            {
               §§push(_loc26_.§+R§);
               §§push(_loc26_.offset);
               if(_loc35_)
               {
                  §§push(§§pop() + 3);
               }
               §§pop().offset = §§pop();
            }
            _loc27_ = _loc26_.§+R§;
            if(_loc35_)
            {
               _loc27_.§@!Y§[_loc27_.offset] = _loc13_;
               while(true)
               {
                  if(_loc35_)
                  {
                     §§push(_loc27_.§@!Y§);
                     §§push(_loc27_.offset);
                     if(_loc35_)
                     {
                        §§push(§§pop() + 1);
                     }
                     §§pop()[§§pop()] = _loc14_;
                     if(_loc34_)
                     {
                        break;
                     }
                  }
                  §§push(_loc9_);
                  §§push(_loc9_.§5G§);
                  if(!_loc34_)
                  {
                     §§push(§§pop() * 3);
                  }
                  §§pop().offset = §§pop();
                  break;
               }
            }
            _loc26_ = _loc9_;
            if(_loc35_)
            {
               §§push(_loc26_.§+R§);
               §§push(_loc26_.offset);
               if(!_loc34_)
               {
                  §§push(§§pop() + 3);
               }
               §§pop().offset = §§pop();
            }
            _loc27_ = _loc26_.§+R§;
            while(true)
            {
               if(!_loc34_)
               {
                  _loc27_.§@!Y§[_loc27_.offset] = _loc13_;
                  if(!_loc35_)
                  {
                     break;
                  }
               }
               §§push(_loc27_.§@!Y§);
               §§push(_loc27_.offset);
               if(_loc35_)
               {
                  §§push(§§pop() + 1);
               }
               §§pop()[§§pop()] = _loc15_;
               break;
            }
            _loc16_ = §4!O§.§92§;
            §§goto(addr096e);
         }
         while(true)
         {
            §§push(_loc27_.§@!Y§);
            §§push(_loc27_.offset);
            if(!_loc34_)
            {
               §§push(2);
               if(!_loc35_)
               {
                  break;
               }
               §§push(§§pop() + §§pop());
            }
            §§push(0);
            break;
         }
         §§pop()[§§pop()] = §§pop();
         if(!_loc34_)
         {
            _loc9_.offset = _loc9_.§5G§;
         }
         §§goto(addr05b8);
      }
      
      public function §=!a§(param1:§[!9§) : §[!9§
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            while(true)
            {
               if(§1Z§ != null)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  §1Z§.§^N§(0,param1);
                  if(_loc3_)
                  {
                     break;
                  }
               }
               §#+§ = param1;
               break;
            }
         }
         return §#+§;
      }
   }
}

