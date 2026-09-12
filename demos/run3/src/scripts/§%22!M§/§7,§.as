package §"!M§
{
   import §%!Z§.§&!S§;
   import §0!"§.§,!Z§;
   import §0!"§.§5n§;
   import §0!"§.§[T§;
   import §2!"§.§1e§;
   import §>T§.§-2§;
   import com.player03.run3.character.§6M§;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   import haxeutils.math.geom.Point3DUtils;
   import unitsystem.§7o§;
   
   public class §7,§ extends §5n§
   {
      
      public static var init__:Boolean;
      
      public static var §1]§:Point3D;
      
      public var §4!C§:§-2§;
      
      public var §;!S§:Point3D;
      
      public function §7,§(param1:§-2§)
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:Point3D = param1.p1;
         var _loc3_:Point3D = param1.p2;
         var _loc4_:Point3D = param1.p3;
         while(true)
         {
            §§push(Point3DUtils);
            §§push(_loc3_.x - _loc2_.x);
            §§push(_loc3_.y - _loc2_.y);
            §§push(_loc3_.z);
            if(!_loc6_)
            {
               §§push(_loc2_.z);
               if(_loc6_)
               {
                  break;
               }
               §§push(§§pop() - §§pop());
            }
            §§push(_loc4_.x - _loc2_.x);
            break;
         }
         §§push(_loc4_.y - _loc2_.y);
         §§push(_loc4_.z);
         if(!_loc6_)
         {
            §§push(§§pop() - _loc2_.z);
         }
         var _loc5_:Point3D = §§pop().§ !K§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
         while(true)
         {
            if(!_loc6_)
            {
               super(param1,_loc5_,Number(Math.POSITIVE_INFINITY));
               if(_loc7_)
               {
                  §4!C§ = param1;
                  if(_loc6_)
                  {
                     break;
                  }
               }
            }
            §;!S§ = new Point3D(0,0,0);
            break;
         }
      }
      
      override public function §2y§(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(_loc5_)
         {
            §8W§.clear();
         }
         var _loc4_:Point3D = §4!C§.transform.§2!§();
         while(true)
         {
            if(!_loc6_)
            {
               while(true)
               {
                  §§push(§8W§);
                  §§push(§4!C§.p1.x + _loc4_.x);
                  §§push(§4!C§.p1.y + _loc4_.y);
                  §§push(§4!C§.p1.z);
                  if(!_loc6_)
                  {
                     §§push(§§pop() + _loc4_.z);
                     if(!_loc5_)
                     {
                        break;
                     }
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               §§pop().§?j§(§§pop(),§§pop(),§§pop());
               if(!_loc5_)
               {
                  break;
               }
            }
            §§push(§8W§);
            §§push(§4!C§.p2.x + _loc4_.x);
            §§push(§4!C§.p2.y + _loc4_.y);
            §§push(§4!C§.p2.z);
            if(!_loc6_)
            {
               §§push(§§pop() + _loc4_.z);
               if(_loc5_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§pop().§?j§(§§pop(),§§pop(),§§pop());
            if(!_loc6_)
            {
               break;
            }
            §§goto(addr0149);
         }
         while(true)
         {
            §§push(§8W§);
            §§push(§4!C§.p3.x + _loc4_.x);
            §§push(§4!C§.p3.y + _loc4_.y);
            §§push(§4!C§.p3.z);
            if(!_loc6_)
            {
               §§push(§§pop() + _loc4_.z);
               if(_loc6_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         §§pop().§?j§(§§pop(),§§pop(),§§pop());
         addr0149:
      }
      
      override public function §1%§(param1:Point3D, param2:Point3D, param3:Object = undefined, param4:Object = undefined, param5:Point3D = undefined, param6:§"B§ = undefined) : Point3D
      {
         var _temp_1:* = true;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = _temp_1;
         var _loc10_:* = NaN;
         var _loc11_:* = 0;
         var _loc12_:* = NaN;
         var _loc13_:int = 0;
         param5 = super.§1%§(param1,param2,param3,param4,param5,param6);
         §§push(false);
         if(_loc15_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(§4!C§.axis1.§2O§(param5));
         if(!_loc14_)
         {
            §§push(Number(§§pop()));
            if(!_loc14_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc8_:* = §§pop();
         loop0:
         while(true)
         {
            if(!_loc14_)
            {
               while(true)
               {
                  §§push(_loc8_);
                  if(!_loc14_)
                  {
                     §§push(§4!C§.axis1Length);
                     if(!_loc14_)
                     {
                        §§push(§§pop() * §4!C§.axis1Length);
                     }
                     if(§§pop() > §§pop())
                     {
                        if(!_loc14_)
                        {
                           addr009f:
                           §§push(1);
                           if(_loc15_)
                           {
                           }
                           break loop0;
                        }
                        break;
                     }
                     §§push(_loc8_);
                  }
                  if(§§pop() < 0)
                  {
                     break;
                  }
                  §§push(0);
                  if(_loc15_)
                  {
                     break loop0;
                  }
                  var _loc9_:* = §§pop();
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           if(!_loc14_)
                           {
                              loop5:
                              while(true)
                              {
                                 loop6:
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
                                                         §§push(_loc9_);
                                                         if(_loc15_)
                                                         {
                                                            §§push(0);
                                                            if(!_loc15_)
                                                            {
                                                               break loop13;
                                                            }
                                                            if(§§pop() != §§pop())
                                                            {
                                                               break loop12;
                                                            }
                                                            §§push(§4!C§.axis2.§2O§(param5));
                                                            if(_loc15_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc14_)
                                                               {
                                                                  break loop11;
                                                               }
                                                               _loc10_ = §§pop();
                                                               if(!_loc15_)
                                                               {
                                                                  break loop4;
                                                               }
                                                               §§push(_loc10_);
                                                            }
                                                            §§push(§4!C§.axis2Length);
                                                            if(!_loc15_)
                                                            {
                                                               break loop10;
                                                            }
                                                            §§push(§4!C§.axis2Length);
                                                            if(_loc14_)
                                                            {
                                                               break loop9;
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc14_)
                                                            {
                                                               break loop8;
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  §§push(1);
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc10_);
                                                                  if(_loc14_)
                                                                  {
                                                                     break loop6;
                                                                  }
                                                                  §§push(0);
                                                                  if(_loc14_)
                                                                  {
                                                                     break loop5;
                                                                  }
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     §§push(-1);
                                                                     if(_loc14_)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(0);
                                                                  }
                                                               }
                                                               §§push(int(§§pop()));
                                                               if(_loc15_)
                                                               {
                                                                  _loc11_ = §§pop();
                                                                  §§push(_loc11_);
                                                                  break;
                                                               }
                                                               break loop14;
                                                            }
                                                         }
                                                         §§push(0);
                                                         if(_loc14_)
                                                         {
                                                            break loop13;
                                                         }
                                                         if(§§pop() != §§pop())
                                                         {
                                                            break loop12;
                                                         }
                                                         §§push(§4!C§.axis3.§2O§(param5));
                                                         if(_loc15_)
                                                         {
                                                            break loop6;
                                                         }
                                                         §§goto(addr01a9);
                                                      }
                                                      §§goto(addr01dd);
                                                   }
                                                   §§goto(addr01eb);
                                                }
                                                §§goto(addr0202);
                                             }
                                             §§goto(addr01a5);
                                          }
                                          §§goto(addr01c3);
                                       }
                                       §§push(§§pop() * §§pop());
                                       break loop10;
                                    }
                                    §§push(§4!C§.axis3Length);
                                    break loop9;
                                 }
                                 addr01a9:
                                 §§push(Number(§§pop()));
                                 if(_loc15_)
                                 {
                                    addr01a5:
                                    _loc12_ = §§pop();
                                    §§push(_loc12_);
                                 }
                                 §§push(§4!C§.axis3Length);
                                 if(!_loc14_)
                                 {
                                    break loop8;
                                 }
                                 addr01c3:
                                 if(§§pop() <= §§pop())
                                 {
                                    §§push(_loc12_);
                                    §§push(0);
                                    break;
                                 }
                                 §§goto(addr01dd);
                                 §§push(1);
                              }
                              addr01dd:
                              _loc13_ = §§pop() < §§pop() ? -1 : 0;
                              if(!_loc15_)
                              {
                                 break loop3;
                              }
                              addr01eb:
                              while(true)
                              {
                                 §§push(_loc13_ == 0);
                                 if(!_loc14_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc15_)
                                    {
                                       break;
                                    }
                                 }
                                 _loc7_ = §§pop();
                                 if(_loc15_)
                                 {
                                    addr0202:
                                    §§push(_loc7_);
                                    if(!_loc14_)
                                    {
                                       break;
                                    }
                                    addr0219:
                                    if(!§§pop())
                                    {
                                       break loop2;
                                    }
                                 }
                              }
                              §§goto(addr0219);
                           }
                           param5.x = Number(Math.NaN);
                           if(_loc15_)
                           {
                              break loop3;
                           }
                           break;
                        }
                        param5.z = Number(Math.NaN);
                        break loop2;
                     }
                     param5.y = Number(Math.NaN);
                     if(_loc15_)
                     {
                        break loop4;
                     }
                     break;
                  }
                  return param5;
               }
               §§push(-1);
               if(_loc14_)
               {
               }
               break;
            }
            §§goto(addr009f);
         }
         §§push(int(§§pop()));
         continue loop3;
      }
      
      override public function §&D§(param1:§,!Z§, param2:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc3_:* = null as §[T§;
         var _loc4_:* = null as Point3D;
         var _loc5_:* = null as Point3D;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:* = NaN;
         var _loc9_:* = 0;
         var _loc10_:* = NaN;
         var _loc11_:* = 0;
         if(!_loc12_)
         {
            if(param1 is §[T§)
            {
               if(!_loc12_)
               {
                  _loc3_ = param1;
                  _loc4_ = param1.§!K§.transform.§2!§();
                  _loc5_ = §4!C§.transform.§<!C§();
                  loop0:
                  while(true)
                  {
                     if(_loc13_)
                     {
                        _loc6_ = §4!C§.axis1.§2O§(_loc4_);
                        loop1:
                        while(true)
                        {
                           loop2:
                           while(true)
                           {
                              loop3:
                              while(true)
                              {
                                 if(_loc13_)
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       loop6:
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
                                                      while(true)
                                                      {
                                                         §§push(_loc6_);
                                                         if(!_loc12_)
                                                         {
                                                            §§push(§4!C§.axis1Length);
                                                            if(!_loc12_)
                                                            {
                                                               §§push(§4!C§.axis1Length);
                                                               if(_loc13_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc13_)
                                                                  {
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 §§push(1);
                                                                                 if(_loc12_)
                                                                                 {
                                                                                 }
                                                                                 addr0100:
                                                                                 _loc7_ = §§pop();
                                                                                 §§push(§4!C§.axis2.§2O§(_loc4_));
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    break loop13;
                                                                                 }
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    break loop12;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(_loc6_);
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       break loop6;
                                                                                    }
                                                                                    if(§§pop() < §§pop())
                                                                                    {
                                                                                       §§push(-1);
                                                                                       if(_loc12_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(0);
                                                                                    }
                                                                                    §§goto(addr0100);
                                                                                 }
                                                                              }
                                                                              §§push(Number(§§pop()));
                                                                              break loop12;
                                                                           }
                                                                           _loc9_ = §§pop();
                                                                           §§push(§4!C§.axis3.§2O§(_loc4_));
                                                                           if(!_loc13_)
                                                                           {
                                                                              break loop5;
                                                                           }
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        §§push(§4!C§.axis2Length);
                                                                        if(!_loc12_)
                                                                        {
                                                                           §§push(§4!C§.axis2Length);
                                                                           if(!_loc12_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc12_)
                                                                              {
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       break loop9;
                                                                                    }
                                                                                    §§push(1);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(_loc8_);
                                                                                    §§push(0);
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       break loop6;
                                                                                    }
                                                                                    §§push(§§pop() < §§pop() ? -1 : 0);
                                                                                 }
                                                                                 §§push(int(§§pop()));
                                                                                 break loop14;
                                                                              }
                                                                              break loop10;
                                                                           }
                                                                           break loop8;
                                                                        }
                                                                        break loop10;
                                                                     }
                                                                     _loc8_ = §§pop();
                                                                     §§push(_loc8_);
                                                                     if(!_loc12_)
                                                                     {
                                                                        break loop13;
                                                                     }
                                                                     break;
                                                                  }
                                                                  break loop7;
                                                               }
                                                               break loop8;
                                                            }
                                                            break loop7;
                                                         }
                                                         _loc10_ = §§pop();
                                                         if(_loc13_)
                                                         {
                                                            break loop9;
                                                         }
                                                         break loop1;
                                                      }
                                                      §§goto(addr01d4);
                                                   }
                                                   §§goto(addr01c8);
                                                }
                                                §§push(_loc10_);
                                                if(!_loc12_)
                                                {
                                                   break loop5;
                                                }
                                                §§goto(addr01d4);
                                             }
                                             §§goto(addr01c7);
                                          }
                                          §§goto(addr01be);
                                       }
                                       if(§§pop() < §§pop())
                                       {
                                          if(_loc12_)
                                          {
                                             break loop3;
                                          }
                                          §§push(-1);
                                          if(!_loc13_)
                                          {
                                             break loop2;
                                          }
                                       }
                                       else
                                       {
                                          §§push(0);
                                       }
                                       §§goto(addr01ef);
                                    }
                                    addr01c8:
                                    §§push(§4!C§.axis3Length);
                                    if(!_loc12_)
                                    {
                                       addr01be:
                                       addr01c7:
                                       §§push(§§pop() * §4!C§.axis3Length);
                                    }
                                    if(§§pop() <= §§pop())
                                    {
                                       addr01d4:
                                       §§push(_loc10_);
                                       §§push(0);
                                       break loop6;
                                    }
                                    addr01ef:
                                    §§push(1);
                                    if(_loc12_)
                                    {
                                       break loop2;
                                    }
                                    _loc11_ = §§pop();
                                    if(_loc12_)
                                    {
                                       break loop1;
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(false);
                                    if(!_loc12_)
                                    {
                                       loop16:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(false);
                                             if(!_loc12_)
                                             {
                                                if(_loc7_ != 0)
                                                {
                                                   break loop16;
                                                }
                                                if(_loc13_)
                                                {
                                                   §§pop();
                                                   if(!_loc13_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(_loc9_ == 0);
                                                   if(!_loc13_)
                                                   {
                                                      break loop16;
                                                   }
                                                }
                                             }
                                             §§push(Boolean(§§pop()));
                                             break loop16;
                                          }
                                       }
                                       if(!§§pop())
                                       {
                                          break loop17;
                                       }
                                       if(!_loc12_)
                                       {
                                          §§pop();
                                          addr02ad:
                                          if(_loc13_)
                                          {
                                             §§push(_loc11_);
                                             break loop2;
                                          }
                                          param1.§ i§.§%r§ = false;
                                          break loop0;
                                       }
                                       §§goto(addr024d);
                                    }
                                    §§goto(addr0254);
                                 }
                                 §§goto(addr0272);
                              }
                              §§goto(addr0276);
                           }
                           while(true)
                           {
                              §§push(§§pop() == 0);
                              if(!_loc12_)
                              {
                                 addr024d:
                                 §§push(Boolean(§§pop()));
                                 if(!_loc13_)
                                 {
                                    break;
                                 }
                              }
                              addr0254:
                              if(§§pop())
                              {
                                 if(!_loc12_)
                                 {
                                    break loop1;
                                 }
                                 break loop0;
                              }
                              § i§.§%r§ = false;
                              if(!_loc13_)
                              {
                                 break loop0;
                              }
                           }
                           §§goto(addr0272);
                        }
                        super.§&D§(param1,param2);
                        addr0272:
                        if(!§ i§.§%r§)
                        {
                           break;
                        }
                        addr0276:
                        § i§.§&!L§ = false;
                        if(_loc13_)
                        {
                           param1.§ i§.§&!L§ = false;
                           break;
                        }
                     }
                     §§goto(addr02ad);
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

