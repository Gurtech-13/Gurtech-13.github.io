package game
{
   import §-!!§.§+"§;
   import layout3d.PositionData3D;
   import §>T§.§[C§;
   import com.player03.run3.Music;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.menu.§ L§;
   import flash.events.MouseEvent;
   import flash.text.TextFormat;
   
   public class §`z§ extends §+"§
   {
      
      public var §&!U§:Function;
      
      public var §6"§:Vector.<String>;
      
      public var §[E§:int;
      
      public function §`z§(param1:Function, param2:int = 0)
      {
         §§push(false);
         var _loc16_:Boolean = true;
         var _loc17_:* = §§pop();
         var _loc4_:* = null as StringBuf;
         var _loc5_:int = 0;
         var _loc6_:* = 0;
         var _loc7_:* = null as String;
         var _loc10_:* = null as String;
         var _loc11_:* = 0;
         var _loc12_:int = 0;
         var _loc13_:* = 0;
         var _loc14_:* = null as String;
         while(true)
         {
            if(!_loc17_)
            {
               §§push(this);
               §§push(§6!2§);
               if(_loc16_)
               {
                  §§push(§§pop());
               }
               §§push(16777215);
               §§push(38);
               §§push("Music: ");
               if(!_loc17_)
               {
                  §§push(§§pop() + "Wormhole to Somewhere ");
                  if(!_loc17_)
                  {
                     §§push(§§pop());
                  }
               }
               §§pop().super(§§pop(),§§pop(),§§pop(),§§pop());
               if(_loc16_)
               {
                  §&!U§ = param1;
                  if(!_loc16_)
                  {
                     break;
                  }
               }
            }
            §[E§ = param2;
            break;
         }
         var _loc3_:Vector.<String> = new Vector.<String>(0,false);
         if(!_loc17_)
         {
            §6"§ = _loc3_;
         }
         §§push(0);
         if(_loc16_)
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         var _loc9_:Vector.<String> = Music.§,!0§;
         if(_loc16_)
         {
            loop0:
            while(_loc8_ < int(_loc9_.length))
            {
               while(true)
               {
                  §§push(_loc9_[_loc8_]);
                  if(!_loc17_)
                  {
                     §§push(§§pop());
                     if(!_loc16_)
                     {
                        break;
                     }
                  }
                  §§push(§§pop());
                  break;
               }
               _loc10_ = §§pop();
               if(_loc16_)
               {
                  _loc8_++;
               }
               _loc4_ = new StringBuf();
               _loc6_ = 0;
               loop26:
               while(true)
               {
                  §§push(1);
                  if(!_loc17_)
                  {
                     _loc11_ = §§pop();
                     §§push(_loc10_);
                     if(!_loc17_)
                     {
                        _loc12_ = int(§§pop().length);
                        loop1:
                        while(true)
                        {
                           §§push(_loc11_);
                           loop2:
                           while(true)
                           {
                              §§push(_loc12_);
                              loop3:
                              while(true)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    break loop26;
                                 }
                                 §§push(_loc11_++);
                                 if(!_loc16_)
                                 {
                                    break;
                                 }
                                 _loc13_ = §§pop();
                                 loop27:
                                 while(true)
                                 {
                                    loop28:
                                    while(true)
                                    {
                                       if(!_loc17_)
                                       {
                                          §§push(_loc10_);
                                          §§push(_loc13_);
                                          if(!_loc16_)
                                          {
                                             break;
                                          }
                                          §§push(int(§§pop().charCodeAt(§§pop())));
                                          while(true)
                                          {
                                             _loc5_ = §§pop();
                                             if(!_loc16_)
                                             {
                                                break loop27;
                                             }
                                          }
                                          continue loop0;
                                       }
                                       while(true)
                                       {
                                          loop33:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(true);
                                                if(!_loc17_)
                                                {
                                                   §§push(false);
                                                   if(!_loc17_)
                                                   {
                                                      if(_loc5_ >= 65)
                                                      {
                                                         §§pop();
                                                         §§push(_loc5_);
                                                         if(_loc17_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(90);
                                                         if(!_loc16_)
                                                         {
                                                            continue loop12;
                                                         }
                                                         §§push(§§pop() <= §§pop());
                                                         if(_loc16_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         §§pop();
                                                         §§push(_loc13_);
                                                         if(_loc17_)
                                                         {
                                                            break loop33;
                                                         }
                                                         §§push(1);
                                                         if(_loc17_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc16_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         §§push(§§pop() == _loc10_.length);
                                                         if(!_loc16_)
                                                         {
                                                            §§goto(addr0254);
                                                         }
                                                      }
                                                      addr01b4:
                                                      if(!§§pop())
                                                      {
                                                         continue loop1;
                                                      }
                                                      if(!_loc17_)
                                                      {
                                                         §§push(_loc6_);
                                                         if(!_loc17_)
                                                         {
                                                            break loop33;
                                                         }
                                                         §§goto(addr0314);
                                                      }
                                                      §§goto(addr02a0);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr024a);
                                                   }
                                                }
                                                §§goto(addr01b4);
                                             }
                                             §§goto(addr023a);
                                          }
                                          §§push(0);
                                          if(_loc16_)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                §§push(_loc4_);
                                                §§push(_loc4_.b + " ");
                                                if(!_loc17_)
                                                {
                                                   §§push(§§pop());
                                                }
                                                §§pop().b = §§pop();
                                             }
                                             §§push(_loc10_);
                                             §§push(_loc6_);
                                             if(_loc16_)
                                             {
                                                §§push(_loc13_);
                                                if(_loc16_)
                                                {
                                                   §§push(§§pop() + 1);
                                                   if(_loc16_)
                                                   {
                                                      if(§§pop() == _loc10_.length)
                                                      {
                                                         break loop28;
                                                      }
                                                      §§push(_loc13_);
                                                   }
                                                }
                                                §§push(§§pop());
                                                while(true)
                                                {
                                                   §§push(§§pop().substring(§§pop(),§§pop()));
                                                   if(!_loc17_)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc16_)
                                                      {
                                                         _loc7_ = §§pop();
                                                         if(_loc16_)
                                                         {
                                                            break loop27;
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr026f);
                                                   }
                                                   §§goto(addr029e);
                                                }
                                                break;
                                                addr0219:
                                             }
                                             break loop28;
                                          }
                                          continue loop3;
                                       }
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       §§goto(addr0219);
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(false);
                                    §§push(_loc6_);
                                    addr023a:
                                    while(true)
                                    {
                                       §§push(0);
                                       while(true)
                                       {
                                          loop29:
                                          while(true)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                if(_loc16_)
                                                {
                                                   §§pop();
                                                   §§push(true);
                                                   §§push(true);
                                                   while(true)
                                                   {
                                                      if(_loc7_ != "To")
                                                      {
                                                         §§pop();
                                                         while(true)
                                                         {
                                                            §§push(_loc7_ == "The");
                                                            if(_loc16_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                         }
                                                         addr0254:
                                                      }
                                                      while(true)
                                                      {
                                                         loop30:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               §§pop();
                                                               §§push(_loc7_);
                                                               if(_loc17_)
                                                               {
                                                                  break loop29;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() == "Of");
                                                                  if(!_loc16_)
                                                                  {
                                                                     break loop30;
                                                                  }
                                                                  §§push(Boolean(§§pop()));
                                                                  if(_loc17_)
                                                                  {
                                                                     break loop30;
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               break loop30;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr024a:
                                                }
                                             }
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop31:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         §§push(_loc4_.b);
                                                         if(_loc16_)
                                                         {
                                                            if(_loc7_ != null)
                                                            {
                                                               §§push("");
                                                               if(!_loc17_)
                                                               {
                                                                  §§push(§§pop() + _loc7_);
                                                                  if(!_loc17_)
                                                                  {
                                                                     break loop31;
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                         }
                                                         §§push("null");
                                                         if(_loc16_)
                                                         {
                                                            break;
                                                         }
                                                         break loop31;
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc17_)
                                                      {
                                                         §§push(§§pop());
                                                      }
                                                      §§pop().b = §§pop();
                                                      while(true)
                                                      {
                                                         §§push(_loc13_);
                                                         addr0314:
                                                         while(true)
                                                         {
                                                            §§push(int(§§pop()));
                                                            break loop3;
                                                         }
                                                      }
                                                      addr0312:
                                                   }
                                                   §§push(§§pop());
                                                   break loop32;
                                                }
                                                if(_loc16_)
                                                {
                                                   §§push(_loc7_);
                                                   break loop29;
                                                }
                                                continue loop1;
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop().toLowerCase());
                                             if(!_loc17_)
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                }
                                                addr029c:
                                             }
                                             addr029e:
                                             while(true)
                                             {
                                                _loc14_ = §§pop();
                                                addr02a0:
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   §§push(_loc4_.b);
                                                   if(_loc16_)
                                                   {
                                                      §§push(Std.string(_loc14_));
                                                      if(!_loc17_)
                                                      {
                                                         §§push(§§pop());
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§pop().b = §§pop();
                                                   if(!_loc16_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§goto(addr0312);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              break;
                           }
                           while(true)
                           {
                              _loc6_ = §§pop();
                              break;
                           }
                        }
                        break;
                     }
                     §§goto(addr029c);
                  }
                  §§goto(addr0140);
               }
               §6"§.push(_loc4_.b);
               break loop11;
            }
         }
         var _loc15_:TextFormat = §-7§.defaultTextFormat;
         while(true)
         {
            if(_loc16_)
            {
               _loc15_.align = "left";
               if(!_loc17_)
               {
                  §-7§.defaultTextFormat = _loc15_;
                  if(!_loc16_)
                  {
                     break;
                  }
               }
            }
            §-7§.text = "Music: " + §6"§[param2];
            break;
         }
      }
      
      public function §6!2§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            if(!_loc3_)
            {
               §§push(§§findproperty(§[E§));
               §§push(§[E§);
               if(_loc2_)
               {
                  §§push(§§pop() + 1);
               }
               §§pop().§[E§ = §§pop();
               if(!_loc2_)
               {
                  break;
               }
            }
            while(true)
            {
               if(§[E§ >= int(§6"§.length))
               {
                  if(_loc3_)
                  {
                     break loop0;
                  }
                  §[E§ = 0;
                  if(_loc3_)
                  {
                     break;
                  }
               }
               §-7§.text = "Music: " + §6"§[§[E§];
               if(_loc2_)
               {
                  break loop0;
               }
               break;
            }
            §§goto(addr00a4);
         }
         §&!U§(§[E§);
         addr00a4:
      }
   }
}

