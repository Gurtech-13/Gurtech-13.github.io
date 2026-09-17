package §-v§
{
   import §!!X§.§!_§;
   import §!!X§.§`Q§;
   import §%!Q§.§ !>§;
   import §%!Q§.§>K§;
   import §<?§.§#!7§;
   import §>!O§.§#!6§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§38§;
   import com.player03.run3.Save;
   import com.player03.run3.level.Level;
   import com.player03.run3.save.§-Q§;
   import flash.display.Shape;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §@5§ extends Shape
   {
      
      public var §#H§:Point;
      
      public var §7D§:Boolean;
      
      public var §!U§:Point;
      
      public var §2!'§:§38§;
      
      public var §&N§:Number;
      
      public var §9i§:Point;
      
      public var §20§:Number;
      
      public var §!I§:Number;
      
      public var §>8§:Number;
      
      public var §5z§:Number;
      
      public var §&#§:Rectangle;
      
      public function §@5§(param1:Number, param2:Rectangle = undefined, param3:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(param3 == null)
         {
            param3 = 0;
         }
         §20§ = 4.2;
         while(true)
         {
            if(!_loc5_)
            {
               §7D§ = false;
               §!I§ = 0;
               if(_loc6_)
               {
                  super();
               }
               §&N§ = param1;
               if(_loc6_)
               {
                  §&#§ = param2;
               }
               §2!'§ = §&d§.§1$§().scale;
               if(!_loc6_)
               {
                  break;
               }
               §9i§ = new Point(0,0);
            }
            §#H§ = new Point(0,0);
            §!U§ = new Point(0,0);
            if(!_loc5_)
            {
               scrollRect = param2;
            }
            break;
         }
         while(true)
         {
            §§push(§6;§);
            if(_loc6_)
            {
               §§push(§§pop());
               if(!_loc6_)
               {
                  break;
               }
            }
            §§push(§§pop());
            break;
         }
         var _loc4_:* = §§pop();
         if(!_loc5_)
         {
            §&d§.§1$§().§6"§.push(new §#!7§(null,null,new §#!6§(_loc4_)));
         }
      }
      
      public function §1!+§(param1:Object = undefined) : void
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc7_:* = null as § !>§;
         var _loc8_:* = null as §-Q§;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         while(true)
         {
            if(_loc11_)
            {
               if(param1 != null)
               {
                  break;
               }
            }
            param1 = §`Q§.§@1§;
            break;
         }
         §§push(false);
         if(!_loc12_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc12_)
         {
            if(§!I§ != param1)
            {
               if(!_loc12_)
               {
                  §!I§ = param1;
                  if(!_loc12_)
                  {
                     §§push(true);
                     if(!_loc12_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     _loc2_ = §§pop();
                  }
               }
            }
         }
         var _loc3_:§ !>§ = §>K§.§`S§;
         var _loc4_:§-Q§ = _loc3_.§0!R§;
         §§push(int(Save.§@!A§().get(_loc4_.§=-§,int(_loc4_.§ -§))));
         if(!_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(_loc3_.levelCount);
         if(!_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         while(true)
         {
            §§push(_loc5_);
            if(_loc11_)
            {
               §§push(_loc6_);
               if(_loc12_)
               {
                  break;
               }
               if(§§pop() < §§pop())
               {
                  §§push(_loc5_);
                  if(_loc12_)
                  {
                  }
               }
               else
               {
                  §§push(_loc6_);
               }
            }
            §§push(_loc3_.levelCount);
            break;
         }
         §§push(§§pop() >= §§pop());
         if(_loc11_)
         {
            if(§§pop() != §7D§)
            {
               _loc7_ = §>K§.§`S§;
               _loc8_ = _loc7_.§0!R§;
               if(!_loc12_)
               {
                  loop2:
                  while(true)
                  {
                     §§push(int(Save.§@!A§().get(_loc8_.§=-§,int(_loc8_.§ -§))));
                     if(_loc11_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc12_)
                        {
                           _loc9_ = §§pop();
                           if(_loc12_)
                           {
                              break;
                           }
                           §§push(_loc7_.levelCount);
                           if(!_loc12_)
                           {
                              §§push(int(§§pop()));
                           }
                        }
                     }
                     _loc10_ = §§pop();
                     if(!_loc12_)
                     {
                        loop3:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(§§findproperty(§7D§));
                              if(!_loc12_)
                              {
                                 §§push(_loc9_);
                                 if(_loc12_)
                                 {
                                    break loop3;
                                 }
                                 §§push(_loc10_);
                                 if(!_loc11_)
                                 {
                                    break;
                                 }
                                 if(§§pop() >= §§pop())
                                 {
                                    §§push(_loc10_);
                                    break loop3;
                                 }
                              }
                              §§push(_loc9_);
                              if(_loc12_)
                              {
                              }
                              break loop3;
                           }
                           §§pop().§7D§ = §§pop() >= §§pop();
                           if(_loc11_)
                           {
                              §§push(true);
                              if(!_loc12_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              _loc2_ = §§pop();
                           }
                           break loop2;
                        }
                        §§push(_loc7_.levelCount);
                        break loop4;
                     }
                     break;
                  }
               }
            }
            while(true)
            {
               if(§20§ != §`Q§.§20§)
               {
                  §20§ = §`Q§.§20§;
                  §§push(true);
                  if(_loc12_)
                  {
                     break;
                  }
                  §§push(Boolean(§§pop()));
                  if(!_loc11_)
                  {
                     break;
                  }
                  _loc2_ = §§pop();
               }
               §§push(_loc2_);
               break;
            }
         }
         if(§§pop())
         {
            §6;§();
         }
      }
      
      public function §6;§() : void
      {
         var _temp_1:* = true;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = _temp_1;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc1_:§38§ = §2!'§;
         while(true)
         {
            §§push(§&N§);
            if(_loc14_)
            {
               §§push(_loc1_.x);
               if(_loc14_)
               {
                  §§push(§§pop() + _loc1_.y);
                  if(!_loc13_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc13_)
                     {
                        §§push(§§pop() / 2);
                     }
                  }
               }
               §§push(§§pop() * §§pop());
               if(!_loc14_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!_loc13_)
         {
            §§push(§§pop() / 5.2);
            if(!_loc13_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(_loc2_);
         if(!_loc13_)
         {
            §§push(§§pop() * 0.03);
            if(_loc14_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(_loc2_);
         if(_loc14_)
         {
            §§push(§§pop() * 0.02);
            if(_loc14_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         var _loc6_:* = 0;
         var _loc7_:Number = 0;
         §!_§.§>!-§(§!I§,§#H§);
         loop1:
         while(true)
         {
            if(!_loc13_)
            {
               if(§&#§ != null)
               {
                  scrollRect = §&#§;
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
                              §§push(§#H§.x / §#H§.y);
                              if(_loc14_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc13_)
                                 {
                                    break loop2;
                                 }
                                 _loc9_ = §§pop();
                                 if(_loc14_)
                                 {
                                    if(_loc9_ >= 0)
                                    {
                                       if(_loc13_)
                                       {
                                          break loop4;
                                       }
                                       addr0120:
                                       §§push(_loc9_);
                                       §§push(§&#§.width / §&#§.height);
                                       if(!_loc14_)
                                       {
                                          break;
                                       }
                                       if(§§pop() > §§pop())
                                       {
                                          addr013b:
                                          _loc8_ = §&#§.width / 2;
                                          break loop4;
                                       }
                                       §§push(§&#§.height / 2);
                                       if(!_loc14_)
                                       {
                                          break loop3;
                                       }
                                       §§push(Number(§§pop()));
                                       if(!_loc14_)
                                       {
                                          break loop2;
                                       }
                                    }
                                    else
                                    {
                                       §§push(-_loc9_);
                                       if(!_loc13_)
                                       {
                                          §§goto(addr0120);
                                       }
                                    }
                                    addr0167:
                                    _loc8_ = §§pop();
                                    break loop4;
                                 }
                                 §§goto(addr013b);
                              }
                              §§goto(addr0167);
                           }
                           §§goto(addr01b1);
                        }
                        §§push(_loc8_);
                        if(_loc13_)
                        {
                           break loop2;
                        }
                        §§push(0.09615384615384615);
                        if(_loc14_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc14_)
                           {
                              §§push(Number(§§pop()));
                              break;
                           }
                           §§goto(addr01b9);
                        }
                        §§goto(addr01e1);
                     }
                     _loc8_ = §§pop();
                     if(_loc14_)
                     {
                        §§push(§&#§.x + §&#§.width / 2);
                        §§push(§#H§.x * _loc8_);
                        if(_loc14_)
                        {
                           addr01b1:
                           §§push(§§pop() - §§pop());
                           if(!_loc13_)
                           {
                              addr01b9:
                              _loc6_ = §§pop();
                              if(!_loc13_)
                              {
                                 §§push(§&#§.y + §&#§.height / 2);
                                 break;
                              }
                              break loop1;
                           }
                           §§goto(addr01e2);
                        }
                        §§goto(addr01e1);
                     }
                  }
                  addr01e2:
                  _loc7_ = §§pop() - §#H§.y * _loc8_;
                  addr01e1:
               }
            }
            graphics.clear();
            if(_loc14_)
            {
               graphics.beginFill(0,1);
               if(!_loc13_)
               {
                  break;
               }
               addr0223:
               §!_§.§1s§(§!I§,§9i§);
               addr0236:
               var _loc10_:Point = §9i§;
               var _loc11_:Point = §9i§;
               loop6:
               while(true)
               {
                  if(!_loc13_)
                  {
                     while(true)
                     {
                        if(_loc11_ == null)
                        {
                           if(!_loc14_)
                           {
                              break;
                           }
                           _loc11_ = new Point(0,0);
                        }
                        _loc11_.x = _loc10_.x * _loc3_;
                        if(_loc14_)
                        {
                           _loc11_.y = _loc10_.y * _loc3_;
                           if(_loc14_)
                           {
                              break;
                           }
                           break loop6;
                        }
                        break;
                     }
                  }
                  _temp_2.y *= 0.8;
                  if(!_loc13_)
                  {
                     §§push(§§findproperty(§9!3§));
                     §§push(_loc6_);
                     if(_loc14_)
                     {
                        §§push(§§pop() + §9i§.x);
                     }
                     §§push(_loc7_);
                     if(_loc14_)
                     {
                        §§push(§§pop() + §9i§.y);
                     }
                     §§pop().§9!3§(§§pop(),§§pop(),_loc4_);
                  }
                  break;
               }
               _loc10_ = §#H§;
               _loc11_ = §#H§;
               loop8:
               while(true)
               {
                  loop9:
                  while(true)
                  {
                     loop10:
                     while(true)
                     {
                        if(!_loc13_)
                        {
                           while(true)
                           {
                              if(_loc11_ == null)
                              {
                                 if(!_loc14_)
                                 {
                                    break;
                                 }
                                 _loc11_ = new Point(0,0);
                              }
                              _loc11_.x = _loc10_.x * _loc3_;
                              _loc11_.y = _loc10_.y * _loc3_;
                              _temp_3.y *= 0.8;
                              §§push(§7D§);
                              if(!_loc13_)
                              {
                                 if(§§pop())
                                 {
                                    graphics.drawCircle(_loc6_ + §#H§.x,_loc7_ + §#H§.y,_loc4_ * 1.9);
                                    if(!_loc13_)
                                    {
                                       break;
                                    }
                                    break loop9;
                                 }
                                 break;
                              }
                              break loop10;
                           }
                           graphics.endFill();
                           if(!_loc14_)
                           {
                              break loop8;
                           }
                        }
                        graphics.lineStyle(_loc5_,0);
                        §9!3§(_loc6_,_loc7_,_loc3_);
                        §§push(§7D§);
                        break;
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           §§push(§§findproperty(§9!3§));
                           §§push(_loc6_);
                           §§push(_loc7_);
                           §§push(5.2);
                           if(_loc14_)
                           {
                              §§push(§§pop() * _loc3_);
                           }
                           §§pop().§9!3§(§§pop(),§§pop(),§§pop());
                           if(_loc13_)
                           {
                              break;
                           }
                        }
                        graphics.lineStyle(_loc5_ * 0.7,0);
                        if(!_loc13_)
                        {
                           break loop8;
                        }
                        break loop9;
                     }
                     §§goto(addr040b);
                  }
                  §§push(§§findproperty(§9!3§));
                  §§push(_loc6_);
                  §§push(_loc7_);
                  §§push(7.279999999999999);
                  if(_loc14_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().§9!3§(§§pop(),§§pop(),§§pop());
                  addr040b:
                  _loc10_ = §9i§;
                  _loc11_ = §#H§;
                  while(true)
                  {
                     if(!_loc13_)
                     {
                        _loc10_.x = _loc11_.x;
                        if(!_loc14_)
                        {
                           break;
                        }
                     }
                     _loc10_.y = _loc11_.y;
                     break;
                  }
                  _loc10_ = §9i§;
                  loop12:
                  while(true)
                  {
                     loop13:
                     while(true)
                     {
                        loop17:
                        while(true)
                        {
                           loop18:
                           while(true)
                           {
                              loop19:
                              while(true)
                              {
                                 §§push(_loc10_.x * _loc10_.x);
                                 §§push(_loc10_.y * _loc10_.y);
                                 if(!_loc13_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc13_)
                                    {
                                       break loop18;
                                    }
                                    _loc8_ = §§pop();
                                    while(true)
                                    {
                                       §§push(_loc8_);
                                       §§push(1);
                                       if(!_loc13_)
                                       {
                                          _loc9_ = §§pop() - §§pop();
                                          if(_loc13_)
                                          {
                                             break loop17;
                                          }
                                          §§push(_loc9_);
                                          if(_loc13_)
                                          {
                                             break;
                                          }
                                          §§push(0);
                                          if(!_loc14_)
                                          {
                                             break loop13;
                                          }
                                       }
                                       if(§§pop() < §§pop())
                                       {
                                          §§push(_loc9_);
                                          if(!_loc13_)
                                          {
                                             break;
                                          }
                                          break loop19;
                                       }
                                       if(!_loc14_)
                                       {
                                          break loop12;
                                       }
                                       §§push(_loc9_);
                                       §§push(1e-10);
                                    }
                                    §§goto(addr04ab);
                                 }
                                 §§push(§§pop() < §§pop());
                                 if(!_loc13_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(§§pop())
                                 {
                                    break loop12;
                                 }
                                 §§goto(addr050a);
                              }
                              §§goto(addr04f1);
                           }
                           §§goto(addr04f2);
                        }
                        _loc10_.x = 1;
                        if(_loc14_)
                        {
                           _loc10_.y = 0;
                        }
                        else
                        {
                           §§goto(addr04ff);
                        }
                        §§goto(addr050a);
                     }
                     if(§§pop() == §§pop())
                     {
                        break loop17;
                     }
                     §§push(1 / Number(Math.sqrt(_loc8_)));
                     if(!_loc13_)
                     {
                        addr04f1:
                        §§push(Number(§§pop()));
                     }
                     §§goto(addr04f2);
                  }
                  addr04f2:
                  §§push(_loc8_);
                  if(_loc14_)
                  {
                     §§push(0);
                     break loop13;
                  }
                  _loc8_ = §§pop();
                  _loc10_.x *= _loc8_;
                  addr04ff:
                  _loc10_.y *= _loc8_;
                  addr050a:
                  _loc10_ = §9i§;
                  if(!_loc13_)
                  {
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc14_)
                        {
                           §§push(_loc4_);
                           if(!_loc13_)
                           {
                              §§push(§§pop() * 1.3);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc14_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc13_)
                              {
                                 break;
                              }
                           }
                        }
                        §§push(Number(§§pop()));
                        break;
                     }
                     _loc8_ = §§pop();
                  }
                  _loc11_ = §9i§;
                  if(_loc14_)
                  {
                     while(true)
                     {
                        if(_loc11_ == null)
                        {
                           if(_loc13_)
                           {
                              break;
                           }
                           _loc11_ = new Point(0,0);
                        }
                        _loc11_.x = _loc10_.x * _loc8_;
                        if(!_loc13_)
                        {
                           break;
                        }
                     }
                     _loc11_.y = _loc10_.y * _loc8_;
                  }
                  _loc10_ = §9i§;
                  _loc11_ = §#H§;
                  if(!_loc13_)
                  {
                     §§push(1);
                     §§push(§20§);
                     if(_loc14_)
                     {
                        §§push(§§pop() / 4.2);
                     }
                     §§push(§§pop() - §§pop());
                     if(!_loc13_)
                     {
                        §§push(Number(§§pop()));
                     }
                     _loc8_ = §§pop();
                  }
                  var _loc12_:Point = §!U§;
                  if(!_loc13_)
                  {
                     if(_loc12_ == null)
                     {
                        _loc12_ = new Point(0,0);
                     }
                     _loc12_.x = _loc10_.x + _loc8_ * (_loc11_.x - _loc10_.x);
                     _loc12_.y = _loc10_.y + _loc8_ * (_loc11_.y - _loc10_.y);
                     graphics.moveTo(_loc6_ + §9i§.x,_loc7_ + §9i§.y);
                     graphics.lineTo(_loc6_ + §!U§.x,_loc7_ + §!U§.y);
                  }
                  while(true)
                  {
                     if(§7D§)
                     {
                        graphics.lineStyle(_loc5_,0,0.2);
                        if(_loc13_)
                        {
                           break;
                        }
                        graphics.lineTo(_loc6_ + §#H§.x,_loc7_ + §#H§.y);
                     }
                     §5z§ = _loc6_;
                     §>8§ = _loc7_;
                     break;
                  }
                  return;
               }
               §§push(§§findproperty(§9!3§));
               §§push(_loc6_);
               §§push(_loc7_);
               §§push(2.5);
               if(!_loc13_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().§9!3§(§§pop(),§§pop(),§§pop());
               break loop9;
            }
            break;
         }
         graphics.drawCircle(_loc6_,_loc7_,_loc4_ * 2);
         if(_loc14_)
         {
            §§goto(addr0223);
         }
         §§goto(addr0236);
      }
      
      public function §9!3§(param1:Number, param2:Number, param3:Number) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            graphics.drawEllipse(param1 - param3,param2 - param3 * 0.8,param3 * 2,param3 * 0.8 * 2);
         }
      }
   }
}

