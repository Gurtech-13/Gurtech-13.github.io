package com.player03.run3.level
{
   import §%!Q§.§>K§;
   import §'!1§.§ E§;
   import §>T§.§-2§;
   import §>T§.§[C§;
   import com.player03.run3.save.§]k§;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.AngleMath;
   import haxeutils.math.geom.Point3D;
   import nme3D.shader.§'H§;
   
   public class §#!J§
   {
      
      public var tunnel:§ !W§;
      
      public var startZ:Number;
      
      public var §8!>§:int;
      
      public var start:§>W§;
      
      public var §1Z§:§'H§;
      
      public var p3:Point3D;
      
      public var p2:Point3D;
      
      public var p1:Point3D;
      
      public var §+§:int;
      
      public var endZ:Number;
      
      public var §3T§:int;
      
      public var end:§>W§;
      
      public var count:int;
      
      public var §,!^§:int;
      
      public function §#!J§(param1:§ !W§, param2:§>W§, param3:§>W§, param4:§'H§, param5:Number, param6:Number)
      {
         var _temp_1:* = true;
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = _temp_1;
         var _loc11_:* = 0;
         var _loc12_:Number = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:Number = NaN;
         count = 0;
         tunnel = param1;
         start = param2;
         end = param3;
         §1Z§ = param4;
         startZ = param5;
         if(!_loc20_)
         {
            endZ = param6;
            §8!>§ = param2.§@!0§;
         }
         §3T§ = param3.§@!0§;
         §§push(§§findproperty(§+§));
         §§push(int(param2.§]!;§.length));
         if(_loc21_)
         {
            §§push(§§pop() + int(param3.§]!;§.length));
         }
         §§pop().§+§ = §§pop();
         while(true)
         {
            if(!_loc20_)
            {
               p1 = new Point3D(0,0,0);
               if(_loc20_)
               {
                  break;
               }
            }
            p2 = new Point3D(0,0,0);
            break;
         }
         p3 = new Point3D(0,0,0);
         §§push(false);
         if(_loc21_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(false);
         if(_loc21_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc8_:* = §§pop();
         §§push(0);
         if(_loc21_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(§+§);
         if(_loc21_)
         {
            §§push(int(§§pop()));
         }
         var _loc10_:* = §§pop();
         if(!_loc20_)
         {
            loop0:
            do
            {
               if(_loc9_ >= _loc10_)
               {
                  break;
               }
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        §§push(_loc9_);
                        if(!_loc20_)
                        {
                           _loc9_++;
                           if(!_loc20_)
                           {
                              §§push(int(§§pop()));
                              if(_loc21_)
                              {
                                 _loc11_ = §§pop();
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
                                             §§push(start.§,o§[§8!>§]);
                                             if(_loc21_)
                                             {
                                                loop9:
                                                while(true)
                                                {
                                                   loop10:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!_loc20_)
                                                         {
                                                            _loc12_ = §§pop();
                                                            §§push(end.§,o§[§3T§]);
                                                            if(!_loc20_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc20_)
                                                               {
                                                                  break loop6;
                                                               }
                                                               _loc13_ = §§pop();
                                                               §§push(start.§,o§);
                                                               §§push(§8!>§);
                                                               if(!_loc20_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(1);
                                                                     if(_loc21_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc21_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(int(start.§]!;§.length));
                                                                     }
                                                                     §§push(int(§§pop() % §§pop()));
                                                                     break;
                                                                  }
                                                               }
                                                               §§push(§§pop()[§§pop()]);
                                                               if(_loc21_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc20_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               _loc14_ = §§pop();
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(end.§,o§);
                                                                     §§push(§3T§);
                                                                     if(_loc21_)
                                                                     {
                                                                        §§push(1);
                                                                        if(_loc20_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc21_)
                                                                        {
                                                                           break loop13;
                                                                        }
                                                                     }
                                                                     §§push(int(end.§]!;§.length));
                                                                     break;
                                                                  }
                                                                  §§push(int(§§pop() % §§pop()));
                                                                  break;
                                                               }
                                                               §§push(Number(§§pop()[§§pop()]));
                                                               if(_loc20_)
                                                               {
                                                                  break;
                                                               }
                                                               _loc15_ = §§pop();
                                                               if(_loc20_)
                                                               {
                                                                  break loop3;
                                                               }
                                                               §§push(AngleMath.§-!M§(_loc12_,_loc13_));
                                                            }
                                                            §§push(Number(§§pop()));
                                                            §§push(0);
                                                            if(!_loc21_)
                                                            {
                                                               break loop10;
                                                            }
                                                            if(§§pop() > §§pop())
                                                            {
                                                               §§push(_loc12_);
                                                               if(!_loc21_)
                                                               {
                                                                  break loop9;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc13_);
                                                               if(!_loc21_)
                                                               {
                                                                  break loop5;
                                                               }
                                                            }
                                                         }
                                                         _loc16_ = §§pop();
                                                         if(_loc21_)
                                                         {
                                                            §§push(AngleMath.§-!M§(_loc14_,_loc15_));
                                                            §§push(0);
                                                            break loop10;
                                                         }
                                                         break loop4;
                                                      }
                                                      §§push(Number(§§pop()));
                                                      if(_loc21_)
                                                      {
                                                         _loc17_ = §§pop();
                                                         §§push(AngleMath.positiveAngleBetween(_loc16_,_loc14_));
                                                         if(_loc21_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc21_)
                                                            {
                                                               §§push(AngleMath.positiveAngleBetween(_loc13_,_loc17_));
                                                               if(_loc21_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc20_)
                                                                  {
                                                                     break loop7;
                                                                  }
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc20_)
                                                               {
                                                                  break loop9;
                                                               }
                                                            }
                                                            break loop6;
                                                         }
                                                         §§goto(addr02b3);
                                                      }
                                                      §§goto(addr02ba);
                                                   }
                                                   if(§§pop() < §§pop())
                                                   {
                                                      §§push(_loc14_);
                                                      if(_loc21_)
                                                      {
                                                         break loop11;
                                                      }
                                                      break loop8;
                                                   }
                                                   §§push(_loc15_);
                                                   break loop11;
                                                }
                                                §§push(Number(§§pop()));
                                                if(!_loc20_)
                                                {
                                                   addr02b3:
                                                   §§push(Number(§§pop()));
                                                   if(!_loc21_)
                                                   {
                                                      break loop5;
                                                   }
                                                }
                                                addr02ba:
                                                _loc18_ = §§pop();
                                             }
                                             §§push(Number(§§pop()));
                                             §§push(AngleMath.positiveAngleBetween(_loc12_,_loc17_));
                                             if(_loc21_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc21_)
                                                {
                                                   break loop7;
                                                }
                                             }
                                             §§goto(addr02f6);
                                          }
                                          §§goto(addr02ea);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc21_)
                                       {
                                          break;
                                       }
                                       break loop5;
                                    }
                                    addr02ea:
                                    _loc19_ = §§pop();
                                    if(_loc21_)
                                    {
                                       §§push(_loc18_);
                                       break;
                                    }
                                    break loop4;
                                 }
                                 addr02f6:
                                 if(§§pop() <= _loc19_)
                                 {
                                    §§push(§§findproperty(§8!>§));
                                    §§push(§8!>§);
                                    if(!_loc20_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    §§pop().§8!>§ = §§pop();
                                    §§push(§8!>§);
                                    if(!_loc20_)
                                    {
                                       addr0319:
                                       §§push(int(param2.§]!;§.length));
                                       if(!_loc21_)
                                       {
                                          break loop2;
                                       }
                                       if(§§pop() >= §§pop())
                                       {
                                          if(!_loc21_)
                                          {
                                             break;
                                          }
                                          §8!>§ = 0;
                                       }
                                       §§push(true);
                                       if(_loc21_)
                                       {
                                          _loc7_ = §§pop();
                                          break loop3;
                                       }
                                       §§goto(addr038f);
                                    }
                                 }
                                 else
                                 {
                                    §§push(§§findproperty(§3T§));
                                    §§push(§3T§);
                                    if(_loc21_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    §§pop().§3T§ = §§pop();
                                    §§push(§3T§);
                                 }
                              }
                              §§push(int(param3.§]!;§.length));
                              break loop2;
                           }
                        }
                        §§goto(addr0319);
                     }
                     §§goto(addr0375);
                  }
                  §§push(false);
                  if(!_loc7_)
                  {
                     continue loop0;
                  }
                  addr038f:
                  §§pop();
                  §§goto(addr0390);
               }
               if(§§pop() >= §§pop())
               {
                  addr0375:
                  §3T§ = 0;
               }
               _loc8_ = true;
               if(!_loc20_)
               {
                  break loop3;
               }
               addr0390:
               §§push(_loc8_);
               if(!_loc20_)
               {
                  §§push(Boolean(§§pop()));
               }
            }
            while(!§§pop());
         }
      }
      
      public function next() : §-2§
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc1_:* = null as Point3D;
         var _loc2_:* = null as Point3D;
         if(!_loc11_)
         {
            §§push(§§findproperty(count));
            §§push(count);
            if(_loc12_)
            {
               §§push(§§pop() + 1);
            }
            §§pop().count = §§pop();
         }
         _loc1_ = p1;
         _loc2_ = start.§]!;§[§8!>§];
         while(true)
         {
            if(_loc12_)
            {
               _loc1_.x = _loc2_.x;
               if(_loc12_)
               {
                  _loc1_.y = _loc2_.y;
                  if(_loc11_)
                  {
                     break;
                  }
                  _loc1_.z = _loc2_.z;
                  if(!_loc12_)
                  {
                     break;
                  }
               }
            }
            p1.z = startZ;
            break;
         }
         _loc1_ = p2;
         _loc2_ = end.§]!;§[§3T§];
         while(true)
         {
            if(!_loc11_)
            {
               _loc1_.x = _loc2_.x;
               if(!_loc12_)
               {
                  break;
               }
               _loc1_.y = _loc2_.y;
               if(_loc11_)
               {
                  break;
               }
            }
            _loc1_.z = _loc2_.z;
            if(_loc12_)
            {
               p2.z = endZ;
            }
            break;
         }
         §§push(start.§,o§[§8!>§]);
         if(_loc12_)
         {
            §§push(Number(§§pop()));
            if(!_loc11_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            §§push(end.§,o§[§3T§]);
            if(!_loc11_)
            {
               §§push(Number(§§pop()));
               if(_loc11_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc4_:* = §§pop();
         §§push(start.§,o§);
         §§push(§8!>§);
         if(!_loc11_)
         {
            while(true)
            {
               §§push(1);
               if(_loc12_)
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc12_)
                  {
                     break;
                  }
                  §§push(int(start.§]!;§.length));
               }
               §§push(int(§§pop() % §§pop()));
               break;
            }
         }
         while(true)
         {
            §§push(§§pop()[§§pop()]);
            if(_loc12_)
            {
               §§push(Number(§§pop()));
               if(!_loc12_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc5_:* = §§pop();
         §§push(end.§,o§);
         §§push(§3T§);
         if(_loc12_)
         {
            while(true)
            {
               §§push(1);
               if(!_loc11_)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc11_)
                  {
                     break;
                  }
                  §§push(int(end.§]!;§.length));
               }
               §§push(int(§§pop() % §§pop()));
               break;
            }
         }
         while(true)
         {
            §§push(§§pop()[§§pop()]);
            if(_loc12_)
            {
               §§push(Number(§§pop()));
               if(!_loc12_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc6_:* = §§pop();
         loop7:
         while(true)
         {
            while(true)
            {
               if(!_loc11_)
               {
                  §§push(AngleMath.§-!M§(_loc3_,_loc4_));
                  if(_loc11_)
                  {
                     break loop7;
                  }
                  §§push(Number(§§pop()));
                  if(!_loc12_)
                  {
                     break;
                  }
                  if(§§pop() <= 0)
                  {
                     §§push(_loc4_);
                     if(_loc12_)
                     {
                        break loop7;
                     }
                     break;
                  }
               }
               §§push(_loc3_);
               if(_loc11_)
               {
               }
               break loop7;
            }
            var _loc7_:* = §§pop();
            loop9:
            while(true)
            {
               while(true)
               {
                  if(_loc12_)
                  {
                     §§push(AngleMath.§-!M§(_loc5_,_loc6_));
                     if(_loc12_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc12_)
                        {
                           break loop9;
                        }
                     }
                     if(§§pop() >= 0)
                     {
                        §§push(_loc6_);
                        if(!_loc11_)
                        {
                           break;
                        }
                        break loop9;
                     }
                  }
                  §§push(_loc5_);
                  if(!_loc11_)
                  {
                     break;
                  }
                  break loop9;
               }
               §§push(Number(§§pop()));
               break;
            }
            var _loc8_:* = §§pop();
            while(true)
            {
               §§push(AngleMath.positiveAngleBetween(_loc7_,_loc5_));
               if(!_loc11_)
               {
                  §§push(Number(§§pop()));
                  if(_loc11_)
                  {
                     break;
                  }
                  §§push(AngleMath.positiveAngleBetween(_loc4_,_loc8_));
                  if(_loc12_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc11_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc12_)
                     {
                        break;
                     }
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            var _loc9_:* = §§pop();
            while(true)
            {
               §§push(AngleMath.positiveAngleBetween(_loc7_,_loc6_));
               if(_loc12_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc11_)
                  {
                     §§push(AngleMath.positiveAngleBetween(_loc3_,_loc8_));
                     if(!_loc11_)
                     {
                        §§push(Number(§§pop()));
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc12_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc11_)
                        {
                           break;
                        }
                     }
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            var _loc10_:* = §§pop();
            loop13:
            while(true)
            {
               loop14:
               while(true)
               {
                  loop17:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc12_)
                        {
                           if(_loc9_ > _loc10_)
                           {
                              §§push(§§findproperty(§3T§));
                              §§push(§3T§);
                              if(_loc12_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              §§pop().§3T§ = §§pop();
                              if(!_loc11_)
                              {
                                 break loop13;
                              }
                              continue loop15;
                           }
                           §§push(§§findproperty(§8!>§));
                           §§push(§8!>§);
                           if(!_loc11_)
                           {
                              §§push(§§pop() + 1);
                           }
                           §§pop().§8!>§ = §§pop();
                           §§push(§8!>§);
                           if(!_loc12_)
                           {
                              break;
                           }
                           §§push(int(start.§]!;§.length));
                           if(_loc11_)
                           {
                              break loop17;
                           }
                           if(§§pop() < §§pop())
                           {
                              break loop14;
                           }
                           if(_loc11_)
                           {
                              break loop13;
                           }
                        }
                        §8!>§ = 0;
                        if(_loc12_)
                        {
                           break loop14;
                        }
                        break loop13;
                     }
                     §§goto(addr03ae);
                  }
                  §§goto(addr03ba);
               }
               _loc1_ = p3;
               _loc2_ = start.§]!;§[§8!>§];
               loop18:
               while(true)
               {
                  if(_loc12_)
                  {
                     _loc1_.x = _loc2_.x;
                     while(true)
                     {
                        if(!_loc11_)
                        {
                           _loc1_.y = _loc2_.y;
                           if(_loc11_)
                           {
                              break;
                           }
                        }
                        _loc1_.z = _loc2_.z;
                        if(_loc12_)
                        {
                           break;
                        }
                        break loop18;
                     }
                  }
                  p3.z = startZ;
                  if(!_loc11_)
                  {
                     §,!^§ = start.§"8§;
                  }
                  break;
               }
               §§goto(addr0447);
            }
            addr03ba:
            addr03ae:
            if(§3T§ >= int(end.§]!;§.length))
            {
               if(_loc12_)
               {
                  §3T§ = 0;
               }
            }
            _loc1_ = p3;
            _loc2_ = end.§]!;§[§3T§];
            loop15:
            while(true)
            {
               while(true)
               {
                  if(!_loc11_)
                  {
                     _loc1_.x = _loc2_.x;
                     if(_loc11_)
                     {
                        break;
                     }
                     _loc1_.y = _loc2_.y;
                     if(_loc11_)
                     {
                        break loop15;
                     }
                  }
                  _loc1_.z = _loc2_.z;
                  if(!_loc11_)
                  {
                     break;
                  }
                  §§goto(addr0447);
               }
               p3.z = endZ;
               if(_loc12_)
               {
                  break;
               }
               §§goto(addr0447);
            }
            §,!^§ = end.§"8§;
            addr0447:
            return new §-2§(tunnel,p1,p2,p3,start.§"8§,end.§"8§,§,!^§,§1Z§);
         }
         §§push(Number(§§pop()));
         break loop8;
      }
      
      public function hasNext() : Boolean
      {
         return count < §+§;
      }
   }
}

