package §!D§
{
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   import openfl.Assets;
   
   public class §;U§
   {
      
      public static var §-6§:Boolean;
      
      public static var §^!H§:EReg;
      
      public function §;U§()
      {
      }
      
      public static function §'C§(param1:String, param2:Array = undefined) : §=!U§
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc7_:* = null as String;
         var _loc8_:* = null as String;
         var _loc9_:* = null as §0!M§;
         var _loc3_:§=!U§ = new StringMap();
         §§push(Assets.getText(param1));
         if(!_loc11_)
         {
            §§push(§§pop());
            if(_loc10_)
            {
               §§push(§§pop());
            }
         }
         var _loc4_:* = §§pop();
         §§push(null);
         if(!_loc11_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         §§push(null);
         if(_loc10_)
         {
            §§push(§§pop());
         }
         var _loc6_:* = §§pop();
         while(true)
         {
            if(_loc10_)
            {
               §§push(§;U§.§^!H§.match(_loc4_));
               if(!_loc11_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(!§§pop())
               {
                  return _loc3_;
               }
               if(_loc11_)
               {
                  break;
               }
            }
            §§push(§;U§.§^!H§.matchedRight());
            if(_loc10_)
            {
               _loc4_ = §§pop();
               if(!_loc11_)
               {
                  break;
               }
               §§goto(addr025d);
            }
            §§goto(addr00be);
         }
         §§push(§;U§.§^!H§.matched(1));
         if(!_loc11_)
         {
            §§push(§§pop());
         }
         addr00be:
         _loc5_ = §§pop();
         if(_loc10_)
         {
            loop0:
            while(_loc4_.length > 0)
            {
               §§push(§;U§.§^!H§.match(_loc4_));
               if(!_loc11_)
               {
                  §§push(Boolean(§§pop()));
               }
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop7:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(§;U§.§^!H§.§&f§());
                                 if(!_loc11_)
                                 {
                                    _loc8_ = §§pop();
                                    if(_loc10_)
                                    {
                                       §§push(§;U§.§^!H§.matched(1));
                                       if(_loc11_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop());
                                       if(!_loc11_)
                                       {
                                          _loc6_ = §§pop();
                                          if(_loc11_)
                                          {
                                             break loop3;
                                          }
                                          _loc4_ = §;U§.§^!H§.matchedRight();
                                          if(_loc8_.length <= 0)
                                          {
                                             break loop4;
                                          }
                                          §§push(_loc8_);
                                          §§push(0);
                                          if(_loc11_)
                                          {
                                             break loop7;
                                          }
                                          if(int(§§pop().charCodeAt(§§pop())) == 123)
                                          {
                                             if(!_loc11_)
                                             {
                                                addr0195:
                                                §§push(_loc8_);
                                                if(_loc10_)
                                                {
                                                   addr019d:
                                                   §§push(0);
                                                   break loop7;
                                                }
                                                break loop2;
                                             }
                                             break loop3;
                                          }
                                          §§push(null);
                                          if(!_loc10_)
                                          {
                                             break loop2;
                                          }
                                       }
                                       _loc7_ = §§pop();
                                       if(_loc10_)
                                       {
                                          break loop3;
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr0195);
                                 }
                                 §§goto(addr019d);
                              }
                           }
                           §§push(§§pop().substr(§§pop(),int(_loc8_.indexOf("\r\n"))));
                           break loop8;
                        }
                        §§push(_loc4_);
                        if(_loc10_)
                        {
                           _loc8_ = §§pop();
                           if(!_loc10_)
                           {
                              break loop3;
                           }
                           §§push("");
                           if(!_loc11_)
                           {
                              §§push(§§pop());
                           }
                           _loc4_ = §§pop();
                           §§goto(addr0170);
                        }
                        _loc7_ = §§pop();
                        if(_loc10_)
                        {
                           break loop3;
                        }
                        continue loop0;
                     }
                     §§push(_loc6_);
                     break loop2;
                  }
                  _loc9_ = new §0!M§(§;U§.§8a§(_loc8_),_loc7_);
                  loop5:
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        while(true)
                        {
                           if(_loc5_ in StringMap.§+!#§)
                           {
                              if(_loc10_)
                              {
                                 _loc3_.setReserved(_loc5_,_loc9_);
                                 if(_loc11_)
                                 {
                                    break;
                                 }
                              }
                           }
                           else
                           {
                              _loc3_.h[_loc5_] = _loc9_;
                              if(!_loc10_)
                              {
                                 break loop4;
                              }
                           }
                           §§push(param2);
                           if(_loc10_)
                           {
                              if(§§pop() != null)
                              {
                                 if(!_loc11_)
                                 {
                                    break;
                                 }
                              }
                              break loop4;
                           }
                           break loop5;
                        }
                     }
                     §§push(param2);
                     break;
                  }
                  §§pop().push(_loc5_);
                  break loop4;
               }
               _loc5_ = §§pop();
            }
         }
         addr025d:
         return _loc3_;
      }
      
      public static function §8a§(param1:String) : Vector.<String>
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc6_:* = null as String;
         var _loc7_:* = false;
         var _loc8_:* = 0;
         var _loc2_:Vector.<String> = new Vector.<String>(0,false);
         var _loc3_:Vector.<String> = _loc2_;
         §§push(0);
         if(!_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param1.split("\r\n"));
         if(!_loc9_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         if(_loc10_)
         {
            loop0:
            while(_loc4_ < int(_loc5_.length))
            {
               §§push(_loc5_[_loc4_]);
               if(!_loc9_)
               {
                  §§push(§§pop());
               }
               _loc6_ = §§pop();
               _loc4_++;
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     if(!_loc9_)
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
                                 §§push(_loc6_);
                                 if(_loc10_)
                                 {
                                    if(§§pop().length <= 1)
                                    {
                                       §§push(false);
                                       break;
                                    }
                                    §§push(_loc6_);
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(int(§§pop().charCodeAt(0)));
                                       if(!_loc9_)
                                       {
                                          §§push(int(§§pop()));
                                          if(_loc10_)
                                          {
                                             _loc8_ = §§pop();
                                             loop8:
                                             while(true)
                                             {
                                                loop9:
                                                while(true)
                                                {
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(true);
                                                      if(!_loc9_)
                                                      {
                                                         loop11:
                                                         while(true)
                                                         {
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push(false);
                                                               if(_loc10_)
                                                               {
                                                                  if(_loc8_ >= 97)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§pop();
                                                                           if(!_loc10_)
                                                                           {
                                                                              break loop5;
                                                                           }
                                                                           §§push(_loc8_);
                                                                           if(_loc9_)
                                                                           {
                                                                              break loop12;
                                                                           }
                                                                           §§push(122);
                                                                           if(!_loc10_)
                                                                           {
                                                                              break loop11;
                                                                           }
                                                                           §§push(§§pop() <= §§pop());
                                                                           if(_loc9_)
                                                                           {
                                                                              break;
                                                                           }
                                                                        }
                                                                        §§push(Boolean(§§pop()));
                                                                        break;
                                                                     }
                                                                  }
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  §§pop();
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(false);
                                                                     §§push(_loc8_);
                                                                     break;
                                                                  }
                                                                  break loop9;
                                                               }
                                                               break loop10;
                                                            }
                                                            §§push(65);
                                                            break;
                                                         }
                                                         if(§§pop() < §§pop())
                                                         {
                                                            break loop8;
                                                         }
                                                         if(!_loc10_)
                                                         {
                                                            break loop4;
                                                         }
                                                      }
                                                      §§pop();
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc8_);
                                                            if(!_loc9_)
                                                            {
                                                               §§push(90);
                                                               if(!_loc9_)
                                                               {
                                                                  §§push(§§pop() <= §§pop());
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     break loop8;
                                                                  }
                                                                  §§goto(addr016e);
                                                               }
                                                               §§goto(addr014f);
                                                            }
                                                            §§goto(addr0146);
                                                         }
                                                         §§goto(addr0175);
                                                      }
                                                   }
                                                   §§goto(addr012d);
                                                }
                                             }
                                             §§push(Boolean(§§pop()));
                                             if(!_loc9_)
                                             {
                                                addr012d:
                                                §§push(!§§pop());
                                                if(_loc9_)
                                                {
                                                   break loop6;
                                                }
                                                if(§§pop())
                                                {
                                                   if(_loc10_)
                                                   {
                                                      §§push(_loc8_);
                                                      if(_loc10_)
                                                      {
                                                         addr0146:
                                                         §§push(48);
                                                         if(!_loc9_)
                                                         {
                                                            addr014f:
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               break loop9;
                                                            }
                                                            §§push(false);
                                                            if(!_loc9_)
                                                            {
                                                               addr016e:
                                                               _loc7_ = Boolean(§§pop());
                                                               addr016d:
                                                               break loop3;
                                                            }
                                                            addr0175:
                                                            §§push(Boolean(§§pop()));
                                                            if(_loc10_)
                                                            {
                                                               _loc7_ = §§pop();
                                                               break loop3;
                                                            }
                                                            break loop2;
                                                         }
                                                         break;
                                                      }
                                                      §§push(57);
                                                      break;
                                                   }
                                                   break loop3;
                                                }
                                                §§push(true);
                                                §§goto(addr0175);
                                             }
                                             §§goto(addr016d);
                                          }
                                       }
                                       break loop14;
                                    }
                                    §§push(§§pop() <= §§pop());
                                    break;
                                 }
                                 §§push(Boolean(§§pop()));
                                 if(_loc10_)
                                 {
                                    _loc7_ = §§pop();
                                    break loop3;
                                 }
                                 break loop2;
                              }
                              §§push(Boolean(§§pop()));
                              if(_loc10_)
                              {
                                 break;
                              }
                              break loop2;
                           }
                           _loc7_ = §§pop();
                           if(!_loc9_)
                           {
                              break;
                           }
                           break loop1;
                        }
                     }
                     break loop3;
                  }
                  if(§§pop())
                  {
                     break;
                  }
                  continue loop0;
               }
               _loc3_.push(_loc6_);
            }
         }
         return _loc3_;
      }
   }
}

