package §-!!§
{
   import §!!$§.§ 6§;
   import §"!M§.§!!P§;
   import §%!Z§.§&!S§;
   import §>T§.§[C§;
   import §[^§.§+!S§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.menu.§ L§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   import openfl.Lib;
   
   public class §&!;§
   {
      
      public static var init__:Boolean;
      
      public static var §=T§:String;
      
      public static var format:TextFormat;
      
      public function §&!;§()
      {
      }
      
      public static function §9Q§(param1:int, param2:Number, param3:String = undefined, param4:String = undefined, param5:Object = undefined, param6:Object = undefined, param7:Object = undefined, param8:Object = undefined, param9:String = undefined, param10:Boolean = true) : TextField
      {
         §§push(false);
         var _loc14_:Boolean = true;
         var _loc15_:* = §§pop();
         var _loc12_:* = null as String;
         var _loc13_:* = null as String;
         if(_loc14_)
         {
            while(true)
            {
               if(param7 == null)
               {
                  §§push(false);
                  if(_loc15_)
                  {
                     break;
                  }
                  param7 = §§pop();
               }
               if(param8 == null)
               {
                  §§goto(addr0067);
               }
               §&!;§.format.font = param3 != null ? param3 : §&!;§.§=T§;
               addr004b:
            }
            param8 = §§pop();
            §§goto(addr004b);
         }
         addr0067:
         if(!_loc15_)
         {
            §§push(false);
            break loop0;
         }
         §&!;§.format.size = int(param2);
         if(_loc14_)
         {
            §&!;§.format.align = param9 != null ? param9 : "left";
         }
         §&!;§.format.bold = param8;
         §&!;§.format.color = param1;
         var _loc11_:TextField = new TextField();
         _loc11_.defaultTextFormat = §&!;§.format;
         _loc11_.embedFonts = §&!;§.format.font != null;
         _loc11_.multiline = true;
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  loop6:
                  while(true)
                  {
                     loop7:
                     while(true)
                     {
                        if(param7)
                        {
                           _loc11_.type = "input";
                           _loc11_.background = true;
                           _loc11_.border = true;
                           addr0105:
                           while(true)
                           {
                              §§push(param4);
                              if(_loc14_)
                              {
                                 §§push(null);
                                 if(_loc14_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc15_)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          _loc11_.text = param4;
                                          if(!_loc15_)
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                loop10:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(true);
                                                      if(!_loc15_)
                                                      {
                                                         if(param5 != null)
                                                         {
                                                            §§pop();
                                                            §§push(param5 <= 0);
                                                            if(!_loc14_)
                                                            {
                                                               break loop6;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            break loop2;
                                                         }
                                                         §§push(true);
                                                         if(_loc15_)
                                                         {
                                                            break loop3;
                                                         }
                                                         §§push(true);
                                                         if(_loc15_)
                                                         {
                                                            break;
                                                         }
                                                         if(param6 == null)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc15_)
                                                         {
                                                            break loop10;
                                                         }
                                                         §§pop();
                                                         if(!_loc14_)
                                                         {
                                                            break loop9;
                                                         }
                                                      }
                                                      §§push(param6 <= 0);
                                                      if(_loc14_)
                                                      {
                                                         break loop10;
                                                      }
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      break loop9;
                                                   }
                                                   if(_loc14_)
                                                   {
                                                      §§pop();
                                                      if(!_loc15_)
                                                      {
                                                         §§push(Boolean(param7));
                                                         break loop9;
                                                      }
                                                      break loop1;
                                                   }
                                                   §§goto(addr01e6);
                                                }
                                                §§push(Boolean(§§pop()));
                                                if(_loc14_)
                                                {
                                                   break loop11;
                                                }
                                                §§goto(addr01cc);
                                             }
                                             if(§§pop())
                                             {
                                                _loc11_.width = _loc11_.textWidth + 4;
                                                if(_loc15_)
                                                {
                                                   break loop1;
                                                }
                                             }
                                             §§push(false);
                                             if(!_loc15_)
                                             {
                                                addr01cc:
                                                addr01e6:
                                                if(param10)
                                                {
                                                   §§pop();
                                                   §§push(_loc11_.width > Lib.get_current().stage.stageWidth);
                                                }
                                                if(§§pop())
                                                {
                                                   if(!_loc15_)
                                                   {
                                                      addr01f0:
                                                      param5 = Lib.get_current().stage.stageWidth;
                                                      break loop2;
                                                   }
                                                   break loop1;
                                                }
                                                break loop2;
                                             }
                                             break loop3;
                                          }
                                          break loop7;
                                       }
                                       break loop2;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr026c);
                                 }
                                 §§goto(addr026e);
                              }
                              §§goto(addr0294);
                           }
                           §§goto(addr02c7);
                        }
                        else
                        {
                           _loc11_.mouseEnabled = false;
                           _loc11_.selectable = false;
                           if(_loc14_)
                           {
                              §§goto(addr0105);
                           }
                        }
                        §§goto(addr01f0);
                     }
                     §§goto(addr0216);
                  }
                  §§goto(addr0211);
               }
               if(§§pop())
               {
                  §§goto(addr024c);
               }
               else
               {
                  §§goto(addr025f);
                  §§push(!param7);
               }
               §§goto(addr031b);
            }
            if(param5 != null && param5 > 0)
            {
               addr0216:
               _loc11_.width = param5;
               _loc11_.wordWrap = !param7;
            }
            §§push(false);
            if(param6 == null)
            {
               break loop3;
            }
            if(!_loc14_)
            {
               break loop3;
            }
            §§pop();
            if(!_loc15_)
            {
               §§push(param6 > 0);
               if(_loc14_)
               {
                  break loop3;
               }
               addr025f:
               if(§§pop())
               {
                  loop4:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(param9);
                        if(_loc14_)
                        {
                           addr026c:
                           addr026e:
                           if(§§pop() == null)
                           {
                              §§push("left");
                              if(!_loc15_)
                              {
                                 §§push(§§pop());
                                 if(!_loc14_)
                                 {
                                    §§goto(addr02ea);
                                 }
                              }
                              _loc12_ = §§pop();
                              break loop1;
                           }
                           §§push(param9);
                           if(_loc15_)
                           {
                              break;
                           }
                           §§push(§§pop());
                           if(_loc15_)
                           {
                              break loop4;
                           }
                        }
                        _loc13_ = §§pop();
                        §§push(_loc13_);
                        if(!_loc15_)
                        {
                           break loop4;
                        }
                        break;
                     }
                     addr02c7:
                     §§goto(addr02ca);
                  }
                  §§push("center");
                  if(_loc14_)
                  {
                     if(§§pop() == §§pop())
                     {
                        §§push("center");
                        if(!_loc15_)
                        {
                           _loc12_ = §§pop();
                           break;
                        }
                        addr02f5:
                        _loc12_ = §§pop();
                        break;
                     }
                     §§push(_loc13_);
                     break loop5;
                  }
                  addr02ca:
                  if(§§pop() == §§pop())
                  {
                     if(!_loc14_)
                     {
                        break;
                     }
                     §§push("right");
                     if(_loc14_)
                     {
                        addr02ea:
                        _loc12_ = §§pop();
                        break;
                     }
                  }
                  else
                  {
                     §§push("left");
                  }
                  §§goto(addr02f5);
               }
               else
               {
                  _loc11_.height = _loc11_.textHeight + 4;
                  §§goto(addr031b);
               }
            }
            addr024c:
            _loc11_.height = param6;
            if(_loc14_)
            {
            }
            §§goto(addr031b);
         }
         _loc11_.autoSize = _loc12_;
         if(!_loc15_)
         {
            _loc11_.x = 0;
         }
         addr031b:
         return _loc11_;
      }
      
      public static function setTextFormat(param1:TextField, param2:String, param3:TextFormat) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc4_:String = param1.text;
         §§push(0);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!_loc7_)
         {
            loop0:
            while(_loc5_ < _loc4_.length)
            {
               loop1:
               while(true)
               {
                  §§push(int(_loc4_.indexOf(param2,_loc5_)));
                  if(!_loc7_)
                  {
                     §§push(int(§§pop()));
                     if(!_loc6_)
                     {
                        break;
                     }
                     _loc5_ = §§pop();
                     while(true)
                     {
                        if(!_loc7_)
                        {
                           §§push(_loc5_);
                           if(_loc7_)
                           {
                              break;
                           }
                           if(§§pop() < 0)
                           {
                              if(!_loc7_)
                              {
                                 break loop0;
                              }
                           }
                           else
                           {
                              param1.setTextFormat(param3,_loc5_,_loc5_ + param2.length);
                              if(_loc7_)
                              {
                                 continue loop0;
                              }
                           }
                        }
                        §§push(_loc5_);
                        if(_loc6_)
                        {
                           §§push(§§pop() + param2.length);
                           if(!_loc7_)
                           {
                              break;
                           }
                           break loop1;
                        }
                        break;
                     }
                  }
                  §§push(int(§§pop()));
                  break;
               }
               _loc5_ = §§pop();
            }
         }
      }
   }
}

