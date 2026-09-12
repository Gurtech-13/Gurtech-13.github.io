package §0!"§
{
   import §1^§.Transform;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   
   public class §-U§
   {
      
      public var §;!R§:Point3D;
      
      public var §&!L§:Boolean;
      
      public var §3q§:Boolean;
      
      public var §>G§:Boolean;
      
      public var §%r§:Boolean;
      
      public var §]!1§:Boolean;
      
      public var normal:Point3D;
      
      public var §?U§:Number;
      
      public var §]!R§:Number;
      
      public function §-U§(param1:Boolean)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §&!L§ = true;
         §3q§ = true;
         §>G§ = true;
         §]!1§ = true;
         §]!R§ = 0;
         §?U§ = 1;
         §%r§ = false;
         normal = new Point3D(0,0,0);
         while(true)
         {
            if(!_loc2_)
            {
               §;!R§ = new Point3D(0,0,0);
               if(!param1)
               {
                  break;
               }
               if(!_loc3_)
               {
                  break;
               }
            }
            §?U§ = 0;
            break;
         }
      }
      
      public static function §@X§(param1:§,!Z§, param2:§,!Z§) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:* = null as Point3D;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!_loc6_)
         {
            if(param1.§ i§.§%r§)
            {
               if(_loc7_)
               {
                  _loc3_ = param1.§ i§.normal;
                  loop0:
                  while(true)
                  {
                     loop1:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(_loc3_.x * _loc3_.x);
                                 if(!_loc6_)
                                 {
                                    §§push(_loc3_.y * _loc3_.y);
                                    if(_loc6_)
                                    {
                                       break loop6;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    §§push(_loc3_.z);
                                    if(!_loc7_)
                                    {
                                       break loop6;
                                    }
                                    §§push(§§pop() * _loc3_.z);
                                    if(!_loc7_)
                                    {
                                       break loop6;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!_loc6_)
                                    {
                                       _loc4_ = §§pop();
                                       if(_loc6_)
                                       {
                                          break loop4;
                                       }
                                       §§push(_loc4_);
                                    }
                                    §§push(1);
                                    if(_loc6_)
                                    {
                                       break loop1;
                                    }
                                    §§push(§§pop() - §§pop());
                                    if(_loc6_)
                                    {
                                       break loop0;
                                    }
                                    §§push(Number(§§pop()));
                                 }
                                 _loc5_ = §§pop();
                                 §§push(_loc5_);
                                 §§push(0);
                                 if(!_loc7_)
                                 {
                                    break loop1;
                                 }
                                 if(§§pop() < §§pop())
                                 {
                                    §§push(_loc5_);
                                    break;
                                 }
                                 if(!_loc7_)
                                 {
                                    break loop4;
                                 }
                                 §§push(_loc5_);
                                 if(_loc7_)
                                 {
                                    break loop0;
                                 }
                                 §§goto(addr00dc);
                              }
                              §§push(-§§pop());
                              if(_loc7_)
                              {
                                 break loop0;
                              }
                              §§goto(addr00dc);
                           }
                           §§goto(addr00bf);
                        }
                        §§goto(addr00ee);
                     }
                     while(true)
                     {
                        if(§§pop() == §§pop())
                        {
                           _loc3_.x = 1;
                           if(_loc7_)
                           {
                              break loop4;
                           }
                        }
                        else
                        {
                           §§goto(addr0115);
                           §§push(1 / Number(Math.sqrt(_loc4_)));
                        }
                        §§goto(addr015e);
                     }
                  }
                  addr00bf:
                  §§push(§§pop() < 1e-10);
                  if(_loc7_)
                  {
                     §§push(!§§pop());
                  }
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc7_)
                           {
                              addr0115:
                              §§push(_loc4_);
                              if(!_loc6_)
                              {
                                 addr00dc:
                                 §§push(0);
                                 break loop1;
                              }
                              _loc4_ = §§pop();
                              if(_loc7_)
                              {
                                 _loc3_.x *= _loc4_;
                                 _loc3_.y *= _loc4_;
                              }
                              addr0130:
                              §§push(_loc3_);
                              §§push(_loc3_.z);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() * _loc4_);
                              }
                              §§pop().z = §§pop();
                              if(!_loc6_)
                              {
                                 §§goto(addr0146);
                              }
                              break loop2;
                           }
                           addr00ee:
                           _loc3_.y = 0;
                           if(_loc7_)
                           {
                              _loc3_.z = 0;
                              if(_loc6_)
                              {
                              }
                           }
                           else
                           {
                              §§goto(addr0130);
                           }
                        }
                        addr0146:
                        param1.§ i§.§!a§(param1.§!K§.transform.§=0§);
                        if(_loc7_)
                        {
                           break;
                        }
                        §§goto(addr0187);
                     }
                     addr015e:
                     param2.§ i§.§27§(param1.§ i§);
                     break;
                  }
                  param2.§ i§.§!a§(param2.§!K§.transform.§=0§);
               }
            }
            else
            {
               param2.§ i§.§%r§ = false;
            }
         }
         addr0187:
      }
      
      public function §27§(param1:§-U§) : void
      {
         var _temp_1:* = false;
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = _temp_1;
         if(_loc5_)
         {
            §%r§ = param1.§%r§;
         }
         var _loc2_:Point3D = param1.§;!R§;
         var _loc3_:Point3D = normal;
         if(_loc3_ == null)
         {
            _loc3_ = new Point3D(0,0,0);
         }
         _loc3_.x = _loc2_.x * -1;
         _loc3_.y = _loc2_.y * -1;
         §§push(_loc3_);
         §§push(_loc2_.z);
         if(_loc5_)
         {
            §§push(§§pop() * -1);
         }
         §§pop().z = §§pop();
         §]!1§ = param1.§]!1§;
         if(_loc5_)
         {
            §>G§ = param1.§>G§;
            if(!_loc6_)
            {
               §3q§ = param1.§3q§;
            }
            §&!L§ = param1.§&!L§;
         }
         while(true)
         {
            §§push(§?U§);
            if(!_loc6_)
            {
               §§push(§§pop() + param1.§?U§);
               if(_loc6_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            if(!_loc6_)
            {
               break;
            }
            §§goto(addr00b7);
         }
         addr00b7:
         var _loc4_:* = §§pop();
         if(_loc5_)
         {
            if(_loc4_ <= 0)
            {
               while(true)
               {
                  if(_loc5_)
                  {
                     §]!R§ = 0;
                     if(_loc6_)
                     {
                        break;
                     }
                     param1.§]!R§ = 0;
                     if(_loc5_)
                     {
                        break;
                     }
                  }
                  addr011a:
                  §§push(param1);
                  §§push(param1.§]!R§);
                  if(_loc5_)
                  {
                     §§push(param1.§?U§);
                     if(_loc5_)
                     {
                        §§push(§§pop() / _loc4_);
                     }
                     §§push(§§pop() * §§pop());
                  }
                  §§pop().§]!R§ = §§pop();
                  break;
               }
            }
            else
            {
               §§push(§§findproperty(§]!R§));
               §§push(§?U§);
               if(!_loc6_)
               {
                  while(true)
                  {
                     §§push(_loc4_);
                     if(_loc5_)
                     {
                        §§push(§§pop() / §§pop());
                        if(!_loc5_)
                        {
                           break;
                        }
                        §§push(param1.§]!R§);
                     }
                     §§push(§§pop() * §§pop());
                     break;
                  }
               }
               §§pop().§]!R§ = §§pop();
               if(_loc5_)
               {
                  §§goto(addr011a);
               }
            }
         }
      }
      
      public function reset() : void
      {
         var _temp_1:* = false;
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc1_)
            {
               §]!1§ = true;
               if(_loc2_)
               {
                  break;
               }
            }
            §>G§ = true;
            if(!_loc2_)
            {
               break;
            }
            §§goto(addr0036);
         }
         §3q§ = true;
         if(!_loc2_)
         {
            §&!L§ = true;
         }
         addr0036:
      }
      
      public function §!a§(param1:Transform) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:Point3D = §;!R§;
         var _loc3_:Point3D = normal;
         while(true)
         {
            if(_loc5_)
            {
               _loc2_.x = _loc3_.x;
               if(!_loc4_)
               {
                  _loc2_.y = _loc3_.y;
                  if(!_loc5_)
                  {
                     break;
                  }
               }
            }
            _loc2_.z = _loc3_.z;
            if(!_loc4_)
            {
               if(param1 == null)
               {
                  break;
               }
               if(_loc4_)
               {
                  break;
               }
            }
            §4!R§.§@!M§(param1.§<!A§(),normal,normal);
            break;
         }
      }
   }
}

