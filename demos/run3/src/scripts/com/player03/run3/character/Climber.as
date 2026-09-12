package com.player03.run3.character
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §1^§.Transform;
   import §1^§.§]!Q§;
   import §<!&§.§%!§;
   import §>T§.§-n§;
   import §>T§.§[C§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.level.§ !W§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   import unitsystem.§7o§;
   
   public class Climber extends §6M§
   {
      
      public static var init__:Boolean;
      
      public static var §1]§:Point3D;
      
      public static var up:Point3D;
      
      public var §6X§:§]!Q§;
      
      public var §1!b§:Number;
      
      public var §=!A§:Boolean;
      
      public var §4!F§:Number;
      
      public var §7!&§:Number;
      
      public var §[V§:Number;
      
      public var §7;§:Number;
      
      public var §-X§:§7!I§;
      
      public function Climber(param1:§ !W§, param2:§6O§)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §7!&§ = 0;
         §1!b§ = 0;
         §=!A§ = false;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc4_)
                  {
                     §[V§ = -1;
                     super(param1,param2);
                     if(_loc4_)
                     {
                        break;
                     }
                     §§push(§§findproperty(§+9§));
                     §§push(§+9§);
                     if(_loc3_)
                     {
                        §§push(§§pop() * 0.8);
                     }
                     §§pop().§+9§ = §§pop();
                     if(_loc4_)
                     {
                        break loop1;
                     }
                     §§push(§§findproperty(§?!>§));
                     §§push(§?!>§);
                     if(_loc3_)
                     {
                        §§push(§§pop() * 0.8);
                     }
                     §§pop().§?!>§ = §§pop();
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                     §§push(§§findproperty(§"!2§));
                     §§push(§"!2§);
                     if(_loc3_)
                     {
                        §§push(§§pop() * 0.9);
                     }
                     §§pop().§"!2§ = §§pop();
                  }
                  §-X§ = new §7!I§(param1,transform.§=0§);
                  break loop1;
               }
               §6X§ = new §]!Q§();
               break loop0;
            }
            param1.§4M§(§-X§);
            if(!_loc4_)
            {
               §§push(§[!G§);
               §§push(§&,§);
               if(!_loc4_)
               {
                  §§push(§§pop());
               }
               §§pop().§^w§ = §§pop();
               break loop2;
            }
            break;
         }
      }
      
      public static function §1L§(param1:§%!§, param2:Point3D, param3:Number) : Boolean
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc5_:* = null as Point3D;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = null as Point3D;
         var _loc9_:* = null as Point3D;
         var _loc10_:* = null as Point3D;
         var _loc11_:* = null as Point3D;
         var _loc4_:Point3D = param1.transform.§2!§();
         _loc5_ = Climber.§1]§;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc12_)
               {
                  if(_loc5_ != null)
                  {
                     break;
                  }
                  if(!_loc13_)
                  {
                     break loop0;
                  }
               }
               _loc5_ = new Point3D(0,0,0);
               break;
            }
            _loc5_.x = _loc4_.x - param2.x;
            if(_loc13_)
            {
               _loc5_.y = _loc4_.y - param2.y;
               if(!_loc12_)
               {
                  break;
               }
            }
            §§goto(addr00a8);
         }
         §§push(_loc5_);
         §§push(_loc4_.z);
         if(_loc13_)
         {
            §§push(§§pop() - param2.z);
         }
         §§pop().z = §§pop();
         addr00a8:
         _loc4_ = Climber.§1]§;
         if(_loc13_)
         {
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     §§push(_loc4_.x * _loc4_.x);
                     if(!_loc12_)
                     {
                        while(true)
                        {
                           §§push(_loc4_.y * _loc4_.y);
                           if(_loc13_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc13_)
                              {
                                 break;
                              }
                              §§push(Number(§§pop()));
                              if(_loc12_)
                              {
                                 break;
                              }
                              §§push(_loc4_.z);
                              if(!_loc12_)
                              {
                                 §§push(_loc4_.z);
                                 if(_loc12_)
                                 {
                                    break loop4;
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(!_loc13_)
                                 {
                                    break loop3;
                                 }
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc13_)
                           {
                              break;
                           }
                           break loop2;
                        }
                     }
                     §§push(Number(§§pop()));
                     break loop2;
                  }
                  §§goto(addr0114);
               }
               §§push(param3);
               break loop4;
            }
            §§push(param3);
            if(_loc13_)
            {
               break loop3;
            }
            addr0114:
            if(§§pop() < §§pop())
            {
               return false;
            }
         }
         _loc5_ = Climber.§1]§;
         loop6:
         while(true)
         {
            while(true)
            {
               §§push(_loc5_.x * _loc5_.x);
               §§push(_loc5_.y * _loc5_.y);
               if(_loc13_)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc12_)
                  {
                     break;
                  }
                  §§push(Number(§§pop()));
                  §§push(_loc5_.z);
                  if(!_loc13_)
                  {
                     break loop6;
                  }
               }
               §§push(§§pop() * _loc5_.z);
               if(_loc12_)
               {
                  break loop6;
               }
               loop17:
               while(true)
               {
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc13_)
                        {
                           _loc6_ = Number(§§pop());
                           if(_loc12_)
                           {
                              break;
                           }
                           §§push(_loc6_);
                           §§push(1);
                           if(!_loc13_)
                           {
                              continue loop20;
                           }
                           _loc7_ = §§pop() - §§pop();
                           if(_loc12_)
                           {
                              break loop17;
                           }
                           §§push(_loc7_);
                        }
                        §§push(0);
                        if(!_loc12_)
                        {
                           continue loop20;
                        }
                        §§goto(addr01c2);
                     }
                     §§goto(addr0219);
                  }
                  loop20:
                  while(true)
                  {
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(_loc12_)
                           {
                              break loop17;
                           }
                           §§push(_loc7_);
                           if(!_loc12_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           §§push(_loc7_);
                           if(_loc12_)
                           {
                              break loop20;
                           }
                        }
                        §§push(-§§pop());
                        break;
                     }
                     §§push(1e-10);
                     break loop6;
                  }
                  §§goto(addr01fa);
               }
               §§goto(addr022a);
            }
            _loc6_ = §§pop();
            §§goto(addr01fd);
         }
         §§push(§§pop() < §§pop());
         if(_loc13_)
         {
            §§push(!§§pop());
         }
         if(§§pop())
         {
            if(!_loc12_)
            {
               addr01c2:
               if(_loc6_ != 0)
               {
                  §§push(1 / Number(Math.sqrt(_loc6_)));
                  if(!_loc12_)
                  {
                     addr01fa:
                     §§push(Number(§§pop()));
                  }
                  break loop7;
               }
               if(!_loc12_)
               {
                  _loc5_.x = 1;
                  if(!_loc12_)
                  {
                     _loc5_.y = 0;
                     _loc5_.z = 0;
                  }
                  else
                  {
                     addr01fd:
                     _loc5_.x *= _loc6_;
                     if(!_loc12_)
                     {
                        _loc5_.y *= _loc6_;
                     }
                     addr0219:
                     §§push(_loc5_);
                     §§push(_loc5_.z);
                     if(_loc13_)
                     {
                        §§push(§§pop() * _loc6_);
                     }
                     §§pop().z = §§pop();
                  }
               }
            }
         }
         addr022a:
         _loc5_ = param1.§[!G§.§>l§;
         _loc8_ = Climber.§1]§;
         while(true)
         {
            if(!_loc12_)
            {
               loop9:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc5_.x * _loc8_.x);
                     if(_loc13_)
                     {
                        §§push(_loc5_.y * _loc8_.y);
                        if(_loc12_)
                        {
                           break;
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc12_)
                        {
                           break loop9;
                        }
                     }
                     §§push(Number(§§pop()));
                     if(_loc13_)
                     {
                        §§push(_loc5_.z);
                        if(!_loc12_)
                        {
                           break;
                        }
                        addr028f:
                        §§push(§§pop() + §§pop());
                        if(_loc12_)
                        {
                           break loop9;
                        }
                     }
                     §§push(Number(§§pop()));
                     break loop9;
                  }
                  §§goto(addr028f);
               }
               if(§§pop() <= 0)
               {
                  break;
               }
            }
            _loc9_ = param1.§[!G§.§>l§;
            _loc10_ = Climber.§1]§;
            _loc11_ = null;
            if(_loc13_)
            {
               loop11:
               while(true)
               {
                  if(_loc11_ == null)
                  {
                     if(!_loc13_)
                     {
                        break;
                     }
                     _loc11_ = new Point3D(0,0,0);
                  }
                  loop12:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc9_.x * _loc10_.x);
                        if(!_loc12_)
                        {
                           §§push(_loc9_.y * _loc10_.y);
                           if(_loc12_)
                           {
                              break;
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc13_)
                           {
                              break loop12;
                           }
                        }
                        §§push(Number(§§pop()));
                        if(_loc13_)
                        {
                           break loop12;
                        }
                        addr0323:
                        addr032b:
                        §§push(Number(§§pop()));
                        if(!_loc12_)
                        {
                           addr032a:
                           §§push(Number(§§pop()));
                        }
                        _loc6_ = §§pop();
                        if(_loc13_)
                        {
                           break loop11;
                        }
                     }
                     while(true)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc13_)
                        {
                           §§goto(addr0323);
                        }
                        §§goto(addr032a);
                     }
                     §§goto(addr032b);
                  }
                  §§push(_loc9_.z);
                  if(!_loc12_)
                  {
                     §§push(§§pop() * _loc10_.z);
                  }
                  break loop13;
               }
               _loc11_.x = _loc9_.x - _loc6_ * _loc10_.x;
               if(_loc12_)
               {
                  break;
               }
            }
            _loc11_.y = _loc9_.y - _loc6_ * _loc10_.y;
            if(_loc13_)
            {
               §§push(_loc11_);
               §§push(_loc9_.z);
               if(_loc13_)
               {
                  §§push(_loc6_);
                  if(!_loc12_)
                  {
                     §§push(§§pop() * _loc10_.z);
                  }
                  §§push(§§pop() - §§pop());
               }
               §§pop().z = §§pop();
            }
            break;
         }
         _loc9_ = Climber.§1]§;
         _loc10_ = Climber.§1]§;
         loop15:
         while(true)
         {
            while(true)
            {
               if(_loc13_)
               {
                  if(_loc10_ != null)
                  {
                     break;
                  }
                  if(!_loc13_)
                  {
                     break loop15;
                  }
               }
               _loc10_ = new Point3D(0,0,0);
               break;
            }
            _loc10_.x = _loc9_.x * param3;
            if(_loc13_)
            {
               _loc10_.y = _loc9_.y * param3;
               if(_loc13_)
               {
                  §§push(_loc10_);
                  §§push(_loc9_.z);
                  if(_loc13_)
                  {
                     §§push(§§pop() * param3);
                  }
                  §§pop().z = §§pop();
               }
            }
            break;
         }
         _loc9_ = Climber.§1]§;
         _loc10_ = Climber.§1]§;
         if(_loc10_ == null)
         {
            _loc10_ = new Point3D(0,0,0);
         }
         _loc10_.x = param2.x + _loc9_.x;
         if(_loc13_)
         {
            _loc10_.y = param2.y + _loc9_.y;
            §§push(_loc10_);
            §§push(param2.z);
            if(_loc13_)
            {
               §§push(§§pop() + _loc9_.z);
               if(!_loc12_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§pop().z = §§pop();
            if(param1.transform.§=0§ != null)
            {
               if(_loc13_)
               {
                  §4!R§.§@!M§(param1.transform.§=0§.§<!A§(),Climber.§1]§,Climber.§1]§);
               }
            }
            param1.transform.§"w§(Climber.§1]§);
         }
         return true;
      }
      
      override public function update(param1:Number) : void
      {
         var distanceSq:Number;
         var bestDistanceSq:Number;
         var targetPosition:Point3D;
         var target:§[C§;
         var worldPosition:Point3D;
         var _gthis:Climber;
         var _temp_1:* = true;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = _temp_1;
         var _loc2_:* = null as Point3D;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = null as Point3D;
         var _loc6_:* = null as Point3D;
         var _loc7_:* = null as Point3D;
         var _loc8_:* = null as Point3D;
         var _loc9_:* = null as Point3D;
         var _loc10_:* = NaN;
         var _loc11_:* = null as Point3D;
         var _loc12_:* = false;
         var _loc13_:* = false;
         loop0:
         while(true)
         {
            if(_loc15_)
            {
               _gthis = this;
               if(!_loc15_)
               {
                  break;
               }
            }
            super.update(param1);
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  loop32:
                  while(true)
                  {
                     §§push(§7!&§);
                     if(!_loc14_)
                     {
                        §§push(0);
                        if(!_loc15_)
                        {
                           continue loop3;
                        }
                        if(§§pop() > §§pop())
                        {
                           §§push(§§findproperty(§7!&§));
                           §§push(§7!&§);
                           if(!_loc14_)
                           {
                              §§push(§§pop() - param1);
                           }
                           §§pop().§7!&§ = §§pop();
                        }
                        if(§-X§.§"!G§ == this)
                        {
                           if(_loc14_)
                           {
                              break;
                           }
                           §§push(false);
                           if(!_loc14_)
                           {
                              §§push(§7o§.controlScheme.§+l§("jump"));
                              if(!_loc15_)
                              {
                                 continue loop6;
                              }
                              §§push(Boolean(§§pop()));
                              if(_loc14_)
                              {
                                 continue loop6;
                              }
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    if(_loc15_)
                                    {
                                       §§pop();
                                       §§push(§?`§.§'!S§());
                                       if(_loc14_)
                                       {
                                          break;
                                       }
                                    }
                                    addr075c:
                                    §§push(Boolean(§§pop()));
                                    if(!_loc14_)
                                    {
                                       §§push(!§§pop());
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       _loc2_ = transform.§2!§();
                                       while(true)
                                       {
                                          if(!_loc14_)
                                          {
                                             if(§[V§ >= 70)
                                             {
                                                break;
                                             }
                                          }
                                          _loc5_ = §-X§.transform.§2!§();
                                          if(!_loc14_)
                                          {
                                             §§push(Number(Math.sqrt((_loc2_.x - _loc5_.x) * (_loc2_.x - _loc5_.x) + (_loc2_.y - _loc5_.y) * (_loc2_.y - _loc5_.y) + (_loc2_.z - _loc5_.z) * (_loc2_.z - _loc5_.z))));
                                             if(_loc15_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             _loc3_ = §§pop();
                                             if(!_loc15_)
                                             {
                                                break;
                                             }
                                          }
                                          loop35:
                                          while(true)
                                          {
                                             §§push(§§findproperty(§[V§));
                                             if(!_loc14_)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   §§push(70);
                                                   if(_loc15_)
                                                   {
                                                      if(§§pop() < §§pop())
                                                      {
                                                         §§push(70);
                                                         break loop35;
                                                      }
                                                      if(_loc14_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(_loc3_);
                                                      §§push(170);
                                                   }
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      break;
                                                   }
                                                   §§push(170);
                                                   if(_loc15_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc15_)
                                                      {
                                                      }
                                                   }
                                                   break loop35;
                                                }
                                             }
                                             §§push(_loc3_);
                                             break;
                                          }
                                          §§pop().§[V§ = §§pop();
                                          break;
                                       }
                                       _loc5_ = §-X§.transform.§<!C§();
                                       _loc6_ = Climber.§1]§;
                                       while(true)
                                       {
                                          if(_loc6_ == null)
                                          {
                                             if(_loc14_)
                                             {
                                                break;
                                             }
                                             _loc6_ = new Point3D(0,0,0);
                                          }
                                          _loc6_.x = _loc5_.x - _loc2_.x;
                                          _loc6_.y = _loc5_.y - _loc2_.y;
                                          break;
                                       }
                                       §§push(_loc6_);
                                       §§push(_loc5_.z);
                                       if(_loc15_)
                                       {
                                          §§push(§§pop() - _loc2_.z);
                                       }
                                       §§pop().z = §§pop();
                                       if(_loc15_)
                                       {
                                          §%J§(Climber.§1]§.y,Climber.§1]§.x);
                                       }
                                       §0!N§();
                                       _loc5_ = Climber.up;
                                       while(true)
                                       {
                                          if(_loc15_)
                                          {
                                             _loc5_.x = 0;
                                             if(_loc14_)
                                             {
                                                break;
                                             }
                                          }
                                          _loc5_.y = -1;
                                          if(!_loc14_)
                                          {
                                             _loc5_.z = 0;
                                             if(!_loc14_)
                                             {
                                                break;
                                             }
                                             addr0906:
                                             _loc5_ = Climber.up;
                                             _loc6_ = Climber.§1]§;
                                             loop39:
                                             while(true)
                                             {
                                                §§push(_loc5_.x * _loc6_.x);
                                                if(!_loc14_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc5_.y * _loc6_.y);
                                                      if(!_loc14_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc15_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!_loc15_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         §§push(_loc5_.z);
                                                         if(!_loc14_)
                                                         {
                                                            §§push(§§pop() * _loc6_.z);
                                                         }
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc15_)
                                                      {
                                                         break;
                                                      }
                                                      break loop39;
                                                   }
                                                }
                                                §§push(Number(§§pop()));
                                                break;
                                             }
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop() < 0)
                                                      {
                                                         if(_loc14_)
                                                         {
                                                            break;
                                                         }
                                                         §-X§.sticky = false;
                                                         if(!_loc14_)
                                                         {
                                                            §-X§.§@!$§(null);
                                                            if(!_loc15_)
                                                            {
                                                               continue loop71;
                                                            }
                                                            §=!A§ = true;
                                                            if(!_loc15_)
                                                            {
                                                               continue loop46;
                                                            }
                                                         }
                                                      }
                                                      §7;§ = -1;
                                                      break;
                                                   }
                                                   §1!b§ = 0;
                                                   §§push(§§findproperty(§"!+§));
                                                   §§push(§"!2§);
                                                   if(!_loc14_)
                                                   {
                                                      §§push(§§pop() * 1.5);
                                                   }
                                                   §§pop().§"!+§ = §§pop();
                                                   continue loop71;
                                                }
                                                loop71:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§findproperty(applyForce3D));
                                                      §§push(0);
                                                      if(!_loc14_)
                                                      {
                                                         §§push(transform.position.z);
                                                         if(!_loc15_)
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop() >= §-X§.transform.position.z)
                                                         {
                                                            §§push(-250);
                                                            break loop71;
                                                         }
                                                      }
                                                      §§push(250);
                                                      if(_loc15_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc14_)
                                                         {
                                                         }
                                                         break;
                                                      }
                                                      break loop71;
                                                   }
                                                   §§pop().applyForce3D(§§pop(),§§pop(),200);
                                                   continue loop46;
                                                }
                                                §§push(Number(§§pop()));
                                                break loop72;
                                             }
                                             _loc7_ = §[!G§.§>l§;
                                             loop43:
                                             while(true)
                                             {
                                                loop44:
                                                while(true)
                                                {
                                                   loop45:
                                                   while(true)
                                                   {
                                                      loop46:
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            if(!_loc14_)
                                                            {
                                                               loop48:
                                                               while(true)
                                                               {
                                                                  loop49:
                                                                  while(true)
                                                                  {
                                                                     loop51:
                                                                     while(true)
                                                                     {
                                                                        loop52:
                                                                        while(true)
                                                                        {
                                                                           loop53:
                                                                           while(true)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc7_.x * _loc7_.x);
                                                                                 §§push(_loc7_.y * _loc7_.y);
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    §§push(_loc7_.z);
                                                                                    §§push(_loc7_.z);
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(§§pop() + §§pop() * §§pop());
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       break loop53;
                                                                                    }
                                                                                    §§push(Number(§§pop()));
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       break loop52;
                                                                                    }
                                                                                    _loc3_ = §§pop();
                                                                                    §§push(Climber.§1L§(this,§-X§.transform.§<!C§(),§[V§));
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       break loop51;
                                                                                    }
                                                                                    if(Boolean(§§pop()))
                                                                                    {
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          break loop49;
                                                                                       }
                                                                                       _loc8_ = §[!G§.§>l§;
                                                                                       loop55:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             loop56:
                                                                                             while(true)
                                                                                             {
                                                                                                loop57:
                                                                                                while(true)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc8_.x * _loc8_.x);
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         §§push(_loc8_.y * _loc8_.y);
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc14_)
                                                                                                         {
                                                                                                            break loop57;
                                                                                                         }
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            break loop56;
                                                                                                         }
                                                                                                      }
                                                                                                      §§push(_loc8_.z);
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr0af9);
                                                                                                   }
                                                                                                   §§push(§§pop() * _loc8_.z);
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      break loop56;
                                                                                                   }
                                                                                                   §§goto(addr0af9);
                                                                                                }
                                                                                                §§push(Number(§§pop()));
                                                                                                break;
                                                                                             }
                                                                                             addr0af9:
                                                                                             if(§§pop() >= _loc3_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                          }
                                                                                          _loc9_ = §[!G§.§>l§;
                                                                                          loop59:
                                                                                          while(true)
                                                                                          {
                                                                                             loop60:
                                                                                             while(true)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc9_.x * _loc9_.x);
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      loop63:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         loop64:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc9_.y * _loc9_.y);
                                                                                                            if(_loc15_)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!_loc15_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(_loc9_.z);
                                                                                                               if(_loc14_)
                                                                                                               {
                                                                                                                  break loop63;
                                                                                                               }
                                                                                                               §§push(§§pop() * _loc9_.z);
                                                                                                               if(_loc14_)
                                                                                                               {
                                                                                                                  break loop63;
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!_loc14_)
                                                                                                               {
                                                                                                                  break loop64;
                                                                                                               }
                                                                                                               §§goto(addr0bae);
                                                                                                            }
                                                                                                            §§goto(addr0bb4);
                                                                                                         }
                                                                                                         loop66:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            loop67:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(!_loc14_)
                                                                                                                  {
                                                                                                                     _loc4_ = §§pop();
                                                                                                                     if(!_loc15_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(_loc4_);
                                                                                                                     §§push(1);
                                                                                                                     if(!_loc15_)
                                                                                                                     {
                                                                                                                        break loop67;
                                                                                                                     }
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     if(!_loc15_)
                                                                                                                     {
                                                                                                                        break loop66;
                                                                                                                     }
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  _loc10_ = §§pop();
                                                                                                                  if(_loc15_)
                                                                                                                  {
                                                                                                                     §§push(_loc10_);
                                                                                                                     §§push(0);
                                                                                                                     if(!_loc14_)
                                                                                                                     {
                                                                                                                        break loop67;
                                                                                                                     }
                                                                                                                     §§goto(addr0bb0);
                                                                                                                  }
                                                                                                                  §§goto(addr0b88);
                                                                                                               }
                                                                                                               §§goto(addr0bb4);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() >= §§pop())
                                                                                                               {
                                                                                                                  addr0b88:
                                                                                                                  §§push(_loc10_);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(-_loc10_);
                                                                                                                  if(_loc14_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push(1e-10);
                                                                                                               break loop63;
                                                                                                            }
                                                                                                            §§goto(addr0be8);
                                                                                                         }
                                                                                                         §§goto(addr0bae);
                                                                                                      }
                                                                                                      §§push(§§pop() < §§pop());
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         §§push(!§§pop());
                                                                                                      }
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         break loop59;
                                                                                                      }
                                                                                                      if(_loc14_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      addr0bae:
                                                                                                      addr0bb0:
                                                                                                      if(_loc4_ == 0)
                                                                                                      {
                                                                                                         addr0bb4:
                                                                                                         _loc9_.x = 0;
                                                                                                         _loc9_.y = 0;
                                                                                                         if(_loc15_)
                                                                                                         {
                                                                                                            _loc9_.z = 1;
                                                                                                            if(_loc14_)
                                                                                                            {
                                                                                                            }
                                                                                                            break loop59;
                                                                                                         }
                                                                                                         break loop60;
                                                                                                      }
                                                                                                      §§push(1 / Number(Math.sqrt(_loc4_)));
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         addr0be8:
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                   }
                                                                                                   _loc4_ = §§pop();
                                                                                                   break;
                                                                                                }
                                                                                                _loc9_.x *= _loc4_;
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   _loc9_.y *= _loc4_;
                                                                                                   break;
                                                                                                }
                                                                                                break loop59;
                                                                                             }
                                                                                             §§push(_loc9_);
                                                                                             §§push(_loc9_.z);
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                §§push(§§pop() * _loc4_);
                                                                                             }
                                                                                             §§pop().z = §§pop();
                                                                                             break;
                                                                                          }
                                                                                          _loc9_ = §[!G§.§>l§;
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             §§push(Number(Math.sqrt(_loc3_)));
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             _loc4_ = §§pop();
                                                                                          }
                                                                                          _loc11_ = §[!G§.§>l§;
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc11_ == null)
                                                                                                {
                                                                                                   if(!_loc15_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   _loc11_ = new Point3D(0,0,0);
                                                                                                }
                                                                                                _loc11_.x = _loc9_.x * _loc4_;
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   _loc11_.y = _loc9_.y * _loc4_;
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   break loop55;
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                          }
                                                                                          §§push(_loc11_);
                                                                                          §§push(_loc9_.z);
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             §§push(§§pop() * _loc4_);
                                                                                          }
                                                                                          §§pop().z = §§pop();
                                                                                          break;
                                                                                       }
                                                                                    }
                                                                                    §§push(transform.position.z);
                                                                                    §§push(§-X§.transform.position.z);
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       break loop48;
                                                                                    }
                                                                                 }
                                                                                 §§push(§[V§);
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    §§push(§§pop() * 0.5);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop() > §§pop() + §§pop());
                                                                              if(!_loc14_)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       §§push(transform.position.z);
                                                                                       §§push(§4!F§);
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          _loc4_ = §§pop() - §§pop();
                                                                                          §§push(_loc4_);
                                                                                          break loop52;
                                                                                       }
                                                                                       break loop48;
                                                                                    }
                                                                                    addr0d6d:
                                                                                    §§push(_loc12_);
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       break loop45;
                                                                                    }
                                                                                    break loop43;
                                                                                 }
                                                                                 §§push(true);
                                                                              }
                                                                              §§push(Boolean(§§pop()));
                                                                              break loop51;
                                                                           }
                                                                           §§goto(addr0d10);
                                                                        }
                                                                        if(§§pop() >= 0)
                                                                        {
                                                                           if(_loc15_)
                                                                           {
                                                                              break loop49;
                                                                           }
                                                                           break loop46;
                                                                        }
                                                                        §§push(_loc4_);
                                                                        break loop53;
                                                                     }
                                                                     _loc13_ = §§pop();
                                                                     §§goto(addr0d24);
                                                                  }
                                                                  addr0d10:
                                                                  §§push(_loc4_);
                                                                  §§push(1e-10);
                                                                  break;
                                                               }
                                                               §§push(§§pop() < §§pop());
                                                               if(_loc14_)
                                                               {
                                                                  break loop45;
                                                               }
                                                               _loc13_ = §§pop();
                                                               addr0d24:
                                                               while(true)
                                                               {
                                                                  §§push(!_loc13_);
                                                                  if(_loc15_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        §§push(true);
                                                                        break;
                                                                     }
                                                                     if(!_loc15_)
                                                                     {
                                                                        break loop44;
                                                                     }
                                                                     §§push(§7o§.controlScheme.§+l§("jump"));
                                                                     if(!_loc15_)
                                                                     {
                                                                        break loop43;
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                     if(!_loc15_)
                                                                     {
                                                                        break loop43;
                                                                     }
                                                                  }
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!_loc15_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  _loc12_ = §§pop();
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                               if(!_loc15_)
                                                               {
                                                                  break;
                                                               }
                                                               _loc12_ = §§pop();
                                                            }
                                                            §§goto(addr0d6d);
                                                         }
                                                         §§goto(addr0dd9);
                                                      }
                                                      §-X§.§@!$§(null);
                                                      break loop44;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      §-X§.sticky = false;
                                                      if(!_loc14_)
                                                      {
                                                         break loop46;
                                                      }
                                                      break;
                                                   }
                                                   break loop2;
                                                }
                                                §=!A§ = true;
                                                §[V§ = -1;
                                                var _temp_4:* = tunnel.analytics;
                                                §§push(_temp_4);
                                                §§push(_temp_4.§`§);
                                                if(!_loc14_)
                                                {
                                                   §§push(§§pop() + 1);
                                                }
                                                §§pop().§`§ = §§pop();
                                                if(!_loc14_)
                                                {
                                                   §?`§.§<i§();
                                                   §§push(§7o§.controlScheme.§,h§("jump"));
                                                   break;
                                                }
                                                §§goto(addr0e06);
                                             }
                                             addr0dd9:
                                             if(Boolean(§§pop()))
                                             {
                                                §§push(§§findproperty(§=J§));
                                                §§push(0);
                                                §§push(§?`§.strength);
                                                if(!_loc14_)
                                                {
                                                   §§push(-§§pop());
                                                   if(!_loc14_)
                                                   {
                                                      §§push(§§pop() * 0.4);
                                                   }
                                                }
                                                §§pop().§=J§(§§pop(),§§pop());
                                                if(_loc14_)
                                                {
                                                   break loop2;
                                                }
                                             }
                                             addr0e06:
                                             §7!&§ = 1;
                                             break loop2;
                                          }
                                          break;
                                       }
                                       §4!R§.§@!M§(transform.§=0§.§+n§(),Climber.up,Climber.up);
                                       §§goto(addr0906);
                                    }
                                    else
                                    {
                                       if(§-X§.§"!G§ != null)
                                       {
                                          break loop0;
                                       }
                                       addr0e39:
                                       §[V§ = -1;
                                       §§push(§7;§);
                                       if(!_loc15_)
                                       {
                                          break loop1;
                                       }
                                       §§push(0);
                                       if(!_loc15_)
                                       {
                                          continue loop3;
                                       }
                                       if(§§pop() >= §§pop())
                                       {
                                          if(!_loc14_)
                                          {
                                             break loop32;
                                          }
                                          §§goto(addr0e9e);
                                       }
                                       §§goto(addr0eea);
                                    }
                                 }
                                 §§push(Boolean(§§pop()));
                                 if(!_loc15_)
                                 {
                                    addr074c:
                                    §§push(!§§pop());
                                    if(!_loc14_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc15_)
                                       {
                                          §§goto(addr075c);
                                       }
                                    }
                                    §§goto(addr0f78);
                                 }
                              }
                           }
                           if(!§§pop())
                           {
                              break loop2;
                           }
                           _loc2_ = Climber.§1]§;
                           loop73:
                           while(true)
                           {
                              loop74:
                              while(true)
                              {
                                 loop102:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    §§push(§`!1§());
                                    if(_loc15_)
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop() / 270);
                                          if(!_loc14_)
                                          {
                                             §§push(§7o§.controlScheme.§,h§("left"));
                                             if(_loc14_)
                                             {
                                                break loop102;
                                             }
                                             §§push(Boolean(§§pop()));
                                             if(!_loc15_)
                                             {
                                                break loop74;
                                             }
                                             if(!§§pop())
                                             {
                                                §§push(0);
                                                if(!_loc14_)
                                                {
                                                   break;
                                                }
                                                break loop73;
                                             }
                                          }
                                          §§push(1);
                                          if(_loc15_)
                                          {
                                             break;
                                          }
                                          break loop73;
                                       }
                                    }
                                    §§push(§7o§.controlScheme.§,h§("right"));
                                    if(_loc15_)
                                    {
                                       break loop74;
                                    }
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    §§push(1);
                                    if(_loc15_)
                                    {
                                    }
                                    break loop73;
                                 }
                                 §§push(0);
                                 break loop73;
                              }
                              §§push(Boolean(§§pop()));
                              break loop102;
                           }
                           §§pop().x = §§pop() + §§pop();
                           if(_loc15_)
                           {
                              _loc2_.y = -1;
                           }
                           _loc2_.z = 1.5;
                           if(_loc15_)
                           {
                              §4!R§.§@!M§(transform.§=0§.§+n§(),Climber.§1]§,Climber.§1]§);
                              §-X§.§@!$§(null);
                           }
                           §-X§.sticky = true;
                           if(_loc15_)
                           {
                              §=!A§ = false;
                           }
                           _loc2_ = Climber.§1]§;
                           loop75:
                           while(true)
                           {
                              loop76:
                              while(true)
                              {
                                 loop97:
                                 while(true)
                                 {
                                    §§push(_loc2_.x * _loc2_.x);
                                    §§push(_loc2_.y * _loc2_.y);
                                    if(!_loc14_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!_loc15_)
                                       {
                                          break;
                                       }
                                       §§push(Number(§§pop()));
                                       if(_loc14_)
                                       {
                                          break loop76;
                                       }
                                       §§push(_loc2_.z);
                                       if(!_loc14_)
                                       {
                                          §§push(§§pop() * _loc2_.z);
                                          if(_loc14_)
                                          {
                                             break loop75;
                                          }
                                       }
                                    }
                                    _loc3_ = §§pop() + §§pop();
                                    loop98:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             §§push(1);
                                             if(_loc15_)
                                             {
                                                _loc4_ = §§pop() - §§pop();
                                                if(!_loc15_)
                                                {
                                                   break;
                                                }
                                                §§push(_loc4_);
                                                if(_loc14_)
                                                {
                                                   break loop98;
                                                }
                                                §§push(0);
                                                if(!_loc14_)
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         if(_loc14_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(_loc4_);
                                                         if(_loc15_)
                                                         {
                                                            break loop97;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc4_);
                                                      }
                                                      §§push(-§§pop());
                                                      if(!_loc14_)
                                                      {
                                                         break loop97;
                                                      }
                                                      break loop76;
                                                   }
                                                   §§goto(addr026c);
                                                }
                                             }
                                             §§goto(addr0276);
                                          }
                                          §§goto(addr0286);
                                       }
                                       §§goto(addr02c5);
                                    }
                                    §§goto(addr02a6);
                                 }
                                 §§push(1e-10);
                                 break loop75;
                              }
                              §§goto(addr02a6);
                           }
                           §§push(§§pop() < §§pop());
                           if(!_loc14_)
                           {
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              addr026c:
                              §§push(_loc3_);
                              if(_loc15_)
                              {
                                 addr0276:
                                 if(§§pop() != 0)
                                 {
                                    §§push(1 / Number(Math.sqrt(_loc3_)));
                                    break loop76;
                                 }
                                 while(true)
                                 {
                                    if(!_loc14_)
                                    {
                                       _loc2_.x = 1;
                                       addr0286:
                                       _loc2_.y = 0;
                                       _loc2_.z = 0;
                                       if(_loc15_)
                                       {
                                          break;
                                       }
                                       addr02a7:
                                       _loc2_.x *= _loc3_;
                                    }
                                    _loc2_.y *= _loc3_;
                                    §§push(_loc2_);
                                    §§push(_loc2_.z);
                                    if(_loc15_)
                                    {
                                       §§push(§§pop() * _loc3_);
                                    }
                                    §§pop().z = §§pop();
                                    break;
                                 }
                                 addr02c5:
                                 _loc2_ = Climber.§1]§;
                                 _loc5_ = Climber.§1]§;
                                 if(_loc15_)
                                 {
                                    while(true)
                                    {
                                       if(_loc5_ == null)
                                       {
                                          if(!_loc15_)
                                          {
                                             break;
                                          }
                                          _loc5_ = new Point3D(0,0,0);
                                       }
                                       _loc5_.x = _loc2_.x * 750;
                                       if(!_loc14_)
                                       {
                                          _loc5_.y = _loc2_.y * 750;
                                          if(_loc15_)
                                          {
                                             §§push(_loc5_);
                                             §§push(_loc2_.z);
                                             if(_loc15_)
                                             {
                                                §§push(§§pop() * 750);
                                             }
                                             §§pop().z = §§pop();
                                          }
                                       }
                                       break;
                                    }
                                 }
                                 _loc2_ = §-X§.§[!G§.§>l§;
                                 _loc5_ = Climber.§1]§;
                                 while(true)
                                 {
                                    if(_loc15_)
                                    {
                                       _loc2_.x = _loc5_.x;
                                       if(_loc14_)
                                       {
                                          break;
                                       }
                                    }
                                    _loc2_.y = _loc5_.y;
                                    if(_loc15_)
                                    {
                                       break;
                                    }
                                    _loc2_ = Climber.§1]§;
                                    _loc5_ = Climber.§1]§;
                                    loop80:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          if(_loc15_)
                                          {
                                             if(_loc5_ == null)
                                             {
                                                if(_loc14_)
                                                {
                                                   break;
                                                }
                                                _loc5_ = new Point3D(0,0,0);
                                             }
                                             _loc5_.x = worldPosition.x + _loc2_.x * 0.1;
                                             if(_loc14_)
                                             {
                                                break loop80;
                                             }
                                          }
                                          _loc5_.y = worldPosition.y + _loc2_.y * 0.1;
                                          while(true)
                                          {
                                             §§push(_loc5_);
                                             §§push(worldPosition.z);
                                             if(_loc15_)
                                             {
                                                §§push(_loc2_.z);
                                                if(_loc15_)
                                                {
                                                   §§push(§§pop() * 0.1);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!_loc15_)
                                                {
                                                   break;
                                                }
                                             }
                                             §§push(Number(§§pop()));
                                             break;
                                          }
                                          §§pop().z = §§pop();
                                          if(!_loc14_)
                                          {
                                             §6X§.clear();
                                             §6X§.§%Y§(Climber.§1]§);
                                             if(_loc15_)
                                             {
                                                break;
                                             }
                                             addr043e:
                                             target = null;
                                             bestDistanceSq = 3600;
                                             tunnel.§06§(§6X§,function(param1:§%!§):void
                                             {
                                                var _temp_1:* = false;
                                                var _loc3_:Boolean = true;
                                                var _loc4_:Boolean = _temp_1;
                                                var _loc2_:* = null as Point3D;
                                                loop0:
                                                while(true)
                                                {
                                                   loop1:
                                                   while(true)
                                                   {
                                                      loop2:
                                                      while(true)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            loop3:
                                                            while(true)
                                                            {
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  §§push(false);
                                                                  if(!_loc4_)
                                                                  {
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(false);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(param1.§-J§);
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(!§§pop());
                                                                              }
                                                                              if(!§§pop())
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§pop();
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    break loop3;
                                                                                 }
                                                                                 §§push(_gthis.§-X§.§^%§(param1));
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    break loop5;
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§push(Boolean(§§pop()));
                                                                           if(!_loc4_)
                                                                           {
                                                                              break loop5;
                                                                           }
                                                                           break;
                                                                        }
                                                                        if(!§§pop())
                                                                        {
                                                                           break loop4;
                                                                        }
                                                                        if(_loc4_)
                                                                        {
                                                                           break loop3;
                                                                        }
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                     break loop6;
                                                                  }
                                                                  §§pop();
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(param1 is §[C§);
                                                                     if(!_loc4_)
                                                                     {
                                                                        break loop3;
                                                                     }
                                                                     break;
                                                                  }
                                                                  break loop2;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  break loop1;
                                                               }
                                                               if(!_loc3_)
                                                               {
                                                                  break loop0;
                                                               }
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                            break loop4;
                                                         }
                                                         targetPosition = param1.transform.§<!C§();
                                                         if(!_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         break loop0;
                                                      }
                                                      distanceSq = (targetPosition.x - worldPosition.x) * (targetPosition.x - worldPosition.x) + (targetPosition.y - worldPosition.y) * (targetPosition.y - worldPosition.y) + (targetPosition.z - worldPosition.z) * (targetPosition.z - worldPosition.z);
                                                      if(!_loc4_)
                                                      {
                                                         break loop0;
                                                      }
                                                      §§goto(addr00ee);
                                                   }
                                                   return;
                                                }
                                                if(distanceSq > 31790.000000000004)
                                                {
                                                   addr00ee:
                                                   return;
                                                }
                                                _loc2_ = Climber.§1]§;
                                                if(_loc3_)
                                                {
                                                   distanceSq = (targetPosition.x - _loc2_.x) * (targetPosition.x - _loc2_.x) + (targetPosition.y - _loc2_.y) * (targetPosition.y - _loc2_.y) + (targetPosition.z - _loc2_.z) * (targetPosition.z - _loc2_.z);
                                                   if(_loc3_)
                                                   {
                                                      if(distanceSq < bestDistanceSq)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            target = param1;
                                                            if(_loc3_)
                                                            {
                                                               bestDistanceSq = distanceSq;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                break loop1;
                                             });
                                             break loop80;
                                          }
                                          break;
                                       }
                                       §6X§.§ !H§(60);
                                       §§goto(addr043e);
                                    }
                                    if(target != null)
                                    {
                                       _loc2_ = Climber.§1]§;
                                       _loc5_ = target.transform.§<!C§();
                                       _loc2_.x = _loc5_.x;
                                       _loc2_.y = _loc5_.y;
                                       loop82:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             if(!_loc14_)
                                             {
                                                _loc2_.z = _loc5_.z;
                                                if(!_loc15_)
                                                {
                                                   break;
                                                }
                                                if(target.§4!5§ != §-n§.§?!W§)
                                                {
                                                   break loop82;
                                                }
                                             }
                                             var _temp_5:* = Climber.§1]§;
                                             while(true)
                                             {
                                                §§push(_temp_5);
                                                §§push(_temp_5.z);
                                                if(!_loc14_)
                                                {
                                                   §§push(§§pop() + target.§@p§.§[l§);
                                                   if(!_loc15_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                §§push(Number(§§pop()));
                                                break;
                                             }
                                             §§pop().z = §§pop();
                                             break loop82;
                                          }
                                          var _temp_6:* = Climber.§1]§;
                                          while(true)
                                          {
                                             §§push(_temp_6);
                                             §§push(_temp_6.z);
                                             if(!_loc14_)
                                             {
                                                §§push(target.§@p§.§[l§);
                                                if(_loc15_)
                                                {
                                                   §§push(§§pop() * 0.8);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!_loc15_)
                                                {
                                                   break;
                                                }
                                             }
                                             §§push(Number(§§pop()));
                                             break;
                                          }
                                          §§pop().z = §§pop();
                                          §§goto(addr051d);
                                       }
                                       if(transform.position.z >= Climber.§1]§.z)
                                       {
                                          if(_loc15_)
                                          {
                                             break loop83;
                                          }
                                       }
                                       addr051d:
                                       _loc2_ = Climber.§1]§;
                                       _loc5_ = §-X§.transform.§<!C§();
                                       _loc6_ = Climber.§1]§;
                                       while(true)
                                       {
                                          if(_loc15_)
                                          {
                                             while(true)
                                             {
                                                if(_loc6_ == null)
                                                {
                                                   if(_loc14_)
                                                   {
                                                      break;
                                                   }
                                                   _loc6_ = new Point3D(0,0,0);
                                                }
                                                _loc6_.x = _loc2_.x - _loc5_.x;
                                                if(_loc15_)
                                                {
                                                   break;
                                                }
                                             }
                                             _loc6_.y = _loc2_.y - _loc5_.y;
                                             if(!_loc15_)
                                             {
                                                break;
                                             }
                                          }
                                          §§push(_loc6_);
                                          §§push(_loc2_.z);
                                          if(_loc15_)
                                          {
                                             §§push(§§pop() - _loc5_.z);
                                          }
                                          §§pop().z = §§pop();
                                          break;
                                       }
                                       _loc2_ = Climber.§1]§;
                                       loop86:
                                       while(true)
                                       {
                                          loop87:
                                          while(true)
                                          {
                                             if(_loc15_)
                                             {
                                                loop88:
                                                while(true)
                                                {
                                                   loop89:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.x * _loc2_.x);
                                                         §§push(_loc2_.y * _loc2_.y);
                                                         if(!_loc14_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            §§push(_loc2_.z);
                                                            if(!_loc14_)
                                                            {
                                                               §§push(§§pop() * _loc2_.z);
                                                               if(!_loc14_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc15_)
                                                                  {
                                                                     break loop89;
                                                                  }
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc14_)
                                                                  {
                                                                     break loop89;
                                                                  }
                                                                  _loc3_ = Number(§§pop());
                                                                  §§push(_loc3_);
                                                                  §§push(1);
                                                                  if(_loc14_)
                                                                  {
                                                                     break loop88;
                                                                  }
                                                                  §§push(§§pop() - §§pop());
                                                                  if(!_loc15_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  _loc4_ = §§pop();
                                                                  §§push(_loc4_);
                                                                  if(!_loc15_)
                                                                  {
                                                                     break loop89;
                                                                  }
                                                                  §§push(0);
                                                                  if(_loc14_)
                                                                  {
                                                                     break loop88;
                                                                  }
                                                                  §§push(§§pop() >= §§pop() ? _loc4_ : -_loc4_);
                                                                  §§push(1e-10);
                                                               }
                                                            }
                                                         }
                                                         §§push(§§pop() < §§pop());
                                                         if(_loc15_)
                                                         {
                                                            §§push(!§§pop());
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            break loop87;
                                                         }
                                                         if(!_loc14_)
                                                         {
                                                            §§push(_loc3_);
                                                            break loop89;
                                                         }
                                                         §§goto(addr0661);
                                                      }
                                                      §§goto(addr0660);
                                                   }
                                                   §§push(0);
                                                   break;
                                                }
                                                if(§§pop() != §§pop())
                                                {
                                                   addr0660:
                                                   _loc3_ = 1 / Number(Math.sqrt(_loc3_));
                                                   addr0661:
                                                   _loc2_.x *= _loc3_;
                                                   break loop86;
                                                }
                                                if(_loc14_)
                                                {
                                                   break loop86;
                                                }
                                                _loc2_.x = 1;
                                                _loc2_.y = 0;
                                             }
                                             _loc2_.z = 0;
                                             if(!_loc14_)
                                             {
                                                break;
                                             }
                                             break loop86;
                                          }
                                          _loc2_ = Climber.§1]§;
                                          _loc5_ = Climber.§1]§;
                                          loop91:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                if(_loc15_)
                                                {
                                                   if(_loc5_ != null)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc14_)
                                                   {
                                                      break loop91;
                                                   }
                                                }
                                                _loc5_ = new Point3D(0,0,0);
                                                break;
                                             }
                                             _loc5_.x = _loc2_.x * 750;
                                             if(!_loc14_)
                                             {
                                                break;
                                             }
                                             §§goto(addr06da);
                                          }
                                          _loc5_.y = _loc2_.y * 750;
                                          if(!_loc14_)
                                          {
                                             addr06da:
                                             §§push(_loc5_);
                                             §§push(_loc2_.z);
                                             if(!_loc14_)
                                             {
                                                §§push(§§pop() * 750);
                                             }
                                             §§pop().z = §§pop();
                                          }
                                          _loc2_ = §-X§.§[!G§.§>l§;
                                          _loc5_ = Climber.§1]§;
                                          while(true)
                                          {
                                             if(!_loc14_)
                                             {
                                                _loc2_.x = _loc5_.x;
                                                if(_loc14_)
                                                {
                                                   break;
                                                }
                                             }
                                             _loc2_.y = _loc5_.y;
                                             if(_loc15_)
                                             {
                                                break;
                                             }
                                             break loop2;
                                          }
                                          _loc2_.z = _loc5_.z;
                                          break loop2;
                                       }
                                       _loc2_.y *= _loc3_;
                                       §§push(_loc2_);
                                       §§push(_loc2_.z);
                                       if(!_loc14_)
                                       {
                                          §§push(§§pop() * _loc3_);
                                       }
                                       §§pop().z = §§pop();
                                       break loop87;
                                    }
                                    break loop2;
                                 }
                                 _loc2_.z = _loc5_.z;
                                 if(!_loc14_)
                                 {
                                    worldPosition = transform.§2!§();
                                 }
                                 continue loop80;
                              }
                              addr02a6:
                              _loc3_ = §§pop();
                              §§goto(addr02a7);
                           }
                           §§goto(addr02c5);
                        }
                        else
                        {
                           §§push(§-X§.§"!G§ != null && physicsData.onGround);
                        }
                        §§goto(addr075c);
                     }
                     §§goto(addr0e4d);
                  }
                  §§push(§§findproperty(§7;§));
                  §§push(§7;§);
                  if(_loc15_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§7;§ = §§pop();
                  §§push(§7;§);
                  break loop1;
               }
               §4!F§ = transform.position.z;
               §§goto(addr144e);
            }
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  if(§§pop() <= 0)
                  {
                     if(!_loc15_)
                     {
                        break;
                     }
                     §-X§.transform.§"w§(transform.§2!§());
                     §-X§.§@!$§(this);
                     while(true)
                     {
                        if(_loc15_)
                        {
                           §-X§.sticky = true;
                           §[V§ = -1;
                           §7;§ = -1;
                           if(!_loc15_)
                           {
                              break;
                           }
                           §1!b§ = 0;
                        }
                        §-X§.§`&§(this);
                        if(_loc15_)
                        {
                           break;
                        }
                        break loop3;
                     }
                  }
                  addr0eea:
                  if(§-X§.§"!G§ != this)
                  {
                     while(true)
                     {
                        while(true)
                        {
                           §§push(false);
                           if(§-X§.sticky)
                           {
                              §§pop();
                              if(_loc14_)
                              {
                                 break;
                              }
                              §§push(!§=!A§);
                              if(!_loc15_)
                              {
                                 continue loop8;
                              }
                           }
                           if(§§pop())
                           {
                              if(_loc15_)
                              {
                                 break loop4;
                              }
                              break loop2;
                           }
                           §§push(Climber.§1L§(§-X§,transform.§2!§(),170));
                           if(!_loc14_)
                           {
                              addr0f78:
                              §§push(Boolean(§§pop()));
                           }
                           continue loop8;
                        }
                        addr144e:
                        return;
                     }
                     _loc12_ = §§pop();
                     _loc2_ = transform.§2!§();
                     _loc5_ = §-X§.transform.§<!C§();
                     _loc6_ = Climber.§1]§;
                     while(true)
                     {
                        while(true)
                        {
                           if(_loc15_)
                           {
                              if(_loc6_ == null)
                              {
                                 _loc6_ = new Point3D(0,0,0);
                              }
                              _loc6_.x = _loc2_.x - _loc5_.x;
                              if(!_loc15_)
                              {
                                 break;
                              }
                              _loc6_.y = _loc2_.y - _loc5_.y;
                              if(!_loc14_)
                              {
                                 §§push(_loc6_);
                                 §§push(_loc2_.z);
                                 if(_loc15_)
                                 {
                                    §§push(§§pop() - _loc5_.z);
                                 }
                                 §§pop().z = §§pop();
                                 if(_loc14_)
                                 {
                                    continue loop11;
                                 }
                              }
                           }
                           §§push(false);
                           if(!_loc14_)
                           {
                              if(_loc12_)
                              {
                                 while(true)
                                 {
                                    if(!_loc14_)
                                    {
                                       §§pop();
                                       while(true)
                                       {
                                          §§push(§-X§.transform.position.z);
                                          §§push(transform.position.z);
                                          if(!_loc14_)
                                          {
                                             §§push(§§pop() + 10);
                                             if(_loc14_)
                                             {
                                                break;
                                             }
                                          }
                                          §§push(Number(§§pop()));
                                          break;
                                       }
                                       §§push(§§pop() > §§pop());
                                       if(_loc14_)
                                       {
                                          break;
                                       }
                                    }
                                    §§push(Boolean(§§pop()));
                                    break;
                                 }
                              }
                           }
                           if(§§pop())
                           {
                              break;
                           }
                           continue loop11;
                        }
                        §-X§.sticky = true;
                        continue loop11;
                     }
                     _loc2_ = Climber.§1]§;
                     loop10:
                     while(true)
                     {
                        loop11:
                        while(true)
                        {
                           loop12:
                           while(true)
                           {
                              if(!_loc14_)
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
                                          §§push(_loc2_.x * _loc2_.x + _loc2_.y * _loc2_.y);
                                          if(_loc15_)
                                          {
                                             loop16:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   §§push(_loc2_.z);
                                                   §§push(_loc2_.z);
                                                   if(_loc15_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc15_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc14_)
                                                      {
                                                         break loop16;
                                                      }
                                                      §§push(Number(§§pop()));
                                                      if(!_loc15_)
                                                      {
                                                         break loop16;
                                                      }
                                                      §§push(§&N§);
                                                      §§push(§&N§);
                                                      if(_loc14_)
                                                      {
                                                         break loop13;
                                                      }
                                                   }
                                                   if(§§pop() <= §§pop() * §§pop())
                                                   {
                                                      §-X§.transform.§"w§(transform.§2!§());
                                                      §-X§.§@!$§(this);
                                                      §-X§.sticky = true;
                                                      §[V§ = -1;
                                                      §7;§ = -1;
                                                      if(_loc15_)
                                                      {
                                                         §1!b§ = 0;
                                                         if(_loc15_)
                                                         {
                                                            §-X§.§`&§(this);
                                                            while(true)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc15_)
                                                                  {
                                                                     §§goto(addr1393);
                                                                  }
                                                                  §§goto(addr13bc);
                                                               }
                                                               §§goto(addr13bf);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr112c:
                                                            §§push(§1!b§);
                                                            §§push(0.4);
                                                            if(!_loc14_)
                                                            {
                                                               break;
                                                            }
                                                            addr1163:
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               §§push(§7;§);
                                                               break loop16;
                                                            }
                                                            §§goto(addr1188);
                                                         }
                                                      }
                                                      break loop28;
                                                   }
                                                   §§push(§§findproperty(§1!b§));
                                                   §§push(§1!b§);
                                                   if(!_loc14_)
                                                   {
                                                      §§push(§§pop() + param1);
                                                      if(_loc15_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   §§pop().§1!b§ = §§pop();
                                                   §§goto(addr112c);
                                                }
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(!_loc15_)
                                                   {
                                                      break loop2;
                                                   }
                                                   §=!A§ = true;
                                                   §-X§.sticky = true;
                                                }
                                                §§push(§1!b§);
                                                if(!_loc15_)
                                                {
                                                   break loop12;
                                                }
                                                §§goto(addr1163);
                                                §§push(0.8);
                                             }
                                             §§push(0);
                                             if(_loc14_)
                                             {
                                                break loop11;
                                             }
                                             if(§§pop() < §§pop())
                                             {
                                                §7;§ = 0.2;
                                                if(!_loc15_)
                                                {
                                                   break loop10;
                                                }
                                             }
                                             addr1188:
                                             var _temp_2:* = Climber.§1]§;
                                             §§push(_temp_2);
                                             §§push(_temp_2.z);
                                             if(_loc15_)
                                             {
                                                §§push(§§pop() + 10);
                                                if(_loc15_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             §§pop().z = §§pop();
                                             _loc5_ = Climber.§1]§;
                                             loop18:
                                             while(true)
                                             {
                                                loop19:
                                                while(true)
                                                {
                                                   loop24:
                                                   while(true)
                                                   {
                                                      loop25:
                                                      while(true)
                                                      {
                                                         loop26:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_.x * _loc5_.x);
                                                            §§push(_loc5_.y * _loc5_.y);
                                                            if(_loc15_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  §§push(_loc5_.z);
                                                                  if(!_loc14_)
                                                                  {
                                                                     §§push(§§pop() * _loc5_.z);
                                                                     if(_loc14_)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc15_)
                                                                  {
                                                                     _loc3_ = Number(§§pop());
                                                                     §§push(_loc3_);
                                                                     §§push(1);
                                                                     if(_loc15_)
                                                                     {
                                                                        _loc4_ = §§pop() - §§pop();
                                                                        §§push(_loc4_);
                                                                        if(_loc14_)
                                                                        {
                                                                           break loop25;
                                                                        }
                                                                        §§push(0);
                                                                        if(_loc14_)
                                                                        {
                                                                           break loop24;
                                                                        }
                                                                     }
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        if(!_loc15_)
                                                                        {
                                                                           break loop19;
                                                                        }
                                                                        §§push(_loc4_);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(_loc4_);
                                                                        if(!_loc15_)
                                                                        {
                                                                           break loop25;
                                                                        }
                                                                        §§push(-§§pop());
                                                                        if(!_loc15_)
                                                                        {
                                                                           break loop18;
                                                                        }
                                                                     }
                                                                     §§push(1e-10);
                                                                     break;
                                                                  }
                                                                  break loop26;
                                                               }
                                                            }
                                                            §§push(§§pop() < §§pop());
                                                            if(_loc15_)
                                                            {
                                                               §§push(!§§pop());
                                                            }
                                                            if(§§pop())
                                                            {
                                                               §§push(_loc3_);
                                                               break loop18;
                                                            }
                                                            §§goto(addr128b);
                                                         }
                                                         §§goto(addr1264);
                                                      }
                                                      §§goto(addr1265);
                                                   }
                                                   §§goto(addr1239);
                                                }
                                                _loc5_.x = 1;
                                                _loc5_.y = 0;
                                                _loc5_.z = 0;
                                                §§goto(addr128b);
                                             }
                                             addr1239:
                                             if(§§pop() == 0)
                                             {
                                                break loop19;
                                             }
                                             addr1265:
                                             §§push(1 / Number(Math.sqrt(_loc3_)));
                                             if(!_loc14_)
                                             {
                                                addr1264:
                                                §§push(Number(§§pop()));
                                             }
                                             _loc3_ = §§pop();
                                             _loc5_.x *= _loc3_;
                                             _loc5_.y *= _loc3_;
                                             §§push(_loc5_);
                                             §§push(_loc5_.z);
                                             if(!_loc14_)
                                             {
                                                §§push(§§pop() * _loc3_);
                                             }
                                             §§pop().z = §§pop();
                                             addr128b:
                                             _loc5_ = Climber.§1]§;
                                             if(!_loc14_)
                                             {
                                                §§push(300);
                                                if(_loc15_)
                                                {
                                                   §§push(600);
                                                   if(_loc15_)
                                                   {
                                                      §§push(§§pop() * §1!b§);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc15_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc15_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                }
                                                _loc3_ = §§pop();
                                             }
                                             _loc6_ = Climber.§1]§;
                                             loop20:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   if(!_loc14_)
                                                   {
                                                      if(_loc6_ == null)
                                                      {
                                                         if(!_loc15_)
                                                         {
                                                            break;
                                                         }
                                                         _loc6_ = new Point3D(0,0,0);
                                                      }
                                                      _loc6_.x = _loc5_.x * _loc3_;
                                                      if(!_loc15_)
                                                      {
                                                         break;
                                                      }
                                                      _loc6_.y = _loc5_.y * _loc3_;
                                                      if(!_loc15_)
                                                      {
                                                         break loop20;
                                                      }
                                                   }
                                                   §§push(_loc6_);
                                                   §§push(_loc5_.z);
                                                   if(!_loc14_)
                                                   {
                                                      §§push(§§pop() * _loc3_);
                                                   }
                                                   §§pop().z = §§pop();
                                                   if(_loc15_)
                                                   {
                                                      break;
                                                   }
                                                   break loop20;
                                                }
                                                var _temp_3:* = Climber.§1]§;
                                                §§push(_temp_3);
                                                §§push(_temp_3.z);
                                                if(!_loc14_)
                                                {
                                                   §§push(§;H§());
                                                   if(_loc15_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc14_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                §§pop().z = §§pop();
                                                break;
                                             }
                                             _loc5_ = §-X§.§[!G§.§>l§;
                                             _loc6_ = Climber.§1]§;
                                             while(true)
                                             {
                                                if(!_loc14_)
                                                {
                                                   _loc5_.x = _loc6_.x;
                                                   if(_loc14_)
                                                   {
                                                      break;
                                                   }
                                                   _loc5_.y = _loc6_.y;
                                                   if(_loc14_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                _loc5_.z = _loc6_.z;
                                                break;
                                             }
                                             addr1393:
                                             while(true)
                                             {
                                                §§push(false);
                                                §§push(§-X§.sticky);
                                                if(_loc15_)
                                                {
                                                   §§push(!§§pop());
                                                   if(_loc15_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         break loop14;
                                                      }
                                                      if(!_loc15_)
                                                      {
                                                         break loop14;
                                                      }
                                                      §§pop();
                                                      if(_loc14_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(true);
                                                      §§push(_loc12_);
                                                   }
                                                }
                                                addr13bf:
                                                if(!§§pop())
                                                {
                                                   §§pop();
                                                   break;
                                                }
                                                break loop15;
                                             }
                                          }
                                          §§push(§-X§.transform.position.z);
                                          if(_loc15_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             §§push(170);
                                             §§push(§7o§.controlScheme.§+l§("jump"));
                                             if(!_loc14_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(!§§pop())
                                             {
                                                §§push(0.7);
                                                break loop13;
                                             }
                                          }
                                          §§push(0.5);
                                          if(_loc14_)
                                          {
                                          }
                                          break loop13;
                                       }
                                       §§goto(addr141a);
                                    }
                                    if(!§§pop())
                                    {
                                       break loop2;
                                    }
                                    if(!_loc15_)
                                    {
                                       break loop10;
                                    }
                                 }
                                 addr141a:
                                 §§push(§§pop() > §§pop() * §§pop());
                                 break loop14;
                              }
                              §§push(§7;§);
                              break;
                           }
                           §§push(0);
                           break;
                        }
                        if(§§pop() < §§pop())
                        {
                           if(_loc15_)
                           {
                              break;
                           }
                        }
                        break loop2;
                     }
                     §7;§ = 0.2;
                  }
                  break loop2;
               }
               §§push(Climber.§1L§(§-X§,transform.§2!§(),170));
               if(_loc15_)
               {
                  if(Boolean(§§pop()))
                  {
                     break;
                  }
                  break loop2;
               }
               §§goto(addr0f78);
            }
            §=!A§ = true;
            break loop2;
         }
         §-X§.sticky = false;
         §-X§.§@!$§(null);
         §§goto(addr0e39);
      }
      
      override public function reset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         super.reset();
         §7!&§ = 0;
         §-X§.transform.§"w§(transform.§2!§());
         §-X§.§@!$§(this);
         if(!_loc1_)
         {
            §-X§.sticky = true;
            §[V§ = -1;
            §7;§ = -1;
         }
         §1!b§ = 0;
         §-X§.§`&§(this);
         §4!F§ = transform.position.z;
      }
      
      override public function §9!?§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_)
            {
               super.§9!?§();
               if(_loc2_)
               {
                  break;
               }
            }
            if(§-X§ != null)
            {
               if(!_loc1_)
               {
                  break;
               }
               §-X§.§9!?§();
               if(!_loc2_)
               {
                  break;
               }
            }
            §§goto(addr0060);
         }
         §-X§ = null;
         addr0060:
      }
      
      public function §&,§(param1:§%!§) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(param1 == §-X§);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      override public function §6b§() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(§"!2§);
         if(_loc1_)
         {
            return §§pop() * 1.2;
         }
      }
      
      override public function display(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.display(param1);
            loop0:
            while(true)
            {
               while(true)
               {
                  if(_loc3_)
                  {
                     if(§4!Z§ == 0)
                     {
                        break;
                     }
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                  }
                  tunnel.§--§ = false;
                  if(!_loc2_)
                  {
                     break loop0;
                  }
                  break;
               }
            }
            tunnel.§%K§.y = 0;
            break loop1;
         }
      }
      
      override public function §<a§(param1:Point3D, param2:Boolean = true, param3:Boolean = false, param4:Boolean = true) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc5_:* = null as Point3D;
         var _loc6_:* = null as Point3D;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc8_)
               {
                  if(§7!&§ <= 0)
                  {
                     break;
                  }
                  if(!_loc8_)
                  {
                     if(!param2)
                     {
                        §4!R§.§@!M§(transform.§=0§.§+n§(),param1,Climber.§1]§);
                        if(_loc7_)
                        {
                           break loop0;
                        }
                        §§goto(addr0178);
                     }
                     if(_loc8_)
                     {
                        break loop0;
                     }
                  }
               }
               _loc5_ = Climber.§1]§;
               if(_loc7_)
               {
                  _loc5_.x = param1.x;
                  _loc5_.y = param1.y;
                  if(_loc8_)
                  {
                     break loop0;
                  }
               }
               _loc5_.z = param1.z;
               break loop0;
            }
            super.§<a§(param1,param2,param3,param4);
            addr0178:
            return;
         }
         while(true)
         {
            §§push(param3);
            if(!_loc8_)
            {
               if(§§pop())
               {
                  if(_loc8_)
                  {
                     break;
                  }
                  _loc5_ = Climber.§1]§;
                  _loc6_ = Climber.§1]§;
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc8_)
                        {
                           if(_loc6_ == null)
                           {
                              if(_loc8_)
                              {
                                 break;
                              }
                              _loc6_ = new Point3D(0,0,0);
                           }
                           _loc6_.x = _loc5_.x * -1;
                           if(_loc8_)
                           {
                              break loop3;
                           }
                        }
                        _loc6_.y = _loc5_.y * -1;
                        if(!_loc8_)
                        {
                           break;
                        }
                        break loop3;
                     }
                     §§push(_loc6_);
                     §§push(_loc5_.z);
                     if(!_loc8_)
                     {
                        §§push(§§pop() * -1);
                     }
                     §§pop().z = §§pop();
                     break;
                  }
               }
               break loop3;
            }
            if(§§pop())
            {
               break;
            }
            break loop1;
         }
      }
   }
}

