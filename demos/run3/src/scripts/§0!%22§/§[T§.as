package §0!"§
{
   import §!!$§.§ 6§;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import §<!&§.§%!§;
   import §>!O§.§;R§;
   import §>!O§.§^`§;
   import §@]§.§4$§;
   import §[!P§.§30§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import flash.display.Shape;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Point3D;
   
   public class §[T§ extends §,!Z§
   {
      
      public static var init__:Boolean;
      
      public static var §1]§:Point3D;
      
      public var §&N§:Number;
      
      public function §[T§(param1:§%!§, param2:Number)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            §§push(this);
            §§push(param1);
            §§push(4.1887902047863905);
            if(_loc4_)
            {
               loop0:
               while(true)
               {
                  §§push(param2);
                  if(!_loc3_)
                  {
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc4_)
                        {
                           §§push(param2);
                           if(!_loc4_)
                           {
                              break;
                           }
                           §§push(§§pop() * §§pop());
                           if(!_loc4_)
                           {
                              break loop0;
                           }
                        }
                        §§push(param2);
                        break;
                     }
                  }
                  §§push(§§pop() * §§pop());
                  break;
               }
            }
            §§pop().super(§§pop(),§§pop());
            if(_loc4_)
            {
               §&N§ = param2;
            }
         }
      }
      
      override public function §2y§(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc4_:Point3D = §[T§.§1]§;
         var _loc5_:Point3D = §!K§.transform.§2!§();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc6_)
               {
                  _loc4_.x = _loc5_.x;
                  _loc4_.y = _loc5_.y;
                  if(_loc7_)
                  {
                     break;
                  }
                  _loc4_.z = _loc5_.z;
                  if(!_loc7_)
                  {
                     §8W§.min.x = §[T§.§1]§.x - §&N§;
                     §8W§.min.y = §[T§.§1]§.y - §&N§;
                  }
                  §§push(§8W§.min);
                  §§push(§[T§.§1]§.z);
                  if(_loc6_)
                  {
                     §§push(§§pop() - §&N§);
                  }
                  §§pop().z = §§pop();
                  if(!_loc6_)
                  {
                     break loop0;
                  }
               }
               §8W§.max.x = §[T§.§1]§.x + §&N§;
               break;
            }
            §8W§.max.y = §[T§.§1]§.y + §&N§;
            if(!_loc7_)
            {
               break;
            }
            §§goto(addr0123);
         }
         §§push(§8W§.max);
         §§push(§[T§.§1]§.z);
         if(!_loc7_)
         {
            §§push(§§pop() + §&N§);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         §§pop().z = §§pop();
         addr0123:
      }
      
      public function §!z§(param1:Point3D, param2:§,!Z§) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc5_:* = null as Point3D;
         var _loc6_:* = null as Point3D;
         var _loc7_:* = null as Point3D;
         if(_loc9_)
         {
            § i§.§]!1§ = false;
         }
         var _loc3_:Point3D = §!K§.transform.§2!§();
         var _loc4_:Point3D = §[T§.§1]§;
         while(true)
         {
            if(!_loc8_)
            {
               if(_loc4_ == null)
               {
                  if(!_loc9_)
                  {
                     break;
                  }
                  _loc4_ = new Point3D(0,0,0);
               }
               _loc4_.x = param1.x - _loc3_.x;
               if(_loc8_)
               {
                  break;
               }
            }
            _loc4_.y = param1.y - _loc3_.y;
            if(!_loc8_)
            {
               §§push(_loc4_);
               §§push(param1.z);
               if(!_loc8_)
               {
                  §§push(§§pop() - _loc3_.z);
               }
               §§pop().z = §§pop();
            }
            break;
         }
         _loc4_ = §[T§.§1]§;
         loop1:
         while(true)
         {
            while(true)
            {
               if(_loc9_)
               {
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        §§push(§ i§);
                        §§push(_loc4_.x * _loc4_.x);
                        if(!_loc8_)
                        {
                           §§push(_loc4_.y * _loc4_.y);
                           if(!_loc9_)
                           {
                              break;
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc9_)
                           {
                              break loop3;
                           }
                        }
                        §§push(Number(§§pop()));
                        if(!_loc8_)
                        {
                           §§push(_loc4_.z);
                           if(_loc9_)
                           {
                              while(true)
                              {
                                 §§push(_loc4_.z);
                                 if(_loc9_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc9_)
                                    {
                                       break loop4;
                                    }
                                    break;
                                 }
                                 §§goto(addr012c);
                              }
                           }
                           §§goto(addr012d);
                        }
                        §§goto(addr0119);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc9_)
                     {
                        break;
                     }
                     §§goto(addr0119);
                  }
                  addr012d:
                  addr0119:
                  §§push(Number(§§pop()));
                  §§push(§&N§);
                  if(_loc9_)
                  {
                     addr012c:
                     §§push(§§pop() * §&N§);
                  }
                  §§pop().§%r§ = §§pop() < §§pop();
                  if(!_loc8_)
                  {
                     if(!§ i§.§%r§)
                     {
                        break;
                     }
                     if(_loc8_)
                     {
                        break loop1;
                     }
                  }
               }
               _loc5_ = §[T§.§1]§;
               if(_loc9_)
               {
                  §§push(§ i§);
                  §§push(§&N§);
                  if(_loc9_)
                  {
                     §§push(§§pop() - Number(Math.sqrt(_loc5_.x * _loc5_.x + _loc5_.y * _loc5_.y + _loc5_.z * _loc5_.z)));
                  }
                  §§pop().§]!R§ = §§pop();
               }
               _loc6_ = §[T§.§1]§;
               _loc7_ = § i§.normal;
               if(!_loc8_)
               {
                  if(_loc7_ == null)
                  {
                     if(!_loc9_)
                     {
                        break;
                     }
                     _loc7_ = new Point3D(0,0,0);
                  }
                  _loc7_.x = _loc6_.x * -1;
                  if(!_loc8_)
                  {
                     _loc7_.y = _loc6_.y * -1;
                     if(!_loc9_)
                     {
                        break;
                     }
                  }
               }
               §§push(_loc7_);
               §§push(_loc6_.z);
               if(!_loc8_)
               {
                  §§push(§§pop() * -1);
               }
               §§pop().z = §§pop();
               break;
            }
            §-U§.§@X§(this,param2);
            break;
         }
      }
      
      override public function §&D§(param1:§,!Z§, param2:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc3_:* = null as Point3D;
         var _loc4_:* = null as Point3D;
         var _loc5_:* = null as Point3D;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         if(_loc11_)
         {
            if(param1 is §[T§)
            {
               if(!_loc10_)
               {
                  _loc3_ = param1.§!K§.transform.§2!§();
                  _loc4_ = §!K§.transform.§2!§();
                  _loc5_ = §[T§.§1]§;
                  if(_loc5_ == null)
                  {
                     _loc5_ = new Point3D(0,0,0);
                  }
                  _loc5_.x = _loc3_.x - _loc4_.x;
                  if(!_loc10_)
                  {
                     _loc5_.y = _loc3_.y - _loc4_.y;
                     §§push(_loc5_);
                     §§push(_loc3_.z);
                     if(_loc11_)
                     {
                        §§push(§§pop() - _loc4_.z);
                     }
                     §§pop().z = §§pop();
                     if(!_loc10_)
                     {
                        loop0:
                        while(true)
                        {
                           §§push(param1.§&N§);
                           if(_loc11_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc10_)
                              {
                                 break;
                              }
                           }
                           _loc6_ = §§pop();
                           while(true)
                           {
                              §§push(§&N§);
                              if(_loc11_)
                              {
                                 break loop0;
                              }
                              addr00f4:
                              §§push(Number(§§pop()));
                              break;
                           }
                           addr00f5:
                           _loc7_ = §§pop();
                        }
                        while(true)
                        {
                           §§push(§§pop() + _loc6_);
                           if(_loc11_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc10_)
                              {
                                 break;
                              }
                           }
                           §§goto(addr00f4);
                        }
                        §§goto(addr00f5);
                     }
                  }
                  _loc3_ = §[T§.§1]§;
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc10_)
                        {
                           §§push(_loc3_.x * _loc3_.x);
                           §§push(_loc3_.y * _loc3_.y);
                           if(!_loc10_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc10_)
                              {
                                 break;
                              }
                              §§push(Number(§§pop()));
                              §§push(_loc3_.z);
                              if(!_loc10_)
                              {
                                 §§push(§§pop() * _loc3_.z);
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc11_)
                           {
                              §§push(Number(§§pop()));
                           }
                           _loc8_ = §§pop();
                           if(_loc11_)
                           {
                              §§push(§ i§);
                              §§push(_loc8_);
                              §§push(_loc7_);
                              if(!_loc10_)
                              {
                                 §§push(§§pop() * _loc7_);
                              }
                              §§pop().§%r§ = §§pop() < §§pop();
                              if(_loc10_)
                              {
                                 break loop3;
                              }
                           }
                        }
                        while(true)
                        {
                           if(§ i§.§%r§)
                           {
                              if(_loc11_)
                              {
                                 break loop3;
                              }
                              §§goto(addr0197);
                           }
                           §§goto(addr02a6);
                        }
                     }
                     §§goto(addr018f);
                  }
                  §§push(Number(Math.sqrt(_loc8_)));
                  if(!_loc10_)
                  {
                     break loop4;
                  }
                  addr018f:
                  _loc8_ = §§pop();
                  if(!_loc10_)
                  {
                     addr0197:
                     _loc4_ = § i§.normal;
                     _loc5_ = §[T§.§1]§;
                     while(true)
                     {
                        if(!_loc10_)
                        {
                           _loc4_.x = _loc5_.x;
                           if(!_loc10_)
                           {
                              _loc4_.y = _loc5_.y;
                              if(!_loc11_)
                              {
                                 break;
                              }
                           }
                        }
                        _loc4_.z = _loc5_.z;
                        break;
                     }
                     _loc4_ = § i§.normal;
                     if(_loc11_)
                     {
                        §§push(-1 / _loc8_);
                        if(_loc11_)
                        {
                           §§push(Number(§§pop()));
                        }
                        _loc9_ = §§pop();
                     }
                     _loc5_ = § i§.normal;
                     if(!_loc10_)
                     {
                        while(true)
                        {
                           if(_loc5_ == null)
                           {
                              if(_loc10_)
                              {
                                 break;
                              }
                              _loc5_ = new Point3D(0,0,0);
                           }
                           _loc5_.x = _loc4_.x * _loc9_;
                           if(!_loc10_)
                           {
                              _loc5_.y = _loc4_.y * _loc9_;
                              §§push(_loc5_);
                              §§push(_loc4_.z);
                              if(!_loc10_)
                              {
                                 §§push(§§pop() * _loc9_);
                              }
                              §§pop().z = §§pop();
                              break;
                           }
                        }
                        loop7:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(§&N§);
                              if(_loc11_)
                              {
                                 §§push(_loc6_);
                                 if(!_loc11_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc10_)
                                 {
                                    break loop7;
                                 }
                              }
                              §§push(Number(§§pop()));
                              if(!_loc10_)
                              {
                                 §§push(_loc8_);
                                 break;
                              }
                              break loop7;
                           }
                           §§push(§§pop() - §§pop());
                           if(_loc11_)
                           {
                              §§push(Number(§§pop()));
                           }
                           break;
                        }
                        _loc9_ = §§pop();
                        if(!_loc10_)
                        {
                           § i§.§]!R§ = _loc9_;
                        }
                     }
                     addr02a6:
                     §-U§.§@X§(this,param1);
                  }
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

