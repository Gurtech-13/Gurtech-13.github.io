package §"!M§
{
   import §!!$§.§ 6§;
   import §0!"§.§,!Z§;
   import §0!"§.§[T§;
   import §6!Q§.§]u§;
   import game.§#a§;
   import §>T§.§[C§;
   import §]N§.§?!H§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Currency;
   import com.player03.run3.Save;
   import com.player03.run3.menu.§#C§;
   import com.player03.run3.menu.§1!?§;
   import com.player03.run3.menu.§;!G§;
   import com.player03.run3.save.§0!#§;
   import com.player03.run3.save.§2!;§;
   import com.player03.run3.save.§]k§;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   
   public class §?!a§ extends §,!Z§
   {
      
      public static var init__:Boolean;
      
      public static var §1]§:Point3D;
      
      public var §%!'§:§?!H§;
      
      public function §?!a§(param1:§[C§, param2:int)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super(param1,929.4087706380044);
         }
         §%!'§ = new §?!H§();
         if(!_loc3_)
         {
            switch(param2)
            {
               case 0:
                  §%!'§.§;[§(1,0,0);
                  if(_loc4_)
                  {
                  }
                  break;
               case 1:
                  §%!'§.§;[§(0,-1,0);
                  break;
               case 2:
                  §%!'§.§;[§(-1,0,0);
                  break;
               case 3:
                  §%!'§.§;[§(0,1,0);
            }
         }
         §%!'§.§7! §(§%!'§.normal.x * (param1.§0w§ + 8.8),§%!'§.normal.y * (param1.§^=§ + 8.8),0);
         if(!_loc3_)
         {
            §%!'§.§;!6§(param1.transform);
         }
      }
      
      override public function §2y§(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc4_)
            {
               §%!'§.§-!_§(param1,param2,param3);
               if(!_loc5_)
               {
                  break;
               }
               §8W§.min.x = §%!'§.origin.x - 17.2;
            }
            §8W§.min.y = §%!'§.origin.y - 17.2;
            §§push(§8W§.min);
            §§push(§%!'§.origin.z);
            if(!_loc4_)
            {
               §§push(§§pop() - 17.2);
            }
            §§pop().z = §§pop();
            if(_loc5_)
            {
               break;
            }
            §§goto(addr0107);
         }
         §8W§.max.x = §%!'§.origin.x + 17.2;
         §8W§.max.y = §%!'§.origin.y + 17.2;
         if(_loc5_)
         {
            while(true)
            {
               §§push(§8W§.max);
               §§push(§%!'§.origin.z);
               if(_loc5_)
               {
                  §§push(§§pop() + 17.2);
                  if(_loc4_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            §§pop().z = §§pop();
         }
         addr0107:
      }
      
      override public function §1%§(param1:Point3D, param2:Point3D, param3:Object = undefined, param4:Object = undefined, param5:Point3D = undefined, param6:Quaternion = undefined) : Point3D
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc7_:* = false;
         var _loc9_:* = null as Point3D;
         param5 = §?!H§.§9j§(§%!'§.origin,§%!'§.normal,param1,param2,param5,param3,param4);
         var _loc8_:Number = Number(param5.x);
         loop0:
         while(true)
         {
            if(_loc10_)
            {
               if(_loc8_ != _loc8_)
               {
                  §§push(false);
                  if(!_loc11_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  _loc7_ = §§pop();
                  break;
               }
               if(!_loc10_)
               {
                  break;
               }
            }
            _loc9_ = §%!'§.origin;
            if(_loc10_)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(param5.x - _loc9_.x);
                     if(_loc10_)
                     {
                        §§push(§§pop() * (param5.x - _loc9_.x));
                        if(_loc10_)
                        {
                           while(true)
                           {
                              §§push(param5.y - _loc9_.y);
                              if(_loc10_)
                              {
                                 §§push(param5.y - _loc9_.y);
                                 if(!_loc11_)
                                 {
                                    §§push(§§pop() + §§pop() * §§pop());
                                    if(_loc10_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc11_)
                                       {
                                          break loop1;
                                       }
                                    }
                                    §§push(param5.z);
                                    §§push(_loc9_.z);
                                    if(!_loc10_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(§§pop() - §§pop());
                              }
                              §§push(param5.z);
                              if(!_loc11_)
                              {
                                 §§push(§§pop() - _loc9_.z);
                              }
                              break;
                           }
                           §§push(§§pop() * §§pop());
                           if(!_loc10_)
                           {
                              break;
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc10_)
                           {
                              break loop1;
                           }
                        }
                     }
                     §§push(Number(§§pop()));
                     break loop1;
                  }
                  §§push(§§pop() > §§pop());
                  if(_loc10_)
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc11_)
                     {
                        _loc7_ = §§pop();
                        while(true)
                        {
                           if(_loc10_)
                           {
                              break loop0;
                           }
                           addr0154:
                           param5.y = Number(Math.NaN);
                           if(_loc10_)
                           {
                              param5.z = Number(Math.NaN);
                           }
                           break;
                        }
                        §§goto(addr016e);
                     }
                  }
                  addr013a:
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(!_loc11_)
                        {
                           param5.x = Number(Math.NaN);
                           if(_loc11_)
                           {
                              break;
                           }
                        }
                        §§goto(addr0154);
                     }
                  }
               }
               §§push(295.84);
               break loop2;
            }
            addr016e:
            return param5;
         }
         §§goto(addr013a);
      }
      
      override public function §&D§(param1:§,!Z§, param2:Boolean = false) : void
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc3_:* = null as §[T§;
         var _loc4_:* = null as Point3D;
         var _loc5_:* = NaN;
         var _loc6_:* = null as Point3D;
         var _loc7_:* = null as Point3D;
         var _loc8_:* = null as Point3D;
         var _loc9_:* = null as Point3D;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         loop0:
         while(true)
         {
            if(!_loc13_)
            {
               if(!(param1 is §[T§))
               {
                  super.§&D§(param1,param2);
                  break;
               }
               if(!_loc12_)
               {
                  break;
               }
            }
            _loc3_ = param1;
            _loc4_ = param1.§!K§.transform.§2!§();
            if(_loc12_)
            {
               while(true)
               {
                  §§push(17.2);
                  if(!_loc13_)
                  {
                     §§push(§§pop() + _loc3_.§&N§);
                     if(_loc13_)
                     {
                        break;
                     }
                  }
                  §§push(Number(§§pop()));
                  if(!_loc13_)
                  {
                     §§push(Number(§§pop()));
                  }
                  break;
               }
               _loc5_ = §§pop();
            }
            _loc6_ = §%!'§.origin;
            if(!_loc12_)
            {
               break;
            }
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc6_.x - _loc4_.x);
                     if(!_loc13_)
                     {
                        §§push(§§pop() * (_loc6_.x - _loc4_.x));
                        if(_loc12_)
                        {
                           §§push(_loc6_.y - _loc4_.y);
                           §§push(_loc6_.y - _loc4_.y);
                           if(_loc13_)
                           {
                              break;
                           }
                           §§push(§§pop() * §§pop());
                           if(_loc13_)
                           {
                              break loop3;
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc13_)
                           {
                              break loop2;
                           }
                        }
                        §§push(Number(§§pop()));
                        if(_loc13_)
                        {
                           break loop2;
                        }
                     }
                     §§push(_loc6_.z);
                     if(_loc12_)
                     {
                        §§push(_loc4_.z);
                        if(!_loc13_)
                        {
                           §§push(§§pop() - §§pop());
                           §§push(_loc6_.z);
                           if(_loc12_)
                           {
                              §§push(§§pop() - _loc4_.z);
                              if(_loc13_)
                              {
                                 break;
                              }
                           }
                        }
                        §§push(§§pop() * §§pop());
                     }
                     break loop3;
                  }
                  §§goto(addr0137);
               }
               §§push(§§pop() + §§pop());
               if(!_loc13_)
               {
                  §§push(Number(§§pop()));
               }
               break;
            }
            §§push(_loc5_);
            if(_loc12_)
            {
               addr0137:
               §§push(§§pop() * _loc5_);
            }
            if(§§pop() > §§pop())
            {
               § i§.§%r§ = false;
               if(!_loc13_)
               {
                  param1.§ i§.§%r§ = false;
               }
               break;
            }
            if(!_loc13_)
            {
               §%!'§.§<;§(_loc4_,§?!a§.§1]§);
               if(_loc13_)
               {
                  break;
               }
            }
            _loc7_ = §?!a§.§1]§;
            _loc8_ = §%!'§.origin;
            _loc9_ = §?!a§.§1]§;
            loop4:
            while(true)
            {
               while(true)
               {
                  if(!_loc13_)
                  {
                     if(_loc9_ != null)
                     {
                        break;
                     }
                     if(!_loc12_)
                     {
                        break loop4;
                     }
                  }
                  _loc9_ = new Point3D(0,0,0);
                  break;
               }
               _loc9_.x = _loc7_.x - _loc8_.x;
               if(_loc12_)
               {
                  _loc9_.y = _loc7_.y - _loc8_.y;
                  if(!_loc13_)
                  {
                     break;
                  }
               }
               §§goto(addr01d8);
            }
            §§push(_loc9_);
            §§push(_loc7_.z);
            if(_loc12_)
            {
               §§push(§§pop() - _loc8_.z);
            }
            §§pop().z = §§pop();
            addr01d8:
            _loc7_ = §?!a§.§1]§;
            while(true)
            {
               while(true)
               {
                  §§push(_loc7_.x * _loc7_.x);
                  §§push(_loc7_.y * _loc7_.y);
                  if(!_loc13_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc12_)
                     {
                        break;
                     }
                     §§push(Number(§§pop()));
                     §§push(_loc7_.z);
                     if(!_loc12_)
                     {
                        continue loop9;
                     }
                  }
                  §§push(§§pop() * _loc7_.z);
                  if(!_loc13_)
                  {
                     continue loop9;
                  }
                  §§goto(addr0281);
               }
               §§goto(addr027f);
            }
            loop8:
            while(true)
            {
               loop9:
               while(true)
               {
                  while(true)
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc13_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc13_)
                        {
                           break;
                        }
                        _loc10_ = Number(§§pop());
                        §§push(_loc10_);
                        if(_loc12_)
                        {
                           §§push(1);
                           if(_loc13_)
                           {
                              break loop9;
                           }
                           §§push(§§pop() - §§pop());
                           if(_loc13_)
                           {
                              break loop8;
                           }
                        }
                     }
                     §§push(Number(§§pop()));
                     break loop8;
                  }
                  §§goto(addr025c);
               }
               if(§§pop() == §§pop())
               {
                  _loc7_.x = 1;
                  §§goto(addr029b);
               }
               else
               {
                  §§goto(addr02b7);
                  §§push(1 / Number(Math.sqrt(_loc10_)));
               }
               §§goto(addr02e6);
            }
            _loc11_ = §§pop();
            §§push(_loc11_);
            if(_loc12_)
            {
               addr025c:
               §§push(0);
               if(_loc13_)
               {
                  break loop9;
               }
               if(§§pop() < §§pop())
               {
                  §§push(_loc11_);
                  break loop7;
               }
               if(_loc12_)
               {
                  while(true)
                  {
                     §§push(_loc11_);
                     if(_loc12_)
                     {
                        addr0281:
                        addr027f:
                        §§push(§§pop() < 1e-10);
                        if(!_loc13_)
                        {
                           §§push(!§§pop());
                        }
                        if(!§§pop())
                        {
                           break;
                        }
                        §§push(_loc10_);
                     }
                     §§push(0);
                     break loop9;
                  }
                  addr02e6:
                  _loc7_ = §?!a§.§1]§;
                  _loc8_ = §?!a§.§1]§;
                  if(!_loc13_)
                  {
                     while(true)
                     {
                        if(_loc8_ == null)
                        {
                           if(_loc13_)
                           {
                              break;
                           }
                           _loc8_ = new Point3D(0,0,0);
                        }
                        _loc8_.x = _loc7_.x * 17.2;
                        if(!_loc13_)
                        {
                           _loc8_.y = _loc7_.y * 17.2;
                           if(!_loc13_)
                           {
                              §§push(_loc8_);
                              §§push(_loc7_.z);
                              if(!_loc13_)
                              {
                                 §§push(§§pop() * 17.2);
                              }
                              §§pop().z = §§pop();
                           }
                        }
                        break;
                     }
                  }
                  _loc7_ = §?!a§.§1]§;
                  _loc8_ = §%!'§.origin;
                  _loc9_ = §?!a§.§1]§;
                  if(!_loc12_)
                  {
                     break;
                  }
                  while(true)
                  {
                     if(_loc9_ == null)
                     {
                        if(_loc13_)
                        {
                           break;
                        }
                        _loc9_ = new Point3D(0,0,0);
                     }
                     _loc9_.x = _loc7_.x + _loc8_.x;
                     if(!_loc13_)
                     {
                        _loc9_.y = _loc7_.y + _loc8_.y;
                        if(_loc12_)
                        {
                           break;
                        }
                        _loc3_.§!z§(§?!a§.§1]§,this);
                        addr03df:
                     }
                     break loop0;
                  }
                  §§push(_loc9_);
                  §§push(_loc7_.z);
                  if(_loc12_)
                  {
                     §§push(§§pop() + _loc8_.z);
                     if(!_loc13_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  §§pop().z = §§pop();
                  if(_loc13_)
                  {
                     break;
                  }
                  §§goto(addr03df);
               }
               addr029b:
               _loc7_.y = 0;
               _loc7_.z = 0;
               §§goto(addr02e6);
            }
            addr02b7:
            _loc10_ = §§pop();
            _loc7_.x *= _loc10_;
            if(!_loc13_)
            {
               _loc7_.y *= _loc10_;
               §§push(_loc7_);
               §§push(_loc7_.z);
               if(!_loc13_)
               {
                  §§push(§§pop() * _loc10_);
               }
               §§pop().z = §§pop();
            }
            §§goto(addr02e6);
         }
      }
   }
}

