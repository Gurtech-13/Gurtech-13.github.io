package §0!"§
{
   import §!!$§.§ 6§;
   import §2X§.PositionData3D;
   import §<!&§.§%!§;
   import §>T§.§[C§;
   import §]N§.§?!H§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.menu.§ L§;
   import flash.Boot;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Point3D;
   
   public class §&B§ extends §,!Z§
   {
      
      public var planes:Vector.<§?!H§>;
      
      public function §&B§(param1:Vector.<§?!H§>)
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc5_:* = null as §?!H§;
         while(true)
         {
            if(!_loc7_)
            {
               super(null,0);
               if(_loc7_)
               {
                  break;
               }
            }
            planes = param1;
            break;
         }
         var _loc2_:Point3D = param1[0].origin;
         var _loc3_:Point3D = new Point3D(_loc2_.x,_loc2_.y,_loc2_.z);
         if(_loc6_)
         {
            _loc3_.x = 0;
            if(_loc6_)
            {
               _loc3_.y = 0;
            }
         }
         §§push(0);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc7_)
         {
            while(_loc4_ < int(param1.length))
            {
               _loc5_ = param1[_loc4_];
               if(!_loc7_)
               {
                  _loc4_++;
                  if(_loc7_)
                  {
                     continue;
                  }
               }
               while(true)
               {
                  §§push(_loc5_.§-H§(_loc3_));
                  if(!_loc7_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc7_)
                     {
                        break;
                     }
                  }
                  §§push(!§§pop());
                  break;
               }
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     §§push(_loc5_);
                     §§push(-_loc5_.normal.x);
                     §§push(-_loc5_.normal.y);
                     §§push(_loc5_.normal.z);
                     if(!_loc7_)
                     {
                        §§push(-§§pop());
                     }
                     §§pop().§;[§(§§pop(),§§pop(),§§pop());
                  }
               }
            }
         }
      }
      
      override public function §2y§(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         Boot.lastError = new Error();
         throw new Error("PlaneBoundedArea does not yet support collision.");
      }
      
      public function § !$§(param1:Point3D, param2:Point3D = undefined) : Point3D
      {
         return moveInside(param1,0,param2);
      }
      
      public function moveInside(param1:Point3D, param2:Number, param3:Point3D = undefined) : Point3D
      {
         var _temp_1:* = true;
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = _temp_1;
         var _loc5_:* = NaN;
         var _loc10_:* = 0;
         var _loc12_:* = null as §?!H§;
         var _loc13_:* = false;
         var _loc14_:* = NaN;
         loop2:
         while(true)
         {
            if(_loc16_)
            {
               while(true)
               {
                  if(param3 == null)
                  {
                     if(!_loc16_)
                     {
                        break;
                     }
                     param3 = new Point3D(0,0,0);
                  }
                  param3.x = param1.x;
                  if(!_loc15_)
                  {
                     param3.y = param1.y;
                     if(_loc16_)
                     {
                        break;
                     }
                     break loop2;
                  }
                  break;
               }
            }
            param3.z = param1.z;
            break;
         }
         §§push(param2);
         if(!_loc15_)
         {
            §§push(§§pop() * param2);
            if(_loc16_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         loop4:
         while(true)
         {
            while(true)
            {
               if(_loc16_)
               {
                  §§push(param2);
                  if(_loc15_)
                  {
                     break;
                  }
                  if(§§pop() >= 0)
                  {
                     break loop4;
                  }
                  if(!_loc16_)
                  {
                     break loop4;
                  }
               }
               while(true)
               {
                  §§push(_loc4_);
                  if(_loc16_)
                  {
                     §§push(-§§pop());
                     if(_loc15_)
                     {
                        break;
                     }
                  }
                  §§push(Number(§§pop()));
                  if(!_loc15_)
                  {
                     _loc4_ = §§pop();
                     break loop4;
                  }
                  break;
               }
               §§goto(addr00bb);
            }
            var _loc6_:* = §§pop();
            var _loc7_:§?!H§ = null;
            §§push(_loc4_);
            if(_loc16_)
            {
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            var _loc9_:§?!H§ = null;
            if(!_loc15_)
            {
               §§push(0);
               if(_loc16_)
               {
                  §§push(int(§§pop()));
               }
               _loc10_ = §§pop();
            }
            var _loc11_:Vector.<§?!H§> = planes;
            loop7:
            while(true)
            {
               loop8:
               while(true)
               {
                  if(!_loc15_)
                  {
                     loop0:
                     while(true)
                     {
                        §§push(_loc10_);
                        if(_loc15_)
                        {
                           break loop8;
                        }
                        if(§§pop() >= int(_loc11_.length))
                        {
                           if(_loc9_ == null)
                           {
                              if(_loc7_ != null)
                              {
                                 if(!_loc15_)
                                 {
                                    _loc7_.§>!D§(param3,param2,param3);
                                 }
                              }
                              break loop7;
                           }
                        }
                        else
                        {
                           _loc12_ = _loc11_[_loc10_];
                           if(_loc16_)
                           {
                              _loc10_++;
                              loop9:
                              while(true)
                              {
                                 §§push(_loc12_.§2O§(param3));
                                 if(!_loc15_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc16_)
                                    {
                                       _loc5_ = §§pop();
                                       §§push(_loc5_);
                                       §§push(_loc6_);
                                       if(!_loc15_)
                                       {
                                          while(true)
                                          {
                                             §§push(1e-10);
                                             if(_loc16_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(!_loc16_)
                                                {
                                                   break;
                                                }
                                                if(§§pop() < §§pop())
                                                {
                                                   §§push(Number(_loc6_));
                                                   if(_loc16_)
                                                   {
                                                      addr0162:
                                                      _loc8_ = §§pop();
                                                      if(!_loc16_)
                                                      {
                                                         break loop9;
                                                      }
                                                      _loc9_ = _loc7_;
                                                      if(_loc16_)
                                                      {
                                                         §§push(_loc5_);
                                                         if(_loc16_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                         _loc6_ = §§pop();
                                                      }
                                                      _loc7_ = _loc12_;
                                                      continue loop0;
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(_loc5_);
                                                }
                                                §§push(_loc8_);
                                                if(!_loc16_)
                                                {
                                                   break;
                                                }
                                                §§push(1e-10);
                                             }
                                             §§push(§§pop() - §§pop());
                                             break;
                                          }
                                       }
                                       if(§§pop() < §§pop())
                                       {
                                          break;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 §§goto(addr0162);
                              }
                              _loc8_ = Number(_loc5_);
                              _loc9_ = _loc12_;
                              continue;
                           }
                           §§goto(addr016a);
                        }
                     }
                  }
                  _loc7_.§>!D§(param3,param2,param3);
                  §§push(_loc9_.§2O§(param3));
                  if(!_loc15_)
                  {
                     §§push(Number(§§pop()));
                  }
                  if(§§pop() >= _loc4_)
                  {
                     return param3;
                  }
                  §§push(0);
                  if(_loc16_)
                  {
                     §§push(int(§§pop()));
                  }
                  break;
               }
               _loc10_ = §§pop();
               while(true)
               {
                  if(false)
                  {
                     break loop7;
                  }
                  _loc7_.§>!D§(param3,param2,param3);
                  _loc9_.§>!D§(param3,param2,param3);
                  loop11:
                  while(true)
                  {
                     loop12:
                     while(true)
                     {
                        loop13:
                        while(true)
                        {
                           if(_loc16_)
                           {
                              if(++_loc10_ >= 30)
                              {
                                 _loc13_ = false;
                                 break loop11;
                              }
                              if(_loc15_)
                              {
                                 break loop11;
                              }
                              while(true)
                              {
                                 §§push(_loc7_.§2O§(param3));
                                 if(!_loc15_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc16_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(_loc4_);
                                 if(!_loc15_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc16_)
                                    {
                                       §§push(Number(§§pop()));
                                       break;
                                    }
                                    break loop12;
                                 }
                                 break loop13;
                              }
                              _loc14_ = §§pop();
                           }
                           §§push(_loc14_);
                           if(!_loc15_)
                           {
                              if(§§pop() >= 0)
                              {
                                 §§push(_loc14_);
                                 break loop12;
                              }
                              §§push(_loc14_);
                              if(_loc15_)
                              {
                                 break loop12;
                              }
                           }
                           §§push(-§§pop());
                           break loop12;
                        }
                        §§push(§§pop() >= §§pop());
                        if(_loc16_)
                        {
                           _loc13_ = §§pop();
                           if(_loc15_)
                           {
                           }
                           break loop11;
                        }
                        §§goto(addr0294);
                     }
                     §§push(1e-10);
                     break loop13;
                  }
                  addr0294:
                  §§push(_loc13_);
                  if(!_loc15_)
                  {
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     break loop7;
                  }
               }
               break;
            }
            return param3;
         }
         §§push(_loc4_);
         if(!_loc15_)
         {
            addr00bb:
            §§push(Number(§§pop()));
         }
         break loop5;
      }
      
      public function §@!>§(param1:Point3D, param2:Point3D, param3:Number) : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc5_:* = NaN;
         var _loc8_:* = null as §?!H§;
         while(true)
         {
            §§push(param3);
            if(_loc9_)
            {
               §§push(§§pop() * param3);
               if(!_loc9_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc4_:* = §§pop();
         if(_loc9_)
         {
            loop2:
            while(true)
            {
               while(true)
               {
                  §§push(param3);
                  if(!_loc10_)
                  {
                     if(§§pop() >= 0)
                     {
                        break;
                     }
                     if(_loc10_)
                     {
                        break;
                     }
                     §§push(_loc4_);
                     if(!_loc9_)
                     {
                        break loop2;
                     }
                  }
                  §§push(-§§pop());
                  if(_loc9_)
                  {
                     break loop2;
                  }
                  §§goto(addr005e);
               }
            }
            addr005e:
            _loc4_ = Number(§§pop());
            break loop3;
         }
         §§push(0);
         if(_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<§?!H§> = planes;
         if(!_loc10_)
         {
            loop0:
            while(_loc6_ < int(_loc7_.length))
            {
               _loc8_ = _loc7_[_loc6_];
               while(true)
               {
                  if(_loc9_)
                  {
                     _loc6_++;
                     if(!_loc9_)
                     {
                        break;
                     }
                  }
                  while(true)
                  {
                     §§push(_loc8_.§2O§(param1));
                     if(_loc9_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc9_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc9_)
                           {
                              break;
                           }
                        }
                     }
                     _loc5_ = §§pop();
                     if(_loc9_)
                     {
                        §§push(_loc5_);
                        break;
                     }
                     continue loop0;
                  }
                  if(§§pop() < _loc4_)
                  {
                     if(!_loc10_)
                     {
                        break;
                     }
                  }
                  continue loop0;
               }
               _loc8_.§5!^§(param3,param1,param2,param1,0,1,true);
            }
         }
      }
      
      public function §+!]§(param1:Point3D, param2:Number) : Boolean
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc6_:* = null as §?!H§;
         §§push(param2);
         if(_loc7_)
         {
            §§push(§§pop() * param2);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc7_)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  §§push(param2);
                  if(_loc7_)
                  {
                     if(§§pop() <= 0)
                     {
                        break;
                     }
                     if(_loc8_)
                     {
                        break;
                     }
                     §§push(_loc3_);
                     if(_loc8_)
                     {
                        break loop1;
                     }
                  }
                  §§push(-§§pop());
                  if(_loc7_)
                  {
                     §§push(Number(§§pop()));
                  }
                  break loop1;
               }
            }
            _loc3_ = §§pop();
            break loop2;
         }
         §§push(0);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:Vector.<§?!H§> = planes;
         if(!_loc8_)
         {
            while(_loc4_ < int(_loc5_.length))
            {
               _loc6_ = _loc5_[_loc4_];
               if(_loc7_)
               {
                  _loc4_++;
                  if(_loc7_)
                  {
                     §§push(_loc6_.§2O§(param1));
                     if(!_loc8_)
                     {
                        §§push(Number(§§pop()));
                     }
                     if(§§pop() > _loc3_)
                     {
                        continue;
                     }
                  }
               }
               return false;
            }
         }
         return true;
      }
      
      public function contains(param1:Point3D) : Boolean
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:* = null as §?!H§;
         §§push(0);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Vector.<§?!H§> = planes;
         if(_loc5_)
         {
            loop0:
            while(_loc2_ < int(_loc3_.length))
            {
               _loc4_ = _loc3_[_loc2_];
               while(true)
               {
                  if(_loc5_)
                  {
                     _loc2_++;
                     if(_loc5_)
                     {
                        §§push(_loc4_.§-H§(param1));
                        if(_loc5_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc5_)
                           {
                              break;
                           }
                        }
                        §§push(!§§pop());
                        if(!_loc5_)
                        {
                           break;
                        }
                        if(!§§pop())
                        {
                           continue loop0;
                        }
                     }
                  }
                  return false;
               }
               return §§pop();
            }
         }
         return true;
      }
      
      override public function §&D§(param1:§,!Z§, param2:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         Boot.lastError = new Error();
         throw new Error("PlaneBoundedArea does not yet support collision.");
      }
   }
}

