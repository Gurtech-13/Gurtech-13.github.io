package §!]§
{
   import §%!Q§.§ !>§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §1^§.Transform;
   import §<!&§.§%!§;
   import §[^§.§+`§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§38§;
   import flash.display.Graphics;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.§7!^§;
   import haxeutils.math.geom.Point2DUtils;
   import haxeutils.math.geom.Point3D;
   
   public class Path
   {
      
      public static var init__:Boolean;
      
      public static var §1]§:Point;
      
      public static var §+!0§:Number = 2.8;
      
      public var waypoints:Vector.<§9u§>;
      
      public var scale:§38§;
      
      public var §%[§:Number;
      
      public var levels:§ !>§;
      
      public var firstLevelDistance:Number;
      
      public var drawLines:Boolean;
      
      public var §7!6§:Object;
      
      public function Path(param1:§ !>§, param2:Object, param3:Object = undefined, param4:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc5_)
            {
               while(true)
               {
                  if(param3 == null)
                  {
                     if(_loc5_)
                     {
                        break;
                     }
                     param3 = 160;
                  }
                  if(param4 == null)
                  {
                     if(!_loc6_)
                     {
                        break;
                     }
                     param4 = true;
                  }
                  drawLines = true;
                  break;
               }
               levels = param1;
               if(_loc6_)
               {
                  scale = §&d§.§1$§().scale;
                  if(_loc5_)
                  {
                     break;
                  }
               }
            }
            §8z§(param2);
            break;
         }
      }
      
      public function §8z§(param1:Object) : Object
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:* = null;
         if(_loc7_)
         {
            firstLevelDistance = Number(param1.firstLevelDistance);
         }
         while(true)
         {
            if(param1.mouseLeeway != null)
            {
               §%[§ = param1.mouseLeeway * param1.mouseLeeway;
               if(_loc6_)
               {
                  break;
               }
            }
            else
            {
               §%[§ = 25600;
            }
            if(param1.drawLines != null)
            {
               drawLines = param1.drawLines;
               if(_loc7_)
               {
               }
               break;
            }
            drawLines = true;
            break;
         }
         var _loc2_:Vector.<§9u§> = new Vector.<§9u§>(0,false);
         if(_loc7_)
         {
            waypoints = _loc2_;
         }
         §§push(0);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param1.waypoints);
         if(_loc7_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         if(_loc7_)
         {
            while(_loc3_ < int(_loc4_.length))
            {
               _loc5_ = _loc4_[_loc3_];
               if(!_loc6_)
               {
                  _loc3_++;
                  if(!_loc7_)
                  {
                     continue;
                  }
               }
               §!t§(Number(_loc5_.x),Number(_loc5_.y));
            }
         }
         return §7!6§ = param1;
      }
      
      public function §=;§(param1:Point, param2:Object = undefined) : int
      {
         var _temp_1:* = true;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = _temp_1;
         var _loc5_:* = 0;
         var _loc6_:* = null as Point;
         var _loc7_:* = null as Point;
         var _loc8_:* = null as Point;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         loop1:
         while(true)
         {
            while(true)
            {
               if(_loc14_)
               {
                  if(param2 == null)
                  {
                     if(_loc13_)
                     {
                        break loop1;
                     }
                     param2 = true;
                  }
                  if(!param2)
                  {
                     break;
                  }
                  if(_loc13_)
                  {
                     break loop1;
                  }
               }
               Path.§1]§.x = param1.x / scale.x;
               if(!_loc13_)
               {
                  break loop1;
               }
               break;
            }
            §§push(1);
            if(!_loc13_)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(int(waypoints.length));
            if(!_loc13_)
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            loop3:
            while(true)
            {
               if(_loc14_)
               {
                  while(true)
                  {
                     §§push(_loc3_);
                     if(!_loc14_)
                     {
                        break loop3;
                     }
                     if(§§pop() < _loc4_)
                     {
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!_loc13_)
                           {
                              _loc3_++;
                              if(!_loc14_)
                              {
                                 break;
                              }
                           }
                           §§push(int(§§pop()));
                           break;
                        }
                        _loc5_ = §§pop();
                        if(!_loc13_)
                        {
                           §§push(Point2DUtils);
                           §§push(waypoints);
                           §§push(_loc5_);
                           if(_loc14_)
                           {
                              §§push(§§pop() - 1);
                           }
                           §§push(§§pop().§!!'§(§§pop()[§§pop()],waypoints[_loc5_],Path.§1]§));
                           if(!_loc13_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(!§§pop())
                           {
                              continue;
                           }
                        }
                        §§push(waypoints);
                        §§push(_loc5_);
                        if(_loc14_)
                        {
                           §§push(§§pop() - 1);
                        }
                        continue loop6;
                     }
                  }
               }
               return 0;
            }
            return §§pop();
         }
         Path.§1]§.y = param1.y / scale.y;
         break loop2;
      }
      
      public function §;3§(param1:int, param2:Object = undefined, param3:Point = undefined) : Point
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc5_)
            {
               if(param2 != null)
               {
                  break;
               }
            }
            param2 = true;
            break;
         }
         §§push(§?d§(param1,param2));
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
            if(!_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         return §?C§(_loc4_,param2,param3);
      }
      
      public function §?d§(param1:int, param2:Object = undefined) : Number
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc5_:* = NaN;
         var _loc6_:* = null as §38§;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop7:
               while(true)
               {
                  if(_loc7_)
                  {
                     while(true)
                     {
                        if(param2 == null)
                        {
                           if(_loc8_)
                           {
                              break;
                           }
                           param2 = true;
                        }
                        §§push(param1);
                        §§push(0);
                        if(_loc7_)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc7_)
                              {
                                 break;
                              }
                              break loop0;
                           }
                           break loop1;
                        }
                        break loop7;
                     }
                  }
                  §§push(param1);
                  if(!_loc8_)
                  {
                     while(true)
                     {
                        §§push(levels.levelCount);
                        if(!_loc8_)
                        {
                           break loop7;
                        }
                        §§goto(addr0085);
                     }
                     §§goto(addr009a);
                  }
                  addr0064:
                  §§push(int(§§pop()));
                  if(!_loc8_)
                  {
                     param1 = §§pop();
                     if(_loc7_)
                     {
                        break loop1;
                     }
                     break loop0;
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0064);
            }
            addr007d:
            §§push(levels.levelCount);
            §§push(1);
            if(!_loc8_)
            {
               addr0085:
               if(§§pop() > §§pop())
               {
                  break;
               }
               §§push(0);
               if(_loc7_)
               {
                  §§goto(addr00b2);
               }
               §§goto(addr00b3);
            }
            §§goto(addr009a);
         }
         §§push(param1);
         §§push(levels.levelCount);
         if(!_loc8_)
         {
            addr009a:
            §§push(§§pop() - 1);
         }
         §§push(§§pop() / §§pop());
         if(_loc7_)
         {
         }
         addr00b3:
         var _loc3_:* = Number(§§pop());
         addr00b2:
         loop2:
         while(true)
         {
            if(_loc7_)
            {
               §§push(_loc3_);
               if(!_loc7_)
               {
                  break;
               }
               loop3:
               while(true)
               {
                  while(true)
                  {
                     §§push(0);
                     if(!_loc8_)
                     {
                        if(§§pop() < §§pop())
                        {
                           if(!_loc7_)
                           {
                              break;
                           }
                           §§push(0);
                           if(_loc7_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc8_)
                              {
                                 _loc3_ = §§pop();
                                 if(_loc7_)
                                 {
                                    break loop3;
                                 }
                                 break;
                              }
                              addr011c:
                              _loc3_ = §§pop();
                              break loop3;
                           }
                           §§push(Number(§§pop()));
                           if(_loc8_)
                           {
                              break loop2;
                           }
                           §§goto(addr011c);
                        }
                        else
                        {
                           §§push(_loc3_);
                           if(!_loc7_)
                           {
                              break loop2;
                           }
                           §§push(1);
                        }
                     }
                     if(§§pop() > §§pop())
                     {
                        if(_loc7_)
                        {
                           break;
                        }
                     }
                     break loop3;
                  }
                  §§goto(addr0115);
               }
            }
            break loop3;
         }
         var _loc4_:* = §§pop();
         loop5:
         while(true)
         {
            while(true)
            {
               if(!_loc8_)
               {
                  if(param2)
                  {
                     if(!_loc8_)
                     {
                        _loc6_ = scale;
                        if(_loc7_)
                        {
                           §§push(_loc6_.x);
                           if(!_loc8_)
                           {
                              §§push(_loc6_.y);
                              if(_loc8_)
                              {
                                 break;
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() / 2);
                           if(!_loc7_)
                           {
                              break loop5;
                           }
                           _loc5_ = §§pop();
                        }
                     }
                  }
                  else
                  {
                     _loc5_ = 1;
                  }
               }
               §§push(_loc4_);
               if(_loc7_)
               {
                  §§push(_loc3_);
                  if(!_loc7_)
                  {
                     break;
                  }
                  §§push(waypoints);
                  §§push(int(waypoints.length));
                  if(_loc7_)
                  {
                     §§push(§§pop() - 1);
                  }
                  §§push(§§pop()[§§pop()].§ f§);
                  if(_loc7_)
                  {
                     §§push(§§pop() - _loc4_);
                  }
                  §§push(§§pop() * §§pop());
                  if(_loc7_)
                  {
                     break;
                  }
                  §§goto(addr01d3);
               }
               §§goto(addr01d4);
            }
            §§push(§§pop() + §§pop());
            break;
         }
         addr01d4:
         return §§pop() * _loc5_;
         addr01d3:
      }
      
      public function §7Q§(param1:int) : Number
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:* = null as Point;
         var _loc3_:* = null as §9u§;
         var _loc4_:* = null as §9u§;
         if(!_loc9_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(int(waypoints.length));
                  if(_loc8_)
                  {
                     §§push(2);
                     if(_loc9_)
                     {
                        break;
                     }
                     if(§§pop() >= §§pop())
                     {
                        §§push(levels.levelCount);
                        if(_loc8_)
                        {
                           §§push(2);
                           if(!_loc8_)
                           {
                              break loop0;
                           }
                           if(§§pop() < §§pop())
                           {
                              §§goto(addr008e);
                           }
                           §§push(param1);
                        }
                        addr0116:
                        §§push(levels.levelCount);
                        if(!_loc9_)
                        {
                           break;
                        }
                        break loop0;
                     }
                     if(!_loc9_)
                     {
                        §§goto(addr0050);
                     }
                     addr008e:
                     §§push(waypoints);
                     §§push(int(waypoints.length));
                     if(!_loc9_)
                     {
                        §§push(§§pop() - 1);
                     }
                     _loc3_ = §§pop()[§§pop()];
                     §§push(waypoints);
                     §§push(int(waypoints.length));
                     if(!_loc9_)
                     {
                        §§push(§§pop() - 2);
                     }
                     _loc4_ = §§pop()[§§pop()];
                     _loc2_ = Path.§1]§;
                     while(true)
                     {
                        if(!_loc9_)
                        {
                           _loc2_.x = _loc3_.x;
                           if(_loc9_)
                           {
                              break;
                           }
                        }
                        _loc2_.y = _loc3_.y;
                        break;
                     }
                     return Number(Math.atan2(_loc3_.y - _loc4_.y,_loc3_.x - _loc4_.x));
                  }
                  §§goto(addr0116);
               }
               §§push(§§pop() - 1);
               break;
            }
            §§push(§§pop() >= §§pop());
            if(_loc8_)
            {
               §§push(Boolean(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(!_loc9_)
            {
               while(true)
               {
                  §§push(§§findproperty(§;3§));
                  §§push(param1);
                  if(_loc8_)
                  {
                     §§push(_loc5_);
                     if(!_loc8_)
                     {
                        break;
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc8_)
                           {
                              break;
                           }
                           §§push(-1);
                           if(_loc8_)
                           {
                           }
                        }
                        else
                        {
                           §§push(1);
                        }
                        §§push(§§pop() + §§pop());
                        break;
                     }
                  }
                  §§push(false);
                  break;
               }
               §§pop().§;3§(§§pop(),§§pop(),Path.§1]§);
            }
            var _loc6_:Number = Number(Path.§1]§.x);
            var _loc7_:Number = Number(Path.§1]§.y);
            while(true)
            {
               if(!_loc9_)
               {
                  §;3§(param1,false,Path.§1]§);
                  if(_loc8_)
                  {
                     if(!_loc5_)
                     {
                        §§push(Number(Math.atan2(_loc7_ - Path.§1]§.y,_loc6_ - Path.§1]§.x)));
                        break;
                     }
                  }
               }
               §§push(Number(Math.atan2(Path.§1]§.y - _loc7_,Path.§1]§.x - _loc6_)));
               if(!_loc9_)
               {
                  return §§pop();
               }
               break;
            }
            return §§pop();
         }
         addr0050:
         _loc2_ = Path.§1]§;
         while(true)
         {
            if(_loc8_)
            {
               _loc2_.x = 0;
               if(!_loc8_)
               {
                  break;
               }
            }
            _loc2_.y = 0;
            break;
         }
         return 0;
      }
      
      public function §%v§() : Number
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc3_)
            {
               §§push(int(waypoints.length));
               if(!_loc3_)
               {
                  break;
               }
               if(§§pop() >= 2)
               {
                  var _loc1_:§9u§ = waypoints[0];
                  var _loc2_:§9u§ = waypoints[1];
                  return Number(Math.atan2(_loc2_.y - _loc1_.y,_loc2_.x - _loc1_.x));
               }
            }
            return 0;
         }
         return §§pop();
      }
      
      public function §,!#§(param1:Graphics, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Object = undefined, param7:Point = undefined) : void
      {
         var _temp_1:* = true;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = _temp_1;
         var _loc8_:* = null as §38§;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = null as §38§;
         var _loc15_:* = null as §38§;
         loop6:
         while(true)
         {
            if(_loc17_)
            {
               loop7:
               while(true)
               {
                  if(param6 == null)
                  {
                     if(_loc16_)
                     {
                        break;
                     }
                     param6 = true;
                  }
                  loop8:
                  while(true)
                  {
                     loop9:
                     while(true)
                     {
                        §§push(drawLines);
                        if(!_loc16_)
                        {
                           if(§§pop())
                           {
                              if(!_loc17_)
                              {
                                 break;
                              }
                              _loc8_ = scale;
                              if(!_loc16_)
                              {
                                 param1.lineStyle(Path.§+!0§ * ((_loc8_.x + _loc8_.y) / 2),0);
                                 loop10:
                                 while(true)
                                 {
                                    §§push(param2);
                                    §§push(0);
                                    if(!_loc16_)
                                    {
                                       while(true)
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   param1.moveTo(waypoints[0].x * scale.x,waypoints[0].y * scale.y);
                                                   if(_loc17_)
                                                   {
                                                      §§push(0);
                                                      if(_loc17_)
                                                      {
                                                         _loc9_ = §§pop();
                                                         break;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr0140);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(§?d§(param2));
                                                   if(!_loc16_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(!_loc17_)
                                                      {
                                                         continue loop13;
                                                      }
                                                   }
                                                }
                                                §§push(Number(§§pop()));
                                                if(!_loc16_)
                                                {
                                                   _loc9_ = §§pop();
                                                   §?C§(_loc9_,null,Path.§1]§);
                                                   param1.moveTo(Path.§1]§.x,Path.§1]§.y);
                                                   break;
                                                }
                                                break loop12;
                                             }
                                             §§push(§?d§(param3));
                                             break;
                                          }
                                          §§push(Number(§§pop()));
                                          continue loop13;
                                       }
                                       _loc10_ = §§pop();
                                       loop13:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             if(!_loc16_)
                                             {
                                                addr0140:
                                                §§push(1);
                                                if(!_loc17_)
                                                {
                                                   break;
                                                }
                                                §§push(int(§§pop()));
                                                if(_loc16_)
                                                {
                                                   break loop13;
                                                }
                                                _loc11_ = §§pop();
                                             }
                                             §§push(int(waypoints.length));
                                             break loop13;
                                          }
                                          while(true)
                                          {
                                             §§push(_loc12_);
                                          }
                                       }
                                       _loc12_ = §§pop();
                                       if(!_loc17_)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          §§push(_loc11_);
                                          break loop14;
                                       }
                                       addr029e:
                                    }
                                    while(true)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          break loop10;
                                       }
                                       while(true)
                                       {
                                          §§push(_loc11_);
                                          if(!_loc16_)
                                          {
                                             _loc11_++;
                                             if(!_loc17_)
                                             {
                                                break;
                                             }
                                          }
                                          §§push(int(§§pop()));
                                          break;
                                       }
                                       _loc13_ = §§pop();
                                       _loc14_ = scale;
                                       while(true)
                                       {
                                          if(!_loc16_)
                                          {
                                             §§push(_loc9_);
                                             §§push(waypoints[_loc13_].§ f§);
                                             if(_loc17_)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc14_.x);
                                                   if(_loc17_)
                                                   {
                                                      §§push(§§pop() + _loc14_.y);
                                                      if(!_loc17_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(Number(§§pop()));
                                                      if(!_loc17_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   §§push(§§pop() / 2);
                                                   break;
                                                }
                                             }
                                             §§push(§§pop() > §§pop());
                                             if(!_loc16_)
                                             {
                                                §§push(!§§pop());
                                             }
                                             if(!§§pop())
                                             {
                                                break;
                                             }
                                          }
                                          _loc15_ = scale;
                                          if(_loc17_)
                                          {
                                             §§push(_loc10_);
                                             §§push(waypoints[_loc13_].§ f§);
                                             if(_loc17_)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc15_.x);
                                                   if(!_loc16_)
                                                   {
                                                      §§push(§§pop() + _loc15_.y);
                                                      if(!_loc17_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   §§push(Number(§§pop()));
                                                   if(_loc17_)
                                                   {
                                                      break;
                                                   }
                                                   addr022a:
                                                }
                                                §§goto(addr022a);
                                                §§push(§§pop() * §§pop());
                                             }
                                             if(§§pop() < §§pop())
                                             {
                                                if(_loc17_)
                                                {
                                                   §?C§(_loc10_,null,Path.§1]§);
                                                   if(!_loc16_)
                                                   {
                                                      param1.lineTo(Path.§1]§.x,Path.§1]§.y);
                                                      if(!_loc16_)
                                                      {
                                                         break loop10;
                                                      }
                                                   }
                                                   break;
                                                }
                                                break loop10;
                                             }
                                             param1.lineTo(waypoints[_loc13_].x * scale.x,waypoints[_loc13_].y * scale.y);
                                             break;
                                          }
                                          break loop10;
                                       }
                                       §§goto(addr029e);
                                    }
                                    break;
                                 }
                              }
                           }
                           while(true)
                           {
                              if(param6)
                              {
                                 param1.lineStyle();
                                 if(!_loc17_)
                                 {
                                    break;
                                 }
                                 param1.beginFill(0);
                                 if(_loc16_)
                                 {
                                    break loop7;
                                 }
                                 _loc8_ = scale;
                                 while(true)
                                 {
                                    if(!_loc16_)
                                    {
                                       §§push(4.4);
                                       if(_loc17_)
                                       {
                                          §§push(_loc8_.x);
                                          if(!_loc16_)
                                          {
                                             §§push(§§pop() + _loc8_.y);
                                             if(!_loc16_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc16_)
                                                {
                                                   §§push(§§pop() / 2);
                                                }
                                             }
                                          }
                                          §§push(§§pop() * §§pop());
                                          if(_loc17_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       _loc9_ = §§pop();
                                       loop22:
                                       while(true)
                                       {
                                          §§push(param2);
                                          if(_loc17_)
                                          {
                                             loop23:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   §§push(int(§§pop()));
                                                   if(_loc17_)
                                                   {
                                                      _loc11_ = §§pop();
                                                      §§push(param3);
                                                      if(!_loc16_)
                                                      {
                                                         §§push(1);
                                                         if(!_loc17_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc17_)
                                                         {
                                                            break loop23;
                                                         }
                                                      }
                                                   }
                                                   §§push(int(§§pop()));
                                                   if(!_loc17_)
                                                   {
                                                      break loop23;
                                                   }
                                                   _loc12_ = §§pop();
                                                   while(true)
                                                   {
                                                      §§push(_loc11_);
                                                      break loop23;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      break loop22;
                                                   }
                                                   §§push(_loc11_);
                                                   if(!_loc16_)
                                                   {
                                                      _loc11_++;
                                                      if(_loc17_)
                                                      {
                                                         §§push(int(§§pop()));
                                                      }
                                                   }
                                                   _loc13_ = §§pop();
                                                   while(true)
                                                   {
                                                      if(_loc17_)
                                                      {
                                                         §;3§(_loc13_,null,Path.§1]§);
                                                         if(_loc16_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      param1.drawCircle(Path.§1]§.x,Path.§1]§.y,_loc9_);
                                                      break;
                                                   }
                                                   §§goto(addr0387);
                                                   break loop23;
                                                }
                                                break loop22;
                                             }
                                          }
                                          break loop23;
                                       }
                                       if(_loc16_)
                                       {
                                          break;
                                       }
                                       param1.endFill();
                                    }
                                    if(param7 != null)
                                    {
                                       if(!_loc16_)
                                       {
                                          break;
                                       }
                                    }
                                 }
                                 param7.x = Path.§1]§.x;
                                 if(!_loc16_)
                                 {
                                    param7.y = Path.§1]§.y;
                                 }
                              }
                              if(param4)
                              {
                                 break;
                              }
                              break loop9;
                           }
                           §§push(false);
                           if(!_loc17_)
                           {
                              break loop8;
                           }
                        }
                        if(param2 == param3)
                        {
                           if(_loc17_)
                           {
                              §§pop();
                              if(!_loc16_)
                              {
                                 §§push(param5);
                                 break loop8;
                              }
                              break loop6;
                           }
                        }
                        §§goto(addr03ec);
                     }
                     addr041d:
                     if(!param5)
                     {
                        break loop6;
                     }
                     if(_loc16_)
                     {
                        break loop6;
                     }
                  }
                  addr03ec:
                  if(Boolean(§§pop()))
                  {
                     if(!_loc16_)
                     {
                        break;
                     }
                     break loop9;
                  }
                  §+$§(param1,param2,false);
                  break loop9;
               }
               §+$§(param1,param2,false,true);
               §§goto(addr041d);
            }
            §+$§(param1,param3,true,!levels.available || levels.availableUntil < param3);
            break;
         }
      }
      
      public function §+$§(param1:Graphics, param2:int, param3:Object = undefined, param4:Object = undefined) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc7_)
               {
                  if(param3 != null)
                  {
                     break;
                  }
                  if(!_loc6_)
                  {
                     break loop0;
                  }
               }
               §§push(true);
               if(_loc6_)
               {
                  param3 = §§pop();
                  break;
               }
               §§goto(addr003f);
            }
            if(param4 == null)
            {
               break;
            }
            §§goto(addr0042);
         }
         addr003f:
         param4 = false;
         addr0042:
         while(true)
         {
            §§push(§7Q§(param2));
            if(_loc6_)
            {
               §§push(Number(§§pop()));
               if(_loc7_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc5_:* = §§pop();
         loop3:
         while(true)
         {
            while(true)
            {
               if(_loc6_)
               {
                  if(param3)
                  {
                     break;
                  }
                  if(_loc7_)
                  {
                     break loop3;
                  }
               }
               §§push(_loc5_);
               if(!_loc7_)
               {
                  §§push(§§pop() + 3.141592653589793);
                  if(!_loc7_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc7_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
               _loc5_ = §§pop();
               if(_loc6_)
               {
                  break;
               }
               §§goto(addr00ee);
            }
            var _temp_2:* = Path.§1]§;
            _temp_2.x *= scale.x;
            if(_loc6_)
            {
               break;
            }
            §§goto(addr00d9);
         }
         _temp_1.y *= scale.y;
         if(!_loc7_)
         {
            addr00d9:
            §[!6§.draw(param1,Path.§1]§,_loc5_,scale,param4);
         }
         addr00ee:
      }
      
      public function draw(param1:Graphics, param2:Object = undefined, param3:Object = undefined, param4:Object = undefined, param5:Point = undefined) : void
      {
         §§push(false);
         var _loc14_:Boolean = true;
         var _loc15_:* = §§pop();
         var _loc6_:* = 0;
         var _loc7_:Boolean = false;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:Boolean = false;
         loop3:
         while(true)
         {
            if(param2 == null)
            {
               §§push(true);
               if(!_loc14_)
               {
                  break;
               }
               param2 = §§pop();
            }
            loop4:
            while(true)
            {
               if(param3 == null)
               {
                  if(!_loc14_)
                  {
                     break;
                  }
                  §§push(false);
                  if(!_loc14_)
                  {
                     break loop3;
                  }
                  param3 = §§pop();
               }
               loop5:
               while(true)
               {
                  loop6:
                  while(true)
                  {
                     loop7:
                     while(true)
                     {
                        loop21:
                        while(true)
                        {
                           §§push(false);
                           if(_loc14_)
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
                                       if(int(waypoints.length) > 1)
                                       {
                                          if(_loc15_)
                                          {
                                             break;
                                          }
                                          §§pop();
                                          while(true)
                                          {
                                             if(_loc14_)
                                             {
                                                §§push(true);
                                                §§push(levels.§<o§());
                                                if(!_loc14_)
                                                {
                                                   break loop24;
                                                }
                                                §§push(Boolean(§§pop()));
                                                if(!_loc14_)
                                                {
                                                   break loop24;
                                                }
                                                if(§§pop())
                                                {
                                                   break;
                                                }
                                                §§pop();
                                             }
                                             §§push(Boolean(param3));
                                             if(!_loc15_)
                                             {
                                                break;
                                             }
                                             break loop23;
                                          }
                                       }
                                       if(!§§pop())
                                       {
                                          break loop21;
                                       }
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             if(_loc14_)
                                             {
                                                §§push(true);
                                                if(_loc14_)
                                                {
                                                   break loop25;
                                                }
                                                break loop6;
                                             }
                                             §§goto(addr01b7);
                                          }
                                          §§goto(addr02f2);
                                       }
                                       §§goto(addr01cb);
                                    }
                                    §§push(levels.available);
                                    if(!_loc15_)
                                    {
                                       break;
                                    }
                                    §§goto(addr00c9);
                                 }
                                 addr00c9:
                                 if(§§pop())
                                 {
                                    break;
                                 }
                                 continue loop8;
                              }
                              §§pop();
                              if(_loc15_)
                              {
                                 break loop7;
                              }
                              §§push(false);
                              if(param4 == null)
                              {
                                 break loop6;
                              }
                              §§pop();
                              if(!_loc14_)
                              {
                                 break loop5;
                              }
                              §§push(levels.§99§(0));
                              if(!_loc15_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              §§push(§§pop() > Number(param4));
                           }
                           §§push(Boolean(§§pop()));
                           if(_loc14_)
                           {
                              break loop6;
                           }
                           break loop3;
                        }
                        §§goto(addr031f);
                     }
                     while(true)
                     {
                        §§push(levels.availableUntil);
                        §§push(3);
                        if(_loc14_)
                        {
                           §§push(int(§§pop() + §§pop()));
                           break loop10;
                        }
                        §§goto(addr01b3);
                     }
                     §§goto(addr02f2);
                  }
                  loop8:
                  while(true)
                  {
                     while(true)
                     {
                        if(Boolean(§§pop()))
                        {
                           if(!_loc15_)
                           {
                              break loop5;
                           }
                           addr01cb:
                           addr01b7:
                           addr01b7:
                           §§push(_loc9_);
                           if(_loc15_)
                           {
                           }
                           addr01cb:
                           §§push(int(§§pop()));
                           if(_loc15_)
                           {
                              break loop8;
                           }
                        }
                        else
                        {
                           §§push(0);
                           if(!_loc15_)
                           {
                              loop10:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    if(!_loc15_)
                                    {
                                       _loc6_ = §§pop();
                                       if(_loc14_)
                                       {
                                          break loop4;
                                       }
                                       addr0144:
                                       §§push(0);
                                       if(!_loc14_)
                                       {
                                          break;
                                       }
                                       §§push(int(§§pop()));
                                       if(_loc15_)
                                       {
                                          break loop10;
                                       }
                                    }
                                    _loc8_ = §§pop();
                                    §§push(levels.levelCount);
                                    if(!_loc15_)
                                    {
                                       §§push(1);
                                       if(!_loc15_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc14_)
                                          {
                                             break;
                                          }
                                          §§push(int(§§pop()));
                                          if(_loc14_)
                                          {
                                             break;
                                          }
                                          §§goto(addr01cb);
                                       }
                                       §§goto(addr01b3);
                                    }
                                    §§goto(addr01cb);
                                 }
                                 _loc9_ = §§pop();
                                 break loop7;
                              }
                              _loc10_ = §§pop();
                              §§push(_loc9_);
                              if(_loc14_)
                              {
                                 §§push(_loc10_);
                                 if(_loc15_)
                                 {
                                    break;
                                 }
                                 addr01b3:
                                 if(§§pop() < §§pop())
                                 {
                                    §§goto(addr01b7);
                                 }
                                 else
                                 {
                                    §§push(_loc10_);
                                    if(_loc15_)
                                    {
                                       break loop8;
                                    }
                                 }
                              }
                              §§goto(addr01cb);
                           }
                        }
                        _loc11_ = §§pop();
                        while(true)
                        {
                           §§push(_loc8_);
                           break loop8;
                        }
                        addr02ee:
                     }
                     while(§§pop() < §§pop())
                     {
                        loop12:
                        while(true)
                        {
                           loop13:
                           while(true)
                           {
                              §§push(_loc8_);
                              if(_loc14_)
                              {
                                 _loc8_++;
                                 if(_loc14_)
                                 {
                                    §§push(int(§§pop()));
                                    if(_loc14_)
                                    {
                                       _loc12_ = §§pop();
                                       loop14:
                                       while(true)
                                       {
                                          loop15:
                                          while(true)
                                          {
                                             loop16:
                                             while(true)
                                             {
                                                loop17:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      if(!_loc15_)
                                                      {
                                                         §§push(true);
                                                         if(!_loc14_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(true);
                                                         if(!param3)
                                                         {
                                                            §§pop();
                                                            §§push(levels.§'m§(_loc12_));
                                                            if(!_loc14_)
                                                            {
                                                               break loop17;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            if(_loc14_)
                                                            {
                                                               §§pop();
                                                               if(_loc15_)
                                                               {
                                                                  break loop16;
                                                               }
                                                               §§push(levels.§#u§(_loc12_));
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                            if(!_loc14_)
                                                            {
                                                               break loop15;
                                                            }
                                                         }
                                                         _loc13_ = §§pop();
                                                         if(_loc15_)
                                                         {
                                                            break loop14;
                                                         }
                                                      }
                                                      §§push(false);
                                                      §§push(false);
                                                      if(!_loc15_)
                                                      {
                                                         loop19:
                                                         while(true)
                                                         {
                                                            if(_loc13_)
                                                            {
                                                               §§pop();
                                                               if(!_loc14_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(param4 != null);
                                                               if(_loc15_)
                                                               {
                                                                  break loop17;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  §§pop();
                                                                  if(!_loc14_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(levels.§99§(_loc12_));
                                                                  if(_loc14_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  §§push(§§pop() > Number(param4));
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(_loc14_)
                                                                  {
                                                                     §§push(false);
                                                                     break loop19;
                                                                  }
                                                                  break loop13;
                                                               }
                                                               break loop14;
                                                            }
                                                            §§goto(addr02b4);
                                                         }
                                                         _loc13_ = §§pop();
                                                         break loop14;
                                                      }
                                                      break loop17;
                                                   }
                                                   §§goto(addr02b1);
                                                }
                                                §§goto(addr02ab);
                                             }
                                             §§goto(addr02b1);
                                          }
                                          addr02ab:
                                          if(§§pop() != _loc7_)
                                          {
                                             break loop16;
                                          }
                                          break loop13;
                                       }
                                       §§push(_loc13_);
                                       if(!_loc15_)
                                       {
                                          break loop15;
                                       }
                                       addr02b1:
                                       _loc7_ = §§pop();
                                       addr02b4:
                                       if(!_loc13_)
                                       {
                                          §,!#§(param1,_loc6_,_loc12_ - 1,_loc6_ > 0,true,param2,param5);
                                          break;
                                       }
                                       §§push(_loc12_);
                                       if(_loc15_)
                                       {
                                          break loop12;
                                       }
                                    }
                                 }
                              }
                              §§push(int(§§pop()));
                              break loop12;
                           }
                           §§goto(addr02ee);
                        }
                        _loc6_ = §§pop();
                        break loop13;
                     }
                     §§goto(addr02f6);
                     addr02f2:
                  }
                  while(true)
                  {
                     §§push(_loc11_);
                     break loop9;
                  }
                  addr02f6:
                  §§push(_loc7_);
                  break loop3;
               }
               §,!#§(param1,0,0,false,true,param2,param5);
               §§goto(addr031f);
            }
            _loc7_ = false;
            §§goto(addr0144);
         }
         if(§§pop())
         {
            if(!_loc15_)
            {
               §,!#§(param1,_loc6_,levels.availableUntil,_loc6_ > 0,false,param2,param5);
            }
         }
         addr031f:
      }
      
      public function §?C§(param1:Number, param2:Object = undefined, param3:Point = undefined) : Point
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc4_:* = null as §38§;
         var _loc7_:* = 0;
         var _loc8_:* = null as Point;
         var _loc9_:* = null as Point;
         var _loc10_:* = NaN;
         var _loc11_:* = null as Point;
         loop1:
         while(true)
         {
            while(true)
            {
               if(_loc13_)
               {
                  if(param2 == null)
                  {
                     if(!_loc13_)
                     {
                        break loop1;
                     }
                     param2 = true;
                  }
                  if(param3 != null)
                  {
                     break;
                  }
                  if(_loc12_)
                  {
                     break loop1;
                  }
               }
               param3 = new Point(0,0);
               break;
            }
            if(param2)
            {
               break;
            }
            §§goto(addr00aa);
         }
         _loc4_ = scale;
         if(!_loc12_)
         {
            §§push(param1);
            if(_loc13_)
            {
               while(true)
               {
                  §§push(_loc4_.x);
                  if(!_loc12_)
                  {
                     §§push(§§pop() + _loc4_.y);
                     if(_loc12_)
                     {
                        break;
                     }
                     §§push(Number(§§pop()));
                     if(_loc12_)
                     {
                        break;
                     }
                  }
                  §§push(§§pop() / 2);
                  break;
               }
               §§push(§§pop() / §§pop());
               if(_loc13_)
               {
                  §§push(Number(§§pop()));
               }
            }
            param1 = §§pop();
         }
         addr00aa:
         §§push(1);
         if(_loc13_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(int(waypoints.length));
         if(!_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         if(!_loc12_)
         {
            while(_loc5_ < _loc6_)
            {
               §§push(_loc5_);
               if(!_loc12_)
               {
                  _loc5_++;
                  if(!_loc12_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc7_ = §§pop();
               if(!_loc12_)
               {
                  if(waypoints[_loc7_].§ f§ <= param1)
                  {
                     continue;
                  }
               }
               §§push(waypoints);
               §§push(_loc7_);
               if(_loc13_)
               {
                  §§push(§§pop() - 1);
               }
               _loc8_ = §§pop()[§§pop()];
               _loc9_ = waypoints[_loc7_];
               if(!_loc12_)
               {
                  §§push(param1);
                  if(!_loc12_)
                  {
                     §§push(waypoints);
                     §§push(_loc7_);
                     if(_loc13_)
                     {
                        §§push(§§pop() - 1);
                     }
                     while(true)
                     {
                        §§push(§§pop()[§§pop()].§ f§);
                        if(_loc13_)
                        {
                           §§push(§§pop() - §§pop());
                           if(_loc12_)
                           {
                              break;
                           }
                           §§push(waypoints[_loc7_].§2i§);
                        }
                        §§push(§§pop() / §§pop());
                        if(_loc13_)
                        {
                           §§push(Number(§§pop()));
                        }
                        break;
                     }
                  }
                  _loc10_ = §§pop();
               }
               _loc11_ = param3;
               while(true)
               {
                  if(!_loc12_)
                  {
                     if(_loc11_ == null)
                     {
                        _loc11_ = new Point(0,0);
                     }
                     _loc11_.x = _loc8_.x + _loc10_ * (_loc9_.x - _loc8_.x);
                     if(!_loc12_)
                     {
                        _loc11_.y = _loc8_.y + _loc10_ * (_loc9_.y - _loc8_.y);
                     }
                     if(!param2)
                     {
                        break;
                     }
                  }
                  param3.x *= scale.x;
                  param3.y *= scale.y;
                  break;
               }
               return param3;
            }
         }
         §§push(waypoints);
         §§push(int(waypoints.length));
         if(!_loc12_)
         {
            §§push(§§pop() - 1);
         }
         _loc8_ = §§pop()[§§pop()];
         while(true)
         {
            if(!_loc12_)
            {
               param3.x = _loc8_.x;
               if(_loc12_)
               {
                  break;
               }
            }
            param3.y = _loc8_.y;
            if(!_loc12_)
            {
               if(param2)
               {
                  if(!_loc12_)
                  {
                     param3.x *= scale.x;
                     if(_loc13_)
                     {
                        break;
                     }
                  }
               }
            }
            §§goto(addr0285);
         }
         param3.y *= scale.y;
         addr0285:
         return param3;
      }
      
      public function §>7§(param1:Number, param2:Number, param3:Object = undefined, param4:Point = undefined) : Point
      {
         var _temp_1:* = true;
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = _temp_1;
         var _loc5_:* = NaN;
         var _loc9_:* = 0;
         var _loc10_:* = null as Point;
         var _loc11_:* = null as Point;
         var _loc12_:* = null as Point;
         var _loc13_:* = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = null as Point;
         var _loc17_:* = null as Point;
         var _loc18_:* = null as Point;
         loop1:
         while(true)
         {
            while(true)
            {
               if(_loc20_)
               {
                  if(param3 == null)
                  {
                     if(!_loc20_)
                     {
                        break;
                     }
                     param3 = true;
                  }
                  if(param4 == null)
                  {
                     if(!_loc20_)
                     {
                        break;
                     }
                     param4 = new Point(0,0);
                  }
                  if(!param3)
                  {
                     break loop1;
                  }
                  if(!_loc20_)
                  {
                     break loop1;
                  }
               }
               §§push(param1);
               §§push(scale.x);
               if(_loc20_)
               {
                  param1 = §§pop() / §§pop();
                  if(_loc20_)
                  {
                     break;
                  }
                  break loop1;
               }
               addr00a2:
               §§push(§§pop() / §§pop());
               if(_loc20_)
               {
                  param2 = §§pop();
                  break loop1;
               }
               §§goto(addr00b8);
            }
            §§goto(addr00a2);
         }
         §§push(Number(Math.POSITIVE_INFINITY));
         if(!_loc19_)
         {
            addr00b8:
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(1);
         if(_loc20_)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(int(waypoints.length));
         if(_loc20_)
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         while(true)
         {
            if(_loc20_)
            {
               loop0:
               while(_loc7_ < _loc8_)
               {
                  §§push(_loc7_);
                  if(!_loc19_)
                  {
                     _loc7_++;
                     if(!_loc19_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
                  _loc9_ = §§pop();
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(waypoints[_loc9_].§ f§);
                           if(_loc20_)
                           {
                              if(§§pop() < firstLevelDistance)
                              {
                                 continue loop0;
                              }
                              §§push(§7!^§);
                              §§push(param1);
                              §§push(param2);
                              §§push(waypoints);
                              §§push(_loc9_);
                              if(!_loc19_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              §§pop().§ !I§(§§pop(),§§pop(),§§pop()[§§pop()],waypoints[_loc9_],Path.§1]§);
                              §§push(waypoints);
                              §§push(_loc9_);
                              if(!_loc19_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              if(§§pop()[§§pop()].§ f§ < firstLevelDistance)
                              {
                                 if(_loc19_)
                                 {
                                    break;
                                 }
                                 §§push(waypoints);
                                 §§push(_loc9_);
                                 if(_loc20_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc10_ = §§pop()[§§pop()];
                                 _loc11_ = waypoints[_loc9_];
                                 _loc12_ = Path.§1]§;
                                 loop7:
                                 while(true)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§push(_loc10_.x - _loc11_.x);
                                       if(!_loc19_)
                                       {
                                          _loc14_ = §§pop();
                                          while(true)
                                          {
                                             if(_loc14_ >= 0)
                                             {
                                                addr01d5:
                                                §§push(_loc14_);
                                                §§push(1e-10);
                                                if(!_loc20_)
                                                {
                                                   break loop7;
                                                }
                                                if(§§pop() < §§pop())
                                                {
                                                   if(_loc19_)
                                                   {
                                                      break loop8;
                                                   }
                                                   _loc15_ = Number(_loc10_.y);
                                                   if(_loc19_)
                                                   {
                                                      break loop8;
                                                   }
                                                   §§push(_loc12_.y - _loc15_);
                                                   §§push(_loc11_.y - _loc15_);
                                                   if(!_loc19_)
                                                   {
                                                      §§push(§§pop() / §§pop());
                                                      if(_loc20_)
                                                      {
                                                         _loc13_ = §§pop();
                                                      }
                                                      else
                                                      {
                                                         addr0252:
                                                         _loc13_ = §§pop();
                                                      }
                                                      §§push(firstLevelDistance);
                                                      §§push(waypoints);
                                                      §§push(_loc9_);
                                                      if(_loc20_)
                                                      {
                                                         §§push(§§pop() - 1);
                                                      }
                                                      §§push(§§pop()[§§pop()].§ f§);
                                                      if(!_loc20_)
                                                      {
                                                         break loop7;
                                                      }
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                }
                                                else
                                                {
                                                   §§push(Number(_loc10_.x));
                                                   if(!_loc19_)
                                                   {
                                                      _loc15_ = §§pop();
                                                      §§push(_loc12_.x - _loc15_);
                                                      §§push(_loc11_.x - _loc15_);
                                                      if(!_loc20_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop() / §§pop());
                                                      if(_loc20_)
                                                      {
                                                         §§goto(addr0252);
                                                      }
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(_loc14_);
                                                if(!_loc19_)
                                                {
                                                   §§goto(addr01d5);
                                                   §§push(-§§pop());
                                                }
                                             }
                                             §§push(waypoints[_loc9_].§2i§);
                                             if(!_loc19_)
                                             {
                                                break;
                                             }
                                             break loop7;
                                          }
                                          §§push(§§pop() / §§pop());
                                          if(_loc20_)
                                          {
                                             _loc15_ = §§pop();
                                             §§push(_loc13_);
                                          }
                                       }
                                       §§push(_loc15_);
                                       break loop7;
                                    }
                                    §§push(waypoints);
                                    §§push(_loc9_);
                                    if(!_loc19_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    _loc16_ = §§pop()[§§pop()];
                                    _loc17_ = waypoints[_loc9_];
                                    _loc18_ = Path.§1]§;
                                    if(_loc20_)
                                    {
                                       while(true)
                                       {
                                          if(_loc18_ == null)
                                          {
                                             if(_loc19_)
                                             {
                                                break;
                                             }
                                             _loc18_ = new Point(0,0);
                                          }
                                          _loc18_.x = _loc16_.x + _loc15_ * (_loc17_.x - _loc16_.x);
                                          if(_loc20_)
                                          {
                                             break;
                                          }
                                       }
                                       _loc18_.y = _loc16_.y + _loc15_ * (_loc17_.y - _loc16_.y);
                                    }
                                 }
                                 if(§§pop() < §§pop())
                                 {
                                    break loop8;
                                 }
                              }
                              §§push(param1);
                              if(_loc19_)
                              {
                                 break loop5;
                              }
                              §§push(§§pop() - Path.§1]§.x);
                              if(_loc19_)
                              {
                                 break loop4;
                              }
                           }
                           loop11:
                           while(true)
                           {
                              §§push(param1 - Path.§1]§.x);
                              if(_loc20_)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc20_)
                                    {
                                       §§push(param2);
                                       if(!_loc19_)
                                       {
                                          §§push(§§pop() - Path.§1]§.y);
                                          if(_loc20_)
                                          {
                                             §§push(param2);
                                             if(_loc20_)
                                             {
                                                §§push(§§pop() - Path.§1]§.y);
                                             }
                                             §§push(§§pop() * §§pop());
                                             if(!_loc20_)
                                             {
                                                break;
                                             }
                                          }
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc19_)
                                       {
                                          break loop11;
                                       }
                                       §§push(Number(§§pop()));
                                       if(_loc19_)
                                       {
                                          break loop11;
                                       }
                                    }
                                    §§push(Number(§§pop()));
                                    if(!_loc19_)
                                    {
                                       break loop5;
                                    }
                                    §§goto(addr03aa);
                                 }
                              }
                              §§goto(addr03ac);
                           }
                           §§goto(addr03b3);
                        }
                        §§goto(addr03b5);
                     }
                     _loc5_ = §§pop();
                     §§push(_loc5_);
                     if(!_loc19_)
                     {
                        addr03aa:
                        addr03ac:
                        if(§§pop() < _loc6_)
                        {
                           §§push(_loc5_);
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr03b3);
                  }
                  addr03b3:
                  _loc6_ = Number(§§pop());
                  addr03b5:
                  _loc10_ = Path.§1]§;
                  if(!_loc19_)
                  {
                     param4.x = _loc10_.x;
                     if(!_loc19_)
                     {
                        param4.y = _loc10_.y;
                     }
                  }
               }
               if(_loc19_)
               {
                  break;
               }
            }
            if(param3)
            {
               if(!_loc19_)
               {
                  break;
               }
               addr0414:
               param4.y *= scale.y;
            }
            §§goto(addr0423);
         }
         param4.x *= scale.x;
         if(_loc20_)
         {
            §§goto(addr0414);
         }
         addr0423:
         return param4;
      }
      
      public function §!t§(param1:Number, param2:Number) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            if(int(waypoints.length) > 0)
            {
               if(_loc3_)
               {
                  §§push(waypoints);
                  §§push(§§findproperty(§9u§));
                  §§push(param1);
                  §§push(param2);
                  §§push(waypoints);
                  §§push(int(waypoints.length));
                  if(!_loc4_)
                  {
                     §§push(§§pop() - 1);
                  }
                  §§pop().push(new §§pop().§9u§(§§pop(),§§pop(),§§pop()[§§pop()]));
                  if(_loc3_)
                  {
                  }
               }
            }
            else
            {
               waypoints.push(new §9u§(param1,param2,null));
            }
         }
      }
   }
}

