package §8![§
{
   import §%!Q§.§>K§;
   import §3!b§.TheNextBigThing;
   import flash.Lib;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TouchEvent;
   import flash.ui.Multitouch;
   import flash.utils.getTimer;
   import haxe.§=!U§;
   import haxe.ds.IntMap;
   import lime.app.Application;
   import lime.audio.AudioManager;
   import lime.graphics.Renderer;
   import lime.ui.Window;
   import lime.ui.§`!"§;
   
   public class §?!$§
   {
      
      public var §2J§:§%!F§;
      
      public var parent:Application;
      
      public var §@3§:Boolean;
      
      public var §35§:§=!U§;
      
      public var §"!?§:int;
      
      public function §?!$§(param1:Application)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc2_)
               {
                  §2J§ = new §%!F§();
                  if(!_loc2_)
                  {
                     break;
                  }
                  §35§ = new IntMap();
                  if(_loc3_)
                  {
                     break;
                  }
                  parent = param1;
                  if(!_loc2_)
                  {
                     break loop0;
                  }
               }
               Lib.current.stage.frameRate = 60;
               if(!_loc3_)
               {
                  break loop0;
               }
               break;
            }
            return;
         }
         AudioManager.init();
         break loop1;
      }
      
      public function §;!9§(param1:Number) : Number
      {
         return Lib.current.stage.frameRate = param1;
      }
      
      public function §@A§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:* = null as String;
         var _loc3_:* = null as String;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  while(true)
                  {
                     §§push(parent.§08§);
                     §§push(0);
                     if(!_loc4_)
                     {
                        if(§§pop()[§§pop()] != null)
                        {
                           if(!_loc4_)
                           {
                              _loc2_ = param1.type;
                              §§push(_loc2_);
                              if(!_loc4_)
                              {
                                 _loc3_ = §§pop();
                                 §§push(_loc3_);
                              }
                              if(§§pop() == Event.ACTIVATE)
                              {
                                 if(!_loc4_)
                                 {
                                    parent.§08§[0].§9;§.§[!S§();
                                    break loop2;
                                 }
                              }
                              else
                              {
                                 if(_loc3_ == Event.DEACTIVATE)
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(parent.§08§);
                                       §§push(0);
                                       if(_loc5_)
                                       {
                                          §§pop()[§§pop()].§&h§.§[!S§();
                                          break loop2;
                                       }
                                       addr0118:
                                       §§pop()[§§pop()].§ $§.§[!S§();
                                       if(!_loc4_)
                                       {
                                          break loop2;
                                       }
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    §§push(_loc3_);
                                    if(!_loc4_)
                                    {
                                       if(§§pop() == FocusEvent.FOCUS_IN)
                                       {
                                          §§push(parent.§08§);
                                          if(!_loc4_)
                                          {
                                             §§push(0);
                                             if(_loc5_)
                                             {
                                                §§pop()[§§pop()].§ !D§.§[!S§();
                                                if(_loc5_)
                                                {
                                                }
                                                break loop2;
                                             }
                                             addr01b4:
                                             §§pop()[§§pop()].§&s§(Lib.current.stage.stageHeight);
                                             if(!_loc4_)
                                             {
                                                §§push(parent.§08§);
                                                break loop1;
                                             }
                                             break loop2;
                                          }
                                          break loop1;
                                       }
                                       if(_loc3_ == FocusEvent.FOCUS_OUT)
                                       {
                                          §§goto(addr0118);
                                          §§push(parent.§08§);
                                          §§push(0);
                                       }
                                       else
                                       {
                                          §§push(_loc3_);
                                       }
                                    }
                                    if(§§pop() != Event.MOUSE_LEAVE)
                                    {
                                       §§push(parent.§08§);
                                       if(!_loc4_)
                                       {
                                          §§push(0);
                                          if(_loc5_)
                                          {
                                             addr0180:
                                             §§pop()[§§pop()].§"!§(Lib.current.stage.stageWidth);
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             break loop2;
                                          }
                                          break loop0;
                                       }
                                       break loop1;
                                    }
                                 }
                                 §@3§ = true;
                                 if(!_loc5_)
                                 {
                                    break loop2;
                                 }
                              }
                              parent.§08§[0].§+m§.§[!S§();
                              if(!_loc4_)
                              {
                                 break loop2;
                              }
                              break;
                           }
                        }
                        break loop2;
                     }
                     §§goto(addr0180);
                  }
                  §§push(parent.§08§);
                  if(_loc4_)
                  {
                     break loop1;
                  }
                  §§push(0);
                  if(!_loc5_)
                  {
                     break loop0;
                  }
                  §§goto(addr01b4);
               }
               §§goto(addr0217);
            }
            §§push(0);
            break;
         }
         §§pop()[§§pop()].§1!§.§[!S§(parent.§08§[0].§ !?§,parent.§08§[0].§8n§);
         addr0217:
      }
      
      public function §7!<§(param1:TouchEvent) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = null as String;
         var _loc5_:* = null as String;
         var _loc6_:* = null as §`!"§;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         if(parent.§08§[0] != null)
         {
            loop0:
            while(true)
            {
               §§push(Number(param1.stageX));
               if(_loc10_)
               {
                  _loc2_ = §§pop();
                  if(!_loc10_)
                  {
                     break;
                  }
                  §§push(Number(param1.stageY));
               }
               _loc3_ = §§pop();
               _loc4_ = param1.type;
               if(!_loc10_)
               {
                  break;
               }
               loop1:
               while(true)
               {
                  §§push(_loc4_);
                  if(_loc10_)
                  {
                     loop2:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(§§pop());
                           if(!_loc9_)
                           {
                              _loc5_ = §§pop();
                              if(_loc9_)
                              {
                                 break;
                              }
                              §§push(_loc5_);
                              if(!_loc9_)
                              {
                                 if(§§pop() == TouchEvent.TOUCH_BEGIN)
                                 {
                                    if(_loc10_)
                                    {
                                       break loop0;
                                    }
                                    break;
                                 }
                                 §§push(_loc5_);
                                 if(_loc9_)
                                 {
                                    break loop2;
                                 }
                              }
                           }
                           if(§§pop() == TouchEvent.TOUCH_END)
                           {
                              break;
                           }
                           §§push(_loc5_);
                           break loop2;
                        }
                        _loc6_ = §35§.get(param1.touchPointID);
                        if(_loc6_ != null)
                        {
                           while(true)
                           {
                              if(_loc10_)
                              {
                                 while(true)
                                 {
                                    §§push(_loc6_.x);
                                    if(!_loc9_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc10_)
                                       {
                                          break;
                                       }
                                    }
                                    _loc7_ = §§pop();
                                    if(_loc10_)
                                    {
                                       §§push(_loc6_.y);
                                       if(_loc10_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       break;
                                    }
                                 }
                                 _loc8_ = §§pop();
                                 if(_loc9_)
                                 {
                                    break;
                                 }
                                 §§push(_loc6_);
                                 §§push(_loc2_);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() / parent.§08§[0].§ !?§);
                                 }
                                 §§pop().x = §§pop();
                                 §§push(_loc6_);
                                 §§push(_loc3_);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() / parent.§08§[0].§8n§);
                                 }
                                 §§pop().y = §§pop();
                                 §§push(_loc6_);
                                 §§push(_loc6_.x);
                                 if(_loc10_)
                                 {
                                    §§push(§§pop() - _loc7_);
                                 }
                                 §§pop().§`R§ = §§pop();
                                 if(!_loc10_)
                                 {
                                    break loop1;
                                 }
                                 §§push(_loc6_);
                                 §§push(_loc6_.y);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() - _loc8_);
                                 }
                                 §§pop().§1I§ = §§pop();
                              }
                              _loc6_.pressure = param1.pressure;
                              §`!"§.§,!S§.§[!S§(_loc6_);
                              §35§.remove(param1.touchPointID);
                              if(!_loc9_)
                              {
                                 §2J§.add(_loc6_);
                              }
                              break;
                           }
                           if(param1.isPrimaryTouchPoint)
                           {
                              if(!_loc9_)
                              {
                                 parent.§08§[0].§!!?§.§[!S§(_loc2_,_loc3_,0);
                              }
                           }
                        }
                        break loop1;
                     }
                  }
                  break loop2;
               }
            }
            _loc6_ = §2J§.pop();
            while(true)
            {
               if(!_loc9_)
               {
                  if(_loc6_ == null)
                  {
                     §§push(§§findproperty(§`!"§));
                     §§push(_loc2_);
                     if(_loc10_)
                     {
                        §§push(§§pop() / parent.§08§[0].§ !?§);
                     }
                     §§push(_loc3_);
                     if(!_loc9_)
                     {
                        §§push(§§pop() / parent.§08§[0].§8n§);
                     }
                     _loc6_ = new §§pop().§`!"§(§§pop(),§§pop(),param1.touchPointID,0,0,param1.pressure,0);
                     if(!_loc9_)
                     {
                        break;
                     }
                     §§goto(addr0442);
                  }
                  §§push(_loc6_);
                  §§push(_loc2_);
                  if(!_loc9_)
                  {
                     §§push(§§pop() / parent.§08§[0].§ !?§);
                  }
                  §§pop().x = §§pop();
                  §§push(_loc6_);
                  §§push(_loc3_);
                  if(_loc10_)
                  {
                     §§push(§§pop() / parent.§08§[0].§8n§);
                  }
                  §§pop().y = §§pop();
                  _loc6_.id = param1.touchPointID;
                  if(!_loc9_)
                  {
                     _loc6_.§`R§ = 0;
                  }
                  _loc6_.§1I§ = 0;
                  if(!_loc10_)
                  {
                     break;
                  }
                  _loc6_.pressure = param1.pressure;
               }
               _loc6_.§4!E§ = 0;
               break;
            }
            §35§.§1!R§(param1.touchPointID,_loc6_);
            while(true)
            {
               if(_loc10_)
               {
                  §`!"§.§#!+§.§[!S§(_loc6_);
                  if(_loc9_)
                  {
                     break;
                  }
                  if(!param1.isPrimaryTouchPoint)
                  {
                     break;
                  }
                  if(_loc9_)
                  {
                     break;
                  }
               }
               parent.§08§[0].§04§.§[!S§(_loc2_,_loc3_,0);
               break;
            }
         }
         addr0442:
      }
      
      public function §@G§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:* = 0;
         var _loc3_:* = null as String;
         var _loc4_:* = null as String;
         var _loc5_:* = null as String;
         loop0:
         while(true)
         {
            loop1:
            while(true)
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
                        loop6:
                        while(true)
                        {
                           if(!_loc7_)
                           {
                              §§push(parent.§08§);
                              if(_loc7_)
                              {
                                 break loop1;
                              }
                              §§push(0);
                              if(_loc7_)
                              {
                                 break loop5;
                              }
                              if(§§pop()[§§pop()] == null)
                              {
                                 break loop4;
                              }
                              loop7:
                              while(true)
                              {
                                 loop8:
                                 while(true)
                                 {
                                    loop15:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          if(!_loc7_)
                                          {
                                             §§push(param1.type);
                                             if(!_loc6_)
                                             {
                                                break;
                                             }
                                             _loc3_ = §§pop();
                                             if(!_loc6_)
                                             {
                                                break loop8;
                                             }
                                             §§push(_loc3_);
                                             if(!_loc7_)
                                             {
                                                _loc4_ = §§pop();
                                                if(!_loc6_)
                                                {
                                                   break loop15;
                                                }
                                                if(_loc4_ == "middleMouseDown")
                                                {
                                                   break loop8;
                                                }
                                                if(!_loc6_)
                                                {
                                                   break loop7;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr0203);
                                             }
                                          }
                                          §§push(_loc4_);
                                          §§push("middleMouseUp");
                                          if(!_loc7_)
                                          {
                                             loop17:
                                             while(true)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      break loop8;
                                                   }
                                                   §§goto(addr011f);
                                                }
                                                else
                                                {
                                                   §§push(_loc4_);
                                                   if(_loc6_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(§§pop() != "rightMouseDown")
                                                         {
                                                            §§push(_loc4_);
                                                            if(_loc7_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            if(§§pop() == "rightMouseUp")
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  break loop17;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(0);
                                                               if(!_loc7_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr0104);
                                                            }
                                                         }
                                                         §§push(2);
                                                         if(_loc6_)
                                                         {
                                                            §§push(int(§§pop()));
                                                            if(!_loc6_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         _loc2_ = §§pop();
                                                         break loop15;
                                                      }
                                                      §§goto(addr0103);
                                                   }
                                                }
                                                §§goto(addr0127);
                                             }
                                             §§goto(addr012e);
                                          }
                                          else
                                          {
                                             if(§§pop() != §§pop())
                                             {
                                                if(!_loc7_)
                                                {
                                                   §§goto(addr027c);
                                                }
                                             }
                                             §§goto(addr0295);
                                          }
                                       }
                                       _loc4_ = §§pop();
                                       if(!_loc7_)
                                       {
                                          break loop7;
                                       }
                                       break loop0;
                                    }
                                    §§push(param1.type);
                                    break loop16;
                                 }
                                 §§push(1);
                                 if(_loc6_)
                                 {
                                    §§push(int(§§pop()));
                                    if(_loc6_)
                                    {
                                       _loc2_ = §§pop();
                                       if(_loc6_)
                                       {
                                          break loop15;
                                       }
                                       break loop0;
                                    }
                                    addr0103:
                                    §§push(int(§§pop()));
                                 }
                                 addr0104:
                                 _loc2_ = §§pop();
                                 break loop15;
                              }
                              loop9:
                              while(true)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       if(!_loc7_)
                                       {
                                          _loc5_ = §§pop();
                                          addr011f:
                                          §§push(_loc5_);
                                          if(!_loc6_)
                                          {
                                             break loop6;
                                          }
                                          if(§§pop() == "mouseMove")
                                          {
                                             addr012e:
                                             if(§@3§)
                                             {
                                                §@3§ = false;
                                                addr014b:
                                                §§push(parent.§08§);
                                                if(!_loc7_)
                                                {
                                                   §§push(0);
                                                   if(_loc6_)
                                                   {
                                                      break loop5;
                                                   }
                                                   break loop3;
                                                }
                                                break loop1;
                                             }
                                             break loop0;
                                          }
                                          loop12:
                                          while(true)
                                          {
                                             loop13:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc5_);
                                                   if(!_loc7_)
                                                   {
                                                      §§push("mouseWheel");
                                                      if(_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            §§push(parent.§08§);
                                                            if(!_loc7_)
                                                            {
                                                               break loop1;
                                                            }
                                                            break loop11;
                                                         }
                                                         break loop13;
                                                      }
                                                      §§push(_loc5_);
                                                      §§push("middleMouseDown");
                                                      if(_loc7_)
                                                      {
                                                         break loop10;
                                                      }
                                                      if(§§pop() == §§pop())
                                                      {
                                                         break loop9;
                                                      }
                                                      §§push(_loc5_);
                                                      if(!_loc6_)
                                                      {
                                                         break loop12;
                                                      }
                                                   }
                                                   addr0203:
                                                   §§push("mouseDown");
                                                   break;
                                                }
                                                if(§§pop() != §§pop())
                                                {
                                                   break;
                                                }
                                                break loop9;
                                             }
                                             §§push(_loc5_);
                                             break;
                                          }
                                       }
                                       break loop12;
                                    }
                                    §§goto(addr029e);
                                 }
                                 §§goto(addr0291);
                              }
                              §§push(parent.§08§);
                              if(_loc6_)
                              {
                                 §§goto(addr0231);
                              }
                              §§goto(addr029e);
                           }
                           §§goto(addr014b);
                        }
                        §§goto(addr028e);
                     }
                     §§pop()[§§pop()].§0g§.§[!S§();
                     break loop0;
                  }
                  §§goto(addr02b9);
               }
               §§goto(addr02a0);
            }
            §§push(0);
            if(!_loc6_)
            {
               break loop3;
            }
            §§pop()[§§pop()].§-u§.§[!S§(0,param1.delta);
            §§goto(addr02b9);
         }
         while(true)
         {
            §§push(parent.§08§);
            if(!_loc7_)
            {
               §§push(0);
               if(_loc6_)
               {
                  §§pop()[§§pop()].§6J§.§[!S§(param1.stageX,param1.stageY);
                  break;
               }
            }
            else
            {
               addr0231:
               §§push(0);
               if(!_loc7_)
               {
                  §§pop()[§§pop()].§04§.§[!S§(param1.stageX,param1.stageY,_loc2_);
                  if(!_loc7_)
                  {
                     break;
                  }
                  addr029e:
                  addr027c:
                  addr0295:
                  if(_loc5_ != "mouseUp")
                  {
                     if(!_loc7_)
                     {
                        addr0291:
                        addr028e:
                        if(_loc5_ != "rightMouseUp")
                        {
                           break;
                        }
                     }
                  }
                  §§push(parent.§08§);
                  §§push(0);
               }
            }
            addr02a0:
            §§pop()[§§pop()].§!!?§.§[!S§(param1.stageX,param1.stageY,_loc2_);
            break;
         }
         addr02b9:
      }
      
      public function §;1§(param1:KeyboardEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:int = 0;
         var _loc3_:* = 0;
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
                     while(true)
                     {
                        §§push(parent.§08§);
                        if(_loc4_)
                        {
                           §§push(0);
                           if(!_loc4_)
                           {
                              break loop3;
                           }
                           if(§§pop()[§§pop()] == null)
                           {
                              break loop1;
                           }
                           §§push(§#2§(param1.keyCode));
                           if(_loc4_)
                           {
                              _loc2_ = §§pop();
                              §§push(param1.shiftKey ? 3 : 0);
                           }
                           if(param1.ctrlKey)
                           {
                              if(!_loc5_)
                              {
                                 §§push(192);
                                 if(_loc5_)
                                 {
                                 }
                                 addr008f:
                                 §§push(§§pop() | §§pop());
                              }
                              if(param1.altKey)
                              {
                                 §§push(768);
                                 if(_loc5_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§push(0);
                              }
                           }
                           else
                           {
                              §§push(0);
                              if(_loc4_)
                              {
                                 §§goto(addr008f);
                              }
                           }
                           §§push(§§pop() | §§pop());
                           if(!_loc5_)
                           {
                              §§push(int(§§pop()));
                           }
                           _loc3_ = §§pop();
                           if(param1.type != KeyboardEvent.KEY_DOWN)
                           {
                              §§push(parent.§08§);
                              break;
                           }
                           if(!_loc5_)
                           {
                              §§push(parent.§08§);
                              if(!_loc4_)
                              {
                                 break;
                              }
                              §§push(0);
                              if(!_loc4_)
                              {
                                 break loop3;
                              }
                              §§pop()[§§pop()].§7U§.§[!S§(_loc2_,_loc3_);
                              if(!_loc4_)
                              {
                                 break loop1;
                              }
                              §§push(false);
                              if(_loc4_)
                              {
                                 if(parent.§08§[0] == null)
                                 {
                                    break loop2;
                                 }
                                 if(!_loc4_)
                                 {
                                    break loop2;
                                 }
                              }
                              §§pop();
                              if(!_loc4_)
                              {
                                 break loop1;
                              }
                           }
                           §§push(parent.§08§);
                           if(!_loc4_)
                           {
                              break loop0;
                           }
                        }
                        §§push(0);
                        if(!_loc5_)
                        {
                           break loop3;
                        }
                        §§goto(addr01b1);
                     }
                     §§goto(addr01af);
                  }
                  §§push(§§pop()[§§pop()].§6l§.§#!<§());
                  if(_loc4_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc5_)
                     {
                        break;
                     }
                  }
                  §§push(Boolean(§§pop()));
                  break;
               }
               if(!§§pop())
               {
                  break;
               }
               §§push(parent.§08§);
               if(!_loc5_)
               {
                  break loop0;
               }
               addr01af:
               §§goto(addr01b1);
               §§push(0);
            }
            return;
         }
         §§push(0);
         if(_loc4_)
         {
            §§pop()[§§pop()].§0%§.§[!S§(String.fromCharCode(param1.charCode));
            break loop1;
         }
         addr01b1:
         §§pop()[§§pop()].§9![§.§[!S§(_loc2_,_loc3_);
         break loop1;
      }
      
      public function §8'§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:int = int(getTimer());
         while(true)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               §§push(§§pop() - §"!?§);
               if(_loc4_)
               {
                  break;
               }
            }
            §§push(int(§§pop()));
            break;
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc5_)
            {
               §"!?§ = _loc2_;
               if(_loc4_)
               {
                  break;
               }
            }
            parent.onUpdate.§[!S§(_loc3_);
            if(!_loc4_)
            {
               break;
            }
            §§goto(addr00e3);
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
                  while(true)
                  {
                     §§push(parent.§?q§);
                     if(_loc5_)
                     {
                        §§push(0);
                        if(!_loc5_)
                        {
                           break;
                        }
                        if(§§pop()[§§pop()] == null)
                        {
                           break loop4;
                        }
                        if(!_loc5_)
                        {
                           break loop3;
                        }
                        §§push(parent.§?q§);
                        if(!_loc5_)
                        {
                           break loop2;
                        }
                     }
                     §§push(0);
                     if(_loc5_)
                     {
                        §§pop()[§§pop()].onRender.§[!S§();
                        if(!_loc4_)
                        {
                           break loop3;
                        }
                        break loop4;
                     }
                     break;
                  }
                  §§goto(addr00da);
               }
               §§goto(addr00e3);
            }
            §§push(parent.§?q§);
            break;
         }
         addr00da:
         §§pop()[0].flip();
         addr00e3:
      }
      
      public function exit() : void
      {
      }
      
      public function exec() : int
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = null as String;
         while(true)
         {
            if(_loc5_)
            {
               Lib.current.stage.addEventListener(KeyboardEvent.KEY_DOWN,§;1§);
               if(_loc4_)
               {
                  break;
               }
            }
            Lib.current.stage.addEventListener(KeyboardEvent.KEY_UP,§;1§);
            break;
         }
         §§push(["mouseDown","mouseMove","mouseUp","mouseWheel","middleMouseDown","middleMouseMove","middleMouseUp"]);
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(0);
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               break;
            }
            if(§§pop() >= int(_loc1_.length))
            {
               Multitouch.inputMode = "touchPoint";
               Lib.current.stage.addEventListener(TouchEvent.TOUCH_BEGIN,§7!<§);
               Lib.current.stage.addEventListener(TouchEvent.TOUCH_MOVE,§7!<§);
               Lib.current.stage.addEventListener(TouchEvent.TOUCH_END,§7!<§);
               Lib.current.stage.addEventListener(Event.ACTIVATE,§@A§);
               if(_loc5_)
               {
                  Lib.current.stage.addEventListener(Event.DEACTIVATE,§@A§);
                  Lib.current.stage.addEventListener(FocusEvent.FOCUS_IN,§@A§);
                  Lib.current.stage.addEventListener(FocusEvent.FOCUS_OUT,§@A§);
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        Lib.current.stage.addEventListener(Event.MOUSE_LEAVE,§@A§);
                        if(_loc4_)
                        {
                           break;
                        }
                        Lib.current.stage.addEventListener(Event.RESIZE,§@A§);
                        if(!_loc4_)
                        {
                           §"!?§ = getTimer();
                        }
                     }
                     §8'§(null);
                     break;
                  }
               }
               Lib.current.stage.addEventListener(Event.ENTER_FRAME,§8'§);
               §§push(0);
               break;
            }
            §§push(_loc1_[_loc2_]);
            if(_loc5_)
            {
               §§push(§§pop());
            }
            _loc3_ = §§pop();
            if(!_loc4_)
            {
               _loc2_++;
               if(_loc5_)
               {
                  Lib.current.stage.addEventListener(_loc3_,§@G§);
               }
            }
         }
         return §§pop();
      }
      
      public function create(param1:Object) : void
      {
      }
      
      public function §#2§(param1:int) : int
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
               §§push(false);
               if(_loc3_)
               {
                  if(param1 >= 65)
                  {
                     if(!_loc2_)
                     {
                        §§pop();
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§push(param1);
                        §§push(90);
                        if(_loc2_)
                        {
                           break loop0;
                        }
                        §§push(§§pop() <= §§pop());
                        if(!_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§push(param1);
                     §§push(32);
                     break loop0;
                  }
                  break;
               }
               switch(param1)
               {
                  case 16:
                     return 1073742049;
                  case 17:
                     return 1073742048;
                  case 18:
                     return 1073742050;
                  case 20:
                     return 1073741881;
                  case 33:
                     §§push(1073741899);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                     addr0408:
                     return §§pop();
                     break;
                  case 34:
                     return 1073741902;
                  case 35:
                     §§push(1073741901);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                     addr0410:
                     return §§pop();
                     break;
                  case 36:
                     §§push(1073741898);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                     break;
                  case 37:
                     return 1073741904;
                  case 38:
                     return 1073741906;
                  case 39:
                     return 1073741903;
                  case 40:
                     return 1073741905;
                  case 45:
                     return 1073741897;
                  case 46:
                     §§goto(addr0371);
                     return 127;
                  case 96:
                     return 1073741922;
                  case 97:
                     return 1073741913;
                  case 98:
                     §§push(1073741914);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                     addr042e:
                     return §§pop();
                     break;
                  case 99:
                     return 1073741915;
                  case 100:
                     return 1073741916;
                  case 101:
                     §§push(1073741917);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                     addr0498:
                     return §§pop();
                     break;
                  case 102:
                     §§push(1073741918);
                     if(_loc3_)
                     {
                        return §§pop();
                     }
                     addr041e:
                     return §§pop();
                     break;
                  case 103:
                     §§push(1073741919);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                     addr047b:
                     return §§pop();
                     break;
                  case 104:
                     return 1073741920;
                  case 105:
                     return 1073741921;
                  case 106:
                     §§push(1073741909);
                     if(_loc3_)
                     {
                        return §§pop();
                     }
                     addr0400:
                     return §§pop();
                     break;
                  case 107:
                     return 1073741911;
                  case 108:
                     §§goto(addr0400);
                     return 1073741912;
                  case 109:
                     §§goto(addr0408);
                     return 1073741910;
                  case 110:
                     §§goto(addr0410);
                     return 1073741923;
                  case 111:
                     §§push(1073741908);
                     if(_loc2_)
                     {
                        §§goto(addr0491);
                     }
                     §§goto(addr041e);
                     break;
                  case 112:
                     return 1073741882;
                  case 113:
                     §§goto(addr042e);
                     return 1073741883;
                  case 114:
                     return 1073741884;
                  case 115:
                     §§push(1073741885);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                     addr04b4:
                     return §§pop();
                     break;
                  case 116:
                     return 1073741886;
                  case 117:
                     return 1073741887;
                  case 118:
                     §§push(1073741888);
                     if(_loc3_)
                     {
                        return §§pop();
                     }
                     §§goto(addr0498);
                     break;
                  case 119:
                     §§push(1073741889);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                     §§goto(addr047b);
                     break;
                  case 120:
                     §§push(1073741890);
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§goto(addr047b);
                     break;
                  case 121:
                     §§push(1073741891);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                     break;
                  case 122:
                     addr0491:
                     return §§pop();
                     return 1073741892;
                  case 123:
                     §§goto(addr0498);
                     return 1073741893;
                  case 124:
                     §§push(1073741928);
                     if(_loc3_)
                     {
                        return §§pop();
                     }
                     §§goto(addr04b4);
                     break;
                  case 125:
                     §§push(1073741929);
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§goto(addr04b4);
                     break;
                  case 126:
                     return 1073741930;
                  case 144:
                     return 1073741907;
                  case 186:
                     return 59;
                  case 187:
                     §§push(61);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                     addr04df:
                     return §§pop();
                     break;
                  case 188:
                     §§goto(addr04df);
                     return 44;
                  case 189:
                     §§push(45);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                     addr050a:
                     return §§pop();
                     break;
                  case 190:
                     return 46;
                  case 191:
                     §§push(47);
                     if(!_loc3_)
                     {
                        §§goto(addr051f);
                     }
                     §§goto(addr050a);
                     break;
                  case 192:
                     return 96;
                  case 219:
                     return 91;
                  case 220:
                     addr051f:
                     return §§pop();
                     return 92;
                  case 221:
                     §§push(93);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                     addr0533:
                     return §§pop();
                     break;
                  case 222:
                     §§goto(addr0533);
                     return 39;
                  default:
                     break loop1;
               }
               return §§pop();
            }
            return param1;
         }
         §§push(§§pop() + §§pop());
         if(_loc3_)
         {
            return §§pop();
         }
         addr0371:
         return §§pop();
      }
   }
}

