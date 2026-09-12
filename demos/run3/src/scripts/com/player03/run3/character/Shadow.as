package com.player03.run3.character
{
   import §0!"§.§5n§;
   import §1^§.§]!Q§;
   import §2!"§.§8f§;
   import §<!&§.§%!§;
   import §<!&§.§=2§;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   import nme3D.Context3DUtils;
   import nme3D.model.Model;
   import nme3D.shader.§'H§;
   
   public class Shadow extends §%!§
   {
      
      public static var init__:Boolean;
      
      public static var § !4§:Point3D;
      
      public static var §^f§:§"B§;
      
      public static var §1Z§:§'H§;
      
      public static var §^!K§:int;
      
      public var § S§:§"B§;
      
      public var §^z§:§"B§;
      
      public var §-'§:§]!Q§;
      
      public var §`!K§:Shadow;
      
      public var p2Offset:Point3D;
      
      public var p2:Point3D;
      
      public var p1Offset:Point3D;
      
      public var p1:Point3D;
      
      public var § !B§:§6M§;
      
      public var §^!Y§:Number;
      
      public var §[i§:Boolean;
      
      public function Shadow(param1:§=2§, param2:§6M§, param3:Number, param4:Shadow = undefined)
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc6_)
                  {
                     §§push(param3);
                     if(_loc7_)
                     {
                        break;
                     }
                     §§push(0);
                     if(_loc7_)
                     {
                        break loop1;
                     }
                     if(§§pop() < §§pop())
                     {
                        §§push(param3);
                        if(!_loc7_)
                        {
                           §§push(-§§pop());
                           if(!_loc7_)
                           {
                              break loop0;
                           }
                        }
                        break;
                     }
                  }
                  §§push(param3);
                  if(_loc6_)
                  {
                  }
                  break loop0;
               }
               var _loc5_:* = §§pop();
               loop3:
               while(true)
               {
                  if(Shadow.§^!K§ != Context3DUtils.§7L§)
                  {
                     Shadow.§1Z§ = null;
                     if(!_loc6_)
                     {
                        break;
                     }
                  }
                  super(param1,false,new §8f§("character/Shadow.png",_loc5_,_loc5_,false,Shadow.§1Z§));
                  loop4:
                  while(true)
                  {
                     while(true)
                     {
                        if(Shadow.§1Z§ == null)
                        {
                           if(_loc7_)
                           {
                              break;
                           }
                           Shadow.§1Z§ = model.§1Z§;
                           if(!_loc6_)
                           {
                              break loop4;
                           }
                           Shadow.§^!K§ = Context3DUtils.§7L§;
                        }
                        §`!K§ = param4;
                        if(!_loc7_)
                        {
                           §^!Y§ = param3;
                           p1 = new Point3D(0,0,0);
                           if(!_loc7_)
                           {
                              break loop3;
                           }
                           break loop4;
                        }
                        break;
                     }
                     addr017f:
                     model.§0p§ = 500;
                     if(!_loc7_)
                     {
                        addr0190:
                        § !B§ = param2;
                     }
                     §§goto(addr0197);
                  }
                  §-'§ = new §]!Q§();
                  if(!_loc7_)
                  {
                     break loop5;
                  }
                  §§goto(addr0197);
               }
               p1Offset = new Point3D(param3,0,param3);
               p2 = new Point3D(0,0,0);
               while(true)
               {
                  if(_loc6_)
                  {
                     p2Offset = new Point3D(0,1,0);
                     if(!_loc7_)
                     {
                        §^z§ = new §"B§();
                        § S§ = new §"B§();
                        if(!_loc7_)
                        {
                           break loop4;
                        }
                        §§goto(addr017f);
                     }
                  }
                  §§goto(addr0190);
               }
               addr0197:
               §-3§ = true;
               return;
            }
            §§push(§§pop() * §§pop());
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
            break loop2;
         }
         §§push(2);
         break loop1;
      }
      
      override public function update(param1:Number) : void
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc2_:* = null as Point3D;
         var _loc3_:* = NaN;
         var _loc4_:* = null as Point3D;
         var _loc5_:* = null as §"B§;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = null as §"B§;
         var _loc10_:* = null as §"B§;
         while(true)
         {
            if(!_loc12_)
            {
               if(§[i§)
               {
                  if(!_loc12_)
                  {
                     _loc2_ = § !B§.transform.§2!§();
                     if(!_loc12_)
                     {
                        §§push(Number(Math.atan2(_loc2_.y,_loc2_.x)));
                        if(!_loc12_)
                        {
                           §§push(§§pop() - 1.5707963267948966);
                           if(!_loc12_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        _loc3_ = §§pop();
                     }
                     _loc4_ = Shadow.§ !4§;
                     _loc5_ = § S§;
                     if(_loc5_ == null)
                     {
                        _loc5_ = new §"B§();
                     }
                     loop1:
                     while(true)
                     {
                        loop2:
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
                                          loop16:
                                          while(true)
                                          {
                                             loop17:
                                             while(true)
                                             {
                                                §§push(Number(Math.sin(_loc3_ / 2)));
                                                if(_loc11_)
                                                {
                                                   loop18:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(!_loc12_)
                                                      {
                                                         _loc6_ = §§pop();
                                                         if(!_loc12_)
                                                         {
                                                            _loc5_.x = _loc4_.x * _loc6_;
                                                            if(_loc12_)
                                                            {
                                                               break loop16;
                                                            }
                                                            _loc5_.y = _loc4_.y * _loc6_;
                                                         }
                                                         §§push(_loc5_);
                                                         §§push(_loc4_.z);
                                                         if(!_loc12_)
                                                         {
                                                            §§push(§§pop() * _loc6_);
                                                         }
                                                         §§pop().z = §§pop();
                                                         _loc5_.w = Number(Math.cos(_loc3_ / 2));
                                                         while(true)
                                                         {
                                                            §§push(_loc5_.x);
                                                            if(!_loc12_)
                                                            {
                                                               §§push(_loc5_.x);
                                                               if(_loc12_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                            §§push(_loc5_.y);
                                                            §§push(_loc5_.y);
                                                            if(_loc11_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc12_)
                                                               {
                                                                  addr015a:
                                                                  §§push(§§pop() + §§pop());
                                                                  §§push(_loc5_.z);
                                                                  §§push(_loc5_.z);
                                                                  if(_loc11_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     break;
                                                                  }
                                                                  §§push(§§pop() + §§pop() * §§pop());
                                                                  if(!_loc12_)
                                                                  {
                                                                     addr0163:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  break loop18;
                                                               }
                                                               addr0156:
                                                               §§push(_loc5_.w);
                                                            }
                                                            §§goto(addr015a);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         §§push(_loc5_.w);
                                                         if(!_loc11_)
                                                         {
                                                            break loop17;
                                                         }
                                                         §§goto(addr0156);
                                                      }
                                                      §§goto(addr0163);
                                                   }
                                                   _loc7_ = §§pop();
                                                   if(_loc12_)
                                                   {
                                                      break loop13;
                                                   }
                                                   §§push(_loc7_);
                                                   if(!_loc11_)
                                                   {
                                                      break loop12;
                                                   }
                                                   §§push(1);
                                                   if(_loc12_)
                                                   {
                                                      break loop11;
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   if(!_loc11_)
                                                   {
                                                      break loop10;
                                                   }
                                                   §§push(Number(§§pop()));
                                                   if(!_loc11_)
                                                   {
                                                      break loop9;
                                                   }
                                                   _loc8_ = §§pop();
                                                   if(_loc12_)
                                                   {
                                                      break loop2;
                                                   }
                                                   §§push(_loc8_);
                                                   if(_loc12_)
                                                   {
                                                      break loop1;
                                                   }
                                                }
                                                §§push(0);
                                                if(_loc11_)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      break loop13;
                                                   }
                                                   §§push(-_loc8_);
                                                   if(_loc11_)
                                                   {
                                                      break loop12;
                                                   }
                                                   break loop10;
                                                }
                                                break loop11;
                                             }
                                             §§goto(addr01c4);
                                          }
                                          §§goto(addr01ff);
                                       }
                                       §§push(_loc8_);
                                       if(_loc11_)
                                       {
                                       }
                                       break;
                                    }
                                    addr01c4:
                                    §§push(§§pop() < 1e-10);
                                    if(_loc11_)
                                    {
                                       §§push(!§§pop());
                                    }
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             if(!_loc12_)
                                             {
                                                §§push(_loc7_);
                                                break loop9;
                                             }
                                             §§goto(addr0230);
                                          }
                                          §§goto(addr0261);
                                       }
                                    }
                                    break loop14;
                                 }
                                 §§goto(addr01db);
                              }
                              §§goto(addr021c);
                           }
                           addr01db:
                           if(§§pop() != 0)
                           {
                              §§push(1 / Number(Math.sqrt(_loc7_)));
                              break loop1;
                           }
                           if(!_loc12_)
                           {
                              _loc5_.x = 0;
                              if(_loc11_)
                              {
                                 _loc5_.y = 0;
                                 break;
                              }
                              §§goto(addr0261);
                           }
                           else
                           {
                              §§goto(addr0230);
                           }
                        }
                        _loc5_.z = 0;
                        addr01ff:
                        _loc5_.w = 1;
                        if(_loc12_)
                        {
                        }
                        §§goto(addr0273);
                     }
                     addr021c:
                     _loc7_ = §§pop();
                     §§push(_loc5_);
                     §§push(_loc5_.x);
                     if(_loc11_)
                     {
                        §§push(§§pop() * _loc7_);
                     }
                     §§pop().x = §§pop();
                     addr0230:
                     §§push(_loc5_);
                     §§push(_loc5_.y);
                     if(!_loc12_)
                     {
                        §§push(§§pop() * _loc7_);
                     }
                     §§pop().y = §§pop();
                     if(!_loc12_)
                     {
                        §§push(_loc5_);
                        §§push(_loc5_.z);
                        if(_loc11_)
                        {
                           §§push(§§pop() * _loc7_);
                        }
                        §§pop().z = §§pop();
                        if(!_loc12_)
                        {
                           addr0261:
                           §§push(_loc5_);
                           §§push(_loc5_.w);
                           if(_loc11_)
                           {
                              §§push(§§pop() * _loc7_);
                           }
                           §§pop().w = §§pop();
                        }
                     }
                     addr0273:
                     _loc5_ = § S§;
                     _loc9_ = §^z§;
                     while(true)
                     {
                        §§push(_loc5_.x * _loc9_.x);
                        §§push(_loc5_.y);
                        §§push(_loc9_.y);
                        if(!_loc12_)
                        {
                           §§push(§§pop() + §§pop() * §§pop());
                           §§push(_loc5_.z);
                           §§push(_loc9_.z);
                           if(!_loc11_)
                           {
                              break;
                           }
                        }
                        §§push(§§pop() * §§pop());
                        if(_loc11_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc12_)
                           {
                              §§push(Number(§§pop()));
                           }
                           §§push(_loc5_.w);
                        }
                        §§push(_loc9_.w);
                        break;
                     }
                     while(true)
                     {
                        §§push(§§pop() + §§pop() * §§pop());
                        if(!_loc12_)
                        {
                           if(Number(§§pop()) < 0)
                           {
                              var _temp_1:* = §^z§;
                              §§push(_temp_1);
                              §§push(_temp_1.x);
                              if(_loc11_)
                              {
                                 §§push(§§pop() * -1);
                              }
                              §§pop().x = §§pop();
                              if(!_loc11_)
                              {
                                 break;
                              }
                              var _temp_2:* = §^z§;
                              §§push(_temp_2);
                              §§push(_temp_2.y);
                              if(_loc11_)
                              {
                                 §§push(§§pop() * -1);
                              }
                              §§pop().y = §§pop();
                              var _temp_3:* = §^z§;
                              §§push(_temp_3);
                              §§push(_temp_3.z);
                              if(_loc11_)
                              {
                                 §§push(§§pop() * -1);
                              }
                              §§pop().z = §§pop();
                              if(!_loc12_)
                              {
                                 var _temp_4:* = §^z§;
                                 §§push(_temp_4);
                                 §§push(_temp_4.w);
                                 if(_loc11_)
                                 {
                                    §§push(§§pop() * -1);
                                 }
                                 §§pop().w = §§pop();
                                 if(_loc12_)
                                 {
                                    break;
                                 }
                              }
                           }
                           §§push(3 * param1);
                        }
                        _loc3_ = §§pop();
                        if(!_loc12_)
                        {
                           break;
                        }
                        §§goto(addr04ba);
                     }
                     loop7:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(§4!R§);
                           §§push(§^z§);
                           §§push(§ S§);
                           if(!_loc12_)
                           {
                              §§push(1);
                              if(!_loc11_)
                              {
                                 break;
                              }
                              if(§§pop() >= _loc3_)
                              {
                                 §§push(_loc3_);
                                 break loop7;
                              }
                           }
                           §§push(1);
                           break;
                        }
                        §§push(Number(§§pop()));
                        if(_loc12_)
                        {
                        }
                        break;
                     }
                     §§pop().§+!Q§(§§pop(),§§pop(),§§pop(),§^z§);
                     §§goto(addr04ba);
                  }
               }
               else if(§ !B§.tunnel.§4-§ == null)
               {
                  _loc5_ = § !B§.transform.§=0§.§+n§();
                  break;
               }
            }
            _loc5_ = § !B§.tunnel.§4-§;
            break;
         }
         _loc9_ = §^z§;
         if(!_loc12_)
         {
            while(true)
            {
               while(true)
               {
                  §§push(_loc9_.x * _loc5_.x);
                  §§push(_loc9_.y);
                  §§push(_loc5_.y);
                  if(_loc11_)
                  {
                     §§push(§§pop() + §§pop() * §§pop());
                     if(!_loc12_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc11_)
                        {
                           §§push(_loc9_.z);
                           §§push(_loc5_.z);
                           if(_loc11_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc11_)
                              {
                                 break;
                              }
                              §§push(§§pop() + §§pop());
                              §§push(_loc9_.w);
                              if(_loc12_)
                              {
                                 continue loop22;
                              }
                              §§push(_loc5_.w);
                           }
                           addr042f:
                           §§push(§§pop() * §§pop());
                           continue loop22;
                        }
                        §§goto(addr0446);
                     }
                     §§goto(addr0469);
                  }
                  §§goto(addr042f);
               }
               if(§§pop() <= §§pop())
               {
                  _loc10_ = §^z§;
                  while(true)
                  {
                     if(_loc11_)
                     {
                        _loc10_.x = _loc5_.x;
                        if(_loc12_)
                        {
                           break;
                        }
                        _loc10_.y = _loc5_.y;
                        if(_loc12_)
                        {
                           break;
                        }
                     }
                     _loc10_.z = _loc5_.z;
                     if(_loc11_)
                     {
                        _loc10_.w = _loc5_.w;
                     }
                     break;
                  }
                  addr04ba:
                  _loc2_ = p1Offset;
                  while(true)
                  {
                     if(!_loc12_)
                     {
                        _loc2_.x = §^!Y§;
                        if(_loc12_)
                        {
                           break;
                        }
                     }
                     _loc2_.y = 0;
                     if(!_loc12_)
                     {
                        break;
                     }
                     §§goto(addr050d);
                  }
                  _loc2_.z = §^!Y§;
                  if(_loc11_)
                  {
                     §4!R§.§@!M§(§^z§,p1Offset,p1Offset);
                  }
                  addr050d:
                  _loc2_ = p2Offset;
                  while(true)
                  {
                     if(!_loc12_)
                     {
                        _loc2_.x = 0;
                        if(_loc12_)
                        {
                           break;
                        }
                     }
                     _loc2_.y = 1;
                     if(!_loc12_)
                     {
                        break;
                     }
                     §§goto(addr0563);
                  }
                  _loc2_.z = 0;
                  if(!_loc12_)
                  {
                     §4!R§.§@!M§(§^z§,p2Offset,p2Offset);
                  }
                  addr0563:
                  return;
               }
            }
            loop22:
            while(true)
            {
               while(true)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc11_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc12_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc12_)
                        {
                           break;
                        }
                     }
                     addr0446:
                     _loc3_ = §§pop();
                     if(!_loc11_)
                     {
                        break loop22;
                     }
                     §§push(_loc3_);
                  }
                  if(§§pop() < 0)
                  {
                     §§push(_loc3_);
                     if(_loc11_)
                     {
                        §§push(-§§pop());
                     }
                     break;
                  }
                  if(!_loc12_)
                  {
                     break loop22;
                  }
               }
               addr0469:
               §§push(0.9999999999);
               break loop21;
            }
            §§push(_loc3_);
            break loop23;
         }
      }
      
      public function §[!&§(param1:Point3D, param2:Point3D) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §-'§.clear();
         §-'§.§%Y§(param1);
         if(_loc4_)
         {
            if(param2.x > param1.x)
            {
               §-'§.max.x = Number(Math.POSITIVE_INFINITY);
            }
            else if(param2.x < param1.x)
            {
               §-'§.min.x = Number(Math.NEGATIVE_INFINITY);
            }
            if(param2.y > param1.y)
            {
               §-'§.max.y = Number(Math.POSITIVE_INFINITY);
            }
            else if(param2.y < param1.y)
            {
               §-'§.min.y = Number(Math.NEGATIVE_INFINITY);
            }
         }
      }
      
      override public function reset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               super.reset();
               if(_loc1_)
               {
                  break;
               }
            }
            update(1000);
            break;
         }
      }
      
      override public function display(param1:Number) : void
      {
         §§push(false);
         var _loc17_:Boolean = true;
         var _loc18_:* = §§pop();
         var _loc3_:* = null as Point3D;
         var _loc4_:* = NaN;
         var _loc5_:* = null as Point3D;
         var _loc6_:* = null as Point3D;
         var _loc9_:* = false;
         var _loc10_:* = null as Model;
         var _loc11_:* = false;
         var _loc12_:* = null as §"B§;
         var _loc13_:Number = NaN;
         var _loc14_:* = false;
         var _loc15_:* = false;
         var _loc16_:Number = NaN;
         if(!_loc18_)
         {
            while(true)
            {
               §§push(true);
               if(!_loc18_)
               {
                  §§push(§ !B§.model.visible);
                  if(!_loc18_)
                  {
                     §§push(!§§pop());
                  }
                  if(!§§pop())
                  {
                     if(_loc17_)
                     {
                        §§pop();
                        if(_loc18_)
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(§ !B§.§'E§);
                           if(_loc17_)
                           {
                              §§push(!§§pop());
                              if(_loc18_)
                              {
                                 break;
                              }
                           }
                           §§push(Boolean(§§pop()));
                           break;
                        }
                     }
                  }
               }
               if(§§pop())
               {
                  if(!_loc18_)
                  {
                     model.§#"§(false);
                  }
                  break;
               }
               var _loc2_:Point3D = § !B§.transform.§2!§();
               _loc3_ = p2Offset;
               if(!_loc18_)
               {
                  while(true)
                  {
                     §§push(§ !B§.§&N§);
                     if(_loc17_)
                     {
                        §§push(§§pop() * 0.5);
                        if(_loc18_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
                  _loc4_ = §§pop();
               }
               _loc5_ = p1;
               loop3:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc18_)
                     {
                        if(_loc5_ != null)
                        {
                           break;
                        }
                        if(_loc18_)
                        {
                           break loop3;
                        }
                     }
                     _loc5_ = new Point3D(0,0,0);
                     break;
                  }
                  _loc5_.x = _loc2_.x + _loc3_.x * _loc4_;
                  if(!_loc17_)
                  {
                     break;
                  }
                  _loc5_.y = _loc2_.y + _loc3_.y * _loc4_;
                  if(_loc18_)
                  {
                     break;
                  }
                  while(true)
                  {
                     §§push(_loc5_);
                     §§push(_loc2_.z);
                     if(_loc17_)
                     {
                        §§push(_loc3_.z);
                        if(_loc17_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc17_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
                  §§pop().z = §§pop();
                  if(_loc18_)
                  {
                     break;
                  }
                  if(§^!Y§ != 0)
                  {
                     break;
                  }
                  §§goto(addr01f2);
               }
               _loc3_ = p1;
               _loc5_ = p1Offset;
               _loc6_ = p1;
               if(_loc17_)
               {
                  while(true)
                  {
                     if(_loc6_ == null)
                     {
                        if(_loc18_)
                        {
                           break;
                        }
                        _loc6_ = new Point3D(0,0,0);
                     }
                     _loc6_.x = _loc3_.x + _loc5_.x;
                     if(_loc17_)
                     {
                        break;
                     }
                  }
                  _loc6_.y = _loc3_.y + _loc5_.y;
                  if(_loc17_)
                  {
                     while(true)
                     {
                        §§push(_loc6_);
                        §§push(_loc3_.z);
                        if(_loc17_)
                        {
                           §§push(§§pop() + _loc5_.z);
                           if(!_loc17_)
                           {
                              break;
                           }
                        }
                        §§push(Number(§§pop()));
                        break;
                     }
                     §§pop().z = §§pop();
                  }
               }
               addr01f2:
               _loc3_ = p1;
               _loc5_ = p2Offset;
               _loc6_ = p2;
               if(_loc17_)
               {
                  loop7:
                  while(true)
                  {
                     if(_loc6_ == null)
                     {
                        if(_loc18_)
                        {
                           break;
                        }
                        _loc6_ = new Point3D(0,0,0);
                     }
                     _loc6_.x = _loc3_.x + _loc5_.x;
                     while(true)
                     {
                        if(!_loc18_)
                        {
                           _loc6_.y = _loc3_.y + _loc5_.y;
                           if(!_loc17_)
                           {
                              break;
                           }
                        }
                        while(true)
                        {
                           §§push(_loc6_);
                           §§push(_loc3_.z);
                           if(_loc17_)
                           {
                              §§push(§§pop() + _loc5_.z);
                              if(_loc18_)
                              {
                                 break;
                              }
                           }
                           §§push(Number(§§pop()));
                           break;
                        }
                        §§pop().z = §§pop();
                        if(!_loc18_)
                        {
                           break loop7;
                        }
                        break;
                     }
                  }
                  §[!&§(p1,p2);
               }
               var _loc7_:§"B§ = transform.§+n§();
               var _loc8_:§%!§ = §!C§.§1%§(p1,p2,§-'§,_loc2_,0,null,_loc7_);
               if(_loc17_)
               {
                  while(true)
                  {
                     if(_loc8_ == null)
                     {
                        if(!_loc18_)
                        {
                           model.§#"§(false);
                           if(_loc17_)
                           {
                              §§goto(addr02eb);
                           }
                           addr0303:
                           transform.§"I§(_loc7_);
                           if(!_loc17_)
                           {
                              break;
                           }
                        }
                     }
                     else
                     {
                        §4!R§.§9!L§(_loc7_,Shadow.§^f§,_loc7_);
                        if(!_loc18_)
                        {
                           §§goto(addr0303);
                        }
                     }
                     if(§^!Y§ != 0)
                     {
                        break;
                     }
                     addr0522:
                     _loc3_ = p2Offset;
                     _loc5_ = _loc2_;
                     if(!_loc18_)
                     {
                        while(true)
                        {
                           if(_loc5_ == null)
                           {
                              if(_loc18_)
                              {
                                 break;
                              }
                              _loc5_ = new Point3D(0,0,0);
                           }
                           _loc5_.x = _loc2_.x + _loc3_.x * -0.5;
                           _loc5_.y = _loc2_.y + _loc3_.y * -0.5;
                           §§push(_loc5_);
                           §§push(_loc2_.z);
                           if(_loc17_)
                           {
                              §§push(_loc3_.z);
                              if(!_loc18_)
                              {
                                 §§push(§§pop() * -0.5);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc17_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           §§pop().z = §§pop();
                           break;
                        }
                     }
                     while(true)
                     {
                        §§push(_loc2_.z);
                        if(!_loc18_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc18_)
                           {
                              break;
                           }
                        }
                        _loc4_ = §§pop();
                        §§push(_loc4_);
                        break;
                     }
                     if(§§pop() != _loc4_)
                     {
                        model.§#"§(false);
                        return;
                     }
                     loop13:
                     while(true)
                     {
                        loop14:
                        while(true)
                        {
                           if(§`!K§ != null)
                           {
                              _loc10_ = model;
                              while(true)
                              {
                                 loop16:
                                 while(true)
                                 {
                                    loop31:
                                    while(true)
                                    {
                                       if(!_loc18_)
                                       {
                                          loop32:
                                          while(true)
                                          {
                                             §§push(§`!K§.model.visible);
                                             if(!_loc18_)
                                             {
                                                §§push(!§§pop());
                                                if(_loc18_)
                                                {
                                                   break;
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(!§§pop());
                                                if(_loc17_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc18_)
                                                      {
                                                         break;
                                                      }
                                                      _loc12_ = §`!K§.transform.§+n§();
                                                      if(_loc18_)
                                                      {
                                                         break loop31;
                                                      }
                                                      loop34:
                                                      while(true)
                                                      {
                                                         loop35:
                                                         while(true)
                                                         {
                                                            loop36:
                                                            while(true)
                                                            {
                                                               loop37:
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc7_.x);
                                                                     if(_loc17_)
                                                                     {
                                                                        §§push(§§pop() * _loc12_.x);
                                                                        if(_loc18_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(_loc7_.y);
                                                                        if(_loc18_)
                                                                        {
                                                                           break loop37;
                                                                        }
                                                                        §§push(_loc12_.y);
                                                                        if(!_loc17_)
                                                                        {
                                                                           break loop36;
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc17_)
                                                                        {
                                                                           break loop35;
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc17_)
                                                                        {
                                                                           break loop34;
                                                                        }
                                                                     }
                                                                     §§push(_loc7_.z);
                                                                     if(_loc18_)
                                                                     {
                                                                        break loop37;
                                                                     }
                                                                     §§push(_loc12_.z);
                                                                     if(_loc17_)
                                                                     {
                                                                        break loop36;
                                                                     }
                                                                     §§goto(addr0680);
                                                                  }
                                                                  §§goto(addr0691);
                                                               }
                                                               addr0680:
                                                               §§push(§§pop() * _loc12_.w);
                                                               if(_loc17_)
                                                               {
                                                                  break loop35;
                                                               }
                                                               §§goto(addr06bf);
                                                            }
                                                            §§push(§§pop() + §§pop() * §§pop());
                                                            if(_loc18_)
                                                            {
                                                               break loop34;
                                                            }
                                                            §§push(Number(§§pop()));
                                                            §§push(_loc7_.w);
                                                            if(_loc17_)
                                                            {
                                                               break loop37;
                                                            }
                                                            §§goto(addr06bf);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc18_)
                                                         {
                                                            addr0691:
                                                            _loc13_ = Number(§§pop());
                                                            if(_loc18_)
                                                            {
                                                               break loop31;
                                                            }
                                                            §§push(_loc13_);
                                                            if(!_loc17_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         if(§§pop() >= 0)
                                                         {
                                                            if(!_loc17_)
                                                            {
                                                               break loop31;
                                                            }
                                                            §§push(_loc13_);
                                                            if(_loc17_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc13_);
                                                         }
                                                         §§push(-§§pop());
                                                         break;
                                                      }
                                                      addr06bf:
                                                      §§push(§§pop() <= 0.9999999999);
                                                      if(_loc18_)
                                                      {
                                                         break loop16;
                                                      }
                                                      _loc11_ = §§pop();
                                                      if(_loc17_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop18;
                                                   }
                                                   §§push(true);
                                                   if(!_loc18_)
                                                   {
                                                      break loop32;
                                                   }
                                                }
                                                addr06dd:
                                                _loc11_ = §§pop();
                                                break;
                                             }
                                          }
                                          §§goto(addr06dd);
                                       }
                                       §§push(!_loc11_);
                                       if(!_loc18_)
                                       {
                                          break loop16;
                                       }
                                       §§goto(addr0845);
                                    }
                                    §§goto(addr0848);
                                 }
                                 if(!§§pop())
                                 {
                                    addr0845:
                                    _loc9_ = true;
                                    break loop31;
                                 }
                                 if(_loc18_)
                                 {
                                    break loop31;
                                 }
                                 continue loop18;
                              }
                              _loc3_ = §`!K§.transform.§<!C§();
                              loop17:
                              while(true)
                              {
                                 while(true)
                                 {
                                    loop21:
                                    while(true)
                                    {
                                       if(!_loc18_)
                                       {
                                          _loc13_ = _loc2_.x - _loc3_.x;
                                          while(true)
                                          {
                                             if(_loc17_)
                                             {
                                                §§push(_loc13_);
                                                §§push(0);
                                                if(!_loc17_)
                                                {
                                                   break loop21;
                                                }
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(_loc18_)
                                                   {
                                                      break loop14;
                                                   }
                                                   §§push(_loc13_);
                                                   if(_loc18_)
                                                   {
                                                      break loop17;
                                                   }
                                                   continue loop23;
                                                }
                                                §§push(_loc13_);
                                                if(!_loc18_)
                                                {
                                                   §§push(-§§pop());
                                                   if(_loc17_)
                                                   {
                                                      continue loop23;
                                                   }
                                                   §§goto(addr080b);
                                                }
                                                else
                                                {
                                                   addr079a:
                                                   §§push(-§§pop());
                                                   if(_loc18_)
                                                   {
                                                      break loop22;
                                                   }
                                                   §§push(1e-10);
                                                   if(_loc18_)
                                                   {
                                                      break loop26;
                                                   }
                                                   §§push(§§pop() < §§pop());
                                                   if(_loc17_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(!_loc17_)
                                                      {
                                                         break loop25;
                                                      }
                                                      _loc15_ = §§pop();
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr07bf);
                                                   }
                                                }
                                             }
                                             §§goto(addr07c8);
                                          }
                                          §§goto(addr080a);
                                       }
                                       §§goto(addr0731);
                                    }
                                    loop29:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             if(_loc18_)
                                             {
                                                break loop23;
                                             }
                                             §§push(_loc16_);
                                             if(!_loc18_)
                                             {
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             §§push(_loc16_);
                                             if(_loc18_)
                                             {
                                                break loop29;
                                             }
                                          }
                                          §§goto(addr079a);
                                       }
                                       §§goto(addr07a1);
                                    }
                                    §§goto(addr080a);
                                 }
                                 while(true)
                                 {
                                    loop23:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(1e-10);
                                          if(_loc17_)
                                          {
                                             loop25:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop() < §§pop())
                                                      {
                                                         §§push(_loc2_.y - _loc3_.y);
                                                         if(_loc18_)
                                                         {
                                                            break;
                                                         }
                                                         _loc16_ = §§pop();
                                                         if(_loc17_)
                                                         {
                                                            §§push(_loc16_);
                                                            §§push(0);
                                                            if(_loc17_)
                                                            {
                                                               break loop21;
                                                            }
                                                            §§goto(addr07f7);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr07bf:
                                                         _loc15_ = false;
                                                         if(_loc18_)
                                                         {
                                                            break loop14;
                                                         }
                                                      }
                                                      addr07c8:
                                                      §§push(_loc15_);
                                                      if(_loc18_)
                                                      {
                                                         break loop25;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         §§push(_loc2_.z);
                                                         break loop17;
                                                      }
                                                      §§push(false);
                                                      if(_loc17_)
                                                      {
                                                         break loop25;
                                                      }
                                                      §§goto(addr082b);
                                                   }
                                                   §§goto(addr080b);
                                                }
                                             }
                                             §§push(Boolean(§§pop()));
                                             if(!_loc18_)
                                             {
                                                addr082b:
                                                _loc14_ = §§pop();
                                                break loop23;
                                             }
                                             §§goto(addr0836);
                                          }
                                          break loop26;
                                       }
                                       §§goto(addr080a);
                                    }
                                    §§goto(addr082d);
                                 }
                                 §§goto(addr07f5);
                              }
                              loop19:
                              while(true)
                              {
                                 §§push(_loc3_.z);
                                 if(_loc17_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc17_)
                                       {
                                          _loc16_ = §§pop();
                                          §§push(_loc16_);
                                          if(!_loc18_)
                                          {
                                             addr07f5:
                                             addr07f7:
                                             if(§§pop() >= 0)
                                             {
                                                if(!_loc18_)
                                                {
                                                   §§push(_loc16_);
                                                   break;
                                                }
                                                break loop19;
                                             }
                                             §§push(_loc16_);
                                          }
                                       }
                                       addr080a:
                                       §§push(-§§pop());
                                       break;
                                    }
                                    addr080b:
                                 }
                                 _loc14_ = §§pop() < §§pop();
                                 if(_loc17_)
                                 {
                                 }
                                 addr082d:
                                 addr0836:
                                 §§push(_loc14_);
                                 if(_loc17_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 §§push(Boolean(§§pop()));
                                 if(_loc17_)
                                 {
                                    _loc9_ = §§pop();
                                    addr0848:
                                    _loc10_.§#"§(_loc9_);
                                    if(_loc17_)
                                    {
                                       break;
                                    }
                                    §§goto(addr087a);
                                 }
                                 addr0870:
                                 if(§§pop())
                                 {
                                    if(_loc18_)
                                    {
                                       break loop13;
                                    }
                                    addr087a:
                                    return;
                                 }
                              }
                              §§push(model.visible);
                              if(!_loc18_)
                              {
                                 §§push(!§§pop());
                              }
                              §§goto(addr0870);
                           }
                           else
                           {
                              model.§#"§(true);
                           }
                           transform.§"w§(_loc2_);
                           break loop13;
                        }
                        return;
                     }
                     super.display(param1);
                     break loop14;
                  }
                  _loc2_ = § !B§.transform.§2!§();
                  _loc3_ = p2Offset;
                  if(!_loc18_)
                  {
                     §§push(§ !B§.§&N§);
                     if(!_loc18_)
                     {
                        §§push(§§pop() * 0.5);
                        if(_loc17_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     _loc4_ = §§pop();
                  }
                  _loc5_ = p1;
                  while(true)
                  {
                     if(_loc17_)
                     {
                        while(true)
                        {
                           if(_loc5_ == null)
                           {
                              if(_loc18_)
                              {
                                 break;
                              }
                              _loc5_ = new Point3D(0,0,0);
                           }
                           _loc5_.x = _loc2_.x + _loc3_.x * _loc4_;
                           if(!_loc18_)
                           {
                              break;
                           }
                        }
                        _loc5_.y = _loc2_.y + _loc3_.y * _loc4_;
                        if(!_loc17_)
                        {
                           break;
                        }
                     }
                     while(true)
                     {
                        §§push(_loc5_);
                        §§push(_loc2_.z);
                        if(!_loc18_)
                        {
                           §§push(_loc3_.z);
                           if(!_loc18_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc17_)
                           {
                              break;
                           }
                        }
                        §§push(Number(§§pop()));
                        break;
                     }
                     §§pop().z = §§pop();
                     break;
                  }
                  _loc3_ = p1;
                  _loc5_ = p2Offset;
                  _loc6_ = p2;
                  if(_loc6_ == null)
                  {
                     _loc6_ = new Point3D(0,0,0);
                  }
                  _loc6_.x = _loc3_.x + _loc5_.x;
                  _loc6_.y = _loc3_.y + _loc5_.y;
                  §§push(_loc6_);
                  §§push(_loc3_.z);
                  if(_loc17_)
                  {
                     §§push(§§pop() + _loc5_.z);
                     if(!_loc18_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  §§pop().z = §§pop();
                  loop42:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc8_.§;!C§ is §5n§);
                        if(!_loc18_)
                        {
                           if(§§pop())
                           {
                              _loc8_.§;!C§.§9j§(p1,p2,0,null,_loc2_);
                           }
                           else
                           {
                              _loc8_.§;!C§.§1%§(p1,p2,0,null,_loc2_);
                              if(!_loc17_)
                              {
                                 break;
                              }
                           }
                           §§push(Number(_loc2_.x));
                           if(!_loc18_)
                           {
                              _loc4_ = §§pop();
                              §§push(_loc4_);
                           }
                           if(§§pop() == _loc4_)
                           {
                              if(_loc18_)
                              {
                                 break;
                              }
                              §§push(!Boolean(Math.isFinite(_loc2_.x)));
                              if(_loc17_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              _loc9_ = §§pop();
                              if(_loc18_)
                              {
                                 break loop42;
                              }
                              addr04e8:
                              §§push(_loc9_);
                           }
                           else
                           {
                              §§push(true);
                              if(_loc17_)
                              {
                                 _loc9_ = Boolean(§§pop());
                                 §§goto(addr04e8);
                              }
                           }
                        }
                        if(§§pop())
                        {
                           break;
                        }
                        break loop42;
                     }
                     §[!&§(p1,p2);
                     §!C§.§1%§(p1,p2,§-'§,_loc2_,0,null);
                     break;
                  }
                  §§goto(addr0522);
               }
               addr02eb:
               return;
            }
         }
      }
   }
}

