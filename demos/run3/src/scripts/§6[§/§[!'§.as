package §6[§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §%!Q§.§ !>§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §6!Q§.§<!T§;
   import §<?§.§#!7§;
   import §>!O§.§#!6§;
   import §>T§.§"=§;
   import §>T§.§@o§;
   import §>T§.§[C§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§38§;
   import com.player03.run3.Save;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.level.§ !W§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.Model;
   
   public class §[!'§ extends Sprite
   {
      
      public var §%1§:Function;
      
      public var §=F§:§&d§;
      
      public var §^D§:Rectangle;
      
      public var §!!4§:Shape;
      
      public var §[K§:int;
      
      public var § !U§:BitmapData;
      
      public var §6!B§:Bitmap;
      
      public function §[!'§(param1:Function)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §[K§ = -1;
         loop0:
         while(true)
         {
            if(!_loc5_)
            {
               super();
               §%1§ = param1;
               if(_loc5_)
               {
                  break;
               }
            }
            §=F§ = §&d§.§1$§();
            while(true)
            {
               if(_loc4_)
               {
                  break loop0;
               }
               addr0071:
               addChild(§6!B§);
               break;
            }
            §§goto(addr007c);
         }
         §^D§ = new Rectangle();
         if(_loc4_)
         {
            §6!B§ = new Bitmap();
            if(!_loc5_)
            {
               §§goto(addr0071);
            }
         }
         addr007c:
         §§push(§1!§);
         if(!_loc5_)
         {
            §§push(§§pop());
            if(_loc4_)
            {
               §§push(§§pop());
            }
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc5_)
            {
               §=F§.§6"§.push(new §#!7§(null,null,new §#!6§(_loc2_)));
               if(_loc4_)
               {
                  _loc2_();
                  if(!_loc4_)
                  {
                     break;
                  }
               }
            }
            §!!4§ = new Shape();
            if(_loc4_)
            {
               break;
            }
            §§goto(addr00f9);
         }
         addChild(§!!4§);
         addr00f9:
         var _loc3_:§<!T§ = new §<!T§(null,0);
         loop3:
         while(true)
         {
            if(_loc4_)
            {
               _loc3_.§4#§ = 2.4;
               if(_loc5_)
               {
                  break;
               }
            }
            _loc3_.§=M§ = 16777215;
            while(true)
            {
               if(_loc4_)
               {
                  break loop3;
               }
               addr0163:
               addEventListener(MouseEvent.CLICK,§#_§);
               break;
            }
            §§goto(addr0176);
         }
         §=F§.add(new §?y§(§!!4§),_loc3_,new § 6§(§^D§));
         if(_loc4_)
         {
            §§goto(addr0163);
         }
         addr0176:
      }
      
      public function §1!§() : void
      {
         §§push(false);
         var _loc17_:Boolean = true;
         var _loc18_:* = §§pop();
         var _loc10_:int = 0;
         var _loc11_:* = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:* = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         §§push(§[K§);
         if(_loc17_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:§38§ = §=F§.scale;
         loop21:
         while(true)
         {
            if(!_loc18_)
            {
               §[K§ = int(Math.round(18 * ((_loc2_.x + _loc2_.y) / 2)));
               if(!_loc17_)
               {
                  break;
               }
            }
            loop22:
            while(true)
            {
               §§push(§[K§);
               if(_loc17_)
               {
                  §§push(0);
                  if(_loc17_)
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(_loc17_)
                        {
                           break loop21;
                        }
                     }
                     addr009d:
                     while(true)
                     {
                        §§push(§[K§);
                        if(!_loc18_)
                        {
                           §§push(6);
                           if(!_loc17_)
                           {
                              break;
                           }
                           §§push(§§pop() * §§pop());
                           if(!_loc17_)
                           {
                              break loop22;
                           }
                           §§push(3);
                           if(_loc18_)
                           {
                              break;
                           }
                           §§push(§§pop() * §§pop());
                           if(_loc18_)
                           {
                              break loop22;
                           }
                        }
                        §§push(1);
                        break;
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc18_)
                  {
                     break;
                  }
               }
               §§push(int(§§pop()));
               break;
            }
            var _loc3_:* = §§pop();
            loop24:
            while(true)
            {
               while(true)
               {
                  §§push(§[K§);
                  if(!_loc18_)
                  {
                     §§push(6);
                     if(!_loc17_)
                     {
                        break;
                     }
                     §§push(§§pop() * §§pop());
                     if(_loc18_)
                     {
                        break loop24;
                     }
                     §§push(2);
                     if(!_loc17_)
                     {
                        break;
                     }
                     §§push(§§pop() * §§pop());
                     if(_loc18_)
                     {
                        break loop24;
                     }
                  }
                  §§push(1);
                  break;
               }
               §§push(§§pop() + §§pop());
               if(_loc17_)
               {
                  §§push(int(§§pop()));
               }
               break;
            }
            var _loc4_:* = §§pop();
            while(true)
            {
               if(!_loc18_)
               {
                  if(§ !U§ == null)
                  {
                     break;
                  }
                  if(_loc18_)
                  {
                     break;
                  }
                  §§push(false);
                  if(_loc17_)
                  {
                     if(§ !U§.width == _loc3_)
                     {
                        while(true)
                        {
                           if(!_loc18_)
                           {
                              §§pop();
                              §§push(§ !U§.height == _loc4_);
                              if(!_loc17_)
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
                     return;
                  }
                  § !U§.dispose();
               }
               § !U§ = null;
               if(_loc17_)
               {
                  break;
               }
               §§goto(addr0193);
            }
            § !U§ = new BitmapData(_loc3_,_loc4_,false,0);
            §6!B§.bitmapData = § !U§;
            addr0193:
            var _loc5_:Rectangle = new Rectangle(0,0,§[K§ - 1,§[K§ - 1);
            §§push(0);
            if(_loc17_)
            {
               §§push(int(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(0);
            if(!_loc18_)
            {
               §§push(int(§§pop()));
            }
            var _loc7_:* = §§pop();
            §§push(0);
            if(!_loc18_)
            {
               §§push(int(§§pop()));
            }
            var _loc8_:* = §§pop();
            §§push(0);
            if(_loc17_)
            {
               §§push(int(§§pop()));
            }
            var _loc9_:* = §§pop();
            while(_loc9_ < 2)
            {
               §§push(_loc9_++);
               if(_loc17_)
               {
                  _loc10_ = §§pop();
                  §§push(0);
                  if(_loc17_)
                  {
                     _loc11_ = §§pop();
                     loop1:
                     while(true)
                     {
                        §§push(_loc11_);
                        loop2:
                        while(true)
                        {
                           §§push(3);
                           loop3:
                           while(§§pop() < §§pop())
                           {
                              §§push(_loc11_++);
                              if(_loc17_)
                              {
                                 _loc12_ = §§pop();
                                 §§push(_loc10_ * 3 + _loc12_);
                                 if(!_loc18_)
                                 {
                                    §§push(5);
                                    if(_loc17_)
                                    {
                                       loop28:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop() / §§pop());
                                             if(_loc17_)
                                             {
                                                §§push(255);
                                                if(!_loc17_)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop() * §§pop());
                                                if(_loc18_)
                                                {
                                                   break loop28;
                                                }
                                             }
                                             §§push(int(§§pop()));
                                             if(!_loc18_)
                                             {
                                                _loc6_ = §§pop();
                                                §§push(0);
                                             }
                                             while(true)
                                             {
                                                _loc13_ = §§pop();
                                                §§goto(addr0335);
                                             }
                                             addr025a:
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc17_)
                                             {
                                                break loop28;
                                             }
                                             break loop30;
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(int(§§pop()));
                                          loop5:
                                          while(true)
                                          {
                                             _loc7_ = int(§§pop());
                                             if(!_loc18_)
                                             {
                                                _loc15_ = 0;
                                                loop6:
                                                while(true)
                                                {
                                                   loop30:
                                                   while(true)
                                                   {
                                                      loop31:
                                                      while(true)
                                                      {
                                                         §§push(_loc15_);
                                                         §§push(6);
                                                         if(_loc17_)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               if(_loc18_)
                                                               {
                                                                  break loop6;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc13_);
                                                                  addr0337:
                                                                  while(true)
                                                                  {
                                                                     §§push(6);
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc15_);
                                                               if(!_loc18_)
                                                               {
                                                                  _loc15_++;
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc16_ = §§pop();
                                                                  §§push(_loc16_);
                                                                  §§push(5);
                                                                  addr02be:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() / §§pop());
                                                                     if(_loc17_)
                                                                     {
                                                                        break loop30;
                                                                     }
                                                                     break loop31;
                                                                  }
                                                               }
                                                               addr02b7:
                                                            }
                                                         }
                                                         while(§§pop() < §§pop())
                                                         {
                                                            §§push(_loc13_);
                                                            if(!_loc18_)
                                                            {
                                                               _loc13_++;
                                                               §§push(int(§§pop()));
                                                               while(true)
                                                               {
                                                                  _loc14_ = §§pop();
                                                                  §§push(_loc14_);
                                                                  if(_loc17_)
                                                                  {
                                                                     §§push(5);
                                                                     if(_loc18_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§pop() / §§pop());
                                                                     if(!_loc17_)
                                                                     {
                                                                        break loop30;
                                                                     }
                                                                     §§push(255);
                                                                     if(_loc17_)
                                                                     {
                                                                        break loop29;
                                                                     }
                                                                     §§goto(addr02c8);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr0337);
                                                                  }
                                                               }
                                                               continue loop3;
                                                               addr026e:
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue loop1;
                                                      }
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(int(§§pop()));
                                                         if(!_loc17_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         §§push(int(§§pop()));
                                                         while(true)
                                                         {
                                                            _loc8_ = §§pop();
                                                            if(_loc17_)
                                                            {
                                                               while(true)
                                                               {
                                                                  _loc5_.x = (_loc12_ * 6 + _loc14_) * §[K§ + 1;
                                                               }
                                                               addr02d9:
                                                            }
                                                            while(true)
                                                            {
                                                               _loc5_.y = (_loc10_ * 6 + _loc16_) * §[K§ + 1;
                                                               § !U§.fillRect(_loc5_,_loc6_ << 16 | _loc7_ << 8 | _loc8_);
                                                               break loop14;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(255);
                                                      addr02c8:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         break loop31;
                                                      }
                                                   }
                                                }
                                                break;
                                             }
                                             §§goto(addr02d9);
                                          }
                                          break loop6;
                                       }
                                       break loop6;
                                    }
                                    §§goto(addr02be);
                                 }
                                 §§goto(addr026e);
                              }
                              §§goto(addr02d1);
                           }
                           break loop6;
                        }
                        break loop6;
                     }
                     break loop6;
                  }
                  §§goto(addr025a);
               }
               §§goto(addr02b7);
            }
            §^D§.width = §[K§;
            §^D§.height = §[K§;
            while(true)
            {
               if(_loc17_)
               {
                  if(§!!4§ == null)
                  {
                     break;
                  }
               }
               _temp_1.x *= §[K§ / _loc1_;
               if(!_loc18_)
               {
                  _temp_2.y *= §[K§ / _loc1_;
               }
               break;
            }
            return;
         }
         §[K§ = 1;
         §§goto(addr009d);
      }
      
      public function §#_§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(!_loc6_)
         {
            §§push(§%1§);
            if(_loc5_)
            {
               §§push(§§pop());
            }
            if(§§pop() != null)
            {
               §§push(int(param1.localX));
               if(_loc5_)
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               §§push(int(param1.localY));
               if(_loc5_)
               {
                  §§push(int(§§pop()));
               }
               var _loc3_:* = §§pop();
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     §§push(true);
                     if(!_loc6_)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(true);
                           if(_loc5_)
                           {
                              while(true)
                              {
                                 §§push(true);
                                 if(_loc5_)
                                 {
                                    if(_loc2_ < 0)
                                    {
                                       break;
                                    }
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                 }
                                 §§pop();
                                 if(!_loc6_)
                                 {
                                    §§push(_loc3_ < 0);
                                    if(!_loc6_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    break;
                                 }
                                 addr0090:
                                 §§pop();
                                 if(_loc6_)
                                 {
                                    break loop1;
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       §§push(§[K§);
                                       if(_loc5_)
                                       {
                                          §§push(6);
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop() * §§pop());
                                          if(_loc6_)
                                          {
                                             break loop4;
                                          }
                                       }
                                       §§push(3);
                                       break;
                                    }
                                    §§push(§§pop() * §§pop());
                                    break;
                                 }
                                 §§push(§§pop() >= §§pop());
                                 if(_loc6_)
                                 {
                                    break loop2;
                                 }
                              }
                              if(§§pop())
                              {
                                 break;
                              }
                              if(_loc6_)
                              {
                                 break;
                              }
                              §§goto(addr0090);
                           }
                           §§push(Boolean(§§pop()));
                           break;
                        }
                        if(§§pop())
                        {
                           break;
                        }
                        if(!_loc5_)
                        {
                           break loop0;
                        }
                     }
                     §§pop();
                     §§push(_loc3_);
                     §§push(§[K§);
                     §§push(6);
                     if(!_loc6_)
                     {
                        §§push(§§pop() * §§pop());
                        §§push(2);
                     }
                     §§push(§§pop() >= §§pop() * §§pop());
                     if(!_loc6_)
                     {
                        break loop0;
                     }
                     break;
                  }
                  if(§§pop())
                  {
                     return;
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                     §§push(§[K§);
                     if(!_loc6_)
                     {
                        §§push(§§pop() % §§pop());
                        if(!_loc5_)
                        {
                           break;
                        }
                        §§push(int(§§pop()));
                        §§push(0);
                     }
                     if(§§pop() == §§pop())
                     {
                        if(!_loc6_)
                        {
                           _loc2_++;
                        }
                     }
                     §§goto(addr0132);
                  }
                  addr0132:
                  §§push(_loc3_);
                  §§push(§[K§);
                  if(!_loc6_)
                  {
                     §§push(§§pop() % §§pop());
                     break loop6;
                  }
                  if(§§pop() == §§pop())
                  {
                     if(_loc5_)
                     {
                        _loc3_++;
                     }
                  }
                  §§push(int(§ !U§.getPixel(_loc2_,_loc3_)));
                  if(!_loc6_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  if(_loc5_)
                  {
                     §%1§(_loc4_);
                     if(!_loc6_)
                     {
                        §5!N§(_loc4_);
                     }
                  }
                  return;
               }
               §§push(Boolean(§§pop()));
               break loop1;
            }
         }
      }
      
      public function §5!N§(param1:int) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(param1);
            if(_loc7_)
            {
               while(true)
               {
                  §§push(16);
                  if(_loc7_)
                  {
                     §§push(§§pop() >> §§pop());
                     if(!_loc7_)
                     {
                        break loop0;
                     }
                     §§push(int(§§pop()));
                     if(!_loc7_)
                     {
                        break;
                     }
                     §§push(255);
                  }
                  §§push(§§pop() & §§pop());
                  if(_loc7_)
                  {
                     break;
                  }
                  break loop0;
               }
            }
            §§push(int(§§pop()));
            break;
         }
         var _loc2_:* = §§pop();
         §§push(param1);
         if(_loc7_)
         {
            while(true)
            {
               §§push(8);
               if(!_loc8_)
               {
                  §§push(§§pop() >> §§pop());
                  if(!_loc8_)
                  {
                     §§push(int(§§pop()));
                     if(!_loc7_)
                     {
                        break;
                     }
                  }
                  §§push(255);
               }
               §§push(§§pop() & §§pop());
               if(_loc7_)
               {
                  §§push(int(§§pop()));
               }
               break;
            }
         }
         var _loc3_:* = §§pop();
         §§push(param1);
         if(_loc7_)
         {
            §§push(§§pop() & 0xFF);
            if(!_loc8_)
            {
               §§push(int(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         if(!_loc8_)
         {
            loop3:
            while(true)
            {
               while(true)
               {
                  §§push(int(Math.round(_loc2_ / 51)));
                  if(_loc7_)
                  {
                     _loc2_ = int(§§pop());
                     if(_loc8_)
                     {
                        break;
                     }
                     §§push(int(Math.round(_loc3_ / 51)));
                     if(!_loc7_)
                     {
                        break loop3;
                     }
                  }
                  §§push(int(§§pop()));
                  if(_loc8_)
                  {
                     break loop3;
                  }
                  _loc3_ = §§pop();
                  if(!_loc8_)
                  {
                     break;
                  }
               }
               §§push(int(Math.round(_loc4_ / 51)));
               break;
            }
            _loc4_ = int(§§pop());
         }
         loop5:
         while(true)
         {
            loop6:
            while(true)
            {
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc8_)
                  {
                     §§push(3);
                     if(_loc8_)
                     {
                        break;
                     }
                     §§push(§§pop() % §§pop());
                     if(_loc8_)
                     {
                        break loop6;
                     }
                     §§push(int(§§pop()));
                     if(_loc8_)
                     {
                        break loop5;
                     }
                  }
                  §§push(6);
                  if(_loc7_)
                  {
                     break;
                  }
                  §§goto(addr0116);
               }
               §§push(§§pop() * §§pop());
               if(_loc7_)
               {
                  break loop5;
               }
               §§goto(addr0117);
            }
            var _loc5_:* = §§pop();
            loop8:
            while(true)
            {
               §§push(_loc2_);
               if(_loc7_)
               {
                  loop9:
                  while(true)
                  {
                     §§push(3);
                     if(!_loc8_)
                     {
                        §§push(§§pop() / §§pop());
                        if(!_loc7_)
                        {
                           break loop8;
                        }
                        while(true)
                        {
                           §§push(int(§§pop()));
                           if(_loc7_)
                           {
                              §§push(6);
                              if(_loc8_)
                              {
                                 break;
                              }
                              §§push(§§pop() * §§pop());
                              if(!_loc7_)
                              {
                                 break loop9;
                              }
                           }
                           §§push(§[K§);
                           break;
                        }
                     }
                     §§push(§§pop() * §§pop());
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            var _loc6_:* = §§pop();
            if(_loc7_)
            {
               loop11:
               while(true)
               {
                  loop12:
                  while(true)
                  {
                     loop13:
                     while(true)
                     {
                        §§push(_loc5_);
                        §§push(_loc3_);
                        if(_loc7_)
                        {
                           while(true)
                           {
                              §§push(§[K§);
                              if(_loc7_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc7_)
                                    {
                                       break loop13;
                                    }
                                    _loc5_ = §§pop();
                                    if(!_loc7_)
                                    {
                                       break loop12;
                                    }
                                    §§push(_loc6_);
                                    if(_loc8_)
                                    {
                                       break loop11;
                                    }
                                    §§push(_loc4_);
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(§[K§);
                              }
                              §§push(§§pop() * §§pop());
                              break;
                           }
                        }
                        §§push(§§pop() + §§pop());
                        break loop11;
                     }
                     §§goto(addr01ae);
                  }
               }
               addr01ae:
               _loc6_ = Number(§§pop());
               if(_loc7_)
               {
                  §!!4§.x = _loc5_;
                  if(_loc8_)
                  {
                     break loop12;
                  }
               }
               §!!4§.y = _loc6_;
            }
            break loop12;
         }
         addr0116:
         addr0117:
         §§push(§§pop() * §[K§);
         break loop6;
      }
   }
}

