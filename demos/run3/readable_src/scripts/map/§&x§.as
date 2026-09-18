package map
{
   import §!!$§.§?y§;
   import §%!Q§.§ !>§;
   import §,!G§.§6!7§;
   import §-!!§.§&l§;
   import §=w§.§@[§;
   import §>!O§.§;R§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§38§;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import haxeutils.math.§<!$§;
   
   public class §&x§ extends Shape implements §@[§
   {
      
      public var §,r§:Number;
      
      public var §'n§:Number;
      
      public var § a§:Number;
      
      public var §-!7§:Number;
      
      public var §9!1§:Number;
      
      public var §[8§:Number;
      
      public var §]@§:§&l§;
      
      public var § !Z§:§6!7§;
      
      public var §"!S§:Number;
      
      public var §-r§:Number;
      
      public function §&x§(param1:§&l§)
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(_loc6_)
         {
            super();
         }
         var _loc2_:§ 7§ = new §?y§(this);
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc6_)
               {
                  §&d§.§1$§().add(_loc2_,new §;R§(true));
                  if(_loc7_)
                  {
                     break;
                  }
                  §&d§.§1$§().add(_loc2_,new §;R§(false));
                  §]@§ = param1;
                  if(!_loc6_)
                  {
                     break loop0;
                  }
               }
               §9!1§ = param1.§'!Q§().left;
               if(_loc6_)
               {
                  §[8§ = 2 * §&d§.§;`§().scale.x;
                  break;
               }
               addr00a9:
               §§push(§§findproperty(§'n§));
               §§push(param1.height);
               if(_loc6_)
               {
                  §§push(§§pop() * 0.2);
               }
               §§pop().§'n§ = §§pop();
               if(!_loc7_)
               {
                  break loop0;
               }
               §§goto(addr00f4);
            }
            §§push(§§findproperty(§-!7§));
            §§push(param1.width);
            if(!_loc7_)
            {
               §§push(§§pop() / 20);
            }
            §§pop().§-!7§ = §§pop();
            §§goto(addr00a9);
         }
         §§push(§§findproperty(§ a§));
         §§push(param1.height);
         if(_loc6_)
         {
            §§push(§§pop() / 12000);
         }
         §§pop().§ a§ = §§pop();
         §§push(§§findproperty(§,r§));
         §§push(param1.height);
         if(_loc6_)
         {
            §§push(§§pop() / 4);
         }
         §§pop().§,r§ = §§pop();
         addr00f4:
         var _loc3_:§38§ = §&d§.§;`§().scale;
         §§push(0.68);
         if(_loc6_)
         {
            while(true)
            {
               §§push(_loc3_.x);
               if(_loc6_)
               {
                  §§push(§§pop() + _loc3_.y);
                  if(!_loc6_)
                  {
                     break;
                  }
                  §§push(Number(§§pop()));
                  if(_loc7_)
                  {
                     break;
                  }
               }
               §§push(§§pop() / 2);
               break;
            }
            §§push(§§pop() * §§pop());
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         var _loc5_:§38§ = §&d§.§;`§().scale;
         while(true)
         {
            if(_loc6_)
            {
               §§push(§§findproperty(§ !Z§));
               §§push(§§findproperty(§6!7§));
               §§push(_loc4_);
               §§push(1.6);
               if(!_loc7_)
               {
                  while(true)
                  {
                     §§push(_loc5_.x);
                     if(_loc6_)
                     {
                        §§push(§§pop() + _loc5_.y);
                        if(_loc6_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc6_)
                           {
                              break;
                           }
                        }
                     }
                     §§push(§§pop() / 2);
                     break;
                  }
               }
               §§pop().§ !Z§ = new §§pop().§6!7§(§§pop(),§§pop());
               if(!_loc6_)
               {
                  break;
               }
            }
            param1.addChildAt(this,0);
            break;
         }
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function reset() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §]@§.§>1§();
         }
         var _loc1_:Rectangle = §]@§.§'!Q§();
         if(§9!1§ < _loc1_.left)
         {
            §9!1§ = _loc1_.left;
         }
         §"!S§ = _loc1_.top;
         while(true)
         {
            if(!_loc2_)
            {
               §-r§ = _loc1_.bottom;
               if(!_loc3_)
               {
                  break;
               }
            }
            if(_loc1_.right > §9!1§)
            {
               if(!_loc2_)
               {
                  §>#§(_loc1_.right);
               }
            }
            break;
         }
      }
      
      public function §>#§(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         while(true)
         {
            if(_loc5_)
            {
               graphics.beginFill(0,0.75);
               if(!_loc5_)
               {
                  break;
               }
               while(§9!1§ < param1)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           loop7:
                           while(true)
                           {
                              §§push(§9!1§);
                              if(_loc5_)
                              {
                                 _loc2_ = §§pop();
                                 if(!_loc4_)
                                 {
                                    _loc3_ = §<!$§.random(§'n§,§,r§);
                                    if(_loc5_)
                                    {
                                       §§push(_loc3_);
                                       if(_loc5_)
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                if(§§pop() < §"!S§)
                                                {
                                                   §§push(_loc3_);
                                                   §§push(§-r§);
                                                   if(_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§"!S§);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(§§pop() + (§§pop() - §§pop()));
                                                      if(!_loc4_)
                                                      {
                                                         _loc3_ = §§pop();
                                                         break loop2;
                                                      }
                                                      break loop8;
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                      if(_loc5_)
                                                      {
                                                         §§push(§-r§);
                                                         if(_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop() <= §§pop())
                                                         {
                                                            break loop2;
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            break loop7;
                                                         }
                                                         §§push(_loc3_);
                                                      }
                                                      §§push(§-r§);
                                                      break;
                                                   }
                                                }
                                                §§push(§§pop() - §§pop());
                                                if(!_loc4_)
                                                {
                                                   break;
                                                }
                                                break loop5;
                                             }
                                             §§push(§§pop() - §§pop());
                                             break;
                                          }
                                       }
                                       break loop8;
                                    }
                                    break loop2;
                                 }
                                 break loop3;
                              }
                              break loop8;
                           }
                           §§goto(addr010f);
                        }
                        §§goto(addr0162);
                     }
                     while(true)
                     {
                        §§push(§§findproperty(§'n§));
                        §§push(§'n§);
                        if(!_loc4_)
                        {
                           §§push(§§pop() + § a§);
                           if(!_loc5_)
                           {
                              break;
                           }
                        }
                        §§push(Number(§§pop()));
                        break;
                     }
                     §§pop().§'n§ = §§pop();
                     §§goto(addr0156);
                  }
                  graphics.drawCircle(_loc2_,_loc3_,§ !Z§.§[!$§(Number(Math.random())));
                  addr010f:
                  while(true)
                  {
                     §§push(§§findproperty(§9!1§));
                     §§push(§9!1§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + §[8§);
                        if(_loc4_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
                  §§pop().§9!1§ = §§pop();
                  if(!_loc4_)
                  {
                     break loop3;
                  }
                  addr0156:
                  addr0162:
                  if(§'n§ > §-r§)
                  {
                     §§push(§§findproperty(§'n§));
                     §§push(§'n§);
                     if(_loc5_)
                     {
                        §§push(§-r§);
                        if(!_loc4_)
                        {
                           §§push(§§pop() - §"!S§);
                        }
                        §§push(§§pop() - §§pop());
                     }
                     §§pop().§'n§ = §§pop();
                  }
               }
               if(_loc4_)
               {
                  break;
               }
            }
            graphics.endFill();
            break;
         }
      }
   }
}

