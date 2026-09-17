package §]N§
{
   import §!!$§.§ 6§;
   import §"p§.§'A§;
   import §%!Q§.§ !>§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import geom3d.Transform;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§38§;
   import com.player03.run3.Save;
   import com.player03.run3.level.§-p§;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   
   public class §?!H§
   {
      
      public static var init__:Boolean;
      
      public static var §1]§:Point3D;
      
      public var transform:Transform;
      
      public var §!,§:Point3D;
      
      public var §;?§:Point3D;
      
      public var origin:Point3D;
      
      public var normal:Point3D;
      
      public function §?!H§()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               §!,§ = new Point3D(0,0,0);
               if(_loc1_)
               {
                  break;
               }
               this["origin"] = new Point3D(0,0,0);
               if(!_loc2_)
               {
                  break;
               }
            }
            §;?§ = new Point3D(0,0,1);
            if(_loc2_)
            {
               this["normal"] = new Point3D(0,0,1);
            }
            break;
         }
      }
      
      public static function §9j§(param1:Point3D, param2:Point3D, param3:Point3D, param4:Point3D, param5:Point3D = undefined, param6:Object = undefined, param7:Object = undefined) : Point3D
      {
         §§push(false);
         var _loc16_:Boolean = true;
         var _loc17_:* = §§pop();
         var _loc12_:* = false;
         var _loc13_:* = false;
         var _loc15_:* = null as Point3D;
         while(true)
         {
            if(_loc16_)
            {
               if(param5 != null)
               {
                  break;
               }
            }
            param5 = new Point3D(0,0,0);
            break;
         }
         loop1:
         while(true)
         {
            §§push(param1.x * param2.x);
            if(_loc16_)
            {
               loop2:
               while(true)
               {
                  while(true)
                  {
                     §§push(param1.y * param2.y);
                     if(_loc16_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!_loc17_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc17_)
                           {
                              break;
                           }
                        }
                        §§push(param1.z);
                        if(!_loc16_)
                        {
                           break loop2;
                        }
                     }
                     §§push(§§pop() * param2.z);
                     break loop2;
                  }
                  §§push(Number(§§pop()));
                  if(_loc17_)
                  {
                     break loop1;
                  }
               }
               §§push(§§pop() + §§pop());
               if(_loc16_)
               {
                  break loop3;
               }
               break;
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc8_:* = §§pop();
         loop4:
         while(true)
         {
            §§push(param2.x * param3.x);
            if(_loc16_)
            {
               §§push(param2.y * param3.y);
               if(_loc16_)
               {
                  while(true)
                  {
                     §§push(§§pop() + §§pop());
                     §§push(param2.z);
                     if(_loc16_)
                     {
                        §§push(§§pop() * param3.z);
                        if(!_loc16_)
                        {
                           break;
                        }
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc17_)
                     {
                        §§push(_loc8_);
                        break;
                     }
                     break loop4;
                  }
               }
               §§push(§§pop() - §§pop());
               if(!_loc16_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc9_:* = §§pop();
         loop6:
         while(true)
         {
            while(true)
            {
               §§push(param2.x * param4.x);
               if(!_loc17_)
               {
                  §§push(param2.y * param4.y);
                  if(_loc17_)
                  {
                     break;
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc16_)
                  {
                     break loop6;
                  }
               }
               §§goto(addr0118);
            }
            addr0118:
            §§push(Number(§§pop()));
            if(_loc16_)
            {
               §§push(param2.z);
               if(!_loc17_)
               {
                  §§push(§§pop() * param4.z);
                  if(!_loc16_)
                  {
                     break loop7;
                  }
               }
               §§push(§§pop() + §§pop());
               break;
            }
            var _loc10_:* = §§pop();
            while(true)
            {
               §§push(_loc10_);
               if(!_loc17_)
               {
                  §§push(_loc10_);
                  if(!_loc17_)
                  {
                     §§push(§§pop() - _loc9_);
                  }
                  §§push(§§pop() / §§pop());
                  if(_loc17_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            var _loc11_:* = §§pop();
            while(true)
            {
               §§push(_loc9_);
               if(_loc16_)
               {
                  §§push(§§pop() - _loc10_);
                  if(!_loc16_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            var _loc14_:* = §§pop();
            if(_loc16_)
            {
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc14_);
                     if(!_loc17_)
                     {
                        if(§§pop() >= 0)
                        {
                           if(!_loc16_)
                           {
                              break;
                           }
                           §§push(_loc14_);
                           if(_loc16_)
                           {
                              continue loop23;
                           }
                        }
                        else
                        {
                           §§push(_loc14_);
                           if(_loc17_)
                           {
                              continue loop23;
                           }
                        }
                     }
                     §§push(-§§pop());
                     if(_loc17_)
                     {
                        break loop15;
                     }
                     continue loop23;
                  }
                  §§push(_loc12_);
                  break loop14;
               }
               loop12:
               while(true)
               {
                  loop13:
                  while(true)
                  {
                     loop14:
                     while(true)
                     {
                        loop15:
                        while(true)
                        {
                           loop23:
                           while(true)
                           {
                              while(true)
                              {
                                 if(§§pop() >= 1e-10)
                                 {
                                    if(param6 == null)
                                    {
                                       _loc13_ = false;
                                       break loop13;
                                    }
                                    §§push(1);
                                    if(!_loc16_)
                                    {
                                       break;
                                    }
                                    §§push(_loc11_);
                                    if(!_loc16_)
                                    {
                                       break loop23;
                                    }
                                    §§push(§§pop() - §§pop());
                                    if(!_loc16_)
                                    {
                                       break loop15;
                                    }
                                    §§push(§§pop() < param6);
                                    if(_loc17_)
                                    {
                                       break loop14;
                                    }
                                    §§push(Boolean(§§pop()));
                                    if(_loc16_)
                                    {
                                       _loc13_ = §§pop();
                                       if(_loc16_)
                                       {
                                          break loop13;
                                       }
                                       §§goto(addr0208);
                                    }
                                 }
                                 else
                                 {
                                    §§push(true);
                                 }
                                 _loc13_ = §§pop();
                                 if(!_loc17_)
                                 {
                                    break loop13;
                                 }
                                 break loop12;
                              }
                              §§goto(addr020a);
                           }
                           §§goto(addr020c);
                        }
                        §§goto(addr020d);
                     }
                     if(§§pop())
                     {
                        param5.x = Number(Math.NaN);
                        break loop12;
                     }
                     _loc15_ = param5;
                     if(!_loc17_)
                     {
                        while(true)
                        {
                           if(_loc15_ == null)
                           {
                              if(_loc17_)
                              {
                                 break;
                              }
                              _loc15_ = new Point3D(0,0,0);
                           }
                           _loc15_.x = param3.x - param4.x;
                           if(!_loc17_)
                           {
                              break;
                           }
                           addr02a7:
                           §§push(_loc15_);
                           §§push(param3.z);
                           if(_loc16_)
                           {
                              §§push(§§pop() - param4.z);
                           }
                           §§pop().z = §§pop();
                        }
                        _loc15_.y = param3.y - param4.y;
                        if(_loc16_)
                        {
                           §§goto(addr02a7);
                        }
                     }
                     _loc15_ = param5;
                     loop17:
                     while(true)
                     {
                        if(!_loc17_)
                        {
                           while(true)
                           {
                              if(_loc15_ == null)
                              {
                                 if(!_loc16_)
                                 {
                                    break;
                                 }
                                 _loc15_ = new Point3D(0,0,0);
                              }
                              _loc15_.x = param5.x * _loc11_;
                              if(!_loc17_)
                              {
                                 break;
                              }
                              break loop17;
                           }
                        }
                        _loc15_.y = param5.y * _loc11_;
                        if(!_loc17_)
                        {
                           §§push(_loc15_);
                           §§push(param5.z);
                           if(!_loc17_)
                           {
                              §§push(§§pop() * _loc11_);
                           }
                           §§pop().z = §§pop();
                        }
                        break;
                     }
                     _loc15_ = param5;
                     loop19:
                     while(true)
                     {
                        while(true)
                        {
                           if(!_loc17_)
                           {
                              if(_loc15_ != null)
                              {
                                 break;
                              }
                              if(!_loc16_)
                              {
                                 break loop19;
                              }
                           }
                           _loc15_ = new Point3D(0,0,0);
                           break;
                        }
                        _loc15_.x = param4.x + param5.x;
                        while(true)
                        {
                           if(!_loc17_)
                           {
                              break loop19;
                           }
                           §§goto(addr037b);
                        }
                        §§goto(addr0396);
                     }
                     _loc15_.y = param4.y + param5.y;
                     if(_loc16_)
                     {
                        addr037b:
                        while(true)
                        {
                           §§push(_loc15_);
                           §§push(param4.z);
                           if(_loc16_)
                           {
                              §§push(§§pop() + param5.z);
                              if(!_loc16_)
                              {
                                 break;
                              }
                           }
                           §§push(Number(§§pop()));
                           break;
                        }
                        §§pop().z = §§pop();
                     }
                     addr0396:
                     return param5;
                  }
                  §§push(_loc13_);
                  if(!_loc17_)
                  {
                     §§push(!§§pop());
                     if(_loc16_)
                     {
                        if(!§§pop())
                        {
                           §§push(true);
                           if(!_loc17_)
                           {
                              _loc12_ = §§pop();
                              break loop11;
                           }
                           break loop14;
                        }
                        if(_loc17_)
                        {
                           break loop11;
                        }
                        if(param7 != null)
                        {
                           addr020d:
                           _loc12_ = 1 - _loc11_ > param7;
                           addr020c:
                           addr0208:
                           addr020a:
                           if(_loc17_)
                           {
                           }
                           break loop11;
                        }
                        §§push(false);
                     }
                     §§push(Boolean(§§pop()));
                  }
                  _loc12_ = §§pop();
                  break loop11;
               }
               param5.y = Number(Math.NaN);
            }
            param5.z = Number(Math.NaN);
            return param5;
         }
         §§push(_loc8_);
         break loop7;
      }
      
      public function §;!6§(param1:Transform) : Transform
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:* = null as Point3D;
         var _loc3_:* = null as Point3D;
         while(true)
         {
            if(!_loc5_)
            {
               if(transform == param1)
               {
                  if(_loc4_)
                  {
                     return transform;
                  }
                  break;
               }
               transform = param1;
               if(!_loc5_)
               {
                  if(param1 == null)
                  {
                     _loc2_ = origin;
                     _loc3_ = §!,§;
                     if(_loc4_)
                     {
                        _loc2_.x = _loc3_.x;
                        if(!_loc5_)
                        {
                           _loc2_.y = _loc3_.y;
                           if(_loc4_)
                           {
                              _loc2_.z = _loc3_.z;
                           }
                        }
                     }
                     _loc2_ = normal;
                     _loc3_ = §;?§;
                     if(_loc4_)
                     {
                        _loc2_.x = _loc3_.x;
                        if(_loc5_)
                        {
                           break;
                        }
                        _loc2_.y = _loc3_.y;
                        if(!_loc4_)
                        {
                           break;
                        }
                     }
                     _loc2_.z = _loc3_.z;
                     break;
                  }
                  if(!_loc4_)
                  {
                     break;
                  }
                  §5W§();
                  if(!_loc4_)
                  {
                     break;
                  }
               }
            }
            QuaternionUtils.rotateVector(transform.§>;§(),§;?§,normal);
            break;
         }
         return transform;
      }
      
      public function §7! §(param1:Number, param2:Number, param3:Number) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc4_:* = null as Point3D;
         var _loc5_:* = null as Point3D;
         while(true)
         {
            if(_loc6_)
            {
               §!,§.x = param1;
               if(!_loc7_)
               {
                  §!,§.y = param2;
                  if(_loc6_)
                  {
                     §!,§.z = param3;
                     if(!_loc6_)
                     {
                        break;
                     }
                  }
               }
            }
            if(transform != null)
            {
               if(_loc6_)
               {
                  §5W§();
               }
               break;
            }
            _loc4_ = origin;
            _loc5_ = §!,§;
            if(_loc6_)
            {
               _loc4_.x = _loc5_.x;
               if(_loc7_)
               {
                  break;
               }
            }
            _loc4_.y = _loc5_.y;
            if(!_loc7_)
            {
               _loc4_.z = _loc5_.z;
            }
            break;
         }
      }
      
      public function §;[§(param1:Number, param2:Number, param3:Number) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc4_:* = null as Point3D;
         var _loc7_:* = null as Point3D;
         while(true)
         {
            if(!_loc9_)
            {
               §;?§.x = param1;
               if(_loc9_)
               {
                  break;
               }
            }
            §;?§.y = param2;
            if(_loc8_)
            {
               break;
            }
            _loc4_ = §;?§;
            loop1:
            while(true)
            {
               while(true)
               {
                  §§push(_loc4_.x * _loc4_.x);
                  if(_loc8_)
                  {
                     §§push(_loc4_.y * _loc4_.y);
                     if(!_loc8_)
                     {
                        break;
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc9_)
                     {
                        break loop1;
                     }
                  }
                  §§push(Number(§§pop()));
                  if(_loc8_)
                  {
                     §§push(_loc4_.z);
                     if(!_loc9_)
                     {
                        break;
                     }
                     addr0098:
                     §§push(§§pop() + §§pop());
                     if(!_loc9_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc9_)
                        {
                           break loop1;
                        }
                     }
                  }
                  §§goto(addr00a8);
               }
               §§goto(addr0098);
            }
            addr00a8:
            var _loc5_:* = Number(§§pop());
            §§push(_loc5_);
            if(_loc8_)
            {
               §§push(§§pop() - 1);
               if(_loc8_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
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
                     if(_loc8_)
                     {
                        loop6:
                        while(true)
                        {
                           §§push(0);
                           if(!_loc9_)
                           {
                              while(true)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    §§push(_loc6_);
                                    if(!_loc8_)
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    §§push(_loc6_);
                                    if(_loc8_)
                                    {
                                       §§push(-§§pop());
                                    }
                                 }
                                 §§push(§§pop() < 1e-10);
                                 if(!_loc9_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc9_)
                                    {
                                       §§push(_loc5_);
                                       break;
                                    }
                                    break loop6;
                                 }
                                 break loop5;
                              }
                           }
                           if(§§pop() == §§pop())
                           {
                              if(!_loc9_)
                              {
                                 break;
                              }
                              break loop4;
                           }
                           §§push(1 / Number(Math.sqrt(_loc5_)));
                           if(!_loc9_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        _loc4_.x = 1;
                        _loc4_.y = 0;
                        _loc4_.z = 0;
                        break;
                     }
                     _loc5_ = §§pop();
                     _loc4_.x *= _loc5_;
                     if(!_loc9_)
                     {
                        break loop4;
                     }
                     break loop3;
                  }
                  if(transform != null)
                  {
                     if(_loc8_)
                     {
                        QuaternionUtils.rotateVector(transform.§>;§(),§;?§,normal);
                     }
                     break loop3;
                  }
                  _loc4_ = normal;
                  _loc7_ = §;?§;
                  if(!_loc9_)
                  {
                     _loc4_.x = _loc7_.x;
                     if(_loc8_)
                     {
                        _loc4_.y = _loc7_.y;
                        if(!_loc9_)
                        {
                           _loc4_.z = _loc7_.z;
                        }
                     }
                  }
                  break loop3;
               }
               _loc4_.y *= _loc5_;
               §§push(_loc4_);
               §§push(_loc4_.z);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc5_);
               }
               §§pop().z = §§pop();
               if(_loc8_)
               {
                  break loop5;
               }
               break;
            }
            return;
         }
         §;?§.z = param3;
         continue loop1;
      }
      
      public function §-!_§(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            if(transform != null)
            {
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc4_)
                        {
                           §§push(param1);
                           if(!_loc4_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              if(!_loc4_)
                              {
                                 break loop1;
                              }
                              §5W§();
                              if(_loc5_)
                              {
                                 break loop0;
                              }
                           }
                        }
                        §§push(param2);
                        break;
                     }
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           break;
                        }
                     }
                     break loop0;
                  }
                  QuaternionUtils.rotateVector(transform.§>;§(),§;?§,normal);
                  break;
               }
            }
         }
         break loop0;
      }
      
      public function §<;§(param1:Point3D, param2:Point3D = undefined) : Point3D
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         while(true)
         {
            if(_loc7_)
            {
               if(param2 != null)
               {
                  break;
               }
            }
            param2 = new Point3D(0,0,0);
            break;
         }
         var _loc3_:Point3D = origin;
         var _loc4_:Point3D = §?!H§.§1]§;
         loop1:
         while(true)
         {
            if(_loc7_)
            {
               while(true)
               {
                  if(_loc4_ == null)
                  {
                     if(_loc8_)
                     {
                        break;
                     }
                     _loc4_ = new Point3D(0,0,0);
                  }
                  _loc4_.x = param1.x - _loc3_.x;
                  if(!_loc8_)
                  {
                     break;
                  }
                  break loop1;
               }
            }
            _loc4_.y = param1.y - _loc3_.y;
            if(!_loc8_)
            {
               break;
            }
            §§goto(addr00a3);
         }
         §§push(_loc4_);
         §§push(param1.z);
         if(!_loc8_)
         {
            §§push(§§pop() - _loc3_.z);
         }
         §§pop().z = §§pop();
         addr00a3:
         _loc3_ = §?!H§.§1]§;
         _loc4_ = normal;
         var _loc5_:Point3D = §?!H§.§1]§;
         while(true)
         {
            if(_loc7_)
            {
               if(_loc5_ != null)
               {
                  break;
               }
            }
            _loc5_ = new Point3D(0,0,0);
            break;
         }
         loop4:
         while(true)
         {
            while(true)
            {
               §§push(_loc3_.x * _loc4_.x);
               if(!_loc8_)
               {
                  §§push(_loc3_.y * _loc4_.y);
                  if(!_loc7_)
                  {
                     break;
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc7_)
                  {
                     break loop4;
                  }
               }
               §§push(Number(§§pop()));
               if(_loc8_)
               {
                  break loop4;
               }
               §§push(_loc3_.z);
               if(!_loc8_)
               {
                  break;
               }
               §§push(§§pop() + §§pop());
               if(_loc7_)
               {
                  §§push(Number(§§pop()));
                  if(_loc7_)
                  {
                     break loop4;
                  }
               }
               §§goto(addr0133);
            }
            §§goto(addr0123);
         }
         addr0133:
         var _loc6_:Number = §§pop();
         while(true)
         {
            if(!_loc8_)
            {
               §§push(_loc5_);
               §§push(_loc6_);
               if(!_loc8_)
               {
                  §§push(§§pop() * _loc4_.x);
               }
               §§pop().x = §§pop();
               if(!_loc7_)
               {
                  break;
               }
               §§push(_loc5_);
               §§push(_loc6_);
               if(_loc7_)
               {
                  §§push(§§pop() * _loc4_.y);
               }
               §§pop().y = §§pop();
               if(!_loc7_)
               {
                  break;
               }
            }
            §§push(_loc5_);
            §§push(_loc6_);
            if(!_loc8_)
            {
               §§push(§§pop() * _loc4_.z);
            }
            §§pop().z = §§pop();
            break;
         }
         _loc3_ = §?!H§.§1]§;
         _loc4_ = param2;
         loop7:
         while(true)
         {
            while(true)
            {
               if(_loc7_)
               {
                  if(_loc4_ != null)
                  {
                     break;
                  }
                  if(!_loc7_)
                  {
                     break loop7;
                  }
               }
               _loc4_ = new Point3D(0,0,0);
               break;
            }
            _loc4_.x = param1.x - _loc3_.x;
            if(!_loc8_)
            {
               _loc4_.y = param1.y - _loc3_.y;
               if(!_loc7_)
               {
                  break;
               }
            }
            §§push(_loc4_);
            §§push(param1.z);
            if(_loc7_)
            {
               §§push(§§pop() - _loc3_.z);
            }
            §§pop().z = §§pop();
            break;
         }
         return param2;
      }
      
      public function §>!D§(param1:Point3D, param2:Number, param3:Point3D = undefined) : Point3D
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         param3 = §<;§(param1,param3);
         var _loc4_:Point3D = normal;
         var _loc5_:Point3D = param3;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc7_)
               {
                  if(_loc5_ != null)
                  {
                     break;
                  }
                  if(_loc6_)
                  {
                     break loop0;
                  }
               }
               _loc5_ = new Point3D(0,0,0);
               break;
            }
            _loc5_.x = param3.x + _loc4_.x * param2;
            if(_loc7_)
            {
               _loc5_.y = param3.y + _loc4_.y * param2;
               if(_loc7_)
               {
                  break;
               }
            }
            §§goto(addr00bd);
         }
         while(true)
         {
            §§push(_loc5_);
            §§push(param3.z);
            if(_loc7_)
            {
               §§push(_loc4_.z);
               if(!_loc6_)
               {
                  §§push(§§pop() * param2);
               }
               §§push(§§pop() + §§pop());
               if(_loc6_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         §§pop().z = §§pop();
         addr00bd:
         return param3;
      }
      
      public function §-H§(param1:Point3D) : Boolean
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:Point3D = origin;
         var _loc3_:Point3D = §?!H§.§1]§;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc6_)
               {
                  if(_loc3_ != null)
                  {
                     break;
                  }
                  if(!_loc6_)
                  {
                     break loop0;
                  }
               }
               _loc3_ = new Point3D(0,0,0);
               break;
            }
            _loc3_.x = param1.x - _loc2_.x;
            if(_loc7_)
            {
               break;
            }
            _loc3_.y = param1.y - _loc2_.y;
            if(!_loc7_)
            {
               break;
            }
            §§goto(addr007e);
         }
         §§push(_loc3_);
         §§push(param1.z);
         if(!_loc7_)
         {
            §§push(§§pop() - _loc2_.z);
         }
         §§pop().z = §§pop();
         addr007e:
         _loc2_ = §?!H§.§1]§;
         _loc3_ = normal;
         var _loc4_:Point3D = §?!H§.§1]§;
         while(true)
         {
            if(!_loc7_)
            {
               if(_loc4_ != null)
               {
                  break;
               }
            }
            _loc4_ = new Point3D(0,0,0);
            break;
         }
         loop3:
         while(true)
         {
            §§push(_loc2_.x * _loc3_.x);
            if(!_loc7_)
            {
               while(true)
               {
                  §§push(_loc2_.y * _loc3_.y);
                  if(!_loc7_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc6_)
                     {
                        break;
                     }
                     §§push(Number(§§pop()));
                     if(_loc7_)
                     {
                        break loop3;
                     }
                     §§push(_loc2_.z);
                     if(_loc6_)
                     {
                        §§push(§§pop() * _loc3_.z);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc7_)
                  {
                     break;
                  }
                  break loop3;
               }
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
         while(true)
         {
            if(_loc6_)
            {
               §§push(_loc4_);
               §§push(_loc5_);
               if(_loc6_)
               {
                  §§push(§§pop() * _loc3_.x);
               }
               §§pop().x = §§pop();
               if(_loc6_)
               {
                  §§push(_loc4_);
                  §§push(_loc5_);
                  if(_loc6_)
                  {
                     §§push(§§pop() * _loc3_.y);
                  }
                  §§pop().y = §§pop();
                  if(_loc7_)
                  {
                     break;
                  }
               }
            }
            §§push(_loc4_);
            §§push(_loc5_);
            if(_loc6_)
            {
               §§push(§§pop() * _loc3_.z);
            }
            §§pop().z = §§pop();
            break;
         }
         _loc2_ = §?!H§.§1]§;
         _loc3_ = normal;
         loop6:
         while(true)
         {
            while(true)
            {
               §§push(_loc2_.x * _loc3_.x);
               if(!_loc7_)
               {
                  §§push(_loc2_.y * _loc3_.y);
                  if(_loc7_)
                  {
                     break;
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc7_)
                  {
                     break loop6;
                  }
               }
               §§push(Number(§§pop()));
               if(!_loc7_)
               {
                  break loop6;
               }
               §§goto(addr01af);
            }
            §§push(§§pop() + §§pop());
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
            addr01af:
            return §§pop() > 0;
         }
         §§push(_loc2_.z);
         if(!_loc7_)
         {
            §§push(§§pop() * _loc3_.z);
         }
         break loop7;
      }
      
      public function §5!^§(param1:Number, param2:Point3D, param3:Point3D, param4:Point3D = undefined, param5:Object = undefined, param6:Object = undefined, param7:Object = undefined) : Point3D
      {
         §§push(false);
         var _loc16_:Boolean = true;
         var _loc17_:* = §§pop();
         var _loc14_:* = false;
         var _loc15_:* = NaN;
         while(true)
         {
            if(!_loc17_)
            {
               if(param7 != null)
               {
                  break;
               }
            }
            param7 = false;
            break;
         }
         var _loc8_:Number = Number(param2.x);
         var _loc9_:Number = Number(param2.y);
         §§push(param2.z);
         if(!_loc17_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         var _loc11_:Point3D = origin;
         var _loc12_:Point3D = normal;
         var _loc13_:Point3D = §?!H§.§1]§;
         loop1:
         while(true)
         {
            if(_loc16_)
            {
               while(true)
               {
                  if(_loc13_ == null)
                  {
                     if(_loc17_)
                     {
                        break;
                     }
                     _loc13_ = new Point3D(0,0,0);
                  }
                  _loc13_.x = _loc11_.x + _loc12_.x * param1;
                  if(_loc16_)
                  {
                     break;
                  }
                  break loop1;
               }
               _loc13_.y = _loc11_.y + _loc12_.y * param1;
               if(_loc17_)
               {
                  break;
               }
            }
            §§push(_loc13_);
            §§push(_loc11_.z);
            if(!_loc17_)
            {
               §§push(_loc12_.z);
               if(!_loc17_)
               {
                  §§push(§§pop() * param1);
               }
               §§push(§§pop() + §§pop());
               if(_loc16_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§pop().z = §§pop();
            break;
         }
         param4 = §?!H§.§9j§(§?!H§.§1]§,normal,param2,param3,param4,param5,param6);
         while(true)
         {
            if(param7)
            {
               if(!_loc16_)
               {
                  break;
               }
               §§push(Number(param4.x));
               if(_loc16_)
               {
                  _loc15_ = §§pop();
                  if(!_loc16_)
                  {
                     break;
                  }
                  §§push(_loc15_);
               }
               while(true)
               {
                  §§push(§§pop() == _loc15_);
                  if(!_loc17_)
                  {
                     §§push(!§§pop());
                     if(_loc17_)
                     {
                        break;
                     }
                  }
                  §§push(Boolean(§§pop()));
                  if(_loc16_)
                  {
                     break;
                  }
                  addr016a:
                  addr0168:
                  _loc14_ = §§pop();
                  §§push(_loc14_);
               }
               _loc14_ = §§pop();
               §§goto(addr016a);
            }
            else
            {
               §§push(false);
               if(!_loc17_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc16_)
                  {
                     §§goto(addr0168);
                  }
               }
            }
            if(§§pop())
            {
               if(!_loc17_)
               {
                  break;
               }
               addr0183:
               param4.z = _loc10_;
            }
            return param4;
         }
         param4.x = _loc8_;
         param4.y = _loc9_;
         §§goto(addr0183);
      }
      
      public function §2O§(param1:Point3D) : Number
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc4_:* = null as Point3D;
         var _loc2_:Point3D = origin;
         var _loc3_:Point3D = §?!H§.§1]§;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc6_)
               {
                  if(_loc3_ != null)
                  {
                     break;
                  }
                  if(_loc7_)
                  {
                     break loop0;
                  }
               }
               _loc3_ = new Point3D(0,0,0);
               break;
            }
            _loc3_.x = param1.x - _loc2_.x;
            if(_loc7_)
            {
               break;
            }
            _loc3_.y = param1.y - _loc2_.y;
            if(_loc6_)
            {
               break;
            }
            §§goto(addr0085);
         }
         §§push(_loc3_);
         §§push(param1.z);
         if(_loc6_)
         {
            §§push(§§pop() - _loc2_.z);
         }
         §§pop().z = §§pop();
         addr0085:
         _loc2_ = §?!H§.§1]§;
         _loc3_ = normal;
         _loc4_ = §?!H§.§1]§;
         while(true)
         {
            if(!_loc7_)
            {
               if(_loc4_ != null)
               {
                  break;
               }
            }
            _loc4_ = new Point3D(0,0,0);
            break;
         }
         §§push(_loc2_.x * _loc3_.x);
         if(_loc6_)
         {
            loop3:
            while(true)
            {
               while(true)
               {
                  §§push(_loc2_.y * _loc3_.y);
                  if(!_loc7_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc6_)
                     {
                        break;
                     }
                     §§push(Number(§§pop()));
                     if(_loc7_)
                     {
                        break loop3;
                     }
                     §§push(_loc2_.z);
                     if(!_loc7_)
                     {
                        §§push(§§pop() * _loc3_.z);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc6_)
                  {
                     break;
                  }
                  break loop3;
               }
               §§push(Number(§§pop()));
               if(_loc6_)
               {
                  §§push(Number(§§pop()));
               }
               break;
            }
         }
         break loop3;
      }
      
      public function §5W§() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            QuaternionUtils.rotateVector(transform.§>;§(),§!,§,origin);
         }
         var _loc1_:Point3D = transform.§2!§();
         var _loc2_:Point3D = origin;
         var _loc3_:Point3D = origin;
         if(_loc5_)
         {
            while(true)
            {
               if(_loc3_ == null)
               {
                  if(_loc4_)
                  {
                     break;
                  }
                  _loc3_ = new Point3D(0,0,0);
               }
               _loc3_.x = _loc1_.x + _loc2_.x;
               if(_loc4_)
               {
                  break;
               }
               _loc3_.y = _loc1_.y + _loc2_.y;
               if(!_loc4_)
               {
                  break;
               }
            }
            §§push(_loc3_);
            §§push(_loc1_.z);
            if(!_loc4_)
            {
               §§push(§§pop() + _loc2_.z);
               if(_loc5_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§pop().z = §§pop();
         }
      }
   }
}

