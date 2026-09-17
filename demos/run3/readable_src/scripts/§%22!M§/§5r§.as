package §"!M§
{
   import §!!$§.§ 6§;
   import §!]§.§4N§;
   import §!]§.§9u§;
   import §!]§.Path;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §%G§.§ m§;
   import §0!"§.§,!Z§;
   import §0!"§.§-U§;
   import §0!"§.§5n§;
   import §0!"§.§[T§;
   import world3d.Constraint3D;
   import §>T§.§-n§;
   import §>T§.§[C§;
   import §]!C§.Physics;
   import §]N§.§?!H§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§38§;
   import com.player03.run3.character.§,S§;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.level.Level;
   import flash.Boot;
   import flash.display.Shape;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   
   public class §5r§ extends §,!Z§
   {
      
      public static var init__:Boolean;
      
      public static var §1]§:Point3D;
      
      public static var §3C§:Point3D;
      
      public var §;!S§:Point3D;
      
      public var § 1§:Point3D;
      
      public var §53§:Point3D;
      
      public var cube:§[C§;
      
      public function §5r§(param1:§[C§)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     if(_loc3_)
                     {
                        §§push(false);
                        if(!_loc2_)
                        {
                           loop8:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(false);
                                 if(!_loc2_)
                                 {
                                    if(param1.§4!5§ == §-n§.§!!A§)
                                    {
                                       break;
                                    }
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    §§pop();
                                    if(_loc2_)
                                    {
                                       break loop7;
                                    }
                                    §§push(param1.§4!5§ == §-n§.§'!%§);
                                    if(!_loc3_)
                                    {
                                       break loop8;
                                    }
                                 }
                                 §§push(!§§pop());
                                 if(!_loc2_)
                                 {
                                    break loop8;
                                 }
                                 break;
                              }
                              if(!§§pop())
                              {
                                 break loop1;
                              }
                              if(_loc2_)
                              {
                                 break loop1;
                              }
                              §§pop();
                              if(_loc2_)
                              {
                                 break loop0;
                              }
                           }
                           §§push(Boolean(§§pop()));
                           break loop9;
                        }
                        break loop2;
                     }
                     §§push(param1.§4!5§ == §-n§.§;&§);
                     if(_loc3_)
                     {
                        break loop2;
                     }
                     break loop1;
                  }
                  §§push(Boolean(§§pop()));
                  break loop1;
               }
               §§push(!§§pop());
               if(!_loc2_)
               {
                  break loop7;
               }
               break;
            }
            if(§§pop())
            {
               break;
            }
            loop3:
            while(true)
            {
               while(true)
               {
                  §§push(this);
                  §§push(param1);
                  §§push(param1.§0w§);
                  if(!_loc2_)
                  {
                     §§push(2);
                     if(_loc2_)
                     {
                        break;
                     }
                     §§push(§§pop() * §§pop());
                     if(!_loc3_)
                     {
                        break loop3;
                     }
                  }
                  addr00e9:
                  §§push(param1.§[l§);
                  if(!_loc2_)
                  {
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc3_)
                        {
                           break loop3;
                        }
                        addr00f0:
                        §§goto(addr00f2);
                     }
                     §§goto(addr00f3);
                     §§push(2);
                  }
                  §§push(§§pop() * §§pop());
                  if(_loc3_)
                  {
                     §§goto(addr00f0);
                  }
                  §§goto(addr00f3);
               }
               §§push(§§pop() * §§pop());
               if(!_loc2_)
               {
                  §§goto(addr00e9);
                  §§push(param1.§^=§);
               }
               §§goto(addr00f3);
            }
            while(true)
            {
               §§push(2);
               if(!_loc2_)
               {
                  break loop4;
               }
               addr00f2:
               §§push(§§pop() * §§pop());
               break;
            }
            addr00f3:
            §§pop().super(§§pop(),§§pop());
            cube = param1;
            §;!S§ = new Point3D(0,0,0);
            if(_loc3_)
            {
               § 1§ = new Point3D(0,0,0);
            }
            §§goto(addr0131);
         }
         Boot.lastError = new Error();
         if(!_loc2_)
         {
            throw new Error("CubeCollider only works for boxes!");
         }
         addr0131:
         §53§ = new Point3D(0,0,0);
      }
      
      override public function §2y§(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         if(_loc8_)
         {
            super.§2y§(param1,param2,param3);
         }
         var _loc4_:Point3D = cube.axis1.normal;
         §§push(cube.§0w§);
         if(!_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:Point3D = §5r§.§1]§;
         while(true)
         {
            if(_loc8_)
            {
               if(_loc6_ == null)
               {
                  if(!_loc8_)
                  {
                     break;
                  }
                  _loc6_ = new Point3D(0,0,0);
               }
               _loc6_.x = _loc4_.x * _loc5_;
               if(_loc9_)
               {
                  break;
               }
            }
            _loc6_.y = _loc4_.y * _loc5_;
            if(!_loc9_)
            {
               §§push(_loc6_);
               §§push(_loc4_.z);
               if(!_loc9_)
               {
                  §§push(§§pop() * _loc5_);
               }
               §§pop().z = §§pop();
            }
            break;
         }
         _loc4_ = §5r§.§1]§;
         _loc6_ = cube.axis2.normal;
         if(!_loc9_)
         {
            §§push(cube.§[l§);
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
            }
            _loc5_ = §§pop();
         }
         var _loc7_:Point3D = §5r§.§1]§;
         while(true)
         {
            if(!_loc9_)
            {
               while(true)
               {
                  if(_loc7_ == null)
                  {
                     if(_loc9_)
                     {
                        break;
                     }
                     _loc7_ = new Point3D(0,0,0);
                  }
                  _loc7_.x = _loc4_.x + _loc6_.x * _loc5_;
                  if(_loc8_)
                  {
                     break;
                  }
               }
               _loc7_.y = _loc4_.y + _loc6_.y * _loc5_;
               if(_loc9_)
               {
                  break;
               }
            }
            §§push(_loc7_);
            §§push(_loc4_.z);
            if(_loc8_)
            {
               §§push(_loc6_.z);
               if(!_loc9_)
               {
                  §§push(§§pop() * _loc5_);
               }
               §§push(§§pop() + §§pop());
               if(_loc8_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§pop().z = §§pop();
            break;
         }
         _loc4_ = §5r§.§1]§;
         _loc6_ = cube.axis3.normal;
         if(!_loc9_)
         {
            §§push(cube.§^=§);
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
            }
            _loc5_ = §§pop();
         }
         _loc7_ = §5r§.§1]§;
         loop3:
         while(true)
         {
            if(!_loc9_)
            {
               while(true)
               {
                  if(_loc7_ == null)
                  {
                     if(!_loc8_)
                     {
                        break;
                     }
                     _loc7_ = new Point3D(0,0,0);
                  }
                  _loc7_.x = _loc4_.x + _loc6_.x * _loc5_;
                  if(_loc8_)
                  {
                     _loc7_.y = _loc4_.y + _loc6_.y * _loc5_;
                     if(!_loc9_)
                     {
                        break;
                     }
                     break loop3;
                  }
                  break;
               }
            }
            §§push(_loc7_);
            §§push(_loc4_.z);
            if(!_loc9_)
            {
               §§push(_loc6_.z);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc5_);
               }
               §§push(§§pop() + §§pop());
               if(!_loc9_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§pop().z = §§pop();
            break;
         }
         _loc4_ = cube.axis1.origin;
         _loc6_ = §5r§.§1]§;
         _loc7_ = § 1§;
         while(true)
         {
            if(_loc8_)
            {
               if(_loc7_ == null)
               {
                  if(_loc9_)
                  {
                     break;
                  }
                  _loc7_ = new Point3D(0,0,0);
               }
               _loc7_.x = _loc4_.x - _loc6_.x;
               if(!_loc8_)
               {
                  break;
               }
            }
            _loc7_.y = _loc4_.y - _loc6_.y;
            if(!_loc9_)
            {
               §§push(_loc7_);
               §§push(_loc4_.z);
               if(!_loc9_)
               {
                  §§push(§§pop() - _loc6_.z);
               }
               §§pop().z = §§pop();
            }
            break;
         }
         _loc4_ = cube.axis1.origin;
         _loc6_ = §5r§.§1]§;
         _loc7_ = §53§;
         loop6:
         while(true)
         {
            while(true)
            {
               if(!_loc9_)
               {
                  if(_loc7_ == null)
                  {
                     if(!_loc8_)
                     {
                        break;
                     }
                     _loc7_ = new Point3D(0,0,0);
                  }
                  _loc7_.x = _loc4_.x + _loc6_.x;
                  if(!_loc8_)
                  {
                     break loop6;
                  }
               }
               _loc7_.y = _loc4_.y + _loc6_.y;
               if(!_loc9_)
               {
                  break;
               }
               break loop6;
            }
            §§push(_loc7_);
            §§push(_loc4_.z);
            if(!_loc9_)
            {
               §§push(§§pop() + _loc6_.z);
               if(!_loc9_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§pop().z = §§pop();
            break;
         }
      }
      
      public function §5?§(param1:§?!H§, param2:Point3D, param3:Point3D, param4:Point3D, param5:Object, param6:Object, param7:Point3D) : Boolean
      {
         var _temp_1:* = true;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = _temp_1;
         var _loc9_:* = false;
         var _loc10_:* = NaN;
         var _loc11_:* = false;
         var _loc12_:Boolean = false;
         var _loc13_:* = null as Point3D;
         if(_loc15_)
         {
            §?!H§.§9j§(param2,param1.normal,param3,param4,§5r§.§1]§,param5,param6);
         }
         var _loc8_:Number = Number(§5r§.§1]§.x);
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop7:
               while(true)
               {
                  loop8:
                  while(true)
                  {
                     loop9:
                     while(true)
                     {
                        loop10:
                        while(true)
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
                                                if(!_loc14_)
                                                {
                                                   loop18:
                                                   while(true)
                                                   {
                                                      loop19:
                                                      while(true)
                                                      {
                                                         loop20:
                                                         while(true)
                                                         {
                                                            loop21:
                                                            while(true)
                                                            {
                                                               loop24:
                                                               while(true)
                                                               {
                                                                  loop27:
                                                                  while(true)
                                                                  {
                                                                     loop28:
                                                                     while(true)
                                                                     {
                                                                        loop29:
                                                                        while(true)
                                                                        {
                                                                           loop30:
                                                                           while(true)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 §§push(_loc8_);
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    if(§§pop() != §§pop())
                                                                                    {
                                                                                       break loop1;
                                                                                    }
                                                                                    if(param1 == cube.axis1)
                                                                                    {
                                                                                       §§push(false);
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          _loc9_ = Boolean(§§pop());
                                                                                          break;
                                                                                       }
                                                                                       break loop14;
                                                                                    }
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       break loop30;
                                                                                    }
                                                                                    §§push(cube.axis1.§2O§(§5r§.§1]§));
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       break loop29;
                                                                                    }
                                                                                    _loc10_ = Number(§§pop());
                                                                                    §§push(false);
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       continue loop22;
                                                                                    }
                                                                                    §§push(_loc10_);
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       break loop28;
                                                                                    }
                                                                                    §§push(cube.§0w§);
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       break loop27;
                                                                                    }
                                                                                    §§push(cube.§0w§);
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       break loop24;
                                                                                    }
                                                                                    if(§§pop() > §§pop() * §§pop())
                                                                                    {
                                                                                       break loop21;
                                                                                    }
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       break loop8;
                                                                                    }
                                                                                    §§pop();
                                                                                    §§push(_loc10_);
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       break loop7;
                                                                                    }
                                                                                    §§push(-cube.§0w§);
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       break loop20;
                                                                                    }
                                                                                    §§push(cube.§0w§);
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       break loop19;
                                                                                    }
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       break loop18;
                                                                                    }
                                                                                 }
                                                                                 §§push(§§pop() >= §§pop());
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          break loop21;
                                                                                       }
                                                                                       §§goto(addr020d);
                                                                                    }
                                                                                    §§goto(addr0246);
                                                                                 }
                                                                                 §§goto(addr011a);
                                                                              }
                                                                              §§goto(addr0131);
                                                                           }
                                                                        }
                                                                        §§goto(addr016e);
                                                                     }
                                                                     §§goto(addr0188);
                                                                  }
                                                                  §§goto(addr01b0);
                                                               }
                                                               §§goto(addr0287);
                                                            }
                                                            §§push(!§§pop());
                                                            if(!_loc14_)
                                                            {
                                                               addr011a:
                                                               _loc9_ = §§pop();
                                                               if(_loc14_)
                                                               {
                                                                  break loop11;
                                                               }
                                                               addr0131:
                                                               §§push(_loc9_);
                                                               if(_loc15_)
                                                               {
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        §§push(false);
                                                                        if(!_loc14_)
                                                                        {
                                                                           §§goto(addr0146);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        if(param1 != cube.axis2)
                                                                        {
                                                                           §§push(cube.axis2.§2O§(§5r§.§1]§));
                                                                           if(_loc15_)
                                                                           {
                                                                              addr016e:
                                                                              §§push(Number(§§pop()));
                                                                              if(!_loc14_)
                                                                              {
                                                                                 _loc10_ = §§pop();
                                                                                 §§push(false);
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc10_);
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          addr0188:
                                                                                          §§push(cube.§[l§);
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             §§push(cube.§[l§);
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                break loop24;
                                                                                             }
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                break loop12;
                                                                                             }
                                                                                          }
                                                                                          addr01b0:
                                                                                          if(§§pop() <= §§pop())
                                                                                          {
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                break loop25;
                                                                                             }
                                                                                             §§pop();
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                break loop11;
                                                                                             }
                                                                                             §§push(_loc10_);
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                §§push(cube.§[l§);
                                                                                                if(_loc15_)
                                                                                                {
                                                                                                   break loop20;
                                                                                                }
                                                                                                break loop10;
                                                                                             }
                                                                                             §§goto(addr0246);
                                                                                          }
                                                                                          §§goto(addr01f3);
                                                                                       }
                                                                                       §§goto(addr026e);
                                                                                    }
                                                                                    §§push(_loc12_);
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       break loop14;
                                                                                    }
                                                                                    break loop9;
                                                                                 }
                                                                                 break loop8;
                                                                              }
                                                                              break loop7;
                                                                           }
                                                                           break loop13;
                                                                        }
                                                                        §§push(false);
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                     break;
                                                                  }
                                                                  _loc11_ = §§pop();
                                                                  §§goto(addr020b);
                                                               }
                                                               addr0146:
                                                               return §§pop();
                                                            }
                                                            §§goto(addr02d3);
                                                         }
                                                         §§push(-§§pop());
                                                         if(_loc15_)
                                                         {
                                                            §§push(cube.§[l§);
                                                            if(_loc14_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         addr01f3:
                                                         §§push(!(§§pop() >= §§pop()));
                                                         if(_loc14_)
                                                         {
                                                            break loop8;
                                                         }
                                                         _loc11_ = Boolean(§§pop());
                                                         loop22:
                                                         while(true)
                                                         {
                                                            while(true)
                                                            {
                                                               if(_loc15_)
                                                               {
                                                                  addr020b:
                                                                  addr020d:
                                                                  if(_loc11_)
                                                                  {
                                                                     if(!_loc15_)
                                                                     {
                                                                        break loop0;
                                                                     }
                                                                     §§push(false);
                                                                     if(_loc15_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                     §§goto(addr02c3);
                                                                  }
                                                                  else
                                                                  {
                                                                     if(param1 == cube.axis3)
                                                                     {
                                                                        _loc12_ = false;
                                                                        if(!_loc14_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        break loop0;
                                                                     }
                                                                     if(!_loc15_)
                                                                     {
                                                                        break loop11;
                                                                     }
                                                                     _loc10_ = cube.axis3.§2O§(§5r§.§1]§);
                                                                     if(_loc14_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(false);
                                                                     if(_loc14_)
                                                                     {
                                                                        break loop17;
                                                                     }
                                                                     §§push(_loc10_);
                                                                     if(_loc14_)
                                                                     {
                                                                        break loop16;
                                                                     }
                                                                     §§push(cube.§^=§);
                                                                     if(!_loc15_)
                                                                     {
                                                                        break loop12;
                                                                     }
                                                                     §§push(§§pop() * cube.§^=§);
                                                                     if(_loc14_)
                                                                     {
                                                                        break loop12;
                                                                     }
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        break loop22;
                                                                     }
                                                                     §§pop();
                                                                     if(!_loc15_)
                                                                     {
                                                                        break loop15;
                                                                     }
                                                                  }
                                                               }
                                                               §§push(_loc10_);
                                                               if(!_loc15_)
                                                               {
                                                                  break loop7;
                                                               }
                                                               §§push(cube.§^=§);
                                                               if(_loc15_)
                                                               {
                                                                  break loop18;
                                                               }
                                                               §§goto(addr02b2);
                                                            }
                                                         }
                                                         §§goto(addr02cb);
                                                      }
                                                      §§push(§§pop() >= §§pop() * §§pop());
                                                      if(!_loc15_)
                                                      {
                                                         break loop9;
                                                      }
                                                      addr02c3:
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc14_)
                                                      {
                                                         break loop9;
                                                      }
                                                      addr02cb:
                                                      §§push(!§§pop());
                                                      if(_loc14_)
                                                      {
                                                         break loop9;
                                                      }
                                                      addr02d3:
                                                      _loc12_ = §§pop();
                                                      if(!_loc15_)
                                                      {
                                                         break loop0;
                                                      }
                                                   }
                                                   addr02b2:
                                                   §§push(-§§pop());
                                                   §§push(cube.§^=§);
                                                   break loop19;
                                                }
                                                break loop30;
                                             }
                                             §§goto(addr02fc);
                                          }
                                          §§goto(addr044d);
                                       }
                                       §§goto(addr0459);
                                    }
                                    if(§§pop())
                                    {
                                       §§push(false);
                                       if(_loc15_)
                                       {
                                          addr02fc:
                                          return §§pop();
                                       }
                                       break loop9;
                                    }
                                    §§push(Number(param7.x));
                                    if(_loc15_)
                                    {
                                       break;
                                    }
                                    §§goto(addr0445);
                                 }
                                 _loc10_ = §§pop();
                                 break loop0;
                              }
                              §§goto(addr0454);
                           }
                           §§goto(addr036b);
                        }
                        §§goto(addr0448);
                     }
                     §§goto(addr0373);
                  }
                  §§goto(addr049d);
               }
               §§goto(addr0314);
            }
            addr049d:
            return false;
         }
         loop2:
         while(true)
         {
            §§push(_loc10_);
            if(_loc15_)
            {
               addr0314:
               if(§§pop() == _loc10_)
               {
                  if(param3.x != param4.x)
                  {
                     while(true)
                     {
                        if(_loc15_)
                        {
                           addr0373:
                           addr036b:
                           §§push(param4.x > param3.x);
                           §§push(param7.x > §5r§.§1]§.x);
                           if(!_loc14_)
                           {
                              if(§§pop() != §§pop())
                              {
                                 break loop1;
                              }
                              if(!_loc15_)
                              {
                                 break;
                              }
                              _loc13_ = §5r§.§1]§;
                              while(true)
                              {
                                 if(!_loc14_)
                                 {
                                    param7.x = _loc13_.x;
                                    if(!_loc15_)
                                    {
                                       break;
                                    }
                                 }
                                 param7.y = _loc13_.y;
                                 if(!_loc14_)
                                 {
                                    break;
                                 }
                                 §§goto(addr03c3);
                              }
                              param7.z = _loc13_.z;
                              addr03c3:
                              return true;
                           }
                        }
                        else
                        {
                           addr03db:
                           §§push(param4.y > param3.y);
                           if(!_loc15_)
                           {
                              break loop2;
                           }
                           §§push(param7.y > §5r§.§1]§.y);
                           if(!_loc14_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(!_loc14_)
                                 {
                                    _loc13_ = §5r§.§1]§;
                                    while(true)
                                    {
                                       if(!_loc14_)
                                       {
                                          param7.x = _loc13_.x;
                                          if(_loc14_)
                                          {
                                             break;
                                          }
                                       }
                                       param7.y = _loc13_.y;
                                       if(_loc15_)
                                       {
                                          param7.z = _loc13_.z;
                                       }
                                       break;
                                    }
                                    return true;
                                 }
                                 break;
                              }
                              break loop1;
                           }
                        }
                        addr0455:
                        if(§§pop() == §§pop())
                        {
                           break;
                        }
                        break loop1;
                     }
                  }
                  else
                  {
                     if(param3.y == param4.y)
                     {
                        addr0445:
                        addr0448:
                        §§push(param4.z > param3.z);
                        break;
                     }
                     if(!_loc14_)
                     {
                        §§goto(addr03db);
                     }
                  }
                  addr0459:
                  _loc13_ = §5r§.§1]§;
                  if(!_loc14_)
                  {
                     param7.x = _loc13_.x;
                     if(_loc15_)
                     {
                        param7.y = _loc13_.y;
                        if(_loc15_)
                        {
                           param7.z = _loc13_.z;
                        }
                     }
                  }
                  return true;
               }
               if(_loc15_)
               {
                  _loc13_ = §5r§.§1]§;
                  if(!_loc14_)
                  {
                     param7.x = _loc13_.x;
                     while(true)
                     {
                        if(_loc15_)
                        {
                           param7.y = _loc13_.y;
                           if(_loc14_)
                           {
                              break;
                           }
                        }
                        param7.z = _loc13_.z;
                        break;
                     }
                  }
                  return true;
               }
               §§goto(addr0390);
            }
            §§goto(addr0445);
         }
         addr0454:
         addr044d:
         §§goto(addr0455);
      }
      
      override public function §1%§(param1:Point3D, param2:Point3D, param3:Object = undefined, param4:Object = undefined, param5:Point3D = undefined, param6:Quaternion = undefined) : Point3D
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         if(param5 == null)
         {
            param5 = new Point3D(0,0,0);
         }
         param5.x = Number(Math.NaN);
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  if(_loc8_)
                  {
                     param5.y = Number(Math.NaN);
                     while(true)
                     {
                        if(!_loc7_)
                        {
                           param5.z = Number(Math.NaN);
                           if(§5?§(cube.axis1,§ 1§,param1,param2,param3,param4,param5))
                           {
                              if(param6 != null)
                              {
                                 param6.x = 0;
                                 param6.y = 0;
                                 param6.z = 0.7071067811865476;
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 param6.w = 0.7071067811865476;
                              }
                           }
                        }
                        §§push(§5?§(cube.axis1,§53§,param1,param2,param3,param4,param5));
                        if(!_loc8_)
                        {
                           break loop2;
                        }
                        if(!Boolean(§§pop()))
                        {
                           break loop1;
                        }
                        if(!_loc8_)
                        {
                           break loop0;
                        }
                     }
                     addr0217:
                     param6.w = 0.7071067811865476;
                     §§goto(addr021d);
                  }
                  if(param6 == null)
                  {
                     break loop1;
                  }
                  param6.x = 0;
                  if(!_loc8_)
                  {
                     break loop3;
                  }
                  param6.y = 0;
                  param6.z = -0.7071067811865476;
                  while(true)
                  {
                     if(!_loc7_)
                     {
                        break loop0;
                     }
                     §§goto(addr0150);
                  }
                  §§goto(addr0156);
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(param6 != null)
                     {
                        param6.x = 0;
                        if(_loc7_)
                        {
                           break;
                        }
                        param6.y = -0.7071067811865476;
                        if(!_loc8_)
                        {
                           break loop5;
                        }
                        param6.z = 0;
                        §§goto(addr0217);
                     }
                  }
                  §§goto(addr021d);
               }
               §§goto(addr0288);
            }
            if(§5?§(cube.axis2,§ 1§,param1,param2,param3,param4,param5))
            {
               if(param6 != null)
               {
                  param6.x = -0.7071067811865476;
                  param6.y = 0;
                  if(!_loc7_)
                  {
                     addr0150:
                     param6.z = 0;
                  }
                  addr0156:
                  param6.w = 0.7071067811865476;
               }
            }
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§5?§(cube.axis2,§53§,param1,param2,param3,param4,param5));
                        if(!_loc7_)
                        {
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(!_loc7_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       if(param6 != null)
                                       {
                                          if(!_loc7_)
                                          {
                                             param6.x = 1;
                                             param6.y = 0;
                                             if(_loc7_)
                                             {
                                                break loop4;
                                             }
                                             param6.z = 0;
                                             if(_loc7_)
                                             {
                                                break loop3;
                                             }
                                             param6.w = 0;
                                             if(_loc7_)
                                             {
                                                break;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§push(§5?§(cube.axis3,§ 1§,param1,param2,param3,param4,param5));
                              }
                              §§push(Boolean(§§pop()));
                              break loop2;
                           }
                           addr021d:
                        }
                        if(§§pop())
                        {
                           if(param6 != null)
                           {
                              if(!_loc7_)
                              {
                                 param6.x = 0;
                                 break loop3;
                              }
                           }
                        }
                        §§goto(addr027f);
                     }
                     §§goto(addr0288);
                  }
                  §§goto(addr025a);
               }
               param6.w = 0.7071067811865476;
               while(true)
               {
                  if(!_loc7_)
                  {
                     §§goto(addr027f);
                  }
                  §§goto(addr0288);
               }
               §§goto(addr02a1);
            }
            param6.y = 0.7071067811865476;
            param6.z = 0;
            addr025a:
            if(!_loc7_)
            {
               break loop4;
            }
            addr027f:
            if(param6 != null)
            {
               addr0288:
               QuaternionUtils.multiply(§!K§.transform.§+n§(),param6,param6);
            }
            addr02a1:
            return param5;
         }
         param6.w = 0.7071067811865476;
         break loop1;
      }
      
      override public function §&D§(param1:§,!Z§, param2:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = _temp_1;
         var _loc3_:* = null as §[T§;
         var _loc4_:* = null as Point3D;
         var _loc5_:* = NaN;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:* = 0;
         var _loc9_:* = NaN;
         var _loc10_:int = 0;
         var _loc11_:* = 0;
         var _loc12_:* = null as §?!H§;
         var _loc13_:* = false;
         var _loc14_:* = null as Point3D;
         var _loc15_:* = null as Point3D;
         if(_loc17_)
         {
            if(param1 is §[T§)
            {
               if(!_loc16_)
               {
                  _loc3_ = param1;
                  _loc4_ = param1.§!K§.transform.§2!§();
                  while(true)
                  {
                     while(true)
                     {
                        loop7:
                        while(true)
                        {
                           loop44:
                           while(true)
                           {
                              while(true)
                              {
                                 loop52:
                                 while(true)
                                 {
                                    §§push(cube.axis1.§2O§(_loc4_));
                                    if(_loc17_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc16_)
                                       {
                                          break;
                                       }
                                       §§push(Number(§§pop()));
                                       if(!_loc17_)
                                       {
                                          break;
                                       }
                                       _loc5_ = §§pop();
                                       if(!_loc17_)
                                       {
                                          continue loop2;
                                       }
                                       §§push(_loc5_);
                                       §§push(cube.§0w§);
                                       §§push(cube.§0w§);
                                       if(!_loc17_)
                                       {
                                          continue loop54;
                                       }
                                       if(§§pop() > §§pop() * §§pop())
                                       {
                                          §§push(1);
                                       }
                                       else
                                       {
                                          §§push(_loc5_);
                                          §§push(-cube.§0w§);
                                          §§push(cube.§0w§);
                                          if(!_loc17_)
                                          {
                                             break loop44;
                                          }
                                          if(§§pop() < §§pop() * §§pop())
                                          {
                                             if(_loc16_)
                                             {
                                                break loop7;
                                             }
                                             §§push(-1);
                                             if(_loc16_)
                                             {
                                                continue loop37;
                                             }
                                          }
                                          else
                                          {
                                             §§push(0);
                                          }
                                       }
                                       _loc6_ = §§pop();
                                       if(!_loc17_)
                                       {
                                          continue loop2;
                                       }
                                       _loc7_ = cube.axis2.§2O§(_loc4_);
                                       §§push(_loc7_);
                                    }
                                    while(true)
                                    {
                                       §§push(cube.§[l§);
                                       if(_loc17_)
                                       {
                                          §§push(cube.§[l§);
                                          if(!_loc17_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop() * §§pop());
                                          if(!_loc16_)
                                          {
                                             if(§§pop() <= §§pop())
                                             {
                                                §§push(_loc7_);
                                                break loop52;
                                             }
                                             while(true)
                                             {
                                                §§push(1);
                                                if(!_loc16_)
                                                {
                                                   §§goto(addr019a);
                                                }
                                                else
                                                {
                                                   §§goto(addr0350);
                                                }
                                             }
                                             §§goto(addr0371);
                                          }
                                       }
                                       addr016b:
                                       §§push(cube.§[l§);
                                       if(_loc17_)
                                       {
                                          break loop44;
                                       }
                                       continue loop54;
                                    }
                                    §§goto(addr0226);
                                 }
                                 §§goto(addr016b);
                              }
                              while(true)
                              {
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(§§pop() > §§pop() * §§pop())
                                       {
                                          §§push(1);
                                          if(_loc16_)
                                          {
                                             §§goto(addr032d);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr0205);
                                          §§push(_loc9_);
                                       }
                                       §§goto(addr0233);
                                    }
                                    §§goto(addr032f);
                                 }
                                 §§goto(addr03d4);
                              }
                              §§goto(addr03eb);
                           }
                           loop46:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc17_)
                              {
                                 while(true)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       if(!_loc17_)
                                       {
                                          break;
                                       }
                                       §§push(-1);
                                    }
                                    else
                                    {
                                       §§push(0);
                                       if(_loc16_)
                                       {
                                          break loop46;
                                       }
                                    }
                                    addr019a:
                                    §§push(int(§§pop()));
                                    if(_loc17_)
                                    {
                                       _loc8_ = §§pop();
                                       if(_loc17_)
                                       {
                                          while(true)
                                          {
                                             §§push(cube.axis3.§2O§(_loc4_));
                                             if(_loc17_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc17_)
                                                {
                                                   break;
                                                }
                                                _loc9_ = §§pop();
                                                if(_loc17_)
                                                {
                                                   §§push(_loc9_);
                                                }
                                                else
                                                {
                                                   §§goto(addr027b);
                                                }
                                             }
                                             while(true)
                                             {
                                                addr021d:
                                                §§push(cube.§^=§);
                                                if(_loc17_)
                                                {
                                                   §§push(cube.§^=§);
                                                   if(_loc17_)
                                                   {
                                                      break loop45;
                                                   }
                                                   addr0226:
                                                   §§push(§§pop() * §§pop());
                                                   break;
                                                }
                                                §§goto(addr0226);
                                             }
                                             addr0227:
                                             if(§§pop() < §§pop())
                                             {
                                                §§push(-1);
                                                break loop46;
                                             }
                                             §§push(0);
                                             break loop46;
                                          }
                                          addr0205:
                                          §§push(cube.§^=§);
                                          if(!_loc16_)
                                          {
                                             §§push(-§§pop());
                                             if(_loc17_)
                                             {
                                                §§goto(addr021d);
                                             }
                                          }
                                          §§goto(addr0227);
                                          §§push(cube.§^=§);
                                       }
                                       else
                                       {
                                          §§goto(addr0356);
                                       }
                                    }
                                    §§goto(addr0371);
                                 }
                                 §§goto(addr0377);
                              }
                              §§goto(addr0227);
                           }
                           addr0233:
                           _loc10_ = §§pop();
                           § i§.§%r§ = false;
                           param1.§ i§.§%r§ = false;
                           if(_loc17_)
                           {
                              §§push(_loc6_);
                              if(_loc17_)
                              {
                                 while(true)
                                 {
                                    §§push(0);
                                    if(!_loc16_)
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          §§push(cube.§'!_§);
                                          continue loop37;
                                       }
                                       §§push(_loc6_);
                                       §§push(0);
                                       if(_loc16_)
                                       {
                                          §§goto(addr0402);
                                       }
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       continue loop42;
                                    }
                                    if(!_loc16_)
                                    {
                                       while(true)
                                       {
                                          §§push(cube.§'!_§ & 0x20);
                                          §§push(0);
                                          if(_loc17_)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                continue loop42;
                                             }
                                             if(!_loc16_)
                                             {
                                                break loop7;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr032f);
                                          }
                                          §§goto(addr03d4);
                                       }
                                       §§goto(addr03eb);
                                    }
                                    else
                                    {
                                       §§goto(addr02e9);
                                    }
                                 }
                                 §§goto(addr0437);
                              }
                              §§goto(addr03ba);
                           }
                           §§goto(addr0380);
                        }
                        return;
                     }
                     loop8:
                     while(true)
                     {
                        loop9:
                        while(true)
                        {
                           loop35:
                           while(true)
                           {
                              loop37:
                              while(true)
                              {
                                 loop38:
                                 while(true)
                                 {
                                    §§push(16);
                                    if(_loc17_)
                                    {
                                       if((§§pop() & §§pop()) != 0)
                                       {
                                          addr027b:
                                          return;
                                       }
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             loop41:
                                             while(true)
                                             {
                                                loop42:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc8_);
                                                      if(!_loc16_)
                                                      {
                                                         §§push(0);
                                                         if(!_loc17_)
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop() > §§pop())
                                                         {
                                                            §§push(cube.§'!_§ & 0x0100);
                                                            §§push(0);
                                                            if(!_loc16_)
                                                            {
                                                               if(§§pop() != §§pop())
                                                               {
                                                                  if(!_loc16_)
                                                                  {
                                                                     addr02e9:
                                                                     return;
                                                                  }
                                                                  break loop42;
                                                               }
                                                               break loop41;
                                                            }
                                                            §§goto(addr0373);
                                                         }
                                                         else
                                                         {
                                                            if(_loc8_ >= 0)
                                                            {
                                                               break loop41;
                                                            }
                                                            if(!_loc16_)
                                                            {
                                                               §§push(cube.§'!_§ & 0x0200);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr040d);
                                                            }
                                                         }
                                                      }
                                                      §§push(0);
                                                      if(_loc17_)
                                                      {
                                                         if(§§pop() != §§pop())
                                                         {
                                                            break loop42;
                                                         }
                                                         break loop41;
                                                      }
                                                      break loop38;
                                                   }
                                                   §§goto(addr0320);
                                                }
                                                return;
                                             }
                                             §§push(_loc10_);
                                             §§push(0);
                                             if(!_loc16_)
                                             {
                                                addr0320:
                                                if(§§pop() <= §§pop())
                                                {
                                                   §§push(_loc10_);
                                                   if(_loc17_)
                                                   {
                                                      addr0350:
                                                      if(§§pop() < 0)
                                                      {
                                                         addr0356:
                                                         §§push(cube.§'!_§);
                                                         §§push(128);
                                                         if(_loc17_)
                                                         {
                                                            §§push(§§pop() & §§pop());
                                                            if(!_loc16_)
                                                            {
                                                               addr0373:
                                                               addr0371:
                                                               if(§§pop() != 0)
                                                               {
                                                                  addr0377:
                                                                  return;
                                                               }
                                                               break loop35;
                                                            }
                                                            break loop8;
                                                         }
                                                         break loop9;
                                                      }
                                                      break loop35;
                                                   }
                                                   break loop37;
                                                }
                                                §§push(cube.§'!_§);
                                                §§push(64);
                                             }
                                             addr032f:
                                             §§push(§§pop() & §§pop());
                                             §§push(0);
                                             if(!_loc17_)
                                             {
                                                break loop9;
                                             }
                                             if(§§pop() == §§pop())
                                             {
                                                break loop35;
                                             }
                                             if(_loc17_)
                                             {
                                                return;
                                             }
                                             §§goto(addr03d4);
                                          }
                                          §§goto(addr0487);
                                       }
                                       §§goto(addr0983);
                                    }
                                    §§goto(addr0373);
                                 }
                                 §§goto(addr03f4);
                              }
                              §§goto(addr0394);
                           }
                           §§push(_loc6_);
                           break loop8;
                        }
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc17_)
                           {
                              addr03ba:
                              §§goto(addr03be);
                              §§push(_loc10_);
                              §§push(0);
                           }
                           §§goto(addr03c2);
                        }
                        §§goto(addr03ca);
                     }
                     while(true)
                     {
                        if(§§pop() == 0)
                        {
                           addr0380:
                           §§push(1);
                           if(_loc16_)
                           {
                           }
                           addr0394:
                           §§push(_loc8_);
                           if(!_loc17_)
                           {
                              break loop9;
                           }
                           §§push(0);
                           if(!_loc16_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 §§push(1);
                                 break loop9;
                              }
                              §§push(0);
                              break loop9;
                           }
                           §§push(int(§§pop() + (§§pop() == §§pop() ? 1 : 0)));
                           if(!_loc17_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           §§push(0);
                           if(_loc17_)
                           {
                              §§goto(addr0394);
                           }
                        }
                        _loc11_ = §§pop();
                        addr03d4:
                        if(_loc11_ != 3)
                        {
                           if(!_loc17_)
                           {
                              break loop2;
                           }
                           §§push(_loc11_);
                           if(_loc17_)
                           {
                              break;
                           }
                           §§goto(addr0437);
                        }
                     }
                     addr03eb:
                     §§push(2);
                     if(!_loc16_)
                     {
                        addr03f4:
                        if(§§pop() == §§pop())
                        {
                           continue loop2;
                        }
                        _loc14_ = §;!S§;
                        _loc15_ = cube.axis1.origin;
                        loop11:
                        while(true)
                        {
                           loop12:
                           while(true)
                           {
                              if(!_loc16_)
                              {
                                 _loc14_.x = _loc15_.x;
                                 _loc14_.y = _loc15_.y;
                                 loop24:
                                 while(true)
                                 {
                                    loop25:
                                    while(true)
                                    {
                                       loop28:
                                       while(true)
                                       {
                                          if(_loc17_)
                                          {
                                             _loc14_.z = _loc15_.z;
                                             if(_loc16_)
                                             {
                                                break loop11;
                                             }
                                             loop29:
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                                if(_loc17_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      if(_loc17_)
                                                      {
                                                         if(§§pop() > §§pop())
                                                         {
                                                            if(_loc16_)
                                                            {
                                                               break loop11;
                                                            }
                                                            cube.axis1.§>!D§(§;!S§,cube.§0w§,§;!S§);
                                                            addr0639:
                                                            §§push(_loc8_);
                                                            if(_loc16_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(0);
                                                            if(_loc16_)
                                                            {
                                                               break loop28;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc6_);
                                                            if(_loc16_)
                                                            {
                                                               break loop25;
                                                            }
                                                            §§push(0);
                                                            if(!_loc16_)
                                                            {
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  loop31:
                                                                  while(true)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(cube.axis1);
                                                                        §§push(§;!S§);
                                                                        if(_loc17_)
                                                                        {
                                                                           §§push(_loc5_);
                                                                           if(!_loc17_)
                                                                           {
                                                                              break loop31;
                                                                           }
                                                                           if(§§pop() < 0)
                                                                           {
                                                                              §§push(Number(Math.sqrt(-_loc5_)));
                                                                              if(!_loc16_)
                                                                              {
                                                                                 break loop31;
                                                                              }
                                                                              break;
                                                                           }
                                                                        }
                                                                        §§push(Number(Math.sqrt(_loc5_)));
                                                                        if(_loc17_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        break loop31;
                                                                     }
                                                                     §§pop().§>!D§(§§pop(),§§pop(),§;!S§);
                                                                  }
                                                                  §§push(-§§pop());
                                                                  break loop32;
                                                               }
                                                               §§push(cube.axis1);
                                                               §§push(§;!S§);
                                                               §§push(cube.§0w§);
                                                               if(_loc17_)
                                                               {
                                                                  §§push(-§§pop());
                                                               }
                                                               §§pop().§>!D§(§§pop(),§§pop(),§;!S§);
                                                               §§goto(addr0639);
                                                            }
                                                         }
                                                      }
                                                      if(§§pop() > §§pop())
                                                      {
                                                         cube.axis2.§>!D§(§;!S§,cube.§[l§,§;!S§);
                                                         break loop29;
                                                      }
                                                      §§push(_loc8_);
                                                      if(!_loc16_)
                                                      {
                                                         break;
                                                      }
                                                      break loop25;
                                                   }
                                                }
                                                §§push(0);
                                                if(_loc17_)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      if(_loc17_)
                                                      {
                                                         §§push(cube.axis2);
                                                         §§push(§;!S§);
                                                         §§push(cube.§[l§);
                                                         if(_loc17_)
                                                         {
                                                            §§push(-§§pop());
                                                         }
                                                         §§pop().§>!D§(§§pop(),§§pop(),§;!S§);
                                                         if(_loc17_)
                                                         {
                                                            break;
                                                         }
                                                         break loop12;
                                                      }
                                                      break;
                                                   }
                                                   loop33:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(cube.axis2);
                                                         §§push(§;!S§);
                                                         if(_loc17_)
                                                         {
                                                            §§push(_loc7_);
                                                            if(!_loc17_)
                                                            {
                                                               break;
                                                            }
                                                            if(§§pop() < 0)
                                                            {
                                                               §§push(Number(Math.sqrt(-_loc7_)));
                                                               if(_loc17_)
                                                               {
                                                                  break loop33;
                                                               }
                                                               break;
                                                            }
                                                         }
                                                         §§push(Number(Math.sqrt(_loc7_)));
                                                         if(_loc17_)
                                                         {
                                                            break;
                                                         }
                                                         break loop33;
                                                      }
                                                      §§pop().§>!D§(§§pop(),§§pop(),§;!S§);
                                                      break loop29;
                                                   }
                                                   §§push(-§§pop());
                                                   break loop34;
                                                }
                                                break loop24;
                                             }
                                          }
                                          §§push(_loc10_);
                                          if(_loc17_)
                                          {
                                             break loop25;
                                          }
                                          §§goto(addr0750);
                                       }
                                       §§goto(addr0752);
                                    }
                                    §§push(0);
                                    if(_loc17_)
                                    {
                                       break;
                                    }
                                    break loop28;
                                 }
                                 if(§§pop() > §§pop())
                                 {
                                    cube.axis3.§>!D§(§;!S§,cube.§^=§,§;!S§);
                                    break loop11;
                                 }
                                 addr0750:
                                 addr0752:
                                 if(_loc10_ >= 0)
                                 {
                                    loop26:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(cube.axis3);
                                          §§push(§;!S§);
                                          if(_loc17_)
                                          {
                                             §§push(_loc9_);
                                             if(!_loc17_)
                                             {
                                                break;
                                             }
                                             if(§§pop() < 0)
                                             {
                                                §§push(Number(Math.sqrt(-_loc9_)));
                                                if(_loc17_)
                                                {
                                                   break loop26;
                                                }
                                                break;
                                             }
                                          }
                                          §§push(Number(Math.sqrt(_loc9_)));
                                          if(_loc17_)
                                          {
                                             break;
                                          }
                                          break loop26;
                                       }
                                       §§pop().§>!D§(§§pop(),§§pop(),§;!S§);
                                       if(!_loc16_)
                                       {
                                          break loop11;
                                       }
                                       addr0983:
                                       return;
                                    }
                                    §§push(-§§pop());
                                    break loop27;
                                 }
                              }
                              §§push(cube.axis3);
                              §§push(§;!S§);
                              §§push(cube.§^=§);
                              if(!_loc16_)
                              {
                                 §§push(-§§pop());
                              }
                              §§pop().§>!D§(§§pop(),§§pop(),§;!S§);
                              break loop11;
                           }
                           §§push(§!K§.level.unpausedTime - param1.§!K§.physicsData.§'![§ > 0.1);
                           if(!_loc17_)
                           {
                              break loop14;
                           }
                           §§goto(addr093a);
                        }
                        _loc3_.§!z§(§;!S§,this);
                        loop13:
                        while(true)
                        {
                           if(_loc17_)
                           {
                              loop14:
                              while(true)
                              {
                                 loop15:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(false);
                                       if(_loc17_)
                                       {
                                          §§push(false);
                                          if(_loc17_)
                                          {
                                             loop17:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   §§push(false);
                                                   if(_loc17_)
                                                   {
                                                      loop19:
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(false);
                                                            if(_loc17_)
                                                            {
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(false);
                                                                        if(_loc17_)
                                                                        {
                                                                           §§push(false);
                                                                           if(_loc16_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(false);
                                                                           if(!_loc16_)
                                                                           {
                                                                              if(§ i§.§%r§)
                                                                              {
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(_loc6_ == 0);
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           if(!§§pop())
                                                                           {
                                                                              break loop22;
                                                                           }
                                                                           if(_loc16_)
                                                                           {
                                                                              break loop22;
                                                                           }
                                                                           §§pop();
                                                                           if(!_loc17_)
                                                                           {
                                                                              break loop21;
                                                                           }
                                                                        }
                                                                        §§push(_loc8_ < 0);
                                                                        if(!_loc16_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        break loop22;
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                     break;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc16_)
                                                                     {
                                                                        §§pop();
                                                                        if(!_loc17_)
                                                                        {
                                                                           break loop19;
                                                                        }
                                                                        §§push(_loc10_ > 0);
                                                                        if(_loc16_)
                                                                        {
                                                                           break;
                                                                        }
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  break;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  break loop19;
                                                               }
                                                               if(!_loc16_)
                                                               {
                                                                  §§pop();
                                                                  if(_loc16_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(param1.§!K§.§[!G§ == null);
                                                                  if(_loc17_)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     if(_loc16_)
                                                                     {
                                                                        break loop19;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                            break loop19;
                                                         }
                                                      }
                                                      if(§§pop())
                                                      {
                                                         if(_loc17_)
                                                         {
                                                            §§pop();
                                                            if(!_loc16_)
                                                            {
                                                               §§push(param1.§!K§.§[!G§.§>l§.y <= 0);
                                                               if(_loc17_)
                                                               {
                                                                  break loop20;
                                                               }
                                                               break loop17;
                                                            }
                                                            break;
                                                         }
                                                         break loop20;
                                                      }
                                                      break loop17;
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                   break loop17;
                                                }
                                             }
                                             if(§§pop())
                                             {
                                                if(!_loc16_)
                                                {
                                                   break loop18;
                                                }
                                                break loop15;
                                             }
                                             break;
                                          }
                                          §§pop();
                                          if(!_loc17_)
                                          {
                                             break loop14;
                                          }
                                       }
                                       §§push(param1.§!K§.physicsData == null);
                                       if(_loc17_)
                                       {
                                          §§push(!§§pop());
                                          if(!_loc16_)
                                          {
                                             break loop15;
                                          }
                                       }
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       if(!_loc16_)
                                       {
                                          §§pop();
                                          if(!_loc16_)
                                          {
                                             break loop12;
                                          }
                                          break loop13;
                                       }
                                       addr093a:
                                       §§push(Boolean(§§pop()));
                                    }
                                    break loop14;
                                 }
                                 §§push(Boolean(§§pop()));
                                 break loop16;
                              }
                              if(!§§pop())
                              {
                                 break;
                              }
                              if(_loc16_)
                              {
                                 break;
                              }
                              § i§.§%r§ = false;
                           }
                           param1.§ i§.§%r§ = false;
                           break;
                        }
                     }
                     else
                     {
                        §§goto(addr0439);
                     }
                  }
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc6_);
                        if(!_loc16_)
                        {
                           addr0402:
                           if(§§pop() != 0)
                           {
                              if(_loc17_)
                              {
                                 addr040d:
                                 _loc12_ = cube.axis1;
                                 if(!_loc16_)
                                 {
                                    §§push(_loc6_ > 0);
                                    if(_loc17_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    _loc13_ = §§pop();
                                 }
                                 break;
                              }
                              break loop2;
                           }
                           §§push(_loc8_);
                        }
                        addr0437:
                        addr0439:
                        if(§§pop() != 0)
                        {
                           break loop2;
                        }
                        _loc12_ = cube.axis3;
                        if(_loc17_)
                        {
                           §§push(_loc10_ > 0);
                           if(_loc17_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           _loc13_ = §§pop();
                        }
                        break;
                     }
                     addr0487:
                     _loc14_ = §5r§.§3C§;
                     _loc15_ = _loc12_.normal;
                     while(true)
                     {
                        if(!_loc16_)
                        {
                           _loc14_.x = _loc15_.x;
                           while(true)
                           {
                              if(!_loc16_)
                              {
                                 _loc14_.y = _loc15_.y;
                                 if(!_loc17_)
                                 {
                                    break;
                                 }
                              }
                              _loc14_.z = _loc15_.z;
                              if(!_loc16_)
                              {
                                 break;
                              }
                           }
                           while(true)
                           {
                              §§push(§5n§);
                              if(_loc17_)
                              {
                                 if(!_loc13_)
                                 {
                                    §§push(§ 1§);
                                    break;
                                 }
                              }
                              §§push(§53§);
                              break;
                           }
                           §§pop().§5'§(§§pop(),§5r§.§3C§,_loc4_,_loc3_.§&N§,§ i§);
                           if(_loc16_)
                           {
                              break;
                           }
                        }
                        §-U§.§@X§(this,param1);
                        break;
                     }
                  }
                  _loc12_ = cube.axis2;
                  if(_loc17_)
                  {
                     §§push(_loc8_ > 0);
                     if(!_loc16_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     _loc13_ = §§pop();
                  }
                  break loop3;
               }
               addr097a:
               §-U§.§@X§(this,param1);
               break loop39;
               break loop39;
            }
            § i§.§%r§ = false;
            if(_loc16_)
            {
               break loop39;
            }
            §§goto(addr097a);
         }
         break loop39;
      }
   }
}

