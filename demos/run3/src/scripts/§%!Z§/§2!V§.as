package §%!Z§
{
   import §!!$§.§ 6§;
   import §+!1§.§[!9§;
   import com.player03.layout.§ 7§;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import nme3D.model.§7v§;
   
   public class §2!V§
   {
      
      public function §2!V§()
      {
      }
      
      public static function smooth(param1:Vector.<§1T§>, param2:Number = 0.33) : void
      {
         §§push(false);
         var _loc16_:Boolean = true;
         var _loc17_:* = §§pop();
         var _loc5_:* = null as §1T§;
         var _loc6_:* = null as §1T§;
         var _loc7_:* = null as §1T§;
         var _loc8_:* = NaN;
         var _loc12_:* = 0;
         var _loc13_:* = null as Point;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         if(_loc16_)
         {
            if(int(param1.length) >= 3)
            {
               var _loc3_:Point = new Point(0,0);
               var _loc4_:Point = new Point(0,0);
               var _loc9_:* = 0;
               §§push(0);
               if(_loc16_)
               {
                  §§push(int(§§pop()));
               }
               var _loc10_:* = §§pop();
               §§push(int(param1.length));
               if(_loc16_)
               {
                  §§push(int(§§pop()));
               }
               var _loc11_:* = §§pop();
               if(!_loc17_)
               {
                  loop0:
                  while(_loc10_ < _loc11_)
                  {
                     while(true)
                     {
                        §§push(_loc10_);
                        if(!_loc17_)
                        {
                           _loc10_++;
                           if(_loc17_)
                           {
                              break;
                           }
                           §§push(int(§§pop()));
                           if(!_loc16_)
                           {
                              break;
                           }
                        }
                        _loc12_ = §§pop();
                        addr00ba:
                        if(_loc16_)
                        {
                           §§push(_loc12_);
                           break;
                        }
                        §§push(param1);
                        §§push(int(param1.length));
                        if(!_loc17_)
                        {
                           §§push(§§pop() - 1);
                        }
                        _loc5_ = §§pop()[§§pop()];
                        addr00ec:
                        _loc6_ = param1[_loc12_];
                        while(true)
                        {
                           if(_loc16_)
                           {
                              §§push(_loc12_);
                              §§push(int(param1.length));
                              if(_loc16_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              if(§§pop() != §§pop())
                              {
                                 §§push(param1);
                                 §§push(_loc12_);
                                 if(!_loc17_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 _loc7_ = §§pop()[§§pop()];
                                 break;
                              }
                           }
                           _loc7_ = param1[0];
                           break;
                        }
                        _loc13_ = _loc3_;
                        if(_loc13_ == null)
                        {
                           _loc13_ = new Point(0,0);
                        }
                        _loc13_.x = _loc7_.x - _loc5_.x;
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              while(true)
                              {
                                 if(!_loc17_)
                                 {
                                    _loc13_.y = _loc7_.y - _loc5_.y;
                                    if(_loc16_)
                                    {
                                       §§push(_loc3_.x * _loc3_.x);
                                       if(!_loc16_)
                                       {
                                          break;
                                       }
                                       loop10:
                                       while(true)
                                       {
                                          §§push(_loc3_.y * _loc3_.y);
                                          if(_loc16_)
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!_loc17_)
                                                {
                                                   _loc14_ = §§pop();
                                                   §§push(_loc14_);
                                                   if(!_loc16_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                §§push(1);
                                                if(!_loc16_)
                                                {
                                                   break loop4;
                                                }
                                                _loc15_ = §§pop() - §§pop();
                                                if(!_loc17_)
                                                {
                                                   §§push(_loc15_);
                                                   §§push(0);
                                                   if(!_loc17_)
                                                   {
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         if(_loc16_)
                                                         {
                                                            §§push(_loc15_);
                                                            break;
                                                         }
                                                         break loop10;
                                                      }
                                                      §§push(-_loc15_);
                                                      break;
                                                   }
                                                   break loop4;
                                                }
                                                continue loop5;
                                             }
                                          }
                                          §§push(§§pop() < §§pop());
                                          if(!_loc17_)
                                          {
                                             §§push(!§§pop());
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc16_)
                                             {
                                                break;
                                             }
                                             break loop3;
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                                 §§push(_loc14_);
                                 §§push(0);
                                 break loop4;
                              }
                              _loc14_ = §§pop();
                              §§goto(addr0225);
                           }
                           if(§§pop() == §§pop())
                           {
                              _loc3_.x = 1;
                              break;
                           }
                           §§push(1 / Number(Math.sqrt(_loc14_)));
                           break loop9;
                        }
                        _loc3_.y = 0;
                        if(!_loc16_)
                        {
                           addr0225:
                           _loc3_.x *= _loc14_;
                           _loc3_.y *= _loc14_;
                        }
                        _loc13_ = _loc4_;
                        loop5:
                        while(true)
                        {
                           while(true)
                           {
                              if(_loc16_)
                              {
                                 if(_loc13_ != null)
                                 {
                                    break;
                                 }
                                 if(!_loc16_)
                                 {
                                    break loop5;
                                 }
                              }
                              _loc13_ = new Point(0,0);
                              break;
                           }
                           _loc13_.x = _loc6_.x - _loc5_.x;
                           if(_loc16_)
                           {
                              break;
                           }
                           §§goto(addr02ab);
                        }
                        _loc13_.y = _loc6_.y - _loc5_.y;
                        if(_loc16_)
                        {
                           §§push(Number(Math.sqrt(_loc4_.x * _loc4_.x + _loc4_.y * _loc4_.y)));
                           if(_loc16_)
                           {
                              §§push(Number(§§pop()));
                           }
                           _loc8_ = §§pop();
                        }
                        addr02ab:
                        _loc13_ = _loc4_;
                        if(_loc13_ == null)
                        {
                           _loc13_ = new Point(0,0);
                        }
                        _loc13_.x = _loc7_.x - _loc6_.x;
                        if(!_loc17_)
                        {
                           _loc13_.y = _loc7_.y - _loc6_.y;
                           §§push(Number(Math.sqrt(_loc4_.x * _loc4_.x + _loc4_.y * _loc4_.y)));
                           if(!_loc17_)
                           {
                              §§push(Number(§§pop()));
                           }
                           _loc9_ = §§pop();
                           §§push(_loc6_.§[7§);
                           §§push(-_loc3_.x);
                           if(!_loc17_)
                           {
                              while(true)
                              {
                                 §§push(param2);
                                 if(_loc16_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc17_)
                                    {
                                       break;
                                    }
                                    §§push(_loc8_);
                                 }
                                 §§push(§§pop() * §§pop());
                                 break;
                              }
                           }
                           §§pop().x = §§pop();
                           §§push(_loc6_.§[7§);
                           §§push(-_loc3_.y);
                           if(_loc16_)
                           {
                              while(true)
                              {
                                 §§push(param2);
                                 if(!_loc17_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc16_)
                                    {
                                       break;
                                    }
                                    §§push(_loc8_);
                                 }
                                 §§push(§§pop() * §§pop());
                                 break;
                              }
                           }
                           §§pop().y = §§pop();
                        }
                        §§push(_loc6_.§7!_§);
                        §§push(_loc3_.x * param2);
                        if(!_loc17_)
                        {
                           §§push(§§pop() * _loc9_);
                        }
                        §§pop().x = §§pop();
                        §§push(_loc6_.§7!_§);
                        §§push(_loc3_.y * param2);
                        if(_loc16_)
                        {
                           §§push(§§pop() * _loc9_);
                        }
                        §§pop().y = §§pop();
                        continue loop0;
                     }
                     if(§§pop() == 0)
                     {
                        §§goto(addr00ba);
                     }
                     else
                     {
                        §§push(param1);
                        §§push(_loc12_);
                        if(!_loc17_)
                        {
                           §§push(§§pop() - 1);
                        }
                        _loc5_ = §§pop()[§§pop()];
                     }
                     §§goto(addr00ec);
                  }
               }
               return;
            }
         }
      }
   }
}

