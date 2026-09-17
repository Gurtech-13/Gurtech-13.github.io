package §!]§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §%!Q§.§ !>§;
   import §%!Q§.§+#§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §'!W§.§&!A§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §-!!§.§&!;§;
   import scenes.§+Z§;
   import scenes.CrossingTheGap;
   import scenes.Cutscenes;
   import scenes.TheGap;
   import §6!Q§.§'!E§;
   import §>!O§.§=!]§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§'!O§;
   import com.player03.layout.§38§;
   import com.player03.run3.Save;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§2!;§;
   import com.player03.run3.save.§]k§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   import openfl.Lib;
   
   public class §+U§ extends §'!O§
   {
      
      public var path:§ !>§;
      
      public var §1!!§:TextField;
      
      public var §5!K§:int;
      
      public function §+U§()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_)
            {
               super(null,null,§&d§.§1$§());
               if(!_loc1_)
               {
                  break;
               }
            }
            mouseEnabled = false;
            break;
         }
      }
      
      public function show(param1:int, param2:String, param3:§ !>§, param4:Number, param5:Number) : void
      {
         §§push(false);
         var _loc23_:Boolean = true;
         var _loc24_:* = §§pop();
         var _loc6_:* = false;
         var _loc7_:* = false;
         var _loc8_:* = null as §+#§;
         var _loc9_:* = null as §2!;§;
         var _loc10_:* = null as CrossingTheGap;
         var _loc11_:* = false;
         var _loc12_:* = null as §]k§;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:* = null as Vector.<§+#§>;
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               if(_loc23_)
               {
                  loop9:
                  while(true)
                  {
                     loop10:
                     while(true)
                     {
                        loop12:
                        while(true)
                        {
                           loop13:
                           while(true)
                           {
                              loop14:
                              while(true)
                              {
                                 §§push(false);
                                 if(_loc23_)
                                 {
                                    while(true)
                                    {
                                       §§push(false);
                                       if(visible)
                                       {
                                          if(!_loc23_)
                                          {
                                             break;
                                          }
                                          §§pop();
                                          §§push(§5!K§ == param1);
                                          if(_loc24_)
                                          {
                                             break;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(§§pop())
                                       {
                                          §§pop();
                                          §§push(path == param3);
                                          if(_loc24_)
                                          {
                                             break loop9;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc23_)
                                          {
                                             return;
                                          }
                                          addr00c6:
                                          §§push(false);
                                          if(_loc24_)
                                          {
                                             break loop10;
                                          }
                                          §§push(param3.§'m§(param1));
                                          if(!_loc23_)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          §5!K§ = param1;
                                          if(_loc23_)
                                          {
                                             path = param3;
                                             if(!_loc23_)
                                             {
                                                break loop14;
                                             }
                                          }
                                          §§push(true);
                                          §§push(param3.§<o§());
                                          if(!_loc24_)
                                          {
                                             if(!§§pop())
                                             {
                                                break loop13;
                                             }
                                             if(_loc24_)
                                             {
                                                break loop12;
                                             }
                                             §§pop();
                                             §§goto(addr00c6);
                                          }
                                       }
                                       §§push(!§§pop());
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       break loop9;
                                    }
                                 }
                                 §§pop();
                                 §§push(!param3.§#u§(param1));
                                 if(!_loc24_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc24_)
                                    {
                                       break loop9;
                                    }
                                    break loop10;
                                 }
                                 break loop12;
                              }
                              §§goto(addr0103);
                           }
                           §§goto(addr00ff);
                        }
                        §§goto(addr0189);
                     }
                     §§goto(addr0129);
                  }
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc24_)
                     {
                        addr00ff:
                        if(§§pop())
                        {
                           addr0103:
                           hide();
                           return;
                        }
                        §§push(false);
                        if(!_loc23_)
                        {
                           break;
                        }
                     }
                     if(param3 == §>K§.§]0§)
                     {
                        break;
                     }
                     addr0129:
                     if(§§pop())
                     {
                        if(!_loc24_)
                        {
                           _loc8_ = §+#§.§<!L§();
                           _loc9_ = _loc8_.§,U§;
                           if(!_loc24_)
                           {
                              §§push(int(Save.§@!A§().get(_loc9_.§=-§,int(_loc9_.§ -§))) >= int(_loc8_.§ b§.length));
                              if(!_loc24_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc24_)
                                 {
                                    break loop2;
                                 }
                              }
                              _loc7_ = §§pop();
                              if(!_loc23_)
                              {
                                 break loop1;
                              }
                           }
                        }
                     }
                     else
                     {
                        addr0189:
                        _loc7_ = false;
                     }
                  }
                  §§pop();
                  if(!_loc24_)
                  {
                     §§push(param1 == 0);
                     break loop10;
                  }
               }
               §§push(_loc7_);
               if(_loc23_)
               {
                  if(§§pop())
                  {
                     if(_loc24_)
                     {
                        break loop1;
                     }
                     _loc10_ = Cutscenes.§->§();
                     loop16:
                     while(true)
                     {
                        loop17:
                        while(true)
                        {
                           while(true)
                           {
                              if(_loc23_)
                              {
                                 if(_loc10_.§?^§ != null)
                                 {
                                    if(_loc23_)
                                    {
                                       _loc12_ = _loc10_.§?^§;
                                       if(!_loc23_)
                                       {
                                          break;
                                       }
                                       §§push(Boolean(Save.§@!A§().get(_loc12_.§=-§,Boolean(_loc12_.§ -§))));
                                       if(!_loc23_)
                                       {
                                          break loop17;
                                       }
                                       §§push(Boolean(§§pop()));
                                       if(_loc24_)
                                       {
                                          break loop16;
                                       }
                                       _loc11_ = §§pop();
                                    }
                                 }
                                 else
                                 {
                                    §§push(false);
                                    if(_loc23_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    _loc11_ = §§pop();
                                 }
                              }
                              §§push(_loc11_);
                              if(!_loc24_)
                              {
                                 break loop16;
                              }
                              break loop17;
                           }
                           §§goto(addr0257);
                        }
                        _loc6_ = §§pop();
                        break loop1;
                     }
                     §§push(!§§pop());
                     if(_loc23_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc24_)
                        {
                           break loop17;
                        }
                     }
                     §§goto(addr0234);
                  }
                  else
                  {
                     §§push(false);
                     if(_loc24_)
                     {
                        break;
                     }
                  }
               }
               §§push(Boolean(§§pop()));
               break;
            }
            _loc6_ = §§pop();
            break;
         }
         addr0234:
         if(_loc6_)
         {
            §§push(0);
            if(_loc23_)
            {
               while(true)
               {
                  §§push(int(§§pop()));
                  if(_loc23_)
                  {
                     _loc13_ = §§pop();
                     §§push(0);
                     if(_loc24_)
                     {
                        break;
                     }
                  }
                  §§push(int(§§pop()));
                  break;
               }
            }
            _loc14_ = §§pop();
            addr0257:
            _loc15_ = §+#§.§,!B§();
            if(_loc23_)
            {
               loop0:
               while(_loc14_ < int(_loc15_.length))
               {
                  _loc8_ = _loc15_[_loc14_];
                  if(!_loc24_)
                  {
                     _loc14_++;
                  }
                  _loc9_ = _loc8_.§,U§;
                  if(_loc23_)
                  {
                     if(int(Save.§@!A§().get(_loc9_.§=-§,int(_loc9_.§ -§))) >= int(_loc8_.§ b§.length))
                     {
                        if(!_loc23_)
                        {
                           continue;
                        }
                        §§push(_loc8_.§&J§);
                        if(!_loc24_)
                        {
                           while(true)
                           {
                              §§push(!§§pop());
                              if(!_loc24_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc24_)
                                 {
                                    addr02fe:
                                    _loc11_ = §§pop();
                                    if(!_loc24_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                              }
                              _loc11_ = §§pop();
                              if(_loc24_)
                              {
                              }
                              break;
                           }
                        }
                     }
                     else
                     {
                        §§push(false);
                        if(_loc23_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc24_)
                           {
                              §§goto(addr02fe);
                           }
                        }
                     }
                     if(!§§pop())
                     {
                        continue;
                     }
                     if(_loc24_)
                     {
                        continue;
                     }
                  }
                  _loc13_++;
               }
               if(_loc23_)
               {
                  §§push("Bridge building,\npart ");
                  if(_loc23_)
                  {
                     while(true)
                     {
                        §§push(§§pop() + _loc13_);
                        if(!_loc24_)
                        {
                           §§push(§§pop());
                           if(_loc24_)
                           {
                              break;
                           }
                        }
                        §§push(§§pop());
                        break;
                     }
                  }
                  param2 = §§pop();
               }
            }
         }
         visible = true;
         §1!!§.text = param2;
         §1!!§.x = 0;
         if(_loc23_)
         {
            layout.remove(new §?y§(§1!!§));
         }
         var _loc16_:Number = Number(§1!!§.width);
         var _loc17_:Number = Number(§1!!§.height);
         var _loc18_:Number = 4;
         while(true)
         {
            if(!_loc24_)
            {
               graphics.clear();
               if(!_loc24_)
               {
                  graphics.lineStyle(4 * layout.scale.x,3355443);
                  if(_loc24_)
                  {
                     break;
                  }
               }
            }
            graphics.beginFill(16777215);
            break;
         }
         var _loc19_:§38§ = layout.scale;
         if(_loc23_)
         {
            graphics.drawRoundRect(-_loc18_,-_loc18_,_loc16_ + _loc18_ * 2 * layout.scale.x,_loc17_ + _loc18_ * 2 * layout.scale.y,12 * ((_loc19_.x + _loc19_.y) / 2));
         }
         var _loc20_:§38§ = layout.scale;
         §§push(16);
         §§push(_loc20_.x);
         if(_loc23_)
         {
            §§push(§§pop() + _loc20_.y);
            if(!_loc24_)
            {
               §§push(Number(§§pop()));
               if(!_loc24_)
               {
                  §§push(§§pop() / 2);
               }
            }
         }
         §§push(§§pop() * §§pop());
         if(_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc21_:* = §§pop();
         while(true)
         {
            if(!_loc24_)
            {
               x = param4 - _loc16_ / 2;
               if(!_loc24_)
               {
                  if(x < _loc21_ - parent.x)
                  {
                     if(!_loc24_)
                     {
                        addr0496:
                        x = _loc21_ - parent.x;
                        if(_loc23_)
                        {
                        }
                     }
                     break;
                  }
                  if(x <= Lib.get_current().stage.stageWidth - _loc21_ - _loc16_ - parent.x)
                  {
                     break;
                  }
                  if(!_loc23_)
                  {
                     break;
                  }
               }
               x = Lib.get_current().stage.stageWidth - _loc21_ - _loc16_ - parent.x;
               break;
            }
            §§goto(addr0496);
         }
         §§push(layout.scale.y);
         if(!_loc24_)
         {
            §§push(§§pop() * 8.4);
            if(!_loc24_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc22_:* = §§pop();
         while(true)
         {
            if(_loc23_)
            {
               y = param5 - _loc17_ - _loc22_;
               if(_loc24_)
               {
                  break;
               }
            }
            if(parent.y + y < _loc21_)
            {
               if(_loc23_)
               {
                  break;
               }
            }
            §§goto(addr0565);
         }
         y = param5 + _loc22_;
         addr0565:
      }
      
      public function §`m§(param1:Event) : void
      {
         §§push(false);
         var _loc34_:Boolean = true;
         var _loc35_:* = §§pop();
         var _loc2_:* = false;
         var _loc3_:* = false;
         var _loc4_:* = false;
         var _loc5_:* = null as § !>§;
         var _loc6_:* = null as §-Q§;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = null as § !>§;
         var _loc10_:* = null as §-Q§;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = null as § !>§;
         var _loc14_:* = null as §-Q§;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc17_:* = false;
         var _loc18_:* = false;
         var _loc19_:* = false;
         var _loc20_:* = false;
         var _loc21_:* = null as § !>§;
         var _loc22_:* = null as §-Q§;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         var _loc25_:* = null as TheGap;
         var _loc26_:* = null as §]k§;
         var _loc27_:* = null as CrossingTheGap;
         var _loc28_:* = false;
         var _loc29_:* = null as §'!E§;
         var _loc30_:* = null as §3!I§;
         var _loc31_:* = null as §3!I§;
         var _loc32_:* = null as String;
         var _loc33_:* = null as §+Z§;
         if(path == null)
         {
            break loop21;
         }
         if(path == §>K§.§]0§)
         {
            _loc5_ = §>K§.§>=§;
            _loc6_ = _loc5_.§0!R§;
            loop1:
            while(true)
            {
               if(!_loc35_)
               {
                  _loc7_ = int(Save.§@!A§().get(_loc6_.§=-§,int(_loc6_.§ -§)));
                  if(_loc35_)
                  {
                     break;
                  }
               }
               while(true)
               {
                  §§push(_loc5_.levelCount);
                  if(_loc34_)
                  {
                     §§push(int(§§pop()));
                     if(!_loc34_)
                     {
                        break;
                     }
                  }
                  _loc8_ = §§pop();
                  if(!_loc34_)
                  {
                     break loop1;
                  }
                  §§push(_loc7_);
                  if(_loc35_)
                  {
                     break;
                  }
                  §§push(_loc8_);
                  if(!_loc35_)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(_loc34_)
                        {
                           §§push(_loc7_);
                           if(_loc35_)
                           {
                           }
                           break;
                        }
                        break loop1;
                     }
                     §§push(_loc8_);
                     break;
                  }
                  if(§§pop() < §§pop())
                  {
                     §§push(false);
                     if(!_loc35_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     _loc4_ = §§pop();
                     break loop1;
                  }
                  if(_loc35_)
                  {
                     break loop1;
                  }
                  _loc9_ = §>K§.§`S§;
                  _loc10_ = _loc9_.§0!R§;
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc35_)
                        {
                           §§push(int(Save.§@!A§().get(_loc10_.§=-§,int(_loc10_.§ -§))));
                           if(_loc35_)
                           {
                              break;
                           }
                           _loc11_ = §§pop();
                           if(!_loc34_)
                           {
                              break loop3;
                           }
                           §§push(_loc9_.levelCount);
                           if(_loc34_)
                           {
                              §§push(int(§§pop()));
                           }
                           _loc12_ = §§pop();
                           if(!_loc34_)
                           {
                              break loop3;
                           }
                        }
                        §§push(_loc11_);
                        break;
                     }
                     §§push(_loc12_);
                     if(!_loc35_)
                     {
                        if(§§pop() < §§pop())
                        {
                           if(_loc34_)
                           {
                              break;
                           }
                           break loop1;
                        }
                        §§goto(addr01b3);
                        §§push(_loc12_);
                     }
                     §§goto(addr01b8);
                  }
                  addr01b3:
                  addr01b8:
                  if(_loc11_ >= _loc9_.levelCount)
                  {
                     §§push(true);
                     if(!_loc35_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     _loc4_ = §§pop();
                     break loop1;
                  }
                  if(!_loc34_)
                  {
                     break loop1;
                  }
                  _loc13_ = §>K§.§;!4§;
                  _loc14_ = _loc13_.§0!R§;
                  loop5:
                  while(true)
                  {
                     §§push(int(Save.§@!A§().get(_loc14_.§=-§,int(_loc14_.§ -§))));
                     if(!_loc35_)
                     {
                        _loc15_ = §§pop();
                        §§push(_loc13_.levelCount);
                        if(!_loc34_)
                        {
                           break;
                        }
                     }
                     while(true)
                     {
                        §§push(int(§§pop()));
                        if(!_loc35_)
                        {
                           _loc16_ = §§pop();
                           if(!_loc34_)
                           {
                              break;
                           }
                           §§push(_loc15_);
                           if(!_loc35_)
                           {
                              break loop5;
                           }
                        }
                        addr022f:
                        loop7:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(§§pop() >= _loc13_.levelCount);
                              if(!_loc35_)
                              {
                                 _loc4_ = §§pop();
                                 break loop1;
                              }
                              addr029b:
                              if(§§pop())
                              {
                                 if(!_loc35_)
                                 {
                                    §§push(§>K§.§`S§.§'m§(3));
                                    if(!_loc35_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    break loop7;
                                 }
                              }
                              else
                              {
                                 _loc2_ = false;
                                 if(!_loc35_)
                                 {
                                    §§goto(addr02c8);
                                 }
                              }
                              §§goto(addr02ce);
                           }
                           addr02c9:
                           if(!§§pop())
                           {
                              §§goto(addr02ce);
                           }
                           else
                           {
                              _loc9_ = §>K§.§>=§;
                              _loc10_ = _loc9_.§0!R§;
                              while(true)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(!_loc35_)
                                       {
                                          §§push(int(Save.§@!A§().get(_loc10_.§=-§,int(_loc10_.§ -§))));
                                          if(_loc35_)
                                          {
                                             break loop10;
                                          }
                                          _loc11_ = §§pop();
                                          if(!_loc34_)
                                          {
                                             continue loop11;
                                          }
                                          §§push(_loc9_.levelCount);
                                          if(!_loc34_)
                                          {
                                             break loop10;
                                          }
                                          _loc12_ = int(§§pop());
                                          if(!_loc35_)
                                          {
                                             §§push(_loc11_);
                                             §§push(_loc12_);
                                             if(!_loc34_)
                                             {
                                                break;
                                             }
                                             if(§§pop() >= §§pop())
                                             {
                                                §§push(_loc12_);
                                                break loop10;
                                             }
                                             if(_loc35_)
                                             {
                                                continue loop11;
                                             }
                                          }
                                       }
                                       §§push(_loc11_);
                                       if(_loc35_)
                                       {
                                       }
                                       break loop10;
                                    }
                                    if(§§pop() < §§pop())
                                    {
                                       §§push(false);
                                       if(_loc34_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       _loc20_ = §§pop();
                                       break loop11;
                                    }
                                    if(_loc35_)
                                    {
                                       break loop11;
                                    }
                                    continue loop11;
                                 }
                                 §§push(_loc9_.levelCount);
                                 break loop32;
                              }
                              _loc13_ = §>K§.§`S§;
                              _loc14_ = _loc13_.§0!R§;
                              loop11:
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(_loc34_)
                                    {
                                       §§push(int(Save.§@!A§().get(_loc14_.§=-§,int(_loc14_.§ -§))));
                                       if(!_loc34_)
                                       {
                                          break;
                                       }
                                       _loc15_ = §§pop();
                                       if(!_loc34_)
                                       {
                                          break loop11;
                                       }
                                       _loc16_ = _loc13_.levelCount;
                                       if(!_loc34_)
                                       {
                                          break loop11;
                                       }
                                    }
                                    §§push(_loc15_);
                                    if(_loc35_)
                                    {
                                       break;
                                    }
                                    §§push(_loc16_);
                                    if(!_loc35_)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          if(_loc34_)
                                          {
                                             §§push(_loc15_);
                                             break;
                                          }
                                          break loop11;
                                       }
                                       §§push(_loc16_);
                                       break;
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       §§push(true);
                                       if(_loc34_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       _loc20_ = §§pop();
                                       break loop11;
                                    }
                                    if(!_loc34_)
                                    {
                                       break loop11;
                                    }
                                    _loc21_ = §>K§.§;!4§;
                                    _loc22_ = _loc21_.§0!R§;
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             if(_loc34_)
                                             {
                                                _loc23_ = int(Save.§@!A§().get(_loc22_.§=-§,int(_loc22_.§ -§)));
                                                while(true)
                                                {
                                                   §§push(_loc21_.levelCount);
                                                   if(_loc34_)
                                                   {
                                                      _loc24_ = §§pop();
                                                      §§push(_loc23_);
                                                      §§push(_loc24_);
                                                      if(_loc35_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop() < §§pop() ? _loc23_ : _loc24_);
                                                   }
                                                   §§push(_loc21_.levelCount);
                                                   break;
                                                }
                                                _loc20_ = §§pop() >= §§pop();
                                                break loop11;
                                             }
                                             §§goto(addr049b);
                                          }
                                          §§goto(addr0553);
                                       }
                                       §§goto(addr04d4);
                                    }
                                    §§goto(addr04a8);
                                 }
                                 §§goto(addr03d9);
                              }
                              loop13:
                              while(true)
                              {
                                 if(_loc20_)
                                 {
                                    loop14:
                                    while(true)
                                    {
                                       loop15:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             if(_loc34_)
                                             {
                                                §§push(§>K§.§>-§.§'m§(6));
                                                if(!_loc34_)
                                                {
                                                   break;
                                                }
                                                _loc19_ = §§pop();
                                                if(!_loc19_)
                                                {
                                                   §§push(false);
                                                   if(!_loc35_)
                                                   {
                                                      break loop15;
                                                   }
                                                   addr0553:
                                                   _loc17_ = §§pop();
                                                   break loop13;
                                                }
                                                if(_loc35_)
                                                {
                                                   break loop14;
                                                }
                                             }
                                             addr04a8:
                                             §§push(§>K§.§`S§.§'m§(3));
                                             break;
                                          }
                                          §§push(Boolean(§§pop()));
                                          if(_loc35_)
                                          {
                                             break;
                                          }
                                          _loc18_ = §§pop();
                                          if(_loc34_)
                                          {
                                             break loop14;
                                          }
                                          §§goto(addr04df);
                                       }
                                       _loc18_ = §§pop();
                                       break;
                                    }
                                    addr04d4:
                                    if(_loc18_)
                                    {
                                       if(!_loc35_)
                                       {
                                          addr04df:
                                          _loc25_ = Cutscenes.§,!L§();
                                          if(!_loc35_)
                                          {
                                             if(_loc25_.§?^§ == null)
                                             {
                                                §§push(false);
                                                if(!_loc35_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                                _loc17_ = §§pop();
                                                break;
                                             }
                                             if(_loc35_)
                                             {
                                                break;
                                             }
                                          }
                                          _loc26_ = _loc25_.§?^§;
                                          if(_loc34_)
                                          {
                                             while(true)
                                             {
                                                §§push(Boolean(Save.§@!A§().get(_loc26_.§=-§,Boolean(_loc26_.§ -§))));
                                                if(_loc34_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc35_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                _loc17_ = §§pop();
                                                while(true)
                                                {
                                                   if(!_loc35_)
                                                   {
                                                      break loop13;
                                                   }
                                                   addr056a:
                                                   Cutscenes.§,!L§().display(2);
                                                   break;
                                                }
                                             }
                                             addr055f:
                                             if(!§§pop())
                                             {
                                                _loc27_ = Cutscenes.§->§();
                                                loop18:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc34_)
                                                      {
                                                         if(_loc27_.§?^§ != null)
                                                         {
                                                            if(!_loc35_)
                                                            {
                                                               _loc26_ = _loc27_.§?^§;
                                                               if(!_loc34_)
                                                               {
                                                                  break loop18;
                                                               }
                                                               §§push(Boolean(Save.§@!A§().get(_loc26_.§=-§,Boolean(_loc26_.§ -§))));
                                                               if(!_loc35_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!_loc34_)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               _loc28_ = §§pop();
                                                               if(_loc35_)
                                                               {
                                                                  break loop18;
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(false);
                                                            if(_loc34_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            _loc28_ = §§pop();
                                                         }
                                                      }
                                                      §§push(_loc28_);
                                                      if(!_loc35_)
                                                      {
                                                         break;
                                                      }
                                                      addr05f4:
                                                      if(§§pop())
                                                      {
                                                         if(_loc34_)
                                                         {
                                                            §@2§.§6Q§();
                                                         }
                                                         break loop18;
                                                      }
                                                      loop20:
                                                      while(true)
                                                      {
                                                         loop21:
                                                         while(true)
                                                         {
                                                            loop22:
                                                            while(true)
                                                            {
                                                               §§push(true);
                                                               if(_loc34_)
                                                               {
                                                                  §§push(path.available);
                                                                  if(_loc34_)
                                                                  {
                                                                     §§push(!§§pop());
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     §§pop();
                                                                     §§push(path.§'m§(§5!K§));
                                                                     if(!_loc34_)
                                                                     {
                                                                        break loop20;
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                     if(_loc34_)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        if(!_loc34_)
                                                                        {
                                                                           break loop20;
                                                                        }
                                                                     }
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     _loc29_ = §'!E§.§@!A§();
                                                                     while(true)
                                                                     {
                                                                        §§push(§=B§);
                                                                        §§push(int(_loc29_.§6a§.length));
                                                                        if(_loc34_)
                                                                        {
                                                                           §§push(1);
                                                                           if(!_loc34_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(§§pop() - §§pop());
                                                                        }
                                                                        §§push(-1);
                                                                        break;
                                                                     }
                                                                     _loc30_ = §§pop().§@W§(§§pop(),§§pop(),-1);
                                                                     if(!_loc35_)
                                                                     {
                                                                        while(_loc30_.§#1§ != _loc30_.end)
                                                                        {
                                                                           _loc31_ = _loc30_;
                                                                           if(!_loc35_)
                                                                           {
                                                                              loop24:
                                                                              while(true)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc31_);
                                                                                    §§push(_loc31_.§#1§);
                                                                                    if(_loc34_)
                                                                                    {
                                                                                       §§push(_loc30_.§['§);
                                                                                       if(_loc35_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!_loc34_)
                                                                                       {
                                                                                          break loop24;
                                                                                       }
                                                                                    }
                                                                                    §§push(int(§§pop()));
                                                                                    if(_loc34_)
                                                                                    {
                                                                                       var _temp_1:* = §§pop();
                                                                                       §§push(_temp_1);
                                                                                       §§push(_temp_1);
                                                                                       break;
                                                                                    }
                                                                                    break loop24;
                                                                                 }
                                                                                 _loc8_ = §§pop();
                                                                                 break;
                                                                              }
                                                                              §§pop().§#1§ = §§pop();
                                                                              if(_loc35_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§push(_loc8_);
                                                                              if(!_loc35_)
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                              }
                                                                              _loc7_ = §§pop();
                                                                              if(_loc35_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                           }
                                                                           _loc29_.§6a§[_loc7_].hide();
                                                                        }
                                                                        if(_loc34_)
                                                                        {
                                                                           §'!E§.§@!A§().§>!W§("Coming soon!");
                                                                        }
                                                                     }
                                                                     return;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(path.pathName);
                                                                     if(_loc34_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc34_)
                                                                        {
                                                                           _loc32_ = §§pop();
                                                                           if(§>K§.§@!A§().§2! §.get(_loc32_) == null)
                                                                           {
                                                                              return;
                                                                           }
                                                                           path.§^J§.§?F§(§5!K§);
                                                                           if(_loc34_)
                                                                           {
                                                                              Save.currentPath.§?F§(path.pathName);
                                                                              if(_loc35_)
                                                                              {
                                                                                 break loop21;
                                                                              }
                                                                              Save.forceVisitMap.§?F§(false);
                                                                           }
                                                                           if(§5!K§ != 0)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!_loc34_)
                                                                           {
                                                                              break loop22;
                                                                           }
                                                                           §§push(path.startCutscene);
                                                                        }
                                                                     }
                                                                     if(§§pop() != null)
                                                                     {
                                                                        _loc33_ = Cutscenes.§3'§(path.startCutscene);
                                                                        if(_loc34_)
                                                                        {
                                                                           if(_loc33_ == null)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!_loc35_)
                                                                           {
                                                                              _loc33_.display(2);
                                                                           }
                                                                        }
                                                                        return;
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§push(path.§#f§(§5!K§));
                                                                  if(_loc35_)
                                                                  {
                                                                     break loop20;
                                                                  }
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                               break loop20;
                                                            }
                                                            §§goto(addr080d);
                                                         }
                                                         return;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         addr080d:
                                                         hide();
                                                      }
                                                      break loop21;
                                                   }
                                                   §§goto(addr05f4);
                                                }
                                                return;
                                             }
                                             if(_loc34_)
                                             {
                                                §§goto(addr056a);
                                             }
                                          }
                                          return;
                                       }
                                       break;
                                    }
                                    §§push(false);
                                 }
                                 else
                                 {
                                    §§push(false);
                                    if(_loc34_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc35_)
                                       {
                                          _loc19_ = §§pop();
                                          if(!_loc35_)
                                          {
                                             §§goto(addr049b);
                                          }
                                          §§goto(addr04a8);
                                       }
                                       §§goto(addr04d4);
                                    }
                                 }
                                 §§goto(addr0553);
                              }
                              §§push(_loc17_);
                              if(_loc34_)
                              {
                                 §§push(!§§pop());
                              }
                              §§goto(addr055f);
                           }
                        }
                        _loc2_ = §§pop();
                        addr02c8:
                        §§push(_loc2_);
                        break loop8;
                     }
                     addr0269:
                     §§push(§>K§.§>-§.§'m§(6));
                     if(_loc34_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc34_)
                        {
                           break loop7;
                        }
                     }
                     _loc3_ = Boolean(§§pop());
                     addr029a:
                     §§goto(addr029b);
                  }
                  §§push(_loc16_);
                  if(!_loc34_)
                  {
                     continue loop7;
                  }
                  if(§§pop() < §§pop())
                  {
                     §§push(_loc15_);
                     if(_loc34_)
                     {
                     }
                  }
                  else
                  {
                     §§push(_loc16_);
                  }
                  §§goto(addr022f);
               }
               §§goto(addr013c);
            }
            loop33:
            while(true)
            {
               loop34:
               while(true)
               {
                  §§push(_loc4_);
                  if(_loc34_)
                  {
                     if(§§pop())
                     {
                        §§goto(addr0269);
                     }
                     else
                     {
                        §§push(false);
                        if(_loc35_)
                        {
                           break loop33;
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc34_)
                     {
                        _loc3_ = §§pop();
                        break loop34;
                     }
                     §§goto(addr02c9);
                  }
                  addr02ce:
                  return;
               }
               §§goto(addr029a);
            }
            §§goto(addr029b);
         }
         continue loop21;
      }
      
      public function hide() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            path = null;
            if(_loc2_)
            {
               §5!K§ = -1;
               if(!_loc1_)
               {
                  visible = false;
               }
            }
         }
      }
      
      override public function §^g§() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            §1!!§ = §&!;§.§9Q§(0,40,null,"Level 0",null,null,null,null,"center");
         }
         var _loc1_:TextField = §1!!§;
         var _loc2_:* = null;
         loop0:
         while(true)
         {
            if(_loc3_)
            {
               while(true)
               {
                  if(_loc2_ == null)
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     _loc2_ = int(Number(_loc1_.defaultTextFormat.size));
                  }
                  §&d§.§1$§().add(new §?y§(_loc1_),new §=!]§(int(_loc2_)));
                  if(_loc3_)
                  {
                     §1!!§.mouseEnabled = false;
                     if(_loc4_)
                     {
                        break;
                     }
                  }
                  addChild(§1!!§);
                  if(_loc3_)
                  {
                     break;
                  }
                  break loop0;
               }
            }
            visible = false;
            break;
         }
      }
   }
}

