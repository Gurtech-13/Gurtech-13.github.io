package §!9§
{
   import §%!Q§.§ !>§;
   import §%!Q§.§+#§;
   import §%!Q§.§>K§;
   import §3!b§.Batteries;
   import §3!b§.Cutscenes;
   import §3!b§.Truancy;
   import §>T§.§[C§;
   import §>T§.§^d§;
   import com.player03.run3.character.§!>§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.character.§0v§;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.§1G§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.menu.§ L§;
   import flash.display.MovieClip;
   import flash.geom.Point;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   import motion.easing.IEasing;
   import openfl.Lib;
   
   public class §'=§ implements §^d§
   {
      
      public static var init__:Boolean;
      
      public static var §!!E§:IEasing;
      
      public var §3C§:Point3D;
      
      public var §^5§:Point3D;
      
      public var path:§+#§;
      
      public var §`$§:Point3D;
      
      public var §^Z§:Object;
      
      public var §?x§:Object;
      
      public function §'=§(param1:§+#§)
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc4_:* = 0;
         var _loc5_:* = null as Vector.<int>;
         var _loc6_:* = null;
         var _loc7_:* = 0;
         if(_loc9_)
         {
            §?x§ = null;
            if(_loc9_)
            {
               §^Z§ = null;
               if(!_loc8_)
               {
                  path = param1;
                  if(_loc9_)
                  {
                     §^5§ = new Point3D(0,0,0);
                     if(_loc9_)
                     {
                        §3C§ = new Point3D(0,0,0);
                     }
                  }
               }
            }
         }
         §§push(false);
         if(!_loc8_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(false);
         if(!_loc8_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(param1 == null)
            {
               §§push(true);
               if(!_loc9_)
               {
                  break;
               }
               _loc2_ = §§pop();
            }
            else
            {
               §§push(0);
               if(_loc9_)
               {
                  §§push(int(§§pop()));
               }
               _loc4_ = §§pop();
               _loc5_ = param1.§@!-§;
               if(!_loc8_)
               {
                  loop0:
                  while(true)
                  {
                     §§push(_loc4_);
                     §§push(_loc5_.length);
                     if(!_loc8_)
                     {
                        §§push(int(§§pop()));
                     }
                     if(§§pop() >= §§pop())
                     {
                        break;
                     }
                     §§push(_loc5_[_loc4_]);
                     if(_loc9_)
                     {
                        §§push(int(§§pop()));
                     }
                     _loc6_ = §§pop();
                     while(true)
                     {
                        if(_loc9_)
                        {
                           _loc4_++;
                           loop3:
                           while(true)
                           {
                              loop4:
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(_loc9_)
                                    {
                                       §§push(int(_loc6_));
                                       if(!_loc9_)
                                       {
                                          break;
                                       }
                                       _loc7_ = §§pop();
                                       if(!_loc9_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(true);
                                       if(_loc8_)
                                       {
                                          break loop4;
                                       }
                                       if(_loc7_ == 2)
                                       {
                                          break loop3;
                                       }
                                       §§pop();
                                    }
                                    §§push(_loc7_);
                                    break;
                                 }
                                 §§push(§§pop() == 0);
                                 break;
                              }
                              §§push(Boolean(§§pop()));
                              break;
                           }
                           if(!§§pop())
                           {
                              §§push(true);
                              if(!_loc8_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              break;
                           }
                        }
                        §§push(true);
                        if(!_loc9_)
                        {
                           break;
                        }
                        _loc2_ = §§pop();
                        continue loop0;
                     }
                     _loc3_ = §§pop();
                  }
               }
            }
            §§push(false);
            break;
         }
         if(_loc2_)
         {
            while(true)
            {
               if(_loc9_)
               {
                  §§pop();
                  §§push(_loc3_);
                  if(_loc8_)
                  {
                     break;
                  }
               }
               §§push(Boolean(§§pop()));
               break;
            }
         }
         if(!§§pop())
         {
            if(_loc2_)
            {
               if(!_loc8_)
               {
                  §`$§ = new Point3D(1,0,0);
                  if(_loc9_)
                  {
                  }
               }
            }
            else
            {
               §`$§ = new Point3D(0,1,0);
            }
         }
      }
      
      public function update(param1:§[C§, param2:Number) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc3_:* = NaN;
         var _loc4_:* = null as Point3D;
         var _loc5_:* = null as Point3D;
         var _loc6_:* = null as Point3D;
         var _loc7_:* = null as Point3D;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(!_loc8_)
               {
                  while(true)
                  {
                     §§push(param1.§5!J§);
                     if(!_loc8_)
                     {
                        if(§§pop() >= 1.1)
                        {
                           if(!_loc8_)
                           {
                              param1.§5!J§ = -1;
                              if(!_loc8_)
                              {
                                 addr005a:
                                 param1.transform.reset();
                                 if(!_loc8_)
                                 {
                                    break loop0;
                                 }
                                 break loop1;
                              }
                           }
                           break loop0;
                        }
                        §§push(§'=§.§!!E§);
                        §§push(param1.§5!J§);
                        if(_loc9_)
                        {
                           §§push(§§pop() / 1.1);
                        }
                        §§push(§§pop().calculate(§§pop()));
                        if(_loc8_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     if(_loc9_)
                     {
                        §§push(Number(§§pop()));
                     }
                     break;
                  }
                  _loc3_ = §§pop();
                  break;
               }
               §§goto(addr005a);
            }
            _loc4_ = param1.transform.§<!C§();
            _loc5_ = §^5§;
            _loc6_ = param1.transform.§%!7§;
            _loc7_ = _loc4_;
            if(!_loc9_)
            {
               break;
            }
            while(true)
            {
               if(_loc7_ == null)
               {
                  if(!_loc9_)
                  {
                     break;
                  }
                  _loc7_ = new Point3D(0,0,0);
               }
               _loc7_.x = _loc5_.x + _loc3_ * (_loc6_.x - _loc5_.x);
               if(!_loc8_)
               {
                  _loc7_.y = _loc5_.y + _loc3_ * (_loc6_.y - _loc5_.y);
                  if(!_loc8_)
                  {
                     break;
                  }
               }
               addr0165:
               param1.transform.§"w§(_loc4_);
               break loop0;
            }
            while(true)
            {
               §§push(_loc7_);
               §§push(_loc5_.z);
               if(!_loc8_)
               {
                  §§push(_loc3_);
                  if(!_loc8_)
                  {
                     §§push(_loc6_.z);
                     if(_loc9_)
                     {
                        §§push(§§pop() - _loc5_.z);
                     }
                     §§push(§§pop() * §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc8_)
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
               break;
            }
            §§goto(addr0165);
         }
      }
      
      public function start(param1:§[C§, param2:Point3D, param3:Point3D) : void
      {
         §§push(false);
         var _loc17_:Boolean = true;
         var _loc18_:* = §§pop();
         var _loc5_:* = null as Point3D;
         var _loc6_:* = null as Point3D;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc13_:* = null;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         var _loc4_:Point3D = §^5§;
         _loc5_ = param1.transform.§<!C§();
         if(!_loc18_)
         {
            _loc4_.x = _loc5_.x;
            while(true)
            {
               if(_loc17_)
               {
                  _loc4_.y = _loc5_.y;
                  if(_loc18_)
                  {
                     break;
                  }
               }
               _loc4_.z = _loc5_.z;
               break;
            }
         }
         _loc4_ = param1.transform.§<!C§();
         loop1:
         while(true)
         {
            if(_loc17_)
            {
               if(§`$§ != null)
               {
                  §4!R§.§@!M§(param1.transform.§+n§(),§`$§,§3C§);
                  if(!_loc18_)
                  {
                     _loc4_.x = param2.x;
                     _loc4_.y = param2.y;
                     if(_loc18_)
                     {
                        addr02f0:
                        _loc4_.y = 0;
                        addr02f6:
                        _loc4_.z = param2.z;
                        break;
                     }
                     _loc4_.z = param2.z;
                  }
                  _loc4_.x += param3.x * 0.001;
                  _loc4_.y += param3.y * 0.001;
                  _loc5_ = §3C§;
                  _loc6_ = _loc4_;
                  if(_loc6_ == null)
                  {
                     _loc6_ = new Point3D(0,0,0);
                  }
                  loop2:
                  while(true)
                  {
                     loop3:
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
                                 loop31:
                                 while(true)
                                 {
                                    loop32:
                                    while(true)
                                    {
                                       §§push(_loc4_.x * _loc5_.x);
                                       if(_loc17_)
                                       {
                                          loop33:
                                          while(true)
                                          {
                                             loop34:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc4_.y * _loc5_.y);
                                                   if(!_loc18_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc18_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(Number(§§pop()));
                                                      §§push(_loc4_.z);
                                                      §§push(_loc5_.z);
                                                      if(_loc18_)
                                                      {
                                                         break loop34;
                                                      }
                                                      _loc7_ = §§pop() + §§pop() * §§pop();
                                                      if(!_loc17_)
                                                      {
                                                         break loop31;
                                                      }
                                                      _loc6_.x = _loc4_.x - _loc7_ * _loc5_.x;
                                                      _loc6_.y = _loc4_.y - _loc7_ * _loc5_.y;
                                                      §§push(_loc6_);
                                                      §§push(_loc4_.z);
                                                      if(!_loc18_)
                                                      {
                                                         §§push(_loc7_);
                                                         if(!_loc18_)
                                                         {
                                                            §§push(§§pop() * _loc5_.z);
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                      }
                                                      §§pop().z = §§pop();
                                                      if(!_loc17_)
                                                      {
                                                         break loop29;
                                                      }
                                                      §§push(_loc4_.x * _loc4_.x);
                                                      if(_loc18_)
                                                      {
                                                         break loop33;
                                                      }
                                                      §§push(_loc4_.y * _loc4_.y);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      §§push(_loc4_.z);
                                                      if(_loc17_)
                                                      {
                                                         §§push(_loc4_.z);
                                                         break loop34;
                                                      }
                                                      §§goto(addr0239);
                                                   }
                                                }
                                                §§push(0);
                                                if(_loc17_)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      _loc4_.x = 0;
                                                      _loc4_.y = 0;
                                                      _loc4_.z = 0;
                                                      break loop32;
                                                   }
                                                   §§push(1 / Number(Math.sqrt(_loc7_)));
                                                   break loop33;
                                                }
                                                break loop28;
                                             }
                                             loop36:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc18_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc18_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc17_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                         _loc7_ = §§pop();
                                                         if(_loc18_)
                                                         {
                                                            break loop30;
                                                         }
                                                         §§push(_loc7_);
                                                         §§push(1);
                                                         if(_loc18_)
                                                         {
                                                            break loop28;
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc17_)
                                                         {
                                                            _loc8_ = §§pop();
                                                            if(_loc18_)
                                                            {
                                                               break loop29;
                                                            }
                                                            §§push(_loc8_);
                                                            §§push(0);
                                                            if(!_loc17_)
                                                            {
                                                               break loop28;
                                                            }
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               §§push(_loc8_);
                                                               if(!_loc18_)
                                                               {
                                                                  break;
                                                               }
                                                               break loop2;
                                                            }
                                                            §§push(_loc8_);
                                                            if(_loc18_)
                                                            {
                                                               break loop3;
                                                            }
                                                         }
                                                      }
                                                      §§push(-§§pop());
                                                      if(!_loc18_)
                                                      {
                                                         break;
                                                      }
                                                      break loop36;
                                                   }
                                                }
                                                addr0239:
                                                §§push(§§pop() < §§pop());
                                                if(!_loc18_)
                                                {
                                                   §§push(!§§pop());
                                                }
                                                if(§§pop())
                                                {
                                                   if(_loc17_)
                                                   {
                                                      §§push(_loc7_);
                                                      break loop35;
                                                   }
                                                }
                                                break loop32;
                                             }
                                          }
                                          §§push(Number(§§pop()));
                                          if(_loc18_)
                                          {
                                             break loop2;
                                          }
                                       }
                                       _loc7_ = §§pop();
                                       if(_loc17_)
                                       {
                                          _loc4_.x *= _loc7_;
                                          if(_loc18_)
                                          {
                                             break loop1;
                                          }
                                       }
                                       _loc4_.y *= _loc7_;
                                       if(!_loc18_)
                                       {
                                          break loop30;
                                       }
                                       §§goto(addr032c);
                                    }
                                    §§goto(addr02c9);
                                 }
                                 §§goto(addr031a);
                              }
                              §§push(_loc4_);
                              §§push(_loc4_.z);
                              if(_loc17_)
                              {
                                 §§push(§§pop() * _loc7_);
                              }
                              §§pop().z = §§pop();
                              if(!_loc18_)
                              {
                                 addr02c9:
                                 _loc4_.x *= 0.2;
                                 if(!_loc18_)
                                 {
                                    _loc4_.y *= 0.2;
                                    break loop1;
                                 }
                                 break;
                              }
                              §§goto(addr032c);
                           }
                           §§goto(addr0332);
                        }
                        §§goto(addr0321);
                     }
                     §§push(0);
                     if(!_loc17_)
                     {
                        break loop28;
                     }
                     if(§§pop() >= §§pop())
                     {
                        §§push(_loc4_.z);
                        break;
                     }
                     param1.§5!J§ = -1;
                     if(!_loc18_)
                     {
                        addr031a:
                        return;
                     }
                     §§goto(addr032c);
                  }
                  addr0321:
                  if(§§pop() > 1)
                  {
                     if(!_loc18_)
                     {
                        addr032c:
                        _loc4_.z = 1;
                     }
                  }
                  addr0332:
                  var _loc9_:§ !W§ = param1.level;
                  §§push(_loc9_);
                  §§push(param1.§'j§());
                  if(_loc17_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc10_:TunnelSection = §§pop().§]!#§(§§pop(),false,true);
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        while(true)
                        {
                           if(_loc17_)
                           {
                              if(§^Z§ == null)
                              {
                                 §§push(1612);
                                 if(!_loc18_)
                                 {
                                    break loop5;
                                 }
                                 break;
                              }
                              if(!_loc17_)
                              {
                                 break loop4;
                              }
                           }
                           §§push(Number(§^Z§));
                           if(!_loc18_)
                           {
                              break;
                           }
                           break loop5;
                        }
                        §§goto(addr03af);
                     }
                     §§push(§§pop() + _loc10_.§0!'§);
                     if(_loc17_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc17_)
                        {
                           break loop27;
                        }
                        addr03af:
                        _loc7_ = §§pop();
                        break;
                     }
                     break loop27;
                  }
                  while(true)
                  {
                     §§push(_loc9_);
                     §§push(param1.§'j§());
                     if(_loc17_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc18_)
                        {
                           break;
                        }
                     }
                     §§push(§§pop() + _loc7_);
                     if(!_loc18_)
                     {
                        §§push(Number(§§pop()));
                     }
                     break;
                  }
                  var _loc11_:TunnelSection = §§pop().§]!#§(§§pop(),true);
                  _loc5_ = _loc4_;
                  _loc6_ = param1.transform.§%!7§;
                  var _loc12_:Point3D = _loc5_;
                  loop7:
                  while(true)
                  {
                     if(_loc12_ == null)
                     {
                        if(!_loc17_)
                        {
                           break;
                        }
                        _loc12_ = new Point3D(0,0,0);
                     }
                     _loc12_.x = _loc6_.x + _loc4_.x * _loc7_;
                     loop8:
                     while(true)
                     {
                        loop9:
                        while(true)
                        {
                           if(_loc17_)
                           {
                              _loc12_.y = _loc6_.y + _loc4_.y * _loc7_;
                              §§push(_loc12_);
                              §§push(_loc6_.z);
                              if(_loc17_)
                              {
                                 §§push(_loc4_.z);
                                 if(_loc17_)
                                 {
                                    §§push(§§pop() * _loc7_);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc18_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§pop().z = §§pop();
                              loop16:
                              while(true)
                              {
                                 if(!_loc18_)
                                 {
                                    if(_loc11_ != null)
                                    {
                                       break loop7;
                                    }
                                    §§goto(addr0658);
                                 }
                                 addr04a0:
                                 if(§`$§ == null)
                                 {
                                    continue loop11;
                                 }
                                 §§push(_loc4_.z);
                                 if(!_loc18_)
                                 {
                                    _loc8_ = §§pop();
                                    loop17:
                                    while(true)
                                    {
                                       loop18:
                                       while(true)
                                       {
                                          loop19:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                if(_loc17_)
                                                {
                                                   if(§?x§ != null)
                                                   {
                                                      if(!_loc17_)
                                                      {
                                                         break;
                                                      }
                                                      _loc13_ = §?x§;
                                                      if(!_loc18_)
                                                      {
                                                         break loop8;
                                                      }
                                                      continue loop11;
                                                   }
                                                   §§push(_loc11_.§0!'§);
                                                   if(_loc18_)
                                                   {
                                                      break loop19;
                                                   }
                                                   §§push(0.9);
                                                   if(_loc18_)
                                                   {
                                                      break loop18;
                                                   }
                                                   _loc14_ = §§pop() * §§pop();
                                                   if(!_loc17_)
                                                   {
                                                      break loop17;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   loop22:
                                                   while(true)
                                                   {
                                                      loop23:
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc11_.tileWidth);
                                                            if(!_loc18_)
                                                            {
                                                               §§push(1.5);
                                                               if(_loc17_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc17_)
                                                                  {
                                                                     break loop9;
                                                                  }
                                                                  _loc15_ = Number(§§pop());
                                                                  if(_loc17_)
                                                                  {
                                                                     break loop16;
                                                                  }
                                                                  §§goto(addr056e);
                                                               }
                                                               §§goto(addr05f2);
                                                            }
                                                            addr0555:
                                                            §§push(Number(§§pop()));
                                                            if(_loc17_)
                                                            {
                                                               break loop23;
                                                            }
                                                            break loop22;
                                                         }
                                                         §§goto(addr060e);
                                                      }
                                                      _loc16_ = §§pop();
                                                      §§push(_loc14_);
                                                      §§push(_loc16_);
                                                      if(_loc17_)
                                                      {
                                                         if(§§pop() < §§pop())
                                                         {
                                                            addr056e:
                                                            _loc13_ = _loc14_;
                                                            break loop8;
                                                         }
                                                         §§push(_loc16_);
                                                         if(_loc17_)
                                                         {
                                                            _loc13_ = §§pop();
                                                            break loop8;
                                                         }
                                                         addr0622:
                                                         _loc15_ = §§pop();
                                                         §§goto(addr0624);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr05db);
                                                      }
                                                   }
                                                   §§goto(addr05e2);
                                                }
                                                §§goto(addr0620);
                                             }
                                             §§goto(addr05e5);
                                          }
                                          §§goto(addr062d);
                                       }
                                       §§goto(addr062f);
                                    }
                                    §§goto(addr0612);
                                 }
                                 while(true)
                                 {
                                    §§push(100);
                                    if(!_loc18_)
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          §§push(_loc15_);
                                          if(!_loc18_)
                                          {
                                             break loop23;
                                          }
                                          break loop22;
                                       }
                                       §§push(100);
                                       if(!_loc17_)
                                       {
                                          break loop21;
                                       }
                                       §§goto(addr0555);
                                    }
                                    §§goto(addr060e);
                                 }
                                 §§goto(addr0624);
                              }
                              addr052c:
                              §§push(_loc15_);
                              if(!_loc18_)
                              {
                                 §§goto(addr0534);
                              }
                              else
                              {
                                 §§goto(addr05d3);
                              }
                           }
                           §§goto(addr056e);
                        }
                        §§goto(addr0622);
                     }
                     _loc11_.tunnelBounds.§@!>§(_loc5_,param1.transform.§%!7§,Number(_loc13_));
                     if(!_loc18_)
                     {
                        _loc5_.z = _loc8_;
                     }
                     loop10:
                     while(true)
                     {
                        loop11:
                        while(true)
                        {
                           while(true)
                           {
                              if(§?x§ != null)
                              {
                                 if(_loc17_)
                                 {
                                    _loc13_ = §?x§;
                                    if(!_loc18_)
                                    {
                                       break loop11;
                                    }
                                    §§goto(addr0658);
                                 }
                                 else
                                 {
                                    addr05e5:
                                    while(true)
                                    {
                                       §§push(_loc11_.tileWidth);
                                       if(_loc17_)
                                       {
                                          addr05f2:
                                          §§push(§§pop() * 1.5);
                                          if(_loc17_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          _loc14_ = §§pop();
                                          if(_loc18_)
                                          {
                                             break;
                                          }
                                          §§push(_loc14_);
                                          if(_loc18_)
                                          {
                                             break loop9;
                                          }
                                          if(§§pop() > 100)
                                          {
                                             addr0612:
                                             §§push(_loc14_);
                                             if(_loc17_)
                                             {
                                             }
                                             break loop9;
                                          }
                                          §§push(100);
                                       }
                                       addr0620:
                                       §§push(Number(§§pop()));
                                       break loop9;
                                    }
                                    addr0624:
                                    §§push(_loc8_);
                                    if(_loc18_)
                                    {
                                       break loop10;
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(_loc11_.§0!'§);
                                 if(!_loc18_)
                                 {
                                    addr05d3:
                                    §§push(0.9);
                                    if(!_loc17_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(_loc17_)
                                    {
                                       addr05e2:
                                       _loc8_ = Number(§§pop());
                                       §§goto(addr05e5);
                                    }
                                 }
                              }
                              addr062d:
                              §§push(_loc15_);
                              break;
                           }
                           addr062f:
                           if(§§pop() < §§pop())
                           {
                              §§push(_loc8_);
                              if(_loc17_)
                              {
                                 _loc13_ = §§pop();
                                 break;
                              }
                              break loop10;
                           }
                           §§push(_loc15_);
                           break loop10;
                        }
                        _loc11_.tunnelBounds.moveInside(_loc5_,Number(_loc13_),_loc5_);
                        addr0658:
                        _loc6_ = param1.transform.§%!7§;
                        loop13:
                        while(true)
                        {
                           if(!_loc18_)
                           {
                              _loc6_.x = _loc5_.x;
                              if(_loc18_)
                              {
                                 break;
                              }
                              _loc6_.y = _loc5_.y;
                              while(true)
                              {
                                 if(_loc17_)
                                 {
                                    _loc6_.z = _loc5_.z;
                                    if(!_loc17_)
                                    {
                                       break;
                                    }
                                 }
                                 if(path != null)
                                 {
                                    if(!_loc18_)
                                    {
                                       break;
                                    }
                                 }
                                 break loop13;
                              }
                           }
                           path.§]!%§(_loc9_,_loc10_,_loc11_,int(Math.round(_loc5_.x)),int(Math.round(_loc5_.y)),int(Math.round(_loc5_.z)));
                           break;
                        }
                        return;
                     }
                     _loc13_ = §§pop();
                     break loop11;
                  }
                  while(true)
                  {
                     §§push(_loc5_);
                     §§push(int(Math.round(_loc5_.z / _loc11_.tileWidth)) + 0.5);
                     if(_loc17_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc18_)
                        {
                           break;
                        }
                     }
                     §§push(§§pop() * _loc11_.tileWidth);
                     break;
                  }
                  §§pop().z = §§pop();
                  if(!_loc18_)
                  {
                     §§goto(addr04a0);
                  }
                  else
                  {
                     §§goto(addr052c);
                  }
               }
               else
               {
                  _loc4_.x = 0;
               }
               §§goto(addr02f0);
            }
            §§goto(addr02f6);
         }
         §§push(_loc4_.z);
         break loop3;
      }
      
      public function reset(param1:§[C§) : void
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc7_:* = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = null as Point;
         var _loc2_:§ !W§ = param1.level;
         var _loc3_:§6M§ = _loc2_.characters[0];
         var _loc4_:TunnelSection = _loc3_.§73§;
         while(true)
         {
            if(_loc13_)
            {
               if(_loc4_ != null)
               {
                  break;
               }
            }
            _loc4_ = _loc2_.§]!#§(_loc3_.transform.position.z,false);
            break;
         }
         var _loc5_:Point3D = param1.transform.§<!C§();
         var _loc6_:Point3D = _loc3_.transform.§2!§();
         loop1:
         while(true)
         {
            if(!_loc12_)
            {
               _loc5_.x = _loc6_.x;
               loop2:
               while(true)
               {
                  if(_loc13_)
                  {
                     _loc5_.y = _loc6_.y;
                     _loc5_.z = _loc6_.z;
                     if(_loc13_)
                     {
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              loop5:
                              while(true)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(§^Z§ != null)
                                       {
                                          if(!_loc13_)
                                          {
                                             break loop2;
                                          }
                                          §§push(_loc5_);
                                          §§push(_loc5_.z);
                                          if(_loc13_)
                                          {
                                             §§push(§§pop() + §^Z§);
                                          }
                                          §§pop().z = §§pop();
                                          addr00fe:
                                          if(_loc4_ == null)
                                          {
                                             break;
                                          }
                                          if(§^Z§ == null)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc5_);
                                                §§push(_loc5_.z);
                                                if(_loc13_)
                                                {
                                                   §§push(§§pop() + _loc4_.§0!'§);
                                                   if(_loc12_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                §§push(Number(§§pop()));
                                                break;
                                             }
                                             §§pop().z = §§pop();
                                             if(_loc12_)
                                             {
                                                break loop6;
                                             }
                                          }
                                          if(§?x§ != null)
                                          {
                                             _loc7_ = §?x§;
                                             if(!_loc12_)
                                             {
                                                break loop5;
                                             }
                                             break;
                                          }
                                          §§push(_loc4_.§0!'§);
                                          if(_loc13_)
                                          {
                                             §§push(0.9);
                                             if(!_loc13_)
                                             {
                                                break loop4;
                                             }
                                             §§push(§§pop() * §§pop());
                                             if(_loc12_)
                                             {
                                                break loop3;
                                             }
                                          }
                                          _loc8_ = §§pop();
                                       }
                                       else
                                       {
                                          §§push(_loc5_);
                                          §§push(_loc5_.z);
                                          if(_loc13_)
                                          {
                                             §§push(§§pop() + 600);
                                             if(!_loc12_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          §§pop().z = §§pop();
                                          if(_loc13_)
                                          {
                                             §§goto(addr00fe);
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(_loc4_.tileWidth);
                                          if(_loc13_)
                                          {
                                             _loc9_ = §§pop() * 1.5;
                                             if(!_loc13_)
                                             {
                                                break loop1;
                                             }
                                             §§push(_loc9_);
                                             if(!_loc13_)
                                             {
                                                break;
                                             }
                                             if(§§pop() > 100)
                                             {
                                                §§push(_loc9_);
                                                break;
                                             }
                                             §§push(100);
                                          }
                                          §§push(Number(§§pop()));
                                          break;
                                       }
                                       §§push(Number(§§pop()));
                                       if(!_loc12_)
                                       {
                                          _loc10_ = §§pop();
                                          §§push(_loc8_);
                                          if(!_loc12_)
                                          {
                                             break loop3;
                                          }
                                          §§goto(addr01da);
                                       }
                                       §§goto(addr01d1);
                                    }
                                    §§goto(addr01ed);
                                 }
                              }
                              _loc4_.tunnelBounds.moveInside(_loc5_,Number(_loc7_),_loc5_);
                              addr01ed:
                              if(path != null)
                              {
                                 _loc11_ = path.§4J§(param1);
                                 if(_loc13_)
                                 {
                                    if(_loc11_ != null)
                                    {
                                       while(true)
                                       {
                                          if(_loc13_)
                                          {
                                             _loc5_.x += _loc11_.x;
                                             if(_loc12_)
                                             {
                                                break;
                                             }
                                          }
                                          _loc5_.y += _loc11_.y;
                                          break;
                                       }
                                    }
                                 }
                              }
                              param1.transform.§"w§(_loc5_);
                              if(!_loc12_)
                              {
                                 break loop6;
                              }
                              break loop1;
                           }
                           if(§§pop() < §§pop())
                           {
                              §§push(_loc8_);
                              if(!_loc12_)
                              {
                                 addr01d1:
                                 _loc7_ = §§pop();
                                 break loop5;
                              }
                           }
                           else
                           {
                              §§push(_loc10_);
                           }
                           addr01da:
                           _loc7_ = §§pop();
                           break loop5;
                        }
                        §§push(_loc10_);
                        break loop4;
                     }
                  }
                  break loop6;
               }
            }
            param1.transform.reset();
            break;
         }
      }
   }
}

