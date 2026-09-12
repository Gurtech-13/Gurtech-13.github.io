package §0!"§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §<!&§.§%!§;
   import §]N§.§?!H§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§'O§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   
   public class §5n§ extends §,!Z§
   {
      
      public static var init__:Boolean;
      
      public static var §1]§:Point3D;
      
      public static var §3C§:Point3D;
      
      public var normal:Point3D;
      
      public function §5n§(param1:§%!§, param2:Point3D, param3:Number)
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         while(true)
         {
            if(_loc7_)
            {
               super(param1,param3);
               if(_loc6_)
               {
                  break;
               }
            }
            normal = param2;
            break;
         }
         loop1:
         while(true)
         {
            while(true)
            {
               §§push(param2.x * param2.x);
               if(!_loc6_)
               {
                  §§push(param2.y * param2.y);
                  if(_loc6_)
                  {
                     break;
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc7_)
                  {
                     break loop1;
                  }
               }
               §§push(Number(§§pop()));
               if(_loc7_)
               {
                  break loop1;
               }
               §§goto(addr0076);
            }
            §§goto(addr0066);
         }
         §§push(param2.z);
         if(!_loc6_)
         {
            break loop2;
         }
         addr0066:
         while(true)
         {
            §§push(§§pop() + §§pop());
            if(!_loc6_)
            {
               §§push(Number(§§pop()));
               if(!_loc7_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         addr0076:
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(!_loc6_)
            {
               §§push(§§pop() - 1);
               if(!_loc7_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc5_:* = §§pop();
         loop5:
         while(true)
         {
            loop6:
            while(true)
            {
               loop8:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc5_);
                     §§push(0);
                     if(_loc7_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(_loc6_)
                           {
                              break;
                           }
                           §§push(_loc5_);
                        }
                        else
                        {
                           §§push(-_loc5_);
                           if(_loc6_)
                           {
                              break loop5;
                           }
                        }
                        §§push(§§pop() < 1e-10);
                        if(!_loc6_)
                        {
                           §§push(!§§pop());
                        }
                        if(!§§pop())
                        {
                           break loop8;
                        }
                        if(!_loc7_)
                        {
                           break loop6;
                        }
                        §§push(_loc4_);
                        if(_loc6_)
                        {
                           break loop5;
                        }
                        §§push(0);
                     }
                     if(§§pop() != §§pop())
                     {
                        §§push(1 / Number(Math.sqrt(_loc4_)));
                        break loop5;
                     }
                     if(_loc7_)
                     {
                        param2.x = 1;
                        if(_loc7_)
                        {
                           param2.y = 0;
                           if(!_loc6_)
                           {
                              break;
                           }
                           break loop8;
                        }
                        break loop6;
                     }
                     §§goto(addr0131);
                  }
                  param2.z = 0;
                  break;
               }
               §§goto(addr0141);
            }
            §8W§.max.y = Number(Math.POSITIVE_INFINITY);
            §§goto(addr01ad);
         }
         _loc4_ = Number(§§pop());
         param2.x *= _loc4_;
         while(true)
         {
            if(!_loc6_)
            {
               param2.y *= _loc4_;
               if(_loc6_)
               {
                  break;
               }
            }
            addr0131:
            §§push(param2);
            §§push(param2.z);
            if(_loc7_)
            {
               §§push(§§pop() * _loc4_);
            }
            §§pop().z = §§pop();
            addr0141:
            §8W§.min.x = Number(Math.NEGATIVE_INFINITY);
            §8W§.min.y = Number(Math.NEGATIVE_INFINITY);
            break;
         }
         §8W§.min.z = Number(Math.NEGATIVE_INFINITY);
         if(_loc7_)
         {
            §8W§.max.x = Number(Math.POSITIVE_INFINITY);
            if(_loc7_)
            {
               break loop6;
            }
            addr01ad:
            §8W§.max.z = Number(Math.POSITIVE_INFINITY);
         }
      }
      
      public static function §5'§(param1:Point3D, param2:Point3D, param3:Point3D, param4:Number, param5:§-U§) : void
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc7_:* = null as Point3D;
         var _loc8_:* = NaN;
         var _loc9_:* = null as Point3D;
         var _loc10_:* = NaN;
         var _loc11_:* = null as Point3D;
         var _loc6_:Point3D = §5n§.§3C§;
         while(true)
         {
            if(_loc12_)
            {
               _loc6_.x = param3.x;
               if(_loc12_)
               {
                  _loc6_.y = param3.y;
                  if(_loc13_)
                  {
                     break;
                  }
               }
            }
            _loc6_.z = param3.z;
            break;
         }
         _loc6_ = §5n§.§3C§;
         _loc7_ = §5n§.§3C§;
         loop1:
         while(true)
         {
            if(!_loc13_)
            {
               while(true)
               {
                  if(_loc7_ == null)
                  {
                     if(_loc13_)
                     {
                        break;
                     }
                     _loc7_ = new Point3D(0,0,0);
                  }
                  _loc7_.x = _loc6_.x - param1.x;
                  if(_loc12_)
                  {
                     break;
                  }
                  break loop1;
               }
            }
            _loc7_.y = _loc6_.y - param1.y;
            if(!_loc13_)
            {
               §§push(_loc7_);
               §§push(_loc6_.z);
               if(_loc12_)
               {
                  §§push(§§pop() - param1.z);
               }
               §§pop().z = §§pop();
            }
            break;
         }
         _loc6_ = §5n§.§3C§;
         _loc7_ = §5n§.§3C§;
         loop3:
         while(true)
         {
            if(_loc12_)
            {
               loop4:
               while(true)
               {
                  if(_loc7_ == null)
                  {
                     if(!_loc12_)
                     {
                        break;
                     }
                     _loc7_ = new Point3D(0,0,0);
                  }
                  loop5:
                  while(true)
                  {
                     loop6:
                     while(true)
                     {
                        §§push(_loc6_.x * param2.x);
                        if(!_loc13_)
                        {
                           while(true)
                           {
                              §§push(_loc6_.y * param2.y);
                              if(_loc12_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc12_)
                                 {
                                    break loop6;
                                 }
                                 §§push(Number(§§pop()));
                                 if(_loc13_)
                                 {
                                    break loop5;
                                 }
                                 §§push(_loc6_.z);
                                 if(!_loc12_)
                                 {
                                    break;
                                 }
                              }
                              §§push(§§pop() * param2.z);
                              break;
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc12_)
                           {
                              break loop5;
                           }
                        }
                        §§push(Number(§§pop()));
                        if(!_loc13_)
                        {
                           break loop5;
                        }
                        break;
                     }
                     _loc8_ = §§pop();
                     if(_loc12_)
                     {
                        §§push(_loc7_);
                        §§push(_loc8_);
                        if(!_loc13_)
                        {
                           §§push(§§pop() * param2.x);
                        }
                        §§pop().x = §§pop();
                        if(_loc13_)
                        {
                           break loop4;
                        }
                     }
                     §§push(_loc7_);
                     §§push(_loc8_);
                     if(_loc12_)
                     {
                        §§push(§§pop() * param2.y);
                     }
                     §§pop().y = §§pop();
                     if(!_loc13_)
                     {
                        break loop4;
                     }
                     break loop3;
                  }
                  §§push(Number(§§pop()));
                  break loop6;
               }
            }
            §§push(_loc7_);
            §§push(_loc8_);
            if(_loc12_)
            {
               §§push(§§pop() * param2.z);
            }
            §§pop().z = §§pop();
            break;
         }
         _loc6_ = §5n§.§3C§;
         loop8:
         while(true)
         {
            if(_loc12_)
            {
               loop9:
               while(true)
               {
                  loop10:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(param5);
                        §§push(_loc6_.x * _loc6_.x);
                        if(_loc12_)
                        {
                           §§push(_loc6_.y * _loc6_.y);
                           if(_loc13_)
                           {
                              break;
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc12_)
                           {
                              break loop10;
                           }
                           §§push(Number(§§pop()));
                           if(!_loc12_)
                           {
                              break loop9;
                           }
                        }
                        §§push(_loc6_.z);
                        if(!_loc12_)
                        {
                           break;
                        }
                        §§push(_loc6_.z);
                        if(!_loc13_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc13_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc13_)
                              {
                                 break loop9;
                              }
                              break loop10;
                           }
                           break;
                        }
                        §§goto(addr0211);
                     }
                     §§pop().§%r§ = §§pop() <= §§pop();
                     if(!_loc13_)
                     {
                        if(!param5.§%r§)
                        {
                           break loop8;
                        }
                     }
                  }
                  §§push(param4);
                  if(!_loc13_)
                  {
                     addr0211:
                     §§push(§§pop() * param4);
                  }
                  break loop11;
               }
               §§push(Number(§§pop()));
               break loop10;
            }
            _loc7_ = §5n§.§3C§;
            if(!_loc13_)
            {
               §§push(Number(Math.sqrt(_loc7_.x * _loc7_.x + _loc7_.y * _loc7_.y + _loc7_.z * _loc7_.z)));
               if(!_loc13_)
               {
                  §§push(Number(§§pop()));
               }
               _loc8_ = §§pop();
            }
            _loc9_ = §5n§.§3C§;
            if(_loc12_)
            {
               §§push(-1 / _loc8_);
               if(_loc12_)
               {
                  §§push(Number(§§pop()));
               }
               _loc10_ = §§pop();
            }
            _loc11_ = param5.normal;
            if(_loc12_)
            {
               while(true)
               {
                  if(_loc11_ == null)
                  {
                     if(_loc13_)
                     {
                        break;
                     }
                     _loc11_ = new Point3D(0,0,0);
                  }
                  _loc11_.x = _loc9_.x * _loc10_;
                  if(_loc12_)
                  {
                     _loc11_.y = _loc9_.y * _loc10_;
                     if(_loc12_)
                     {
                        §§push(_loc11_);
                        §§push(_loc9_.z);
                        if(_loc12_)
                        {
                           §§push(§§pop() * _loc10_);
                        }
                        §§pop().z = §§pop();
                        if(!_loc13_)
                        {
                           break;
                        }
                     }
                     break loop8;
                  }
                  break;
               }
            }
            §§push(param5);
            §§push(param4);
            if(!_loc13_)
            {
               §§push(§§pop() - _loc8_);
            }
            §§pop().§]!R§ = §§pop();
            break;
         }
      }
      
      override public function §2y§(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
      }
      
      final public function §9j§(param1:Point3D, param2:Point3D, param3:Object = undefined, param4:Object = undefined, param5:Point3D = undefined, param6:§"B§ = undefined) : Point3D
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc8_:* = null as Point3D;
         var _loc9_:* = null as Point3D;
         var _loc10_:* = null as §"B§;
         var _loc7_:§"B§ = §!K§.transform.§>;§();
         while(true)
         {
            if(_loc12_)
            {
               if(_loc7_.w == 1)
               {
                  if(_loc12_)
                  {
                     _loc8_ = §5n§.§3C§;
                     _loc9_ = normal;
                     if(_loc12_)
                     {
                        _loc8_.x = _loc9_.x;
                        if(!_loc12_)
                        {
                           break;
                        }
                        _loc8_.y = _loc9_.y;
                        if(!_loc12_)
                        {
                           break;
                        }
                        _loc8_.z = _loc9_.z;
                        if(_loc11_)
                        {
                           break;
                        }
                     }
                     if(param6 != null)
                     {
                        if(_loc12_)
                        {
                           §4!R§.§?!A§(§,!Z§.§>!1§,§5n§.§3C§,param6);
                        }
                     }
                     break;
                  }
               }
               else
               {
                  §4!R§.§@!M§(_loc7_,normal,§5n§.§3C§);
                  if(_loc11_)
                  {
                     break;
                  }
                  if(param6 == null)
                  {
                     break;
                  }
                  if(!_loc12_)
                  {
                     break;
                  }
                  if(normal.y <= 0.9999999999)
                  {
                     §4!R§.§?!A§(§,!Z§.§>!1§,§5n§.§3C§,param6);
                     break;
                  }
                  if(_loc11_)
                  {
                     break;
                  }
               }
            }
            _loc10_ = §!K§.transform.§+n§();
            if(_loc12_)
            {
               param6.x = _loc10_.x;
               if(!_loc11_)
               {
                  param6.y = _loc10_.y;
                  if(!_loc12_)
                  {
                     break;
                  }
               }
               param6.z = _loc10_.z;
               if(_loc11_)
               {
                  break;
               }
            }
            param6.w = _loc10_.w;
            break;
         }
         return §?!H§.§9j§(§!K§.transform.§2!§(),§5n§.§3C§,param1,param2,param5,param3,param4);
      }
      
      override public function §1%§(param1:Point3D, param2:Point3D, param3:Object = undefined, param4:Object = undefined, param5:Point3D = undefined, param6:§"B§ = undefined) : Point3D
      {
         return §9j§(param1,param2,param3,param4,param5,param6);
      }
      
      override public function §&D§(param1:§,!Z§, param2:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc3_:* = null as Point3D;
         var _loc4_:* = null as Point3D;
         if(!_loc5_)
         {
            if(param1 is §[T§)
            {
               loop0:
               while(true)
               {
                  if(!_loc5_)
                  {
                     if(§!K§.transform.§>;§().w == 1)
                     {
                        if(_loc5_)
                        {
                           break;
                        }
                        _loc3_ = §5n§.§1]§;
                        _loc4_ = normal;
                        if(!_loc5_)
                        {
                           _loc3_.x = _loc4_.x;
                           while(true)
                           {
                              if(_loc6_)
                              {
                                 _loc3_.y = _loc4_.y;
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                              }
                              _loc3_.z = _loc4_.z;
                              if(_loc6_)
                              {
                                 break;
                              }
                              break loop0;
                           }
                        }
                     }
                     else
                     {
                        §4!R§.§@!M§(§!K§.transform.§>;§(),normal,§5n§.§1]§);
                        if(_loc5_)
                        {
                           break;
                        }
                     }
                  }
                  §5n§.§5'§(§!K§.transform.§2!§(),§5n§.§1]§,param1.§!K§.transform.§2!§(),param1.§&N§,§ i§);
                  if(_loc6_)
                  {
                     §-U§.§@X§(this,param1);
                  }
                  break;
               }
            }
            else
            {
               super.§&D§(param1,param2);
            }
         }
      }
   }
}

