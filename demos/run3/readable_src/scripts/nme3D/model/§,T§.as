package nme3D.model
{
   import §4!6§.§!!V§;
   import §4!6§.§=s§;
   import §8!0§.§@!N§;
   import haxeutils.math.geom.Point3D;
   import nme3D.shader.§'H§;
   
   public class §,T§ extends Model
   {
      
      public static var init__:Boolean;
      
      public static var §92§:Vector.<uint>;
      
      public static var §+!Z§:Vector.<uint>;
      
      public function §,T§(param1:Vector.<§%d§>, param2:§'H§, param3:Boolean = false, param4:Number = 0.5, param5:Object = undefined, param6:Object = undefined)
      {
         §§push(false);
         var _loc21_:Boolean = true;
         var _loc22_:* = §§pop();
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc13_:* = null as Point3D;
         var _loc14_:* = null as Point3D;
         var _loc15_:* = null as §!!V§;
         var _loc16_:* = null as §=s§;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = null;
         loop15:
         while(true)
         {
            while(true)
            {
               if(!_loc22_)
               {
                  if(param5 != null)
                  {
                     break;
                  }
                  if(!_loc21_)
                  {
                     break loop15;
                  }
               }
               §§push(param4);
               if(!_loc22_)
               {
                  param5 = §§pop();
                  break;
               }
               §§goto(addr0077);
            }
            if(param6 == null)
            {
               break;
            }
            §§goto(addr007a);
         }
         addr0077:
         param6 = param4;
         addr007a:
         §§push(true);
         if(!_loc22_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(!_loc22_)
         {
            if(param1 != null)
            {
               loop17:
               while(true)
               {
                  if(_loc21_)
                  {
                     §§push(false);
                     if(!_loc22_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     _loc7_ = §§pop();
                     if(!_loc22_)
                     {
                        §§push(0);
                        if(!_loc22_)
                        {
                           §§push(int(§§pop()));
                           if(!_loc22_)
                           {
                              _loc8_ = §§pop();
                              if(_loc22_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 §§push(_loc8_);
                              }
                              addr01ad:
                           }
                        }
                        loop0:
                        while(true)
                        {
                           if(§§pop() >= 5)
                           {
                              break loop17;
                           }
                           loop18:
                           while(true)
                           {
                              §§push(_loc8_++);
                              if(_loc21_)
                              {
                                 §§push(int(§§pop()));
                                 if(_loc21_)
                                 {
                                    _loc9_ = §§pop();
                                    §§push(_loc9_);
                                    if(_loc21_)
                                    {
                                       §§push(int(§§pop()));
                                       if(_loc21_)
                                       {
                                          _loc10_ = §§pop();
                                          if(!_loc22_)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc10_);
                                                addr019d:
                                                while(true)
                                                {
                                                   if(§§pop() >= 6)
                                                   {
                                                      break loop18;
                                                   }
                                                   addr0105:
                                                   §§push(_loc10_++);
                                                   if(!_loc22_)
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                   while(true)
                                                   {
                                                      _loc11_ = §§pop();
                                                      if(!_loc21_)
                                                      {
                                                         break loop17;
                                                      }
                                                   }
                                                }
                                                break loop18;
                                             }
                                             addr019b:
                                          }
                                          while(true)
                                          {
                                             loop19:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   §§push(true);
                                                   §§push(true);
                                                   if(!_loc22_)
                                                   {
                                                      if(param1[_loc9_].r != param1[_loc11_].r)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc22_)
                                                      {
                                                         break loop19;
                                                      }
                                                   }
                                                   §§pop();
                                                   §§push(param1[_loc9_].g == param1[_loc11_].g);
                                                   if(_loc21_)
                                                   {
                                                      §§push(!§§pop());
                                                      if(_loc21_)
                                                      {
                                                         break loop19;
                                                      }
                                                      break;
                                                   }
                                                   break loop19;
                                                }
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc21_)
                                                      {
                                                         §§pop();
                                                         §§push(param1[_loc9_].b == param1[_loc11_].b);
                                                         if(!_loc21_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(!§§pop());
                                                      }
                                                   }
                                                   if(§§pop())
                                                   {
                                                      §§push(true);
                                                      if(!_loc22_)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         break loop17;
                                                      }
                                                      continue loop0;
                                                   }
                                                   §§goto(addr019b);
                                                }
                                                _loc7_ = §§pop();
                                                break loop18;
                                             }
                                             §§push(Boolean(§§pop()));
                                             break loop20;
                                          }
                                          break;
                                       }
                                       §§goto(addr019d);
                                    }
                                    §§goto(addr0105);
                                 }
                                 §§goto(addr019d);
                              }
                              §§goto(addr0105);
                           }
                           break loop2;
                        }
                     }
                     break;
                  }
                  §§goto(addr01ad);
               }
            }
         }
         var _loc12_:§!!V§ = Type.createInstance(param2.§?"§,[_loc7_ ? 24 : 8,null]);
         while(true)
         {
            if(!_loc22_)
            {
               while(true)
               {
                  §§push(this);
                  §§push(_loc12_);
                  if(!_loc22_)
                  {
                     if(!_loc7_)
                     {
                        §§push(§,T§.§+!Z§);
                        break;
                     }
                  }
                  §§push(§,T§.§92§);
                  break;
               }
               §§pop().super(§§pop(),§§pop(),param2);
               if(_loc22_)
               {
                  break;
               }
            }
            if(param3)
            {
               break;
            }
            _loc13_ = new Point3D(0,0,0);
            §§push(§§findproperty(Point3D));
            §§push(param4);
            if(_loc21_)
            {
               §§push(§§pop() * 2);
            }
            _loc14_ = new §§pop().Point3D(§§pop(),param5 * 2,param6 * 2);
            §,T§.§[!C§(vertices,_loc13_,_loc14_,_loc7_);
            loop24:
            while(true)
            {
               loop25:
               while(true)
               {
                  loop39:
                  while(true)
                  {
                     loop40:
                     while(true)
                     {
                        if(_loc21_)
                        {
                           if(_loc7_)
                           {
                              if(param1 != null)
                              {
                                 §§push(0);
                                 if(!_loc22_)
                                 {
                                    §§push(int(§§pop()));
                                    if(!_loc22_)
                                    {
                                       _loc8_ = §§pop();
                                       if(_loc22_)
                                       {
                                          break loop24;
                                       }
                                       while(true)
                                       {
                                          §§push(_loc8_);
                                          if(_loc22_)
                                          {
                                             break loop39;
                                          }
                                       }
                                       break loop39;
                                       addr03dd:
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(6);
                                    if(!_loc21_)
                                    {
                                       break loop40;
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       break loop25;
                                    }
                                    loop41:
                                    while(true)
                                    {
                                       §§push(_loc8_++);
                                       if(_loc21_)
                                       {
                                          _loc9_ = §§pop();
                                          if(_loc21_)
                                          {
                                             §§push(0);
                                             if(!_loc22_)
                                             {
                                                _loc10_ = int(§§pop());
                                                if(!_loc21_)
                                                {
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   if(_loc10_ >= 4)
                                                   {
                                                      break loop41;
                                                   }
                                                   §§push(_loc10_++);
                                                }
                                                break;
                                                addr03d5:
                                             }
                                             while(true)
                                             {
                                                _loc11_ = §§pop();
                                                if(_loc22_)
                                                {
                                                   break loop41;
                                                }
                                             }
                                             break;
                                             addr02e2:
                                          }
                                          while(true)
                                          {
                                             _loc15_ = vertices;
                                             if(!_loc22_)
                                             {
                                                §§push(_loc15_);
                                                §§push(_loc15_.§5G§);
                                                if(_loc21_)
                                                {
                                                   §§push(_loc9_);
                                                   if(!_loc22_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(4);
                                                         if(_loc21_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc21_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(_loc11_);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         break;
                                                      }
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                }
                                                §§pop().offset = §§pop();
                                             }
                                             _loc16_ = _loc15_.getAttribute3("color");
                                             if(!_loc22_)
                                             {
                                                loop43:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(param1[_loc9_].r);
                                                      if(!_loc22_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!_loc21_)
                                                         {
                                                            break;
                                                         }
                                                         _loc17_ = §§pop();
                                                         §§push(param1[_loc9_].g);
                                                         if(_loc22_)
                                                         {
                                                            break loop43;
                                                         }
                                                      }
                                                      §§push(Number(§§pop()));
                                                      if(!_loc22_)
                                                      {
                                                         break loop43;
                                                      }
                                                      break;
                                                   }
                                                   _loc19_ = §§pop();
                                                   while(true)
                                                   {
                                                      if(_loc21_)
                                                      {
                                                         _loc16_.§@!Y§[_loc16_.offset] = _loc17_;
                                                         if(!_loc21_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      §§push(_loc16_.§@!Y§);
                                                      §§push(_loc16_.offset);
                                                      if(!_loc22_)
                                                      {
                                                         §§push(§§pop() + 1);
                                                      }
                                                      §§pop()[§§pop()] = _loc18_;
                                                      §§push(_loc16_.§@!Y§);
                                                      §§push(_loc16_.offset);
                                                      if(_loc21_)
                                                      {
                                                         §§push(§§pop() + 2);
                                                      }
                                                      §§pop()[§§pop()] = _loc19_;
                                                      break;
                                                   }
                                                }
                                                _loc18_ = §§pop();
                                                §§push(param1[_loc9_].b);
                                                if(_loc21_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                break loop44;
                                             }
                                             §§goto(addr03d5);
                                          }
                                       }
                                       §§goto(addr02e2);
                                    }
                                 }
                                 break;
                              }
                              §§push(0);
                              if(_loc21_)
                              {
                                 §§push(int(§§pop()));
                                 if(!_loc21_)
                                 {
                                    break loop39;
                                 }
                              }
                              _loc8_ = §§pop();
                              break loop24;
                           }
                           _loc20_ = new §@!N§(vertices);
                           if(_loc21_)
                           {
                              while(true)
                              {
                                 if(!Boolean(_loc20_.hasNext()))
                                 {
                                    break loop25;
                                 }
                                 _loc15_ = _loc20_.next();
                                 _loc16_ = _loc15_.getAttribute3("color");
                                 if(!_loc22_)
                                 {
                                    while(true)
                                    {
                                       §§push(param1[0].r);
                                       if(_loc21_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!_loc22_)
                                          {
                                             _loc17_ = §§pop();
                                             §§push(param1[0].g);
                                             if(!_loc21_)
                                             {
                                                break;
                                             }
                                          }
                                          §§push(Number(§§pop()));
                                          if(!_loc21_)
                                          {
                                             break;
                                          }
                                          _loc18_ = §§pop();
                                          §§push(param1[0].b);
                                          if(_loc22_)
                                          {
                                             break;
                                          }
                                       }
                                       §§push(Number(§§pop()));
                                       break;
                                    }
                                    _loc19_ = §§pop();
                                 }
                                 _loc16_.§@!Y§[_loc16_.offset] = _loc17_;
                                 if(_loc21_)
                                 {
                                    §§push(_loc16_.§@!Y§);
                                    §§push(_loc16_.offset);
                                    if(_loc21_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    §§pop()[§§pop()] = _loc18_;
                                    if(_loc21_)
                                    {
                                       §§push(_loc16_.§@!Y§);
                                       §§push(_loc16_.offset);
                                       if(!_loc22_)
                                       {
                                          §§push(§§pop() + 2);
                                       }
                                       §§pop()[§§pop()] = _loc19_;
                                    }
                                 }
                              }
                           }
                           break loop25;
                        }
                        §§goto(addr03dd);
                     }
                     §§goto(addr060a);
                  }
                  §§goto(addr0608);
               }
               return;
            }
            loop13:
            while(true)
            {
               §§push(_loc8_);
               addr0608:
               while(true)
               {
                  §§push(6);
                  addr060a:
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        break loop25;
                     }
                     while(true)
                     {
                        §§push(_loc8_);
                        if(!_loc22_)
                        {
                           _loc8_++;
                           if(!_loc21_)
                           {
                              break;
                           }
                        }
                        §§push(int(§§pop()));
                        break;
                     }
                     _loc9_ = §§pop();
                     _loc15_ = vertices;
                     if(_loc21_)
                     {
                        §§push(_loc15_);
                        §§push(_loc15_.§5G§);
                        if(!_loc22_)
                        {
                           §§push(_loc9_);
                           if(!_loc22_)
                           {
                              §§push(§§pop() * 4);
                           }
                           §§push(§§pop() * §§pop());
                        }
                        §§pop().offset = §§pop();
                     }
                     _loc16_ = _loc15_.getAttribute2("uv");
                     while(true)
                     {
                        if(_loc21_)
                        {
                           _loc16_.§@!Y§[_loc16_.offset] = 0;
                           if(!_loc21_)
                           {
                              break;
                           }
                        }
                        while(true)
                        {
                           §§push(_loc16_.§@!Y§);
                           §§push(_loc16_.offset);
                           if(_loc21_)
                           {
                              §§push(1);
                              if(!_loc21_)
                              {
                                 break;
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(0);
                           break;
                        }
                        §§pop()[§§pop()] = §§pop();
                        break;
                     }
                     _loc15_ = vertices;
                     if(!_loc22_)
                     {
                        §§push(_loc15_);
                        §§push(_loc15_.§5G§);
                        if(_loc21_)
                        {
                           loop29:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(_loc9_);
                                 if(_loc21_)
                                 {
                                    §§push(4);
                                    if(_loc22_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(!_loc21_)
                                    {
                                       break loop29;
                                    }
                                 }
                                 §§push(1);
                                 break;
                              }
                              §§push(§§pop() + §§pop());
                              break;
                           }
                        }
                        §§pop().offset = §§pop();
                     }
                     _loc16_ = _loc15_.getAttribute2("uv");
                     if(!_loc22_)
                     {
                        _loc16_.§@!Y§[_loc16_.offset] = 0;
                        if(_loc21_)
                        {
                           while(true)
                           {
                              §§push(_loc16_.§@!Y§);
                              §§push(_loc16_.offset);
                              if(_loc21_)
                              {
                                 §§push(1);
                                 if(!_loc21_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(1);
                              break;
                           }
                           §§pop()[§§pop()] = §§pop();
                        }
                     }
                     _loc15_ = vertices;
                     if(!_loc22_)
                     {
                        §§push(_loc15_);
                        §§push(_loc15_.§5G§);
                        if(!_loc22_)
                        {
                           loop32:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(_loc9_);
                                 if(_loc21_)
                                 {
                                    §§push(4);
                                    if(!_loc21_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(_loc22_)
                                    {
                                       break loop32;
                                    }
                                 }
                                 §§push(2);
                                 break;
                              }
                              §§push(§§pop() + §§pop());
                              break;
                           }
                        }
                        §§pop().offset = §§pop();
                     }
                     _loc16_ = _loc15_.getAttribute2("uv");
                     while(true)
                     {
                        if(_loc21_)
                        {
                           _loc16_.§@!Y§[_loc16_.offset] = 1;
                           if(_loc22_)
                           {
                              break;
                           }
                        }
                        while(true)
                        {
                           §§push(_loc16_.§@!Y§);
                           §§push(_loc16_.offset);
                           if(!_loc22_)
                           {
                              §§push(1);
                              if(_loc22_)
                              {
                                 break;
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(1);
                           break;
                        }
                        §§pop()[§§pop()] = §§pop();
                        break;
                     }
                     _loc15_ = vertices;
                     if(_loc21_)
                     {
                        §§push(_loc15_);
                        §§push(_loc15_.§5G§);
                        if(_loc21_)
                        {
                           loop36:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(_loc9_);
                                 if(_loc21_)
                                 {
                                    §§push(4);
                                    if(_loc22_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(!_loc21_)
                                    {
                                       break loop36;
                                    }
                                 }
                                 §§push(3);
                                 break;
                              }
                              §§push(§§pop() + §§pop());
                              break;
                           }
                        }
                        §§pop().offset = §§pop();
                     }
                     _loc16_ = _loc15_.getAttribute2("uv");
                     if(!_loc22_)
                     {
                        _loc16_.§@!Y§[_loc16_.offset] = 1;
                        if(!_loc22_)
                        {
                           while(true)
                           {
                              §§push(_loc16_.§@!Y§);
                              §§push(_loc16_.offset);
                              if(!_loc22_)
                              {
                                 §§push(1);
                                 if(!_loc21_)
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
                     }
                     continue loop13;
                  }
                  continue loop13;
               }
               break loop25;
            }
         }
         §§push(§§findproperty(Point3D));
         §§push(param4);
         if(!_loc22_)
         {
            §§push(-§§pop());
         }
         _loc13_ = new §§pop().Point3D(§§pop(),-param5,-param6);
         _loc14_ = new Point3D(param4,Number(param5),Number(param6));
         continue loop39;
      }
      
      public static function §[!C§(param1:§!!V§, param2:Point3D, param3:Point3D, param4:Boolean) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 2785
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
   }
}

