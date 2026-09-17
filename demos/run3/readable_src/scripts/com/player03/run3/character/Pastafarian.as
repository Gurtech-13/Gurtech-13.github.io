package com.player03.run3.character
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §>T§.§"=§;
   import §>T§.§8R§;
   import §>T§.Bridge;
   import §>T§.§[C§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.TunnelSection;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   
   public class Pastafarian extends CharacterBase
   {
      
      public var §?v§:Number;
      
      public var §80§:Point3D;
      
      public var §;%§:Boolean;
      
      public var §%H§:§8R§;
      
      public function Pastafarian(param1:Level, param2:CharacterDef)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §;%§ = false;
         §?v§ = 0;
         if(!_loc3_)
         {
            super(param1,param2);
            §80§ = new Point3D(0,-19,0);
            while(true)
            {
               if(!_loc3_)
               {
                  §%H§ = new §8R§();
                  if(!_loc3_)
                  {
                     if(param2 == CharacterRegistry.§=!O§)
                     {
                        if(_loc4_)
                        {
                           §80§.x = 17;
                           §80§.y = -10;
                           §%H§.strength = 0.8;
                           addr0075:
                           break;
                        }
                     }
                     else
                     {
                        §§push(§§findproperty(§?!>§));
                        §§push(§?!>§);
                        if(!_loc3_)
                        {
                           §§push(§§pop() * 0.7);
                        }
                        §§pop().§?!>§ = §§pop();
                        var _temp_2:* = § `§;
                        §§push(_temp_2);
                        §§push(_temp_2.§,H§);
                        if(_loc4_)
                        {
                           §§push(§§pop() * 0.9);
                        }
                        §§pop().§,H§ = §§pop();
                        if(!_loc4_)
                        {
                           break;
                        }
                        §§push(§§findproperty(§3!>§));
                        §§push(§3!>§);
                        if(_loc4_)
                        {
                           §§push(§§pop() * 0.8);
                        }
                        §§pop().§3!>§ = §§pop();
                        if(!_loc4_)
                        {
                           break;
                        }
                     }
                     §§push(§§findproperty(§"!2§));
                     §§push(§"!2§);
                     if(!_loc3_)
                     {
                        §§push(§§pop() * 0.9);
                     }
                     §§pop().§"!2§ = §§pop();
                     if(_loc4_)
                     {
                        addr010f:
                        §?`§.§1!#§(85,128,0.05,0.2);
                     }
                     break;
                  }
                  §§goto(addr0075);
               }
               §§goto(addr010f);
            }
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         §§push(§;H§());
         if(!_loc7_)
         {
            §§push(Number(§§pop()));
         }
         §§push(§§pop() > 0);
         if(!_loc7_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc7_)
            {
               super.update(param1);
               if(!_loc8_)
               {
                  break;
               }
            }
            if(§]!L§ != null)
            {
               break;
            }
            var _loc3_:TunnelSection = §73§;
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  while(true)
                  {
                     if(_loc8_)
                     {
                        if(_loc3_.bridge != null)
                        {
                           if(int(_loc3_.bridge.§76§.indexOf(§%H§,0)) < 0)
                           {
                              break;
                           }
                           break loop1;
                        }
                        if(!_loc3_.§,`§)
                        {
                           if(_loc3_ == §]!L§)
                           {
                              _loc3_.build(null,10);
                              if(_loc8_)
                              {
                              }
                              break loop1;
                           }
                           _loc3_.build(null,30);
                           if(_loc8_)
                           {
                              break loop1;
                           }
                           break loop2;
                        }
                        if(!_loc8_)
                        {
                           break loop1;
                        }
                     }
                     _loc3_.bridge = new Bridge(_loc3_);
                     if(_loc8_)
                     {
                        _loc3_.bridge.§76§.push(§%H§);
                        break loop1;
                     }
                     break;
                  }
                  _loc3_.bridge.§76§.push(§%H§);
                  if(!_loc7_)
                  {
                     break loop1;
                  }
                  break;
               }
               var _loc4_:Point3D = transform.§2!§();
               var _loc5_:Point3D = §%H§;
               var _loc6_:Point3D = §%H§;
               if(_loc6_ == null)
               {
                  _loc6_ = new Point3D(0,0,0);
               }
               _loc6_.x = _loc4_.x + _loc5_.x;
               loop4:
               while(true)
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
                                 if(!_loc7_)
                                 {
                                    _loc6_.y = _loc4_.y + _loc5_.y;
                                    while(true)
                                    {
                                       §§push(_loc6_);
                                       §§push(_loc4_.z);
                                       if(_loc8_)
                                       {
                                          §§push(§§pop() + _loc5_.z);
                                          if(_loc7_)
                                          {
                                             break;
                                          }
                                       }
                                       §§push(Number(§§pop()));
                                       break;
                                    }
                                    §§pop().z = §§pop();
                                    var _temp_3:* = §%H§;
                                    §§push(_temp_3);
                                    §§push(_temp_3.z);
                                    if(_loc8_)
                                    {
                                       §§push(§§pop() - _loc3_.tileWidth / 2);
                                    }
                                    §§pop().z = §§pop();
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    §§push(§;%§);
                                    if(!_loc8_)
                                    {
                                       break loop8;
                                    }
                                    if(§§pop())
                                    {
                                       if(!_loc8_)
                                       {
                                          break loop4;
                                       }
                                    }
                                    else
                                    {
                                       §§push(§?v§);
                                       if(_loc7_)
                                       {
                                          break loop6;
                                       }
                                       §§push(0);
                                       if(_loc7_)
                                       {
                                          break loop5;
                                       }
                                       if(§§pop() <= §§pop())
                                       {
                                          break loop4;
                                       }
                                       if(_loc8_)
                                       {
                                          §§push(§§findproperty(§?v§));
                                          §§push(§?v§);
                                          if(!_loc7_)
                                          {
                                             §§push(param1);
                                             if(!_loc7_)
                                             {
                                                §§push(§§pop() * 10);
                                             }
                                             §§push(§§pop() - §§pop());
                                          }
                                          §§pop().§?v§ = §§pop();
                                          break loop7;
                                       }
                                       §§goto(addr0310);
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(§?v§);
                                    if(_loc8_)
                                    {
                                       §§push(0);
                                       if(!_loc7_)
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             break loop9;
                                          }
                                          if(_loc8_)
                                          {
                                             var _temp_4:* = tunnel.analytics;
                                             §§push(_temp_4);
                                             §§push(_temp_4.§]!-§);
                                             if(_loc8_)
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             §§pop().§]!-§ = §§pop();
                                             if(!_loc7_)
                                             {
                                                break loop9;
                                             }
                                             break loop7;
                                          }
                                          §§goto(addr022f);
                                       }
                                       §§goto(addr0286);
                                    }
                                    §§goto(addr025c);
                                 }
                                 §§goto(addr027d);
                              }
                              §§push(_loc2_);
                              break;
                           }
                           if(§§pop())
                           {
                              addr022f:
                              while(true)
                              {
                                 §§push(§§findproperty(§?v§));
                                 §§push(§?v§);
                                 if(_loc8_)
                                 {
                                    §§push(§§pop() + param1);
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(Number(§§pop()));
                                 break;
                              }
                              §§pop().§?v§ = §§pop();
                              addr0270:
                              §§push(§?v§);
                              if(_loc7_)
                              {
                                 break loop6;
                              }
                           }
                           else
                           {
                              §§push(§?v§);
                              if(_loc8_)
                              {
                                 addr025c:
                                 §§push(0);
                                 if(!_loc8_)
                                 {
                                    break loop5;
                                 }
                                 if(§§pop() <= §§pop())
                                 {
                                    §?v§ = 0.0001;
                                 }
                                 §§goto(addr0270);
                              }
                           }
                           addr027d:
                           §§push(5);
                           if(!_loc7_)
                           {
                              addr0286:
                              if(§§pop() >= §§pop())
                              {
                                 var _temp_2:* = tunnel.analytics;
                                 §§push(_temp_2);
                                 §§push(_temp_2.§`§);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 §§pop().§`§ = §§pop();
                                 §?v§ = param1;
                              }
                              break loop4;
                           }
                           break loop5;
                        }
                        §§push(§?v§);
                        break;
                     }
                     §§push(0);
                     break;
                  }
                  if(§§pop() < §§pop())
                  {
                     §?v§ = 0;
                  }
                  break;
               }
               §;%§ = false;
               addr0310:
               return;
            }
            QuaternionUtils.rotateVector(transform.§>;§(),§80§,§%H§);
            break loop2;
         }
         §§push(§]!L§);
         continue loop2;
      }
      
      override public function §9!?§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               super.§9!?§();
               if(_loc1_)
               {
                  break;
               }
            }
            §%H§.strength = Number(Math.NaN);
            if(!_loc1_)
            {
               break;
            }
            §§goto(addr0051);
         }
         §%H§ = null;
         addr0051:
      }
      
      override public function §=5§(param1:§[C§, param2:Point3D, param3:Point3D) : Boolean
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         while(true)
         {
            §§push(super.§=5§(param1,param2,param3));
            if(_loc5_)
            {
               §§push(Boolean(§§pop()));
               if(_loc6_)
               {
                  break;
               }
            }
            §§push(Boolean(§§pop()));
            break;
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc5_)
            {
               §§push(§"=§.§,n§[param1.§@p§.§<T§]);
               if(_loc5_)
               {
                  §§push(§§pop());
               }
               if(§§pop() != "bridge")
               {
                  break;
               }
               if(!_loc5_)
               {
                  break;
               }
            }
            §;%§ = true;
            break;
         }
         return _loc4_;
      }
   }
}

