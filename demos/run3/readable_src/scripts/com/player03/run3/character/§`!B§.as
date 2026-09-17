package com.player03.run3.character
{
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%G§.§ m§;
   import §&!J§.§7=§;
   import §-d§.§!!-§;
   import scenes.CrossingTheGap;
   import world3d.Entity3D;
   import §[^§.§!A§;
   import §[^§.§+`§;
   import stage.§7d§;
   import stage.StageActor;
   import com.player03.run3.level.Level;
   import com.player03.run3.save.§]k§;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   import motion.actuators.GenericActuator;
   import motion.easing.§!!W§;
   import motion.easing.IEasing;
   import unitsystem.§7o§;
   
   public class §`!B§ extends §'5§
   {
      
      public static var init__:Boolean;
      
      public static var offset:Point3D;
      
      public var target:§+`§;
      
      public var §?!J§:Number;
      
      public var §'@§:Number;
      
      public var §26§:Number;
      
      public var § !A§:Number;
      
      public var §]T§:Number;
      
      public function §`!B§(param1:CharacterBase)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               §'@§ = 0;
               if(!_loc2_)
               {
                  break;
               }
               §?!J§ = 0;
               §26§ = 0;
            }
            § !A§ = 0;
            §]T§ = 0;
            target = null;
            if(!_loc3_)
            {
               break;
            }
            §§goto(addr0086);
         }
         super(param1);
         if(_loc2_)
         {
            §>@§ = 16777215;
         }
         addr0086:
         length = -1;
      }
      
      override public function §-A§() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(§§findproperty(§'@§));
            §§push(§"@§.§;H§());
            if(_loc2_)
            {
               §§push(Number(§§pop()));
            }
            §§pop().§'@§ = §§pop();
         }
         var _loc1_:Point3D = §"@§.§[!G§.§>l§;
         while(true)
         {
            if(_loc2_)
            {
               §?!J§ = Number(Math.sqrt(_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y + _loc1_.z * _loc1_.z));
               if(_loc3_)
               {
                  break;
               }
            }
            if(§?!J§ < 300)
            {
               if(!_loc2_)
               {
                  break;
               }
               §?!J§ = 300;
               if(!_loc2_)
               {
                  break;
               }
            }
            §26§ = 0;
            if(!_loc3_)
            {
               break;
            }
            §§goto(addr00b7);
         }
         super.§-A§();
         addr00b7:
      }
      
      override public function §2!A§(param1:Number) : void
      {
         §§push(false);
         var _loc17_:Boolean = true;
         var _loc18_:* = §§pop();
         var _loc2_:* = null as Point3D;
         var _loc3_:* = null as Point3D;
         var _loc4_:* = null as Point3D;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         §§push(§?!J§);
         if(_loc18_)
         {
            break loop1;
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop48:
               while(true)
               {
                  while(true)
                  {
                     §§push(413);
                     if(!_loc18_)
                     {
                        if(§§pop() < §§pop())
                        {
                           if(_loc17_)
                           {
                              §§push(§§findproperty(§?!J§));
                              §§push(§?!J§);
                              if(!_loc18_)
                              {
                                 §§push(param1);
                                 if(_loc17_)
                                 {
                                    §§push(§§pop() * 250);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc17_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§pop().§?!J§ = §§pop();
                              if(_loc17_)
                              {
                                 break;
                              }
                              break loop48;
                           }
                           break;
                        }
                        §§push(§?!J§);
                        if(_loc18_)
                        {
                           break loop1;
                        }
                        §§push(530);
                        if(!_loc17_)
                        {
                           break loop0;
                        }
                     }
                     if(§§pop() < §§pop())
                     {
                        break loop48;
                     }
                     §?!J§ = 530;
                     break;
                  }
                  §§push(false);
                  if(!_loc18_)
                  {
                     if(target != null)
                     {
                        if(!_loc18_)
                        {
                           §§pop();
                           §§push(target.transform.position.z);
                           if(_loc17_)
                           {
                              §§push(§"@§.transform.position.z);
                              break loop0;
                           }
                           break loop1;
                        }
                     }
                     §§goto(addr012a);
                  }
                  §§goto(addr0129);
               }
               while(true)
               {
                  §§push(§§findproperty(§?!J§));
                  §§push(§?!J§);
                  if(_loc17_)
                  {
                     §§push(param1);
                     if(_loc17_)
                     {
                        §§push(§§pop() * 100);
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
               §§pop().§?!J§ = §§pop();
               break loop49;
            }
         }
         addr012a:
         §§push(§§pop() > §§pop());
         if(_loc17_)
         {
            addr0129:
            §§push(Boolean(§§pop()));
         }
         if(!§§pop())
         {
            §§push(§26§);
            break loop1;
         }
         _loc2_ = §"@§.transform.§2!§();
         _loc3_ = target.transform.§<!C§();
         _loc4_ = §`!B§.offset;
         loop2:
         while(true)
         {
            if(_loc17_)
            {
               while(true)
               {
                  if(_loc4_ == null)
                  {
                     if(!_loc17_)
                     {
                        break;
                     }
                     _loc4_ = new Point3D(0,0,0);
                  }
                  _loc4_.x = _loc2_.x - _loc3_.x;
                  if(!_loc18_)
                  {
                     break;
                  }
                  break loop2;
               }
            }
            _loc4_.y = _loc2_.y - _loc3_.y;
            if(_loc17_)
            {
               break;
            }
            _loc2_ = §`!B§.offset;
            loop4:
            while(true)
            {
               loop5:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc2_.x * _loc2_.x);
                     §§push(_loc2_.y * _loc2_.y);
                     if(_loc17_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!_loc17_)
                        {
                           break;
                        }
                        §§push(Number(§§pop()));
                        if(_loc18_)
                        {
                           break loop5;
                        }
                        §§push(_loc2_.z);
                        if(!_loc17_)
                        {
                           break loop4;
                        }
                     }
                     §§push(§§pop() * _loc2_.z);
                     if(_loc17_)
                     {
                        break loop4;
                     }
                     addr0231:
                     §§push(§§pop() < §§pop());
                     if(_loc17_)
                     {
                        §§push(!§§pop());
                     }
                     if(§§pop())
                     {
                        §§goto(addr0241);
                        §§push(_loc5_);
                        §§push(0);
                     }
                     §§goto(addr02a3);
                  }
                  §§goto(addr0231);
               }
               _loc5_ = Number(§§pop());
               while(true)
               {
                  if(!_loc18_)
                  {
                     §§push(_loc5_);
                     §§push(1);
                     if(_loc17_)
                     {
                        §§push(§§pop() - §§pop());
                        if(!_loc17_)
                        {
                           break loop6;
                        }
                        _loc6_ = Number(§§pop());
                        §§push(_loc6_);
                        §§push(0);
                        if(!_loc18_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              addr025c:
                              if(!_loc18_)
                              {
                                 §§push(_loc6_);
                                 break loop6;
                              }
                              _loc2_.z = 1;
                              break;
                           }
                           §§push(-_loc6_);
                           break loop6;
                        }
                     }
                     addr0241:
                     if(§§pop() == §§pop())
                     {
                        if(!_loc18_)
                        {
                           _loc2_.x = 0;
                           if(_loc18_)
                           {
                              break;
                           }
                           _loc2_.y = 0;
                        }
                        §§goto(addr025c);
                     }
                     else
                     {
                        _loc5_ = 1 / Number(Math.sqrt(_loc5_));
                        if(_loc18_)
                        {
                           break;
                        }
                     }
                  }
                  _loc2_.x *= _loc5_;
                  if(!_loc18_)
                  {
                     _loc2_.y *= _loc5_;
                     §§push(_loc2_);
                     §§push(_loc2_.z);
                     if(!_loc18_)
                     {
                        §§push(§§pop() * _loc5_);
                     }
                     §§pop().z = §§pop();
                  }
                  break;
               }
               addr02a3:
               _loc2_ = §`!B§.offset;
               if(!_loc18_)
               {
                  §§push(§?!J§);
                  if(!_loc18_)
                  {
                     §§push(§§pop() * 0.17);
                     if(_loc17_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  _loc5_ = §§pop();
               }
               _loc3_ = §`!B§.offset;
               loop8:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc18_)
                     {
                        if(_loc3_ != null)
                        {
                           break;
                        }
                        if(!_loc17_)
                        {
                           break loop8;
                        }
                     }
                     _loc3_ = new Point3D(0,0,0);
                     break;
                  }
                  _loc3_.x = _loc2_.x * _loc5_;
                  if(_loc17_)
                  {
                     break;
                  }
                  continue loop44;
               }
               _loc3_.y = _loc2_.y * _loc5_;
               if(!_loc18_)
               {
                  §§push(_loc3_);
                  §§push(_loc2_.z);
                  if(_loc17_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().z = §§pop();
                  if(_loc17_)
                  {
                     target.§1!X§(§`!B§.offset.x,§`!B§.offset.y,§`!B§.offset.z);
                  }
               }
               _loc2_ = §`!B§.offset;
               loop10:
               while(true)
               {
                  loop11:
                  while(true)
                  {
                     loop44:
                     while(true)
                     {
                        loop45:
                        while(true)
                        {
                           §§push(_loc2_.x * _loc2_.x);
                           §§push(_loc2_.y * _loc2_.y);
                           if(_loc17_)
                           {
                              loop46:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc18_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc18_)
                                       {
                                          break loop10;
                                       }
                                       §§push(_loc2_.z);
                                       if(_loc17_)
                                       {
                                          §§push(§§pop() * _loc2_.z);
                                          if(_loc18_)
                                          {
                                             break;
                                          }
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!_loc18_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc17_)
                                          {
                                             _loc5_ = §§pop();
                                             if(!_loc17_)
                                             {
                                                break loop11;
                                             }
                                             §§push(_loc5_);
                                             if(!_loc18_)
                                             {
                                                §§push(1);
                                                if(_loc18_)
                                                {
                                                   break loop46;
                                                }
                                                _loc6_ = §§pop() - §§pop();
                                                §§push(_loc6_);
                                                if(!_loc17_)
                                                {
                                                   break loop45;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§push(0);
                                    if(!_loc18_)
                                    {
                                       break loop46;
                                    }
                                    break loop44;
                                 }
                              }
                              if(§§pop() >= §§pop())
                              {
                                 if(!_loc17_)
                                 {
                                    break loop11;
                                 }
                                 §§push(_loc6_);
                              }
                              else
                              {
                                 §§push(-_loc6_);
                              }
                              §§push(1e-10);
                              break loop47;
                           }
                           §§push(§§pop() < §§pop());
                           if(_loc17_)
                           {
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              §§push(_loc5_);
                              if(_loc17_)
                              {
                                 break;
                              }
                              §§goto(addr043f);
                           }
                           §§goto(addr0468);
                        }
                        §§push(0);
                        break;
                     }
                     if(§§pop() == §§pop())
                     {
                        if(_loc17_)
                        {
                           _loc2_.x = 0;
                           if(_loc18_)
                           {
                              break;
                           }
                           _loc2_.y = 0;
                           _loc2_.z = 1;
                           if(!_loc17_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           §§goto(addr0447);
                        }
                     }
                     else
                     {
                        §§push(1 / Number(Math.sqrt(_loc5_)));
                        if(!_loc18_)
                        {
                           break loop10;
                        }
                        §§goto(addr043f);
                     }
                     §§goto(addr0468);
                  }
                  _loc2_.y *= _loc5_;
                  §§push(_loc2_);
                  §§push(_loc2_.z);
                  if(_loc17_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().z = §§pop();
                  §§goto(addr0468);
               }
               addr043f:
               _loc5_ = Number(§§pop());
               if(_loc17_)
               {
                  addr0447:
                  _loc2_.x *= _loc5_;
                  break loop11;
               }
               addr0468:
               _loc2_ = §`!B§.offset;
               if(_loc17_)
               {
                  §§push(§?!J§);
                  if(_loc17_)
                  {
                     §§push(-§§pop());
                     if(!_loc18_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  _loc5_ = §§pop();
               }
               _loc3_ = §`!B§.offset;
               if(_loc3_ == null)
               {
                  _loc3_ = new Point3D(0,0,0);
               }
               _loc3_.x = _loc2_.x * _loc5_;
               _loc3_.y = _loc2_.y * _loc5_;
               loop12:
               while(true)
               {
                  loop13:
                  while(true)
                  {
                     loop16:
                     while(true)
                     {
                        loop26:
                        while(true)
                        {
                           loop27:
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
                                             loop33:
                                             while(true)
                                             {
                                                loop34:
                                                while(true)
                                                {
                                                   loop35:
                                                   while(true)
                                                   {
                                                      loop36:
                                                      while(true)
                                                      {
                                                         if(_loc17_)
                                                         {
                                                            §§push(_loc3_);
                                                            §§push(_loc2_.z);
                                                            if(!_loc18_)
                                                            {
                                                               §§push(§§pop() * _loc5_);
                                                            }
                                                            §§pop().z = §§pop();
                                                            QuaternionUtils.rotateVector(§"@§.transform.§=0§.§<!A§(),§`!B§.offset,§`!B§.offset);
                                                            loop37:
                                                            while(true)
                                                            {
                                                               loop38:
                                                               while(true)
                                                               {
                                                                  loop41:
                                                                  while(true)
                                                                  {
                                                                     §§push(1);
                                                                     if(!_loc18_)
                                                                     {
                                                                        §§push(1.1);
                                                                        if(_loc17_)
                                                                        {
                                                                           loop42:
                                                                           while(true)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(§?!J§);
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(§?!J§);
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       break loop42;
                                                                                    }
                                                                                 }
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    §§push(250000);
                                                                                    break loop42;
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop() - §§pop());
                                                                              if(!_loc17_)
                                                                              {
                                                                                 break loop12;
                                                                              }
                                                                              §§push(Number(§§pop()));
                                                                              if(!_loc17_)
                                                                              {
                                                                                 break loop41;
                                                                              }
                                                                              _loc5_ = §§pop();
                                                                              if(_loc18_)
                                                                              {
                                                                                 break loop29;
                                                                              }
                                                                              §§push(_loc5_);
                                                                              if(_loc18_)
                                                                              {
                                                                                 break loop37;
                                                                              }
                                                                              §§push(0);
                                                                              if(_loc18_)
                                                                              {
                                                                                 break loop28;
                                                                              }
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 §§push(0);
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    break loop37;
                                                                                 }
                                                                                 break loop30;
                                                                              }
                                                                              §§push(_loc5_);
                                                                              §§push(1);
                                                                              if(_loc18_)
                                                                              {
                                                                                 break loop38;
                                                                              }
                                                                              if(§§pop() <= §§pop())
                                                                              {
                                                                                 §§push(_loc5_);
                                                                                 break loop37;
                                                                              }
                                                                              §§push(1);
                                                                              if(!_loc17_)
                                                                              {
                                                                                 break loop30;
                                                                              }
                                                                           }
                                                                           §§push(§§pop() / §§pop());
                                                                           if(_loc17_)
                                                                           {
                                                                              break loop43;
                                                                           }
                                                                        }
                                                                        break loop13;
                                                                     }
                                                                     §§push(Number(§§pop()));
                                                                     break loop37;
                                                                  }
                                                                  §§goto(addr065d);
                                                               }
                                                               §§push(§§pop() * param1);
                                                               if(_loc17_)
                                                               {
                                                                  §§push(1);
                                                                  if(_loc18_)
                                                                  {
                                                                     break loop20;
                                                                  }
                                                                  §§push(§§pop() * (§§pop() - §26§));
                                                                  if(!_loc17_)
                                                                  {
                                                                     break loop31;
                                                                  }
                                                                  §§goto(addr0651);
                                                                  §§push(_loc7_);
                                                               }
                                                               §§goto(addr065b);
                                                            }
                                                            _loc6_ = Number(§§pop());
                                                            §§push(_loc6_);
                                                            if(!_loc17_)
                                                            {
                                                               break loop27;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * _loc6_);
                                                               if(_loc17_)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  §§push(Number(§`!B§.offset.x));
                                                                  if(_loc18_)
                                                                  {
                                                                     break loop27;
                                                                  }
                                                                  _loc7_ = §§pop();
                                                                  _loc8_ = §>I§.get(§"@§);
                                                                  §§push(_loc7_);
                                                                  §§push(_loc8_);
                                                                  if(_loc18_)
                                                                  {
                                                                     break loop26;
                                                                  }
                                                                  §§push(0.3);
                                                                  if(_loc18_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                                  §§push(§"@§.§;H§());
                                                                  if(_loc18_)
                                                                  {
                                                                     break loop36;
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc17_)
                                                                  {
                                                                     break loop35;
                                                                  }
                                                                  _loc7_ = §§pop() + §§pop();
                                                                  if(_loc18_)
                                                                  {
                                                                     break loop34;
                                                                  }
                                                                  §§push(§"@§.§`!1§());
                                                                  if(_loc18_)
                                                                  {
                                                                     continue loop23;
                                                                  }
                                                               }
                                                               §§push(Number(§§pop()));
                                                               if(!_loc18_)
                                                               {
                                                                  _loc9_ = §§pop();
                                                                  if(_loc17_)
                                                                  {
                                                                     §§push(_loc9_);
                                                                     if(_loc17_)
                                                                     {
                                                                        §§push(12);
                                                                        if(_loc17_)
                                                                        {
                                                                           break loop38;
                                                                        }
                                                                        break loop23;
                                                                     }
                                                                     break loop32;
                                                                  }
                                                                  break loop29;
                                                               }
                                                               break loop33;
                                                            }
                                                            addr0651:
                                                            §§push(_loc9_);
                                                            if(_loc18_)
                                                            {
                                                               break loop16;
                                                            }
                                                            addr065d:
                                                            _loc7_ = §§pop() + §§pop() * (§§pop() - §§pop());
                                                            addr065b:
                                                            while(true)
                                                            {
                                                               §§push(§"@§);
                                                               §§push(_loc7_);
                                                               if(_loc17_)
                                                               {
                                                                  §§push(_loc6_);
                                                                  if(_loc17_)
                                                                  {
                                                                     §§push(§§pop() * (§`!B§.offset.x - _loc7_));
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc18_)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               §§push(Number(§§pop()));
                                                               break;
                                                            }
                                                            §§pop().§4!A§(§§pop());
                                                         }
                                                         §§push(§26§);
                                                         if(_loc17_)
                                                         {
                                                            §§push(0);
                                                            if(!_loc17_)
                                                            {
                                                               break loop23;
                                                            }
                                                            if(§§pop() <= §§pop())
                                                            {
                                                               if(_loc17_)
                                                               {
                                                                  §§push(§"@§.§<!B§());
                                                                  if(_loc18_)
                                                                  {
                                                                     break loop27;
                                                                  }
                                                                  §§push(Number(§§pop()));
                                                                  if(!_loc18_)
                                                                  {
                                                                     _loc10_ = Number(§§pop());
                                                                     if(_loc17_)
                                                                     {
                                                                        §§push(844);
                                                                        break loop30;
                                                                     }
                                                                     §§goto(addr06f4);
                                                                  }
                                                                  §§goto(addr0796);
                                                               }
                                                            }
                                                            §§goto(addr07f9);
                                                         }
                                                         §§goto(addr07b2);
                                                      }
                                                      §§goto(addr072e);
                                                   }
                                                   §§goto(addr0766);
                                                }
                                                §§goto(addr0780);
                                             }
                                             §§goto(addr07ab);
                                          }
                                          §§goto(addr06d7);
                                       }
                                       §§goto(addr07bf);
                                    }
                                    §§push(param1);
                                    break loop13;
                                 }
                                 §§goto(addr06d9);
                              }
                              §§goto(addr0706);
                           }
                           §§goto(addr06cf);
                        }
                        §§goto(addr07ea);
                     }
                     §§push(§§pop() * §§pop());
                     if(!_loc17_)
                     {
                        break loop21;
                     }
                     §§goto(addr075e);
                  }
                  addr06cf:
                  §§push(§§pop() * §§pop());
                  if(!_loc17_)
                  {
                     break;
                  }
                  addr06d7:
                  _loc11_ = §§pop();
                  addr06d9:
                  loop17:
                  while(true)
                  {
                     loop18:
                     while(true)
                     {
                        loop19:
                        while(true)
                        {
                           loop20:
                           while(true)
                           {
                              loop21:
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
                                          §§push(§`!B§.offset.x / 250);
                                          if(_loc17_)
                                          {
                                             _loc12_ = §§pop();
                                             if(!_loc17_)
                                             {
                                                break;
                                             }
                                             §§push(_loc12_);
                                             if(!_loc18_)
                                             {
                                                §§push(0);
                                                if(_loc18_)
                                                {
                                                   break loop23;
                                                }
                                                if(§§pop() >= §§pop())
                                                {
                                                   §§push(_loc12_);
                                                   if(_loc18_)
                                                   {
                                                      break loop22;
                                                   }
                                                   addr071f:
                                                   _loc13_ = §§pop();
                                                   §§push(_loc10_);
                                                   §§push(_loc11_);
                                                   §§push(_loc13_);
                                                   if(!_loc17_)
                                                   {
                                                      break loop21;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(1);
                                                      if(!_loc18_)
                                                      {
                                                         if(§§pop() < §§pop())
                                                         {
                                                            §§push(_loc13_);
                                                         }
                                                         else
                                                         {
                                                            §§push(1);
                                                            if(!_loc17_)
                                                            {
                                                               break loop20;
                                                            }
                                                            §§push(Number(§§pop()));
                                                            if(_loc18_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         §§push(0);
                                                      }
                                                      §§push(§§pop() - _loc11_);
                                                      break loop16;
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc18_)
                                                   {
                                                      break loop19;
                                                   }
                                                   §§push(Number(§§pop()));
                                                   if(_loc18_)
                                                   {
                                                      break loop18;
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc18_)
                                                   {
                                                      break loop12;
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(-_loc12_);
                                                   if(!_loc18_)
                                                   {
                                                      §§goto(addr071f);
                                                   }
                                                }
                                             }
                                             §§push(Number(§§pop()));
                                             if(!_loc17_)
                                             {
                                                break loop17;
                                             }
                                          }
                                          _loc10_ = §§pop();
                                          addr0780:
                                          §§push(§"@§.§<!B§());
                                          if(!_loc18_)
                                          {
                                             break loop12;
                                          }
                                          §§goto(addr07ed);
                                       }
                                       §§goto(addr0808);
                                    }
                                    §§goto(addr07d4);
                                 }
                                 §§goto(addr07eb);
                              }
                              §§goto(addr07de);
                           }
                           §§goto(addr07c1);
                        }
                        §§goto(addr07df);
                     }
                     §§goto(addr07d5);
                  }
                  §§goto(addr07aa);
               }
               while(true)
               {
                  §§push(Number(§§pop()));
                  if(!_loc18_)
                  {
                     addr0796:
                     _loc14_ = §§pop();
                     §§push(_loc6_);
                     if(_loc18_)
                     {
                        break;
                     }
                     §§push(§§pop() + 0.2);
                     if(_loc17_)
                     {
                        addr07aa:
                        §§push(Number(§§pop()));
                     }
                  }
                  addr07ed:
                  addr07ab:
                  §§push(Number(§§pop()));
                  if(!_loc18_)
                  {
                     addr07b2:
                     _loc15_ = §§pop();
                     addr07ea:
                     §§push(_loc14_);
                     §§push(_loc15_);
                     if(_loc17_)
                     {
                        addr07c1:
                        addr07bf:
                        while(true)
                        {
                           if(§§pop() < 1)
                           {
                              §§push(_loc15_);
                              if(!_loc17_)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              addr07d4:
                              §§push(1);
                           }
                           addr07e9:
                           addr07d5:
                           §§push(0.8);
                           if(!_loc18_)
                           {
                              addr07de:
                              §§push(§§pop() * §§pop());
                              break;
                           }
                        }
                        addr07df:
                        §§goto(addr07e9);
                        §§push(§§pop() * §§pop());
                     }
                     §§push(§§pop() + §§pop());
                     break;
                  }
                  _loc10_ = §§pop();
                  §"@§.§%8§(_loc10_);
                  addr07f9:
                  §"@§.§'!K§(§`!B§.offset.z);
                  addr0808:
                  §]T§ = §`!B§.offset.x * 1.1;
                  § !A§ = §`!B§.offset.y;
               }
               addr07eb:
               §§goto(addr07ed);
            }
            §§push(§§pop() + §§pop());
            break loop5;
         }
         §§push(_loc4_);
         §§push(_loc2_.z);
         if(!_loc18_)
         {
            §§push(§§pop() - _loc3_.z);
         }
         §§pop().z = §§pop();
         continue loop5;
      }
      
      override public function §2U§() : § m§
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:Number = NaN;
         var _loc2_:* = NaN;
         loop0:
         while(true)
         {
            while(true)
            {
               §§push(§"@§.§;H§());
               §§push(§'@§);
               if(_loc4_)
               {
                  if(§§pop() < §§pop())
                  {
                     §"@§.§'!K§(§'@§);
                     if(_loc3_)
                     {
                        break;
                     }
                  }
                  §§push(target.§+i§());
                  if(_loc4_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     target.§&R§();
                     break loop0;
                  }
                  §"@§.§-,§ = 0.25;
                  §"@§.§4!A§(§]T§);
                  §"@§.§%8§(§ !A§);
                  if(_loc3_)
                  {
                     break loop0;
                  }
                  §§push(§"@§.§>!7§);
                  §§push(0.4);
               }
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
                  _loc1_ = §§pop();
                  §§push(§"@§.§-9§);
               }
               _loc2_ = §§pop();
               while(true)
               {
                  §§push(§"@§);
                  if(!_loc3_)
                  {
                     §§push(_loc1_);
                     if(!_loc4_)
                     {
                        break;
                     }
                     if(§§pop() >= _loc2_)
                     {
                        §§push(_loc2_);
                        break;
                     }
                  }
                  §§push(_loc1_);
                  if(_loc3_)
                  {
                  }
                  break;
               }
               §§pop().§-9§ = §§pop();
               break loop0;
            }
            return null;
         }
         §"@§.§&!7§();
         if(!_loc3_)
         {
            target = null;
         }
         break loop1;
      }
      
      override public function §0!1§() : Boolean
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:* = null as Point3D;
         var _loc2_:* = null as Point3D;
         while(true)
         {
            loop1:
            while(true)
            {
               loop5:
               while(true)
               {
                  loop6:
                  while(true)
                  {
                     if(_loc3_)
                     {
                        loop7:
                        while(true)
                        {
                           loop8:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(false);
                                 if(!_loc4_)
                                 {
                                    §§push(false);
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§push(false);
                                       if(!_loc4_)
                                       {
                                          §§push(§7o§.controlScheme.§,h§(§`B§));
                                          if(_loc3_)
                                          {
                                             §§push(Boolean(§§pop()));
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
                                                break loop8;
                                             }
                                             §§push(target == null);
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             §§push(!§§pop());
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                          }
                                       }
                                       §§push(Boolean(§§pop()));
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       break loop7;
                                    }
                                    §§pop();
                                    if(_loc4_)
                                    {
                                       break loop6;
                                    }
                                 }
                                 §§push(target.§+i§());
                                 break;
                              }
                              §§push(!§§pop());
                              break;
                           }
                           §§push(Boolean(§§pop()));
                           break;
                        }
                        if(!§§pop())
                        {
                           break loop5;
                        }
                        if(!_loc3_)
                        {
                           break loop1;
                        }
                        §§pop();
                        if(!_loc3_)
                        {
                           continue loop3;
                        }
                     }
                     §§push(target.transform.position.z >= §"@§.transform.position.z);
                     if(_loc3_)
                     {
                        break loop1;
                     }
                     break;
                  }
                  §§goto(addr0175);
               }
               if(!§§pop())
               {
                  §§push(false);
                  break loop6;
               }
               continue loop3;
            }
            §§push(Boolean(§§pop()));
            if(!_loc4_)
            {
               break loop5;
            }
            addr0175:
            return §§pop();
         }
         _loc1_ = §"@§.transform.§2!§();
         _loc2_ = target.transform.§<!C§();
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               while(true)
               {
                  §§push(_loc1_.x - _loc2_.x);
                  if(!_loc4_)
                  {
                     §§push(_loc1_.x - _loc2_.x);
                     if(!_loc4_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc4_)
                        {
                           break;
                        }
                        §§push(_loc1_.y - _loc2_.y);
                        §§push(_loc1_.y - _loc2_.y);
                        if(_loc4_)
                        {
                           break loop3;
                        }
                        §§push(§§pop() * §§pop());
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc4_)
                     {
                        break loop2;
                     }
                     §§push(Number(§§pop()));
                     if(_loc4_)
                     {
                        break loop2;
                     }
                  }
                  §§push(_loc1_.z);
                  §§push(_loc2_.z);
                  if(!_loc3_)
                  {
                     break loop3;
                  }
                  §§push(§§pop() - §§pop());
                  §§push(_loc1_.z);
                  if(!_loc4_)
                  {
                     break loop3;
                  }
                  §§goto(addr0167);
               }
               §§goto(addr016f);
            }
            addr0167:
            §§push(§§pop() + §§pop() * (§§pop() - _loc2_.z));
            if(_loc3_)
            {
               break;
            }
            break loop4;
         }
         addr016f:
         return Number(§§pop()) <= 250000;
      }
      
      override public function § A§() : Boolean
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc1_:* = false;
         var _loc2_:* = null as CharacterBase;
         var _loc6_:Number = NaN;
         var _loc8_:* = null as Point3D;
         var _loc9_:* = null as Point3D;
         loop5:
         while(true)
         {
            loop6:
            while(true)
            {
               if(!_loc11_)
               {
                  while(true)
                  {
                     §§push(§7o§.controlScheme.§,h§(§`B§));
                     if(_loc10_)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc10_)
                        {
                           if(§§pop())
                           {
                              if(!_loc11_)
                              {
                                 if(int(§"@§.§=N§.indexOf(§`B§,0)) >= 0)
                                 {
                                    if(!_loc11_)
                                    {
                                       _loc2_ = §"@§;
                                       if(_loc10_)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc2_.level.unpausedTime - _loc2_.physicsData.§&!>§);
                                             §§push(§"@§.§?`§.length);
                                             if(_loc10_)
                                             {
                                                §§push(§§pop() + 0.3);
                                                if(!_loc10_)
                                                {
                                                   break;
                                                }
                                             }
                                             §§push(Number(§§pop()));
                                             break;
                                          }
                                          §§push(§§pop() < §§pop());
                                          if(_loc10_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(_loc11_)
                                             {
                                                break loop6;
                                             }
                                          }
                                          _loc1_ = §§pop();
                                          if(_loc10_)
                                          {
                                             break;
                                          }
                                          break loop5;
                                       }
                                    }
                                    break;
                                 }
                                 §§push(false);
                                 if(!_loc11_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc11_)
                                    {
                                       §§goto(addr00ed);
                                    }
                                 }
                                 addr00da:
                                 _loc1_ = §§pop();
                              }
                              break;
                           }
                           §§push(false);
                        }
                        addr00ed:
                        return §§pop();
                     }
                     §§goto(addr00da);
                  }
               }
               §§push(_loc1_);
               if(!_loc11_)
               {
                  if(§§pop())
                  {
                     break loop5;
                  }
                  var _loc3_:* = new §7=§(§"@§.§!C§.§<!7§).iterator();
                  var _loc4_:Point3D = §"@§.transform.§2!§();
                  §§push(Number(Math.POSITIVE_INFINITY));
                  if(_loc10_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  if(!_loc11_)
                  {
                     target = null;
                  }
                  var _loc7_:Entity3D = null;
                  loop9:
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        loop0:
                        do
                        {
                           if(!Boolean(_loc3_.hasNext()))
                           {
                              break;
                           }
                           addr01a5:
                           _loc7_ = _loc3_.next();
                           §§push(_loc7_.transform.position.z);
                           if(_loc10_)
                           {
                              §§push(_loc4_.z);
                              if(_loc11_)
                              {
                                 continue;
                              }
                              §§push(40);
                              if(_loc10_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc11_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc10_)
                                    {
                                       continue;
                                    }
                                 }
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          if(_loc10_)
                                          {
                                             break loop9;
                                          }
                                          addr020b:
                                          addr0211:
                                          §§push(_loc7_ is §+`§);
                                          if(!_loc10_)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(false);
                                             §§push(false);
                                             if(!_loc11_)
                                             {
                                                if(!_loc7_.§-J§)
                                                {
                                                   break;
                                                }
                                                if(_loc11_)
                                                {
                                                   break;
                                                }
                                                §§pop();
                                                §§push(_loc7_.§2!9§);
                                                if(!_loc10_)
                                                {
                                                   break;
                                                }
                                             }
                                             §§push(Boolean(§§pop()));
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc10_)
                                             {
                                                §§pop();
                                                §§goto(addr020b);
                                             }
                                             §§goto(addr0211);
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          if(!_loc11_)
                                          {
                                             _loc8_ = _loc7_.transform.§<!C§();
                                             _loc9_ = §`!B§.offset;
                                             while(true)
                                             {
                                                if(_loc10_)
                                                {
                                                   if(_loc9_ == null)
                                                   {
                                                      if(_loc11_)
                                                      {
                                                         break;
                                                      }
                                                      _loc9_ = new Point3D(0,0,0);
                                                   }
                                                   _loc9_.x = _loc8_.x - _loc4_.x;
                                                   if(!_loc11_)
                                                   {
                                                      _loc9_.y = _loc8_.y - _loc4_.y;
                                                      if(!_loc10_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                }
                                                §§push(_loc9_);
                                                §§push(_loc8_.z);
                                                if(_loc10_)
                                                {
                                                   §§push(§§pop() - _loc4_.z);
                                                }
                                                §§pop().z = §§pop();
                                                break;
                                             }
                                             _loc8_ = §`!B§.offset;
                                             loop13:
                                             while(true)
                                             {
                                                if(!_loc11_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc8_.x * _loc8_.x);
                                                      §§push(_loc8_.y * _loc8_.y);
                                                      if(_loc10_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc11_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(Number(§§pop()));
                                                         if(!_loc10_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(_loc8_.z);
                                                         if(!_loc11_)
                                                         {
                                                            §§push(§§pop() * _loc8_.z);
                                                         }
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      break;
                                                   }
                                                   _loc6_ = §§pop();
                                                   if(_loc11_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                loop15:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(false);
                                                      if(_loc10_)
                                                      {
                                                         §§push(false);
                                                         if(!_loc10_)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc6_ >= 250000)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc11_)
                                                         {
                                                            break;
                                                         }
                                                         §§pop();
                                                         if(_loc11_)
                                                         {
                                                            break loop15;
                                                         }
                                                      }
                                                      §§push(_loc6_ < _loc5_);
                                                      if(_loc10_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      break;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      break;
                                                   }
                                                   if(_loc11_)
                                                   {
                                                      break;
                                                   }
                                                   §§pop();
                                                   if(!_loc11_)
                                                   {
                                                      break loop13;
                                                   }
                                                }
                                                if(§§pop())
                                                {
                                                   if(!_loc11_)
                                                   {
                                                      target = _loc7_;
                                                      if(!_loc11_)
                                                      {
                                                         _loc5_ = _loc6_;
                                                      }
                                                   }
                                                }
                                             }
                                             §§push(_loc7_.§6g§);
                                             if(_loc10_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             break loop15;
                                          }
                                          break loop9;
                                       }
                                       §§push(Boolean(_loc3_.hasNext()));
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       _loc7_ = _loc3_.next();
                                       break loop0;
                                    }
                                    _loc7_ = null;
                                    break loop0;
                                 }
                                 break loop9;
                              }
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc10_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 continue loop1;
                              }
                              addr01b3:
                           }
                           while(true)
                           {
                              §§push(_loc4_.z);
                              if(!_loc10_)
                              {
                                 continue loop1;
                              }
                              §§goto(addr01b3);
                              §§push(500);
                           }
                        }
                        while(§§pop() <= §§pop());
                     }
                     while(true)
                     {
                        if(_loc7_ == null)
                        {
                           break loop9;
                        }
                        §§goto(addr01a5);
                        return _loc7_.transform.position.z;
                     }
                     break;
                  }
                  break loop1;
               }
               break;
            }
            return §§pop();
         }
         §§push(false);
         break loop6;
      }
   }
}

