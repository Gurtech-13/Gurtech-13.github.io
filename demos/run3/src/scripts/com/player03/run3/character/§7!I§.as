package com.player03.run3.character
{
   import §!!$§.§ 6§;
   import §"!M§.§!!P§;
   import §%!Z§.§&!S§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §0!"§.§[T§;
   import §1^§.Transform;
   import §4!6§.§!!V§;
   import §4!6§.§'!Y§;
   import §4!6§.§=s§;
   import §6[§.§=9§;
   import §8!0§.§2_§;
   import §8!H§.§=l§;
   import §<!&§.§%!§;
   import §<!&§.§=2§;
   import §<!&§.§]p§;
   import §>T§.§[C§;
   import §[^§.§+`§;
   import com.player03.layout.§ 7§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.§%d§;
   import nme3D.model.§,T§;
   import nme3D.shader.§'H§;
   import nme3D.shader.§[D§;
   
   public class §7!I§ extends §%!§
   {
      
      public var §"!G§:§%!§;
      
      public var §%!H§:Point3D;
      
      public var sticky:Boolean;
      
      public var §"!a§:Vector.<§+`§>;
      
      public var §>!R§:Transform;
      
      public function §7!I§(param1:§=2§, param2:Transform = undefined)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         sticky = true;
         super(param1,true,new §,T§(§=l§.§9T§(11184810),§[D§.§7!P§(),true,5));
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc5_)
               {
                  §-3§ = true;
                  if(!_loc4_)
                  {
                     break;
                  }
                  §`-§(new §[T§(this,10));
                  §,!!§ = false;
                  if(!_loc4_)
                  {
                     break loop0;
                  }
               }
               §§push(§[!G§);
               §§push(§^%§);
               if(!_loc5_)
               {
                  §§push(§§pop());
               }
               §§pop().§^w§ = §§pop();
               break;
            }
            §§push(§[!G§);
            §§push(§]!O§);
            if(!_loc5_)
            {
               §§push(§§pop());
            }
            §§pop().§%9§ = §§pop();
            §§push(§[!G§);
            §§push(§%B§);
            if(_loc4_)
            {
               §§push(§§pop());
            }
            §§pop().§0e§ = §§pop();
            if(_loc4_)
            {
               break;
            }
            §§goto(addr00f3);
         }
         §>!R§ = param2;
         §%!H§ = new Point3D(0,0,0);
         addr00f3:
         var _loc3_:Vector.<§+`§> = new Vector.<§+`§>(0,false);
         if(_loc4_)
         {
            §"!a§ = _loc3_;
         }
      }
      
      override public function update(param1:Number) : void
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc2_:* = null as Point3D;
         var _loc3_:* = null as Point3D;
         var _loc4_:* = null as Point3D;
         var _loc5_:* = null as Point3D;
         var _loc7_:* = null as §3!I§;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = null as Vector.<§+`§>;
         loop1:
         while(true)
         {
            if(!_loc12_)
            {
               if(§"!G§ != null)
               {
                  if(!_loc12_)
                  {
                     _loc2_ = transform.§<!C§();
                     _loc3_ = §"!G§.transform.§2!§();
                     _loc4_ = §%!H§;
                     _loc5_ = _loc2_;
                     while(true)
                     {
                        if(!_loc12_)
                        {
                           if(_loc5_ == null)
                           {
                              if(_loc12_)
                              {
                                 break;
                              }
                              _loc5_ = new Point3D(0,0,0);
                           }
                           _loc5_.x = _loc3_.x + _loc4_.x;
                           if(_loc12_)
                           {
                              break loop1;
                           }
                        }
                        _loc5_.y = _loc3_.y + _loc4_.y;
                        if(_loc11_)
                        {
                           break;
                        }
                        addr00f2:
                        transform.§"w§(_loc2_);
                        break loop1;
                     }
                     while(true)
                     {
                        §§push(_loc5_);
                        §§push(_loc3_.z);
                        if(!_loc12_)
                        {
                           §§push(§§pop() + _loc4_.z);
                           if(_loc12_)
                           {
                              break;
                           }
                        }
                        §§push(Number(§§pop()));
                        break;
                     }
                     §§pop().z = §§pop();
                     if(!_loc11_)
                     {
                        break;
                     }
                     §§goto(addr00f2);
                  }
               }
               else
               {
                  super.update(param1);
               }
            }
            _loc2_ = §[!G§.§#!Q§;
            _loc3_ = §[!G§.§#!Q§;
            if(!_loc12_)
            {
               if(_loc3_ == null)
               {
                  _loc3_ = new Point3D(0,0,0);
               }
               _loc3_.x = _loc2_.x * -1;
               _loc3_.y = _loc2_.y * -1;
               if(!_loc12_)
               {
                  §§push(_loc3_);
                  §§push(_loc2_.z);
                  if(_loc11_)
                  {
                     §§push(§§pop() * -1);
                  }
                  §§pop().z = §§pop();
                  if(!_loc12_)
                  {
                     if(§>!R§ != null)
                     {
                        §4!R§.§@!M§(§>!R§.§+n§(),§[!G§.§#!Q§,§[!G§.§#!Q§);
                     }
                  }
               }
            }
            break;
         }
         while(true)
         {
            §§push(§=B§);
            §§push(int(§"!a§.length));
            if(_loc11_)
            {
               §§push(1);
               if(!_loc11_)
               {
                  break;
               }
               §§push(§§pop() - §§pop());
            }
            §§push(-1);
            break;
         }
         var _loc6_:§3!I§ = §§pop().§@W§(§§pop(),§§pop(),-1);
         if(_loc11_)
         {
            while(_loc6_.§#1§ != _loc6_.end)
            {
               _loc7_ = _loc6_;
               if(_loc11_)
               {
                  loop5:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc7_);
                        §§push(_loc7_.§#1§);
                        if(_loc11_)
                        {
                           §§push(_loc6_.§['§);
                           if(_loc12_)
                           {
                              break;
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc11_)
                           {
                              break loop5;
                           }
                        }
                        §§push(int(§§pop()));
                        if(!_loc12_)
                        {
                           var _temp_1:* = §§pop();
                           §§push(_temp_1);
                           §§push(_temp_1);
                           break;
                        }
                        break loop5;
                     }
                     _loc9_ = §§pop();
                     break;
                  }
                  §§pop().§#1§ = §§pop();
                  if(!_loc12_)
                  {
                     §§push(_loc9_);
                     if(_loc11_)
                     {
                        §§push(int(§§pop()));
                     }
                     _loc8_ = §§pop();
                     if(_loc11_)
                     {
                        §§push(§"!a§[_loc8_].§+i§());
                        if(_loc11_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           §"!a§[_loc8_].§3I§(§[!G§.§>l§);
                           continue;
                        }
                        if(_loc12_)
                        {
                           continue;
                        }
                     }
                  }
                  _loc10_ = §"!a§.splice(_loc8_,1);
               }
            }
         }
      }
      
      public function §@!$§(param1:§%!§) : §%!§
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:* = null as Point3D;
         var _loc3_:* = null as Point3D;
         var _loc4_:* = null as Point3D;
         while(true)
         {
            if(_loc5_)
            {
               §"!G§ = param1;
               if(_loc6_)
               {
                  break;
               }
            }
            if(§"!G§ != null)
            {
               break;
            }
            §§goto(addr010e);
         }
         _loc2_ = transform.§<!C§();
         _loc3_ = §"!G§.transform.§2!§();
         _loc4_ = §%!H§;
         while(true)
         {
            if(!_loc6_)
            {
               if(_loc4_ == null)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
                  _loc4_ = new Point3D(0,0,0);
               }
               _loc4_.x = _loc2_.x - _loc3_.x;
               if(_loc5_)
               {
                  _loc4_.y = _loc2_.y - _loc3_.y;
                  if(!_loc5_)
                  {
                     break;
                  }
               }
            }
            §§push(_loc4_);
            §§push(_loc2_.z);
            if(_loc5_)
            {
               §§push(§§pop() - _loc3_.z);
            }
            §§pop().z = §§pop();
            break;
         }
         _loc2_ = §[!G§.§>l§;
         while(true)
         {
            if(_loc5_)
            {
               _loc2_.x = 0;
               if(!_loc5_)
               {
                  break;
               }
            }
            _loc2_.y = 0;
            if(!_loc6_)
            {
               _loc2_.z = 0;
            }
            break;
         }
         addr010e:
         return §"!G§;
      }
      
      override public function reset() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.reset();
            while(true)
            {
               if(_loc1_)
               {
                  sticky = true;
                  if(!_loc1_)
                  {
                     break;
                  }
               }
               §@!$§(null);
               break;
            }
         }
      }
      
      public function §^%§(param1:§%!§) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(_loc3_)
            {
               §§push(false);
               §§push(false);
               if(!_loc2_)
               {
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(false);
                        if(_loc3_)
                        {
                           if(!param1.§-J§)
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
                              break;
                           }
                           §§push(param1 is §+`§);
                           if(_loc2_)
                           {
                              break loop1;
                           }
                        }
                        §§push(Boolean(§§pop()));
                        break loop1;
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        §§pop();
                        §§push(int(§"!a§.indexOf(param1,0)) < 0);
                        if(!_loc2_)
                        {
                           break loop2;
                        }
                     }
                  }
               }
               loop3:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        §§pop();
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§push(param1.§+i§());
                        if(!_loc3_)
                        {
                           break loop0;
                        }
                        §§push(!§§pop());
                        if(_loc2_)
                        {
                           break loop0;
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        return true;
                     }
                     break;
                  }
                  loop4:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(false);
                        if(!_loc2_)
                        {
                           if(§"!G§ != null)
                           {
                              break;
                           }
                           if(!_loc3_)
                           {
                              break loop4;
                           }
                        }
                        §§pop();
                        if(_loc3_)
                        {
                           break loop3;
                        }
                     }
                     addr00e0:
                     if(!§§pop())
                     {
                        return false;
                     }
                  }
                  return §§pop();
               }
               §§push(param1.§-J§);
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr00e0);
               §§push(!§§pop());
            }
            return param1.§[!G§ == null;
         }
         return §§pop();
      }
      
      public function §%B§(param1:§%!§) : Boolean
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:* = null as §+`§;
         var _loc3_:* = null as Point3D;
         var _loc4_:* = null as Point3D;
         var _loc5_:* = null as Point3D;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         loop0:
         while(true)
         {
            if(_loc8_)
            {
               §§push(param1.§-J§);
               if(_loc9_)
               {
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc8_)
                     {
                        _loc2_ = param1;
                        if(_loc8_)
                        {
                           §"!a§.push(_loc2_);
                        }
                        _loc3_ = _loc2_.transform.§<!C§();
                        _loc4_ = transform.§<!C§();
                        _loc5_ = _loc3_;
                        if(_loc5_ == null)
                        {
                           _loc5_ = new Point3D(0,0,0);
                        }
                        _loc5_.x = _loc3_.x - _loc4_.x;
                        _loc5_.y = _loc3_.y - _loc4_.y;
                        §§push(_loc5_);
                        §§push(_loc3_.z);
                        if(_loc8_)
                        {
                           §§push(§§pop() - _loc4_.z);
                        }
                        §§pop().z = §§pop();
                        loop2:
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              if(!_loc9_)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       loop12:
                                       while(true)
                                       {
                                          loop13:
                                          while(true)
                                          {
                                             §§push(_loc3_.x * _loc3_.x + _loc3_.y * _loc3_.y);
                                             if(!_loc9_)
                                             {
                                                loop16:
                                                while(true)
                                                {
                                                   loop17:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         §§push(_loc3_.z);
                                                         if(_loc8_)
                                                         {
                                                            §§push(_loc3_.z);
                                                            if(!_loc8_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc8_)
                                                            {
                                                               break loop17;
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc8_)
                                                            {
                                                               break loop10;
                                                            }
                                                            §§push(Number(§§pop()));
                                                            if(!_loc8_)
                                                            {
                                                               break loop9;
                                                            }
                                                            §§push(1600);
                                                            if(!_loc8_)
                                                            {
                                                               break loop16;
                                                            }
                                                            if(§§pop() <= §§pop())
                                                            {
                                                               break loop3;
                                                            }
                                                            §§push(_loc3_.x * _loc3_.x);
                                                            if(_loc9_)
                                                            {
                                                               break loop13;
                                                            }
                                                            §§push(_loc3_.y * _loc3_.y);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc8_)
                                                         {
                                                            §§push(_loc3_.z);
                                                            if(!_loc9_)
                                                            {
                                                               break loop17;
                                                            }
                                                            break loop16;
                                                         }
                                                         break loop12;
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      break loop16;
                                                   }
                                                   §§push(_loc3_.z);
                                                   break loop18;
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc8_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             §§push(Number(§§pop()));
                                             if(_loc8_)
                                             {
                                                break loop12;
                                             }
                                             break loop9;
                                          }
                                          §§goto(addr01bd);
                                       }
                                       _loc6_ = §§pop();
                                       while(true)
                                       {
                                          §§push(_loc6_);
                                          §§push(1);
                                          if(_loc8_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(_loc9_)
                                             {
                                                break loop9;
                                             }
                                             _loc7_ = §§pop();
                                             if(!_loc8_)
                                             {
                                                break;
                                             }
                                             §§push(_loc7_);
                                             §§push(0);
                                             if(!_loc9_)
                                             {
                                                while(true)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(_loc7_);
                                                      if(_loc9_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(-_loc7_);
                                                   }
                                                   §§push(§§pop() < 1e-10);
                                                   if(!_loc9_)
                                                   {
                                                      §§push(!§§pop());
                                                      if(!_loc9_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§push(_loc6_);
                                                            if(!_loc9_)
                                                            {
                                                               break loop13;
                                                            }
                                                            break loop9;
                                                         }
                                                         break loop2;
                                                      }
                                                   }
                                                   §§goto(addr0313);
                                                }
                                                addr01c1:
                                                _loc3_.x = 1;
                                                if(!_loc9_)
                                                {
                                                   _loc3_.y = 0;
                                                }
                                                break;
                                             }
                                          }
                                          addr01bd:
                                          if(§§pop() != §§pop())
                                          {
                                             §§push(1 / Number(Math.sqrt(_loc6_)));
                                             if(_loc8_)
                                             {
                                                break loop10;
                                             }
                                             break loop9;
                                          }
                                          §§goto(addr01c1);
                                       }
                                    }
                                    §§push(Number(§§pop()));
                                    break;
                                 }
                                 _loc6_ = §§pop();
                                 while(true)
                                 {
                                    if(_loc8_)
                                    {
                                       _loc3_.x *= _loc6_;
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                    }
                                    _loc3_.y *= _loc6_;
                                    if(!_loc9_)
                                    {
                                       break;
                                    }
                                    break loop2;
                                 }
                                 §§push(_loc3_);
                                 §§push(_loc3_.z);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§pop().z = §§pop();
                                 break loop2;
                              }
                              _loc3_.z = 0;
                              break loop2;
                           }
                           addr0313:
                           return §§pop();
                        }
                        _loc4_ = _loc3_;
                        while(true)
                        {
                           if(!_loc9_)
                           {
                              while(true)
                              {
                                 if(_loc4_ == null)
                                 {
                                    if(_loc9_)
                                    {
                                       break;
                                    }
                                    _loc4_ = new Point3D(0,0,0);
                                 }
                                 _loc4_.x = _loc3_.x * 40;
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                              }
                              _loc4_.y = _loc3_.y * 40;
                              if(!_loc8_)
                              {
                                 break;
                              }
                           }
                           §§push(_loc4_);
                           §§push(_loc3_.z);
                           if(!_loc9_)
                           {
                              §§push(§§pop() * 40);
                           }
                           §§pop().z = §§pop();
                           break;
                        }
                        _loc4_ = transform.§<!C§();
                        _loc5_ = _loc3_;
                        loop6:
                        while(true)
                        {
                           while(true)
                           {
                              if(_loc8_)
                              {
                                 if(_loc5_ != null)
                                 {
                                    break;
                                 }
                                 if(_loc9_)
                                 {
                                    break loop6;
                                 }
                              }
                              _loc5_ = new Point3D(0,0,0);
                              break;
                           }
                           _loc5_.x = _loc4_.x + _loc3_.x;
                           if(_loc8_)
                           {
                              break;
                           }
                           break loop3;
                        }
                        _loc5_.y = _loc4_.y + _loc3_.y;
                        if(!_loc9_)
                        {
                           while(true)
                           {
                              §§push(_loc5_);
                              §§push(_loc4_.z);
                              if(_loc8_)
                              {
                                 §§push(§§pop() + _loc3_.z);
                                 if(_loc9_)
                                 {
                                    break;
                                 }
                              }
                              §§push(Number(§§pop()));
                              break;
                           }
                           §§pop().z = §§pop();
                           if(_loc8_)
                           {
                              _loc2_.transform.§"w§(_loc3_);
                           }
                        }
                        break loop3;
                     }
                  }
                  else
                  {
                     §§push(sticky);
                     if(_loc9_)
                     {
                        break loop0;
                     }
                     if(§§pop())
                     {
                        if(_loc8_)
                        {
                           §@!$§(param1);
                           if(_loc9_)
                           {
                              break;
                           }
                        }
                     }
                  }
                  §0c§(param1);
                  break;
               }
            }
            return true;
         }
         return §§pop();
      }
      
      public function §]!O§(param1:§%!§, param2:Point3D) : Boolean
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc3_:* = null as §+`§;
         var _loc4_:* = null as Point3D;
         var _loc5_:* = null as Point3D;
         var _loc6_:* = null as Point3D;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         while(true)
         {
            §§push(param1.§-J§);
            if(_loc9_)
            {
               if(§§pop())
               {
                  _loc3_ = param1;
                  if(_loc9_)
                  {
                     §"!a§.push(_loc3_);
                  }
                  _loc4_ = _loc3_.transform.§<!C§();
                  _loc5_ = transform.§<!C§();
                  _loc6_ = _loc4_;
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        loop6:
                        while(true)
                        {
                           if(_loc9_)
                           {
                              if(_loc6_ == null)
                              {
                                 _loc6_ = new Point3D(0,0,0);
                              }
                              _loc6_.x = _loc4_.x - _loc5_.x;
                              _loc6_.y = _loc4_.y - _loc5_.y;
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
                                             if(_loc9_)
                                             {
                                                §§push(_loc6_);
                                                §§push(_loc4_.z);
                                                if(!_loc10_)
                                                {
                                                   §§push(§§pop() - _loc5_.z);
                                                }
                                                §§pop().z = §§pop();
                                                loop12:
                                                while(true)
                                                {
                                                   loop13:
                                                   while(true)
                                                   {
                                                      loop16:
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc4_.x * _loc4_.x);
                                                            §§push(_loc4_.y * _loc4_.y);
                                                            if(_loc9_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc9_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(Number(§§pop()));
                                                               if(!_loc9_)
                                                               {
                                                                  break loop7;
                                                               }
                                                               §§push(_loc4_.z);
                                                               §§push(_loc4_.z);
                                                               if(!_loc9_)
                                                               {
                                                                  break loop16;
                                                               }
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc10_)
                                                               {
                                                                  break loop13;
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc10_)
                                                               {
                                                                  break loop12;
                                                               }
                                                               §§push(Number(§§pop()));
                                                               §§push(1600);
                                                               if(_loc9_)
                                                               {
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     §§push(_loc4_.x * _loc4_.x);
                                                                     §§push(_loc4_.y * _loc4_.y);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr0300);
                                                                  }
                                                               }
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            §§push(_loc4_.z);
                                                            if(_loc9_)
                                                            {
                                                               break loop13;
                                                            }
                                                            break loop11;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc9_)
                                                            {
                                                               _loc7_ = §§pop();
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(_loc7_);
                                                                  break loop12;
                                                               }
                                                               break loop10;
                                                            }
                                                            §§goto(addr016b);
                                                         }
                                                         §§goto(addr0186);
                                                      }
                                                      §§push(§§pop() + §§pop() * §§pop());
                                                      break loop17;
                                                   }
                                                   §§push(_loc4_.z);
                                                   break loop16;
                                                }
                                                while(true)
                                                {
                                                   §§push(1);
                                                   if(_loc9_)
                                                   {
                                                      _loc8_ = §§pop() - §§pop();
                                                      §§push(_loc8_);
                                                      if(_loc10_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(0);
                                                      if(_loc10_)
                                                      {
                                                         break loop9;
                                                      }
                                                   }
                                                   if(§§pop() < §§pop())
                                                   {
                                                      §§push(_loc8_);
                                                      break;
                                                   }
                                                }
                                                addr0186:
                                                while(true)
                                                {
                                                   §§push(-§§pop());
                                                   if(_loc9_)
                                                   {
                                                      break loop8;
                                                   }
                                                   §§goto(addr01eb);
                                                }
                                                §§goto(addr01ec);
                                             }
                                             §§push(_loc8_);
                                             if(_loc9_)
                                             {
                                                break loop8;
                                             }
                                             break loop7;
                                          }
                                          §§goto(addr019a);
                                       }
                                       §§goto(addr01ae);
                                    }
                                    §§goto(addr01b2);
                                 }
                                 addr019a:
                                 §§push(§§pop() < 1e-10);
                                 if(_loc9_)
                                 {
                                    §§push(!§§pop());
                                    if(_loc9_)
                                    {
                                       if(§§pop())
                                       {
                                          addr01ae:
                                          §§push(_loc7_);
                                          break;
                                       }
                                       break loop6;
                                    }
                                 }
                                 §§goto(addr0301);
                              }
                              addr01b2:
                              if(§§pop() != 0)
                              {
                                 addr01ec:
                                 §§push(1 / Number(Math.sqrt(_loc7_)));
                                 if(_loc9_)
                                 {
                                    addr01eb:
                                    §§push(Number(§§pop()));
                                 }
                                 _loc7_ = §§pop();
                                 break loop2;
                              }
                              if(!_loc9_)
                              {
                                 break loop1;
                              }
                              _loc4_.x = 1;
                              _loc4_.y = 0;
                           }
                           _loc4_.z = 0;
                           if(_loc9_)
                           {
                              break;
                           }
                           break loop2;
                        }
                        §§goto(addr0215);
                     }
                     _loc4_.x *= _loc7_;
                     _loc4_.y *= _loc7_;
                     break;
                  }
                  §§push(_loc4_);
                  §§push(_loc4_.z);
                  if(_loc9_)
                  {
                     §§push(§§pop() * _loc7_);
                  }
                  §§pop().z = §§pop();
                  addr0215:
                  _loc5_ = _loc4_;
                  while(true)
                  {
                     if(!_loc10_)
                     {
                        if(_loc5_ == null)
                        {
                           if(!_loc9_)
                           {
                              break;
                           }
                           _loc5_ = new Point3D(0,0,0);
                        }
                        _loc5_.x = _loc4_.x * 40;
                        if(_loc9_)
                        {
                           _loc5_.y = _loc4_.y * 40;
                           if(_loc10_)
                           {
                              break;
                           }
                        }
                     }
                     §§push(_loc5_);
                     §§push(_loc4_.z);
                     if(_loc9_)
                     {
                        §§push(§§pop() * 40);
                     }
                     §§pop().z = §§pop();
                     break;
                  }
                  _loc5_ = transform.§<!C§();
                  _loc6_ = _loc4_;
                  loop4:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc9_)
                        {
                           if(_loc6_ != null)
                           {
                              break;
                           }
                           if(_loc10_)
                           {
                              break loop4;
                           }
                        }
                        _loc6_ = new Point3D(0,0,0);
                        break;
                     }
                     _loc6_.x = _loc5_.x + _loc4_.x;
                     if(_loc9_)
                     {
                        _loc6_.y = _loc5_.y + _loc4_.y;
                        if(!_loc10_)
                        {
                           §§push(_loc6_);
                           §§push(_loc5_.z);
                           if(_loc9_)
                           {
                              §§push(§§pop() + _loc4_.z);
                              if(_loc9_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           §§pop().z = §§pop();
                           if(!_loc10_)
                           {
                              break;
                           }
                        }
                     }
                     §§goto(addr0300);
                  }
                  _loc3_.transform.§"w§(_loc4_);
                  addr0301:
                  return false;
                  addr0300:
               }
               else
               {
                  §§push(sticky);
                  if(!_loc9_)
                  {
                     break;
                  }
               }
            }
            while(true)
            {
               if(§§pop())
               {
                  if(_loc9_)
                  {
                     §@!$§(param1);
                     if(_loc10_)
                     {
                        break;
                     }
                     param2.x = 0;
                     if(_loc10_)
                     {
                        break;
                     }
                  }
                  param2.y = 0;
                  param2.z = 0;
               }
               §0c§(param1);
               break;
            }
            return true;
         }
         return §§pop();
      }
      
      public function §0c§(param1:§%!§) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = null as §[C§;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc3_)
                  {
                     §§push(false);
                     if(_loc3_)
                     {
                        break;
                     }
                     §§push(param1.§-J§);
                     if(_loc4_)
                     {
                        §§push(!§§pop());
                     }
                     if(!§§pop())
                     {
                        break loop1;
                     }
                     if(!_loc4_)
                     {
                        break loop1;
                     }
                     §§pop();
                     if(_loc3_)
                     {
                        break loop0;
                     }
                  }
                  §§push(param1 is §[C§);
                  if(_loc4_)
                  {
                     break;
                  }
                  break loop1;
               }
               §§push(Boolean(§§pop()));
               break;
            }
            if(§§pop())
            {
               break;
            }
            §§goto(addr0091);
         }
         _loc2_ = param1;
         if(!_loc3_)
         {
            if(_loc2_.§@!B§ != null)
            {
               if(_loc4_)
               {
                  _loc2_.§@!B§.§^!F§(_loc2_);
               }
            }
         }
         addr0091:
      }
      
      public function §`&§(param1:§%!§) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = null as §+`§;
         §§push(0);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Vector.<§+`§> = §"!a§;
         while(true)
         {
            if(!_loc5_)
            {
               while(_loc2_ < int(_loc3_.length))
               {
                  _loc4_ = _loc3_[_loc2_];
                  if(_loc6_)
                  {
                     _loc2_++;
                     if(_loc6_)
                     {
                        §§push(_loc4_.§+i§());
                        if(_loc6_)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc6_)
                           {
                              §§push(!§§pop());
                           }
                        }
                        if(§§pop())
                        {
                           if(!_loc5_)
                           {
                              _loc4_.§#!Y§(param1);
                           }
                        }
                     }
                  }
               }
               if(_loc5_)
               {
                  break;
               }
            }
            §"!a§.length = 0;
            break;
         }
      }
   }
}

