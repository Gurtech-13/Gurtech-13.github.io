package com.player03.run3.character
{
   import §%G§.§ m§;
   import §&!J§.§7=§;
   import §,!G§.§%M§;
   import §-d§.§!!-§;
   import §-d§.§1M§;
   import §0!"§.§[T§;
   import §4!8§.§1!3§;
   import §4n§.Achievements;
   import world3d.Entity3D;
   import §>T§.§!=§;
   import §[^§.§!A§;
   import §[^§.§+!S§;
   import §[^§.§+`§;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.menu.§ L§;
   import flash.events.Event;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.AngleMath;
   import haxeutils.math.geom.Point3D;
   import nme3D.shader.§!-§;
   import nme3D.shader.§'H§;
   import nme3D.shader.§<!9§;
   import openfl.Assets;
   
   public class Gentleman extends CharacterBase
   {
      
      public static var init__:Boolean;
      
      public static var §@!O§:§%M§;
      
      public static var §=W§:§%M§;
      
      public var §2R§:§+!S§;
      
      public var §+7§:Number;
      
      public var §2c§:§1M§;
      
      public var §!!_§:Number;
      
      public var §1!0§:§`!B§;
      
      public function Gentleman(param1:Level, param2:CharacterDef)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §+7§ = 0;
         §!!_§ = 0;
         super(param1,param2);
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc3_)
               {
                  §§push(§§findproperty(§?!>§));
                  §§push(§?!>§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() * 0.65);
                  }
                  §§pop().§?!>§ = §§pop();
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§push(§§findproperty(§"!2§));
                  §§push(§"!2§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() * 0.95);
                  }
                  §§pop().§"!2§ = §§pop();
                  if(!_loc4_)
                  {
                     break loop0;
                  }
                  §§push(§§findproperty(§3!>§));
                  §§push(§3!>§);
                  if(_loc4_)
                  {
                     §§push(§§pop() * 0.6);
                  }
                  §§pop().§3!>§ = §§pop();
               }
               §?`§.§1!#§(100.88,140.4,0.05,0.2);
               var _temp_2:* = § `§;
               §§push(_temp_2);
               §§push(_temp_2.§,H§);
               if(_loc4_)
               {
                  §§push(§§pop() * 0.8);
               }
               §§pop().§,H§ = §§pop();
               §1!0§ = new §`!B§(this);
               §`!C§.push(§1!0§);
               if(_loc4_)
               {
                  §2c§ = new §1M§(new §!!-§(112,13),new §!!-§(99,13));
                  if(param1.§5§ == §,a§.INFINITE)
                  {
                     break;
                  }
                  if(!_loc3_)
                  {
                     §2R§ = new §+!S§(param1);
                     if(_loc3_)
                     {
                        break;
                     }
                  }
               }
               §2R§.§]m§ = Gentleman.§=W§;
               break loop0;
            }
            return;
         }
         §2R§.§0=§ = Gentleman.§@!O§;
         break loop1;
      }
      
      override public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               super.update(param1);
               if(_loc3_)
               {
                  if(§2R§ == null)
                  {
                     break;
                  }
                  if(_loc2_)
                  {
                     break;
                  }
               }
            }
            §2R§.update(param1);
            break;
         }
      }
      
      override public function reset() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         super.reset();
         while(true)
         {
            if(§2R§ != null)
            {
               §2R§.reset();
               §;X§();
               if(!_loc1_)
               {
                  break;
               }
            }
            §!!_§ = 0;
            if(_loc1_)
            {
               break;
            }
            §§goto(addr005e);
         }
         §+7§ = 0;
         addr005e:
      }
      
      override public function §9!?§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.§9!?§();
            while(true)
            {
               if(_loc2_)
               {
                  if(§2R§ == null)
                  {
                     break;
                  }
                  if(!_loc2_)
                  {
                     break;
                  }
               }
               §;X§();
               break;
            }
         }
      }
      
      override public function §6b§() : Number
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§"!2§);
         if(_loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(_loc1_);
         if(!_loc3_)
         {
            §§push(0.1);
            if(!_loc3_)
            {
               §§push(413);
               if(_loc2_)
               {
                  §§push(§§pop() - _loc1_);
               }
               §§push(§§pop() * §§pop());
            }
            §§push(§§pop() + §§pop());
            if(!_loc3_)
            {
               return Number(§§pop());
            }
         }
      }
      
      override public function display(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc2_:* = null as §+`§;
         var _loc3_:* = null as Point3D;
         var _loc4_:* = null as Quaternion;
         var _loc5_:* = null as Quaternion;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:* = null as §]r§;
         loop0:
         while(true)
         {
            if(_loc12_)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§1!0§.active);
                        if(_loc12_)
                        {
                           if(§§pop())
                           {
                              if(_loc12_)
                              {
                                 addr005d:
                                 _loc2_ = §1!0§.target;
                                 _loc3_ = _loc2_.transform.§2!§();
                                 _loc4_ = transform.§=0§.§+n§();
                                 _loc5_ = _loc4_;
                                 if(!_loc11_)
                                 {
                                    if(_loc5_ == null)
                                    {
                                       _loc5_ = new Quaternion();
                                    }
                                    §§push(_loc5_);
                                    §§push(_loc4_.x);
                                    if(!_loc11_)
                                    {
                                       §§push(-§§pop());
                                    }
                                    §§pop().x = §§pop();
                                    if(_loc12_)
                                    {
                                       §§push(_loc5_);
                                       §§push(_loc4_.y);
                                       if(!_loc11_)
                                       {
                                          §§push(-§§pop());
                                       }
                                       §§pop().y = §§pop();
                                    }
                                 }
                                 §§push(_loc5_);
                                 §§push(_loc4_.z);
                                 if(!_loc11_)
                                 {
                                    §§push(-§§pop());
                                 }
                                 §§pop().z = §§pop();
                                 _loc5_.w = _loc4_.w;
                                 QuaternionUtils.rotateVector(_loc4_,_loc3_,_loc3_);
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
                                                while(true)
                                                {
                                                   §§push(_loc3_.y - transform.position.y);
                                                   if(_loc12_)
                                                   {
                                                      _loc6_ = §§pop();
                                                      if(_loc11_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(_loc3_.z);
                                                      §§push(transform.position.z);
                                                      if(_loc11_)
                                                      {
                                                         break loop10;
                                                      }
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc11_)
                                                      {
                                                         break loop11;
                                                      }
                                                      §§push(Number(§§pop()));
                                                      if(_loc11_)
                                                      {
                                                         break loop11;
                                                      }
                                                      _loc7_ = §§pop();
                                                      §§push(_loc6_);
                                                      §§push(0);
                                                      if(_loc11_)
                                                      {
                                                         break loop13;
                                                      }
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         break loop12;
                                                      }
                                                      §§push(_loc7_);
                                                      if(_loc11_)
                                                      {
                                                         break loop11;
                                                      }
                                                      §§push(0.8);
                                                      if(!_loc12_)
                                                      {
                                                         break loop10;
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc12_)
                                                      {
                                                         break loop9;
                                                      }
                                                      §§push(Number(§§pop()));
                                                   }
                                                   _loc7_ = §§pop();
                                                   if(_loc12_)
                                                   {
                                                      break loop12;
                                                   }
                                                   break loop0;
                                                }
                                                §§goto(addr0179);
                                             }
                                             §§goto(addr0187);
                                          }
                                          § ;§(Number(Math.atan2(_loc7_,-_loc6_)),param1,true);
                                          if(!_loc11_)
                                          {
                                             addr0179:
                                             §§push(_loc3_.x - transform.position.x);
                                             break;
                                          }
                                          break loop0;
                                       }
                                       addr0187:
                                       _loc8_ = §§pop() * 2;
                                       §§push(_loc8_);
                                       if(!_loc11_)
                                       {
                                          §§push(0.2);
                                          if(!_loc11_)
                                          {
                                             break;
                                          }
                                          §§goto(addr01c3);
                                       }
                                       §§goto(addr01c6);
                                    }
                                    addr01c3:
                                    §§push(§`!1§());
                                    if(!_loc11_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc12_)
                                       {
                                          §§push(§§pop() - _loc8_);
                                       }
                                    }
                                    §§push(§§pop() + §§pop() * §§pop());
                                    break;
                                 }
                                 addr01c6:
                                 _loc9_ = Number(§§pop());
                                 if(!_loc11_)
                                 {
                                    §'+§.§ R§ = _loc9_;
                                 }
                                 §+!^§(0);
                                 break loop0;
                              }
                           }
                           else
                           {
                              if(§'+§.§^§ != §2c§)
                              {
                                 §!!_§ = 0;
                                 §+7§ = 0;
                                 if(!_loc11_)
                                 {
                                    §'+§.§ R§ = null;
                                 }
                                 break loop0;
                              }
                              if(_loc11_)
                              {
                                 break loop6;
                              }
                              if(§'+§.§ R§ != null)
                              {
                                 if(_loc11_)
                                 {
                                    break;
                                 }
                                 §'+§.§ R§ = null;
                                 loop15:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(!_loc11_)
                                       {
                                          §§push(false);
                                          if(!_loc12_)
                                          {
                                             break loop2;
                                          }
                                          if(§!!_§ <= 2.199114857512855)
                                          {
                                             break;
                                          }
                                          §§pop();
                                          if(!_loc12_)
                                          {
                                             break loop15;
                                          }
                                       }
                                       §§push(§+7§);
                                       §§push(3.141592653589793);
                                       if(!_loc11_)
                                       {
                                          §§push(§§pop() < §§pop());
                                          break;
                                       }
                                       §§goto(addr0351);
                                    }
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(§§findproperty(§+7§));
                                          §§push(§+7§);
                                          if(_loc12_)
                                          {
                                             §§push(§§pop() + 3.141592653589793);
                                             if(!_loc12_)
                                             {
                                                break;
                                             }
                                          }
                                          §§push(Number(§§pop()));
                                          break;
                                       }
                                       §§pop().§+7§ = §§pop();
                                       if(_loc11_)
                                       {
                                          break loop1;
                                       }
                                    }
                                 }
                                 §§goto(addr0345);
                              }
                           }
                           §§push(true);
                        }
                        if(!physicsData.onGround)
                        {
                           if(!_loc11_)
                           {
                              break loop2;
                           }
                        }
                        §§goto(addr029c);
                     }
                     _loc10_ = §'+§;
                     if(_loc12_)
                     {
                        _loc10_.§9!U§ = null;
                        if(!_loc11_)
                        {
                           _loc10_.§^§ = null;
                        }
                     }
                     break loop0;
                  }
                  §§pop();
                  addr029c:
                  if(§?`§.active)
                  {
                     break loop3;
                  }
                  § ;§(0,param1);
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
                              while(true)
                              {
                                 §§push(AngleMath.§-!M§(§!!_§,0));
                                 if(!_loc11_)
                                 {
                                    _loc6_ = Number(§§pop());
                                    §§push(_loc6_);
                                    §§push(0);
                                    if(_loc11_)
                                    {
                                       break loop7;
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       if(!_loc12_)
                                       {
                                          break loop6;
                                       }
                                       §§push(_loc6_);
                                       if(_loc11_)
                                       {
                                          break loop5;
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc6_);
                                       if(!_loc12_)
                                       {
                                          break;
                                       }
                                       §§push(-§§pop());
                                       if(_loc11_)
                                       {
                                          break loop4;
                                       }
                                    }
                                 }
                                 §§push(0.15707963267948966);
                                 if(!_loc11_)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       break loop0;
                                    }
                                    if(!_loc11_)
                                    {
                                       break loop1;
                                    }
                                    §§goto(addr0345);
                                 }
                                 §§goto(addr0351);
                              }
                              §§goto(addr033a);
                           }
                           §§goto(addr0341);
                        }
                        §§goto(addr033d);
                     }
                     §§goto(addr033f);
                  }
                  §§goto(addr033b);
               }
               addr033b:
               _loc7_ = §+7§;
               addr033f:
               addr033d:
               addr0341:
               addr0351:
               if((_loc7_ >= 0 ? _loc7_ : -_loc7_) < 0.9424777960769379)
               {
                  _loc10_ = §'+§;
                  if(!_loc11_)
                  {
                     _loc10_.§9!U§ = null;
                     if(_loc12_)
                     {
                        _loc10_.§^§ = null;
                     }
                  }
               }
               break;
               addr033a:
            }
            §§goto(addr005d);
         }
         super.display(param1);
      }
      
      public function §;X§() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc4_:* = null as Entity3D;
         var _loc1_:Vector.<Entity3D> = new Vector.<Entity3D>(0,false);
         var _loc2_:Vector.<Entity3D> = _loc1_;
         var _loc3_:* = new §7=§(tunnel.§<!7§).iterator();
         if(!_loc7_)
         {
            loop0:
            while(Boolean(_loc3_.hasNext()))
            {
               _loc4_ = _loc3_.next();
               loop2:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc7_)
                     {
                        §§push(false);
                        if(!_loc6_)
                        {
                           break;
                        }
                        if(!_loc4_.§-J§)
                        {
                           break;
                        }
                        if(!_loc6_)
                        {
                           break;
                        }
                        §§pop();
                        if(_loc7_)
                        {
                           break loop2;
                        }
                     }
                     §§push(_loc4_ is §!A§);
                     if(_loc6_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     break;
                  }
                  if(§§pop())
                  {
                     if(_loc6_)
                     {
                        break;
                     }
                  }
                  continue loop0;
               }
               _loc2_.push(_loc4_);
            }
         }
         §§push(0);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!_loc7_)
         {
            while(_loc5_ < int(_loc2_.length))
            {
               _loc4_ = _loc2_[_loc5_];
               if(!_loc7_)
               {
                  _loc5_++;
                  if(!_loc6_)
                  {
                     continue;
                  }
               }
               tunnel.§0a§(_loc4_);
            }
         }
      }
      
      override public function §%9§(param1:Entity3D, param2:Point3D) : Boolean
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc3_:* = null as Point3D;
         var _loc4_:* = null as Point3D;
         var _loc5_:Number = NaN;
         var _loc6_:* = null as §[T§;
         var _loc7_:* = NaN;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc9_)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(false);
                        if(_loc8_)
                        {
                           if(!param1.§-J§)
                           {
                              break;
                           }
                           if(_loc9_)
                           {
                              break loop2;
                           }
                        }
                        §§pop();
                        if(_loc8_)
                        {
                           §§push(param1 is §!A§);
                           if(_loc8_)
                           {
                              break loop2;
                           }
                           break;
                        }
                     }
                     if(!§§pop())
                     {
                        break loop0;
                     }
                  }
                  §§push(Boolean(§§pop()));
                  if(!_loc9_)
                  {
                     break loop3;
                  }
                  break;
               }
               _loc3_ = transform.§2!§();
               _loc4_ = param1.transform.§<!C§();
               if(!_loc9_)
               {
                  loop4:
                  while(true)
                  {
                     §§push(_loc3_.x - _loc4_.x);
                     if(_loc8_)
                     {
                        loop5:
                        while(true)
                        {
                           §§push(_loc3_.x - _loc4_.x);
                           if(_loc8_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc9_)
                              {
                                 break loop4;
                              }
                              §§push(_loc3_.y - _loc4_.y);
                              if(!_loc8_)
                              {
                                 break;
                              }
                           }
                           §§push(_loc3_.y - _loc4_.y);
                           if(!_loc9_)
                           {
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc9_)
                                    {
                                       break loop4;
                                    }
                                    §§push(_loc3_.z);
                                    if(_loc9_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(_loc4_.z);
                                 if(_loc8_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!_loc9_)
                                    {
                                       break;
                                    }
                                    break loop5;
                                 }
                                 addr0107:
                              }
                              §§push(_loc3_.z);
                              if(!_loc9_)
                              {
                                 §§goto(addr0107);
                              }
                              §§push(§§pop() - _loc4_.z);
                           }
                           §§push(§§pop() * §§pop());
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
                  _loc5_ = §§pop();
               }
               _loc6_ = param1.§;!C§;
               if(!_loc9_)
               {
                  while(true)
                  {
                     §§push(§&N§);
                     if(_loc8_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc9_)
                        {
                           _loc7_ = §§pop();
                           if(_loc9_)
                           {
                              break;
                           }
                           §§push(_loc5_);
                        }
                     }
                     §§push(_loc7_);
                     if(!_loc9_)
                     {
                        §§push(§§pop() * _loc7_);
                     }
                     if(§§pop() > §§pop())
                     {
                        break;
                     }
                     break loop0;
                  }
               }
               return false;
            }
            return §§pop();
         }
         §§push(super.§%9§(param1,param2));
         if(_loc8_)
         {
            §§push(Boolean(§§pop()));
         }
         break loop1;
      }
      
      public function § ;§(param1:Number, param2:Number, param3:Object = undefined) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         if(!param3)
         {
            loop9:
            while(true)
            {
               while(true)
               {
                  §§push(AngleMath);
                  §§push(§!!_§);
                  if(!_loc9_)
                  {
                     §§push(§+7§);
                     if(!_loc9_)
                     {
                        §§push(§§pop() * 0.2);
                        if(!_loc8_)
                        {
                           break;
                        }
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc9_)
                     {
                        break loop9;
                     }
                  }
                  §§push(Number(§§pop()));
                  break loop9;
               }
               _loc4_ = Number(§§pop().§-!M§(§§pop(),§§pop()));
               if(_loc8_)
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
                                 §§push(0);
                                 if(!_loc9_)
                                 {
                                    _loc5_ = §§pop();
                                    loop16:
                                    while(true)
                                    {
                                       §§push(§§findproperty(§+7§));
                                       §§push(§+7§);
                                       if(!_loc9_)
                                       {
                                          loop17:
                                          while(true)
                                          {
                                             loop18:
                                             while(true)
                                             {
                                                §§push(3.141592653589793);
                                                if(_loc8_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(param2);
                                                      if(_loc8_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc8_)
                                                         {
                                                            break loop18;
                                                         }
                                                         §§push(_loc4_);
                                                         if(!_loc8_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      §§push(_loc5_);
                                                      if(_loc8_)
                                                      {
                                                         if(§§pop() > §§pop())
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               addr00e5:
                                                               §§push(1);
                                                               if(_loc8_)
                                                               {
                                                               }
                                                               break loop17;
                                                            }
                                                            addr0108:
                                                            §§push(-1);
                                                            if(_loc8_)
                                                            {
                                                            }
                                                            break loop17;
                                                         }
                                                         §§push(_loc4_);
                                                         break;
                                                      }
                                                      addr00fc:
                                                      addr00fd:
                                                      if(§§pop() >= -§§pop())
                                                      {
                                                         §§push(0);
                                                         break loop17;
                                                      }
                                                      if(_loc9_)
                                                      {
                                                         break loop18;
                                                      }
                                                      §§goto(addr0108);
                                                   }
                                                   §§push(_loc5_);
                                                   if(_loc8_)
                                                   {
                                                      §§goto(addr00fc);
                                                   }
                                                   §§goto(addr00fd);
                                                }
                                                §§goto(addr00e5);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(!_loc8_)
                                             {
                                                break loop16;
                                             }
                                          }
                                          §§push(§§pop() * §§pop());
                                          break loop18;
                                       }
                                       §§push(Number(§§pop()));
                                       break;
                                    }
                                    §§pop().§+7§ = §§pop();
                                    loop20:
                                    while(true)
                                    {
                                       loop21:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             if(_loc8_)
                                             {
                                                §§push(_loc4_);
                                                if(!_loc8_)
                                                {
                                                   break loop13;
                                                }
                                                §§push(0);
                                                if(!_loc8_)
                                                {
                                                   break loop15;
                                                }
                                                if(§§pop() > §§pop() != §+7§ > 0)
                                                {
                                                   §§push(6);
                                                   if(!_loc9_)
                                                   {
                                                      addr0151:
                                                      §§push(param2);
                                                      if(!_loc9_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc8_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc8_)
                                                            {
                                                               _loc6_ = §§pop();
                                                               §§push(§§findproperty(§+7§));
                                                               §§push(§+7§);
                                                               if(!_loc9_)
                                                               {
                                                                  §§push(§+7§);
                                                                  if(_loc8_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(0.7);
                                                                        if(!_loc9_)
                                                                        {
                                                                           if(§§pop() < _loc6_)
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(0.7);
                                                                              if(_loc9_)
                                                                              {
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(_loc6_);
                                                                           }
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                        break;
                                                                     }
                                                                  }
                                                                  §§push(§§pop() - §§pop());
                                                               }
                                                               §§pop().§+7§ = §§pop();
                                                               break loop14;
                                                            }
                                                            break loop13;
                                                         }
                                                         break loop12;
                                                      }
                                                      break loop11;
                                                   }
                                                   break;
                                                }
                                                §§push(_loc4_);
                                                §§push(0);
                                                if(!_loc8_)
                                                {
                                                   break loop15;
                                                }
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(_loc9_)
                                                   {
                                                      break loop14;
                                                   }
                                                   §§push(_loc4_);
                                                   if(_loc9_)
                                                   {
                                                      break loop21;
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(_loc4_);
                                                   if(_loc8_)
                                                   {
                                                      §§push(-§§pop());
                                                   }
                                                }
                                                §§push(0.6283185307179586);
                                                if(_loc9_)
                                                {
                                                   break loop20;
                                                }
                                                if(§§pop() >= §§pop())
                                                {
                                                   break loop14;
                                                }
                                             }
                                             §§goto(addr01f6);
                                          }
                                          §§goto(addr01f8);
                                       }
                                       §§goto(addr01fa);
                                    }
                                    §§goto(addr029f);
                                 }
                                 §§goto(addr0151);
                              }
                              §§goto(addr02d3);
                           }
                           §§goto(addr0252);
                        }
                        §§goto(addr029d);
                     }
                     §§goto(addr02d1);
                  }
                  §§goto(addr01f9);
               }
            }
            §§push(param1);
            break loop10;
         }
         if(!_loc9_)
         {
            §§push(§§findproperty(§+7§));
            §§push(AngleMath.§-!M§(§!!_§,param1));
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
               if(_loc8_)
               {
                  §§push(§§pop() * 10);
               }
            }
            §§pop().§+7§ = §§pop();
            addr0252:
            while(true)
            {
               §§push(§§findproperty(§!!_§));
               §§push(§!!_§);
               if(_loc8_)
               {
                  §§push(§+7§);
                  if(_loc8_)
                  {
                     §§push(§§pop() * param2);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc8_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            §§pop().§!!_§ = §§pop();
            while(true)
            {
               §§push(§!!_§);
               addr029d:
               loop5:
               while(true)
               {
                  §§push(6.283185307179586);
                  addr029f:
                  while(§§pop() > §§pop())
                  {
                     §§push(§§findproperty(§!!_§));
                     §§push(§!!_§);
                     if(_loc8_)
                     {
                        §§push(§§pop() - 6.283185307179586);
                     }
                     §§pop().§!!_§ = §§pop();
                     break loop5;
                  }
                  §§goto(addr02d7);
               }
            }
            addr0297:
         }
         else
         {
            addr01f9:
            addr01fa:
            addr01f6:
            addr01f8:
            §§push(4 * param2);
            if(!_loc9_)
            {
               _loc6_ = §§pop();
               if(!_loc9_)
               {
                  §§push(§§findproperty(§+7§));
                  §§push(§+7§);
                  if(!_loc9_)
                  {
                     loop7:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(§+7§);
                           if(!_loc9_)
                           {
                              §§push(0.4);
                              if(!_loc8_)
                              {
                                 break;
                              }
                              if(§§pop() >= _loc6_)
                              {
                                 §§push(_loc6_);
                                 break;
                              }
                              if(!_loc8_)
                              {
                                 break loop7;
                              }
                           }
                           §§push(0.4);
                           if(_loc9_)
                           {
                           }
                           break;
                        }
                        §§push(§§pop() * §§pop());
                        break;
                     }
                  }
                  §§pop().§+7§ = §§pop();
                  if(!_loc9_)
                  {
                     §§goto(addr0252);
                  }
                  §§goto(addr0297);
               }
               §§goto(addr02d7);
            }
         }
         §§goto(addr02d1);
         addr02d7:
         if(!_loc9_)
         {
            while(true)
            {
               §§push(§!!_§);
               addr02d1:
               loop1:
               while(true)
               {
                  §§push(0);
                  addr02d3:
                  while(§§pop() <= §§pop())
                  {
                     §§push(§§findproperty(§!!_§));
                     §§push(§!!_§);
                     if(!_loc9_)
                     {
                        §§push(§§pop() + 6.283185307179586);
                        if(_loc8_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     §§pop().§!!_§ = §§pop();
                     break loop1;
                  }
                  break;
               }
            }
         }
         addr02d7:
         var _loc7_:§]r§ = §'+§;
         if(!_loc9_)
         {
            _loc7_.§9!U§ = null;
            if(_loc8_)
            {
               _loc7_.§^§ = §2c§;
               if(_loc8_)
               {
                  §'+§.§9!U§ = int(Math.round(§2c§.center.length * §!!_§ / 6.283185307179586));
               }
            }
         }
      }
   }
}

