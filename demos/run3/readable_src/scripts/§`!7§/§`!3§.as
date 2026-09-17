package §`!7§
{
   import §%!Q§.§>K§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import world3d.Entity3D;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.§2N§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.save.§]k§;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   
   public class §`!3§
   {
      
      public function §`!3§()
      {
      }
      
      public static function §]!+§(param1:String, param2:String, param3:String) : §=!U§
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc7_:* = 0;
         var _loc9_:* = null as String;
         var _loc10_:* = null as String;
         var _loc11_:* = null as String;
         var _loc4_:§=!U§ = new StringMap();
         if(!_loc13_)
         {
            while(true)
            {
               §§push(param1);
               if(_loc12_)
               {
                  §§push(null);
                  if(_loc13_)
                  {
                     break;
                  }
                  if(§§pop() == §§pop())
                  {
                     §§goto(addr0051);
                  }
                  §§push(param1);
               }
               §§push(param2);
               break;
            }
            §§push(§§pop().split(§§pop()));
            if(!_loc13_)
            {
               §§push(§§pop());
            }
            var _loc5_:* = §§pop();
            var _loc6_:int = int(param3.length);
            §§push(0);
            if(_loc12_)
            {
               §§push(int(§§pop()));
            }
            var _loc8_:* = §§pop();
            if(_loc12_)
            {
               while(_loc8_ < int(_loc5_.length))
               {
                  §§push(_loc5_[_loc8_]);
                  if(_loc12_)
                  {
                     §§push(§§pop());
                  }
                  _loc9_ = §§pop();
                  if(!_loc13_)
                  {
                     _loc8_++;
                  }
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        §§push(_loc9_);
                        if(!_loc13_)
                        {
                           while(true)
                           {
                              §§push(int(§§pop().indexOf(param3)));
                              if(_loc12_)
                              {
                                 §§push(int(§§pop()));
                                 if(!_loc12_)
                                 {
                                    break;
                                 }
                              }
                              _loc7_ = §§pop();
                              if(!_loc13_)
                              {
                                 §§push(_loc7_);
                                 break;
                              }
                              break loop3;
                           }
                           if(§§pop() > 0)
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(_loc9_);
                                 §§push(0);
                                 if(_loc12_)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc7_);
                                       if(!_loc13_)
                                       {
                                          §§push(§§pop().substr(§§pop(),§§pop()));
                                          if(_loc13_)
                                          {
                                             break loop5;
                                          }
                                          _loc10_ = §§pop();
                                          §§push(_loc9_);
                                          if(_loc13_)
                                          {
                                             break loop2;
                                          }
                                          §§push(_loc7_);
                                          if(!_loc12_)
                                          {
                                             break;
                                          }
                                          §§push(_loc6_);
                                       }
                                       §§push(§§pop() + §§pop());
                                       break;
                                    }
                                 }
                                 §§push(§§pop().substr(§§pop()));
                                 if(_loc12_)
                                 {
                                    break;
                                 }
                                 break loop2;
                              }
                           }
                           else
                           {
                              §§goto(addr0170);
                              §§push(_loc9_ in StringMap.§+!#§);
                           }
                        }
                        _loc11_ = §§pop();
                        break;
                     }
                     §§push(_loc10_);
                     break;
                  }
                  §§push(§§pop() in StringMap.§+!#§);
                  if(_loc12_)
                  {
                     if(!§§pop())
                     {
                        _loc4_.h[_loc10_] = _loc11_;
                        continue;
                     }
                     if(_loc12_)
                     {
                        _loc4_.setReserved(_loc10_,_loc11_);
                        if(_loc13_)
                        {
                        }
                        continue;
                     }
                  }
                  else
                  {
                     addr0170:
                     if(!§§pop())
                     {
                        _loc4_.h[_loc9_] = null;
                        continue;
                     }
                     if(!_loc12_)
                     {
                        continue;
                     }
                  }
                  _loc4_.setReserved(_loc9_,null);
               }
            }
            return _loc4_;
         }
         addr0051:
         return _loc4_;
      }
      
      public static function §#&§(param1:String, param2:String, param3:String) : §=!U§
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc6_:* = 0;
         var _loc7_:* = null as String;
         var _loc8_:* = null as String;
         var _loc10_:* = null as String;
         var _loc11_:* = null as String;
         var _loc4_:§=!U§ = new StringMap();
         if(!_loc12_)
         {
            while(true)
            {
               §§push(param1);
               if(_loc13_)
               {
                  §§push(null);
                  if(_loc12_)
                  {
                     break;
                  }
                  if(§§pop() == §§pop())
                  {
                     §§goto(addr0057);
                  }
                  §§push(param1);
               }
               §§push(param2);
               break;
            }
            §§push(§§pop().split(§§pop()));
            if(!_loc12_)
            {
               §§push(§§pop());
            }
            var _loc5_:* = §§pop();
            §§push(0);
            if(!_loc12_)
            {
               §§push(int(§§pop()));
            }
            var _loc9_:* = §§pop();
            if(_loc13_)
            {
               loop0:
               while(_loc9_ < int(_loc5_.length))
               {
                  loop2:
                  while(true)
                  {
                     §§push(_loc5_[_loc9_]);
                     if(_loc13_)
                     {
                        §§push(§§pop());
                        if(_loc12_)
                        {
                           break;
                        }
                     }
                     _loc10_ = §§pop();
                     _loc9_++;
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
                                    §§push(_loc10_);
                                    §§push(param3);
                                    if(_loc13_)
                                    {
                                       while(true)
                                       {
                                          §§push(int(§§pop().indexOf(§§pop())));
                                          if(_loc13_)
                                          {
                                             §§push(int(§§pop()));
                                             if(!_loc13_)
                                             {
                                                break;
                                             }
                                          }
                                          _loc6_ = §§pop();
                                          §§push(_loc6_);
                                          break;
                                       }
                                       while(true)
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             loop16:
                                             while(true)
                                             {
                                                if(§§pop() > 0)
                                                {
                                                   loop18:
                                                   while(true)
                                                   {
                                                      loop19:
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            if(!_loc12_)
                                                            {
                                                               §§push(_loc10_);
                                                               §§push(0);
                                                               if(!_loc13_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(_loc6_);
                                                               if(!_loc13_)
                                                               {
                                                                  break loop19;
                                                               }
                                                               §§push(§§pop().substr(§§pop(),§§pop()));
                                                               if(_loc12_)
                                                               {
                                                                  break loop16;
                                                               }
                                                               §§push(§§pop());
                                                               if(!_loc13_)
                                                               {
                                                                  break loop18;
                                                               }
                                                               _loc7_ = §§pop();
                                                            }
                                                            §§push(_loc10_);
                                                            if(!_loc12_)
                                                            {
                                                               §§push(_loc6_);
                                                               if(!_loc12_)
                                                               {
                                                                  §§push(1);
                                                                  break loop19;
                                                               }
                                                               break;
                                                            }
                                                            break loop10;
                                                         }
                                                         §§push(§§pop().substr(§§pop()));
                                                         if(!_loc12_)
                                                         {
                                                            §§push(§§pop());
                                                         }
                                                         _loc8_ = §§pop();
                                                         if(!_loc12_)
                                                         {
                                                            continue loop11;
                                                         }
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      break loop20;
                                                   }
                                                   §§goto(addr025a);
                                                }
                                                else
                                                {
                                                   §§push(_loc10_);
                                                   if(!_loc13_)
                                                   {
                                                      break loop4;
                                                   }
                                                   _loc7_ = §§pop();
                                                }
                                                §§push(null);
                                                break;
                                             }
                                             _loc8_ = §§pop();
                                             continue loop11;
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop() in StringMap.§+!#§);
                                             if(_loc13_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc13_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push(_loc4_.getReserved(_loc7_));
                                                }
                                                else
                                                {
                                                   §§push(_loc4_.h[_loc7_]);
                                                   if(!_loc13_)
                                                   {
                                                      break loop2;
                                                   }
                                                }
                                                §§push(null);
                                                if(!_loc13_)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop());
                                                if(!_loc13_)
                                                {
                                                   break loop13;
                                                }
                                                §§goto(addr01e3);
                                                §§push(§§pop() == §§pop());
                                             }
                                             §§goto(addr0251);
                                          }
                                          §§goto(addr025b);
                                       }
                                       loop11:
                                       while(true)
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             §§push(true);
                                             §§push(_loc7_);
                                             if(!_loc12_)
                                             {
                                                if(§§pop() in StringMap.§+!#§)
                                                {
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(Boolean(_loc4_.existsReserved(_loc7_)));
                                                         if(!_loc12_)
                                                         {
                                                            break loop12;
                                                         }
                                                         §§goto(addr024d);
                                                      }
                                                      §§goto(addr025b);
                                                   }
                                                   §§push(§§pop() == §§pop());
                                                   if(!_loc12_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(!_loc12_)
                                                      {
                                                         break loop7;
                                                      }
                                                   }
                                                   §§goto(addr02c3);
                                                }
                                                else
                                                {
                                                   §§push(_loc7_);
                                                   if(_loc12_)
                                                   {
                                                      break loop11;
                                                   }
                                                }
                                             }
                                             §§push(§§pop() in _loc4_.h);
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             if(!_loc12_)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(_loc13_)
                                                   {
                                                      §§pop();
                                                      §§push(_loc7_);
                                                      if(!_loc12_)
                                                      {
                                                         break loop10;
                                                      }
                                                      break loop4;
                                                   }
                                                   break loop5;
                                                }
                                                addr01e3:
                                                if(§§pop())
                                                {
                                                   if(_loc13_)
                                                   {
                                                      if(!(_loc7_ in StringMap.§+!#§))
                                                      {
                                                         _loc4_.h[_loc7_] = _loc8_;
                                                         if(_loc12_)
                                                         {
                                                            break loop6;
                                                         }
                                                         continue loop0;
                                                      }
                                                      if(_loc12_)
                                                      {
                                                         break loop6;
                                                      }
                                                   }
                                                   _loc4_.setReserved(_loc7_,_loc8_);
                                                   continue loop0;
                                                }
                                                §§push(false);
                                                §§push(_loc7_);
                                                if(_loc12_)
                                                {
                                                   break loop11;
                                                }
                                                if(!(§§pop() in StringMap.§+!#§))
                                                {
                                                   §§push(_loc7_);
                                                   break loop11;
                                                }
                                                if(!_loc13_)
                                                {
                                                   break loop7;
                                                }
                                                §§push(Boolean(_loc4_.existsReserved(_loc7_)));
                                             }
                                             §§goto(addr024d);
                                          }
                                          §§goto(addr025b);
                                       }
                                       addr024d:
                                       if(!(§§pop() in _loc4_.h))
                                       {
                                          break;
                                       }
                                       addr0251:
                                       §§pop();
                                       if(_loc12_)
                                       {
                                          break loop6;
                                       }
                                       addr025b:
                                       addr025a:
                                       §§push(_loc8_);
                                       §§push(null);
                                       if(_loc12_)
                                       {
                                          break loop3;
                                       }
                                    }
                                    break loop13;
                                 }
                                 §§push(!§§pop());
                                 break loop5;
                              }
                              §§push(_loc4_.getReserved(_loc7_));
                              break loop2;
                           }
                           if(§§pop())
                           {
                              if(_loc7_ in StringMap.§+!#§)
                              {
                                 break loop6;
                              }
                              §§push(_loc4_.h[_loc7_]);
                              break loop2;
                           }
                           continue loop0;
                        }
                        _loc11_ = §§pop();
                        addr02c3:
                        if(_loc7_ in StringMap.§+!#§)
                        {
                           _loc4_.setReserved(_loc7_,_loc11_);
                           if(_loc13_)
                           {
                           }
                        }
                        else
                        {
                           _loc4_.h[_loc7_] = _loc11_;
                        }
                        continue loop0;
                     }
                     addr02a6:
                     §§push(§§pop() + §§pop() + _loc8_);
                     break loop4;
                  }
                  §§push(param2);
                  if(_loc13_)
                  {
                     break loop3;
                  }
                  §§goto(addr02a6);
               }
            }
            return _loc4_;
         }
         addr0057:
         return _loc4_;
      }
      
      public static function §=V§(param1:String, param2:String, param3:String, param4:String, param5:Function) : §=!U§
      {
         §§push(false);
         var _loc16_:Boolean = true;
         var _loc17_:* = §§pop();
         var _loc8_:* = 0;
         var _loc9_:* = null as String;
         var _loc10_:* = null as String;
         var _loc12_:* = false;
         var _loc14_:* = null as String;
         var _loc15_:* = null as String;
         var _loc6_:§=!U§ = new StringMap();
         if(!_loc17_)
         {
            while(true)
            {
               §§push(param1);
               if(_loc16_)
               {
                  §§push(null);
                  if(!_loc16_)
                  {
                     break;
                  }
                  if(§§pop() == §§pop())
                  {
                     §§goto(addr005a);
                  }
                  §§push(param1);
               }
               §§push(param2);
               break;
            }
            §§push(§§pop().split(§§pop()));
            if(!_loc17_)
            {
               §§push(§§pop());
            }
            var _loc7_:* = §§pop();
            loop4:
            while(true)
            {
               loop5:
               while(true)
               {
                  §§push(§§findproperty(EReg));
                  §§push("(?:^|\\");
                  if(_loc16_)
                  {
                     §§push(param2);
                     if(_loc16_)
                     {
                        §§push(§§pop() + §§pop());
                        §§push("|\\");
                        if(!_loc16_)
                        {
                           break;
                        }
                        §§push(§§pop() + §§pop());
                        §§push(param4);
                        if(_loc17_)
                        {
                           break loop4;
                        }
                     }
                     §§push(§§pop() + §§pop());
                  }
                  loop6:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§§pop());
                        §§push(")(if|unless)");
                        if(!_loc17_)
                        {
                           §§push(§§pop() + §§pop());
                           §§push(param3);
                           if(!_loc16_)
                           {
                              break;
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc16_)
                           {
                              break loop6;
                           }
                           §§push("([^");
                           if(_loc17_)
                           {
                              break loop5;
                           }
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc16_)
                        {
                           §§push(§§pop());
                           if(!_loc17_)
                           {
                              §§push(param2);
                              if(!_loc17_)
                              {
                                 break;
                              }
                              break loop4;
                           }
                        }
                        §§goto(addr00e5);
                     }
                     §§push(§§pop() + §§pop());
                     §§push(param4);
                     break loop4;
                  }
                  §§goto(addr00f8);
               }
               var _loc11_:EReg = new §§pop().EReg(§§pop(),§§pop());
               §§push(0);
               if(!_loc17_)
               {
                  §§push(int(§§pop()));
               }
               var _loc13_:* = §§pop();
               if(!_loc17_)
               {
                  loop0:
                  while(_loc13_ < int(_loc7_.length))
                  {
                     loop8:
                     while(true)
                     {
                        §§push(_loc7_[_loc13_]);
                        if(!_loc17_)
                        {
                           §§push(§§pop());
                           if(!_loc16_)
                           {
                              break;
                           }
                        }
                        _loc14_ = §§pop();
                        _loc13_++;
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
                                    loop20:
                                    while(true)
                                    {
                                       loop21:
                                       while(true)
                                       {
                                          loop22:
                                          while(true)
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
                                                      loop26:
                                                      while(true)
                                                      {
                                                         loop27:
                                                         while(true)
                                                         {
                                                            loop28:
                                                            while(true)
                                                            {
                                                               loop29:
                                                               while(true)
                                                               {
                                                                  loop30:
                                                                  while(true)
                                                                  {
                                                                     loop31:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc14_);
                                                                        §§push(param3);
                                                                        if(_loc16_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(int(§§pop().indexOf(§§pop())));
                                                                              if(!_loc17_)
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                              }
                                                                              _loc8_ = §§pop();
                                                                              if(_loc16_)
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 break;
                                                                              }
                                                                              break loop30;
                                                                           }
                                                                           loop33:
                                                                           while(true)
                                                                           {
                                                                              loop34:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() > 0)
                                                                                 {
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       §§push(_loc14_);
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          loop36:
                                                                                          while(true)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(0);
                                                                                                if(_loc16_)
                                                                                                {
                                                                                                   §§push(_loc8_);
                                                                                                   if(!_loc16_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(§§pop().substr(§§pop(),§§pop()));
                                                                                                   if(!_loc16_)
                                                                                                   {
                                                                                                      addr01c8:
                                                                                                      _loc9_ = §§pop();
                                                                                                      if(!_loc17_)
                                                                                                      {
                                                                                                         §§push(null);
                                                                                                         if(!_loc17_)
                                                                                                         {
                                                                                                            _loc10_ = §§pop();
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               break loop34;
                                                                                                            }
                                                                                                            break loop25;
                                                                                                         }
                                                                                                         break loop33;
                                                                                                      }
                                                                                                      break loop31;
                                                                                                   }
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      break loop27;
                                                                                                   }
                                                                                                   _loc9_ = §§pop();
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   §§push(_loc14_);
                                                                                                   if(!_loc16_)
                                                                                                   {
                                                                                                      break loop26;
                                                                                                   }
                                                                                                   §§push(_loc8_);
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      break loop36;
                                                                                                   }
                                                                                                }
                                                                                                §§push(1);
                                                                                                break;
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             break;
                                                                                          }
                                                                                          _loc10_ = §§pop().substr(§§pop());
                                                                                          break;
                                                                                       }
                                                                                       break loop28;
                                                                                    }
                                                                                    break loop29;
                                                                                 }
                                                                                 §§push(_loc14_);
                                                                                 §§goto(addr01c8);
                                                                              }
                                                                              §§push(true);
                                                                              if(!_loc16_)
                                                                              {
                                                                                 break loop12;
                                                                              }
                                                                              §§push(Boolean(§§pop()));
                                                                              if(_loc16_)
                                                                              {
                                                                                 _loc12_ = §§pop();
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    §§push(_loc10_);
                                                                                    break;
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                              continue loop13;
                                                                           }
                                                                           §§push(null);
                                                                           if(_loc17_)
                                                                           {
                                                                              break loop24;
                                                                           }
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              break loop23;
                                                                           }
                                                                           if(!_loc16_)
                                                                           {
                                                                              break loop22;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(false);
                                                                              if(!_loc16_)
                                                                              {
                                                                                 break loop21;
                                                                              }
                                                                              if(_loc12_)
                                                                              {
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    break loop20;
                                                                                 }
                                                                                 §§pop();
                                                                                 §§push(_loc11_.match(_loc10_));
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       break loop12;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              if(!§§pop())
                                                                              {
                                                                                 break loop11;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(param5(_loc11_.matched(2))));
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                 }
                                                                                 _loc12_ = §§pop();
                                                                                 addr025c:
                                                                                 if(_loc11_.matched(1) == "unless")
                                                                                 {
                                                                                    §§push(_loc12_);
                                                                                    break;
                                                                                 }
                                                                                 §§push(_loc11_.§&f§());
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    break loop10;
                                                                                 }
                                                                                 §§push(_loc11_.matchedRight());
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    break loop9;
                                                                                 }
                                                                              }
                                                                              _loc12_ = !§§pop();
                                                                              §§goto(addr025c);
                                                                           }
                                                                           break loop21;
                                                                           addr028c:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!_loc16_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           _loc10_ = §§pop() + §§pop();
                                                                           if(_loc17_)
                                                                           {
                                                                              break loop30;
                                                                           }
                                                                           §§goto(addr028c);
                                                                        }
                                                                        §§goto(addr03ce);
                                                                     }
                                                                     §§goto(addr03e3);
                                                                  }
                                                                  §§goto(addr03c2);
                                                               }
                                                               §§goto(addr044c);
                                                            }
                                                            §§goto(addr03ec);
                                                         }
                                                         §§goto(addr042c);
                                                      }
                                                      §§goto(addr031a);
                                                   }
                                                   §§goto(addr0312);
                                                }
                                                §§push(§§pop());
                                                if(_loc16_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   break loop21;
                                                }
                                                break loop17;
                                             }
                                             §§goto(addr02c3);
                                          }
                                          §§goto(addr0441);
                                       }
                                       §§goto(addr0354);
                                    }
                                    §§goto(addr02e4);
                                 }
                                 §§push(_loc9_);
                                 if(!_loc16_)
                                 {
                                    break loop13;
                                 }
                                 if(!(§§pop() in StringMap.§+!#§))
                                 {
                                    §§push(_loc9_);
                                    break loop13;
                                 }
                                 §§push(Boolean(_loc6_.existsReserved(_loc9_)));
                                 continue loop15;
                              }
                              if(_loc17_)
                              {
                                 continue loop0;
                              }
                              addr02c3:
                              if(!_loc12_)
                              {
                                 continue loop0;
                              }
                              loop13:
                              while(true)
                              {
                                 loop14:
                                 while(true)
                                 {
                                    §§push(true);
                                    §§push(_loc9_);
                                    if(_loc16_)
                                    {
                                       if(§§pop() in StringMap.§+!#§)
                                       {
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                if(!_loc17_)
                                                {
                                                   addr02e4:
                                                   §§push(Boolean(_loc6_.existsReserved(_loc9_)));
                                                   break loop14;
                                                }
                                                §§goto(addr03df);
                                             }
                                             §§goto(addr044c);
                                          }
                                          §§goto(addr0427);
                                       }
                                       else
                                       {
                                          §§push(_loc9_);
                                          if(!_loc16_)
                                          {
                                             break loop13;
                                          }
                                       }
                                    }
                                    §§push(§§pop() in _loc6_.h);
                                    break;
                                 }
                                 §§push(!§§pop());
                                 if(!_loc16_)
                                 {
                                    continue loop15;
                                 }
                                 if(!§§pop())
                                 {
                                    §§pop();
                                    if(_loc16_)
                                    {
                                       addr0312:
                                       §§push(_loc9_);
                                       if(!_loc17_)
                                       {
                                          addr031a:
                                          if(§§pop() in StringMap.§+!#§)
                                          {
                                             §§push(_loc6_.getReserved(_loc9_));
                                             break loop8;
                                          }
                                          while(true)
                                          {
                                             §§push(_loc6_.h[_loc9_]);
                                             if(!_loc17_)
                                             {
                                                break loop8;
                                             }
                                             §§goto(addr041a);
                                          }
                                          §§goto(addr042c);
                                       }
                                       addr035a:
                                       §§push(§§pop() in StringMap.§+!#§);
                                       if(!_loc16_)
                                       {
                                          break loop12;
                                       }
                                       if(!§§pop())
                                       {
                                          _loc6_.h[_loc9_] = _loc10_;
                                          continue loop0;
                                       }
                                       if(!_loc17_)
                                       {
                                          _loc6_.setReserved(_loc9_,_loc10_);
                                          if(_loc17_)
                                          {
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr03c2);
                                    }
                                    §§goto(addr044c);
                                 }
                                 addr0354:
                                 if(!§§pop())
                                 {
                                    §§push(false);
                                    break loop12;
                                 }
                                 §§goto(addr035a);
                                 §§push(_loc9_);
                              }
                              loop15:
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(§§pop() in _loc6_.h)
                                    {
                                       if(_loc16_)
                                       {
                                          §§pop();
                                          addr03c2:
                                          addr03c5:
                                          §§push(_loc10_);
                                          §§push(null);
                                          if(!_loc16_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop() == §§pop());
                                       }
                                       §§push(Boolean(§§pop()));
                                       if(_loc17_)
                                       {
                                          break loop15;
                                       }
                                    }
                                    §§push(!§§pop());
                                    if(_loc17_)
                                    {
                                       break loop15;
                                    }
                                    if(!§§pop())
                                    {
                                       continue loop0;
                                    }
                                    §§push(_loc9_);
                                    if(_loc16_)
                                    {
                                       addr03ec:
                                       if(§§pop() in StringMap.§+!#§)
                                       {
                                          if(!_loc16_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(_loc6_.getReserved(_loc9_));
                                          if(_loc17_)
                                          {
                                             break loop10;
                                          }
                                       }
                                       else
                                       {
                                          §§push(_loc6_.h[_loc9_]);
                                       }
                                       addr041a:
                                       §§push(param2);
                                       break loop9;
                                    }
                                    §§goto(addr042c);
                                 }
                                 §§goto(addr0427);
                              }
                              §§goto(addr0448);
                           }
                           addr0448:
                           if(§§pop() in StringMap.§+!#§)
                           {
                              addr044c:
                              _loc6_.setReserved(_loc9_,_loc15_);
                           }
                           else
                           {
                              _loc6_.h[_loc9_] = _loc15_;
                           }
                           continue loop0;
                        }
                        addr042c:
                        §§push(§§pop() + §§pop());
                        if(_loc16_)
                        {
                           addr0427:
                           §§push(§§pop() + _loc10_);
                        }
                        _loc15_ = §§pop();
                        if(!_loc17_)
                        {
                           addr0441:
                           §§push(_loc9_);
                           break loop10;
                        }
                        continue loop0;
                     }
                     §§push(null);
                     if(!_loc17_)
                     {
                        break loop24;
                     }
                     §§goto(addr03c5);
                  }
               }
               return _loc6_;
            }
            addr00e5:
            §§push(§§pop() + §§pop());
            if(_loc16_)
            {
               §§push("]+)");
               if(!_loc16_)
               {
                  break loop5;
               }
               §§push(§§pop() + §§pop());
            }
            addr00f8:
            §§push(§§pop());
            §§push("");
            break loop5;
         }
         addr005a:
         return _loc6_;
      }
      
      public static function § !`§(param1:String, param2:int) : int
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = null;
         if(!_loc5_)
         {
            if(param1 != null)
            {
               _loc3_ = Std.parseInt(param1);
               if(!_loc5_)
               {
                  if(_loc3_ == null)
                  {
                     return param2;
                  }
               }
               return _loc3_;
            }
         }
         return param2;
      }
      
      public static function § M§(param1:String, param2:Number) : Number
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = NaN;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc4_)
               {
                  if(param1 == null)
                  {
                     if(_loc5_)
                     {
                        §§push(param2);
                        if(!_loc4_)
                        {
                           return §§pop();
                        }
                        break;
                     }
                  }
                  else
                  {
                     §§push(Std.parseFloat(param1));
                     if(_loc4_)
                     {
                        break;
                     }
                     §§push(Number(§§pop()));
                     if(_loc5_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc5_)
                        {
                           break;
                        }
                     }
                     _loc3_ = §§pop();
                     if(_loc5_)
                     {
                        §§push(Boolean(Math.isNaN(_loc3_)));
                        if(!_loc4_)
                        {
                           §§push(!§§pop());
                        }
                        if(!§§pop())
                        {
                           §§push(param2);
                           break loop0;
                        }
                     }
                  }
               }
               §§push(_loc3_);
               if(_loc5_)
               {
                  break;
               }
               break loop0;
            }
            return §§pop();
         }
         return §§pop();
      }
   }
}

