package §2X§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §-d§.§!!-§;
   import §-d§.§4?§;
   import §0!"§.§&B§;
   import §0!"§.§,!Z§;
   import §1^§.Transform;
   import §6[§.§+B§;
   import §6[§.§`!O§;
   import §>T§.§!=§;
   import §>T§.§"=§;
   import §>T§.§0!E§;
   import §>T§.§[C§;
   import §@H§.§!7§;
   import §]N§.§?!H§;
   import §`!7§.§`!3§;
   import §`_§.§3!J§;
   import §`_§.§7d§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.menu.§ L§;
   import flash.Boot;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.§9%§;
   import haxeutils.math.geom.Point2DUtils;
   import haxeutils.math.geom.Point3D;
   
   public class §>x§ extends Layout3D
   {
      
      public static var init__:Boolean;
      
      public static var §1]§:Point3D;
      
      public static var §`4§:EReg;
      
      public static var §"!7§:Point3D;
      
      public var vertices:Vector.<Point>;
      
      public var §+K§:int;
      
      public var §^X§:int;
      
      public var §;;§:Vector.<§"B§>;
      
      public var rotation:Number;
      
      public var §!!,§:§9%§;
      
      public var §5k§:int;
      
      public var §;!>§:Number;
      
      public var §-!Z§:§"B§;
      
      public var §6R§:Number;
      
      public var flipped:Boolean;
      
      public var §;!C§:§&B§;
      
      public function §>x§(param1:int, param2:int)
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc5_:* = NaN;
         var _loc6_:* = null as Vector.<§"B§>;
         var _loc7_:* = null as Point3D;
         var _loc8_:* = null as §"B§;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         flipped = false;
         if(!_loc13_)
         {
            super();
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc13_)
                  {
                     §§push(param1);
                     if(!_loc12_)
                     {
                        break;
                     }
                     §§push(3);
                     if(_loc13_)
                     {
                        break loop1;
                     }
                     if(§§pop() < §§pop())
                     {
                        §§goto(addr005e);
                     }
                  }
                  §§push(param2);
                  if(!_loc13_)
                  {
                     §§push(0);
                     break loop1;
                  }
                  §§goto(addr0123);
               }
               §§goto(addr0123);
            }
            if(§§pop() <= §§pop())
            {
               if(_loc12_)
               {
                  Boot.lastError = new Error();
                  throw new ArgumentError("Tunnels need at least one tile per side.");
               }
            }
            else
            {
               §+K§ = param1;
               §^X§ = param2;
               if(_loc12_)
               {
                  §§push(§§findproperty(§5k§));
                  §§push(param1);
                  if(!_loc13_)
                  {
                     §§push(§§pop() * param2);
                  }
                  §§pop().§5k§ = §§pop();
                  §;!>§ = 1 / param2;
                  while(true)
                  {
                     if(!_loc13_)
                     {
                        §6R§ = 1 / §5k§;
                        §!!,§ = new §9%§(param1,param2);
                        if(_loc13_)
                        {
                           break;
                        }
                     }
                     vertices = §!!,§.vertices;
                     break;
                  }
                  §;;§ = new Vector.<§"B§>();
               }
            }
            §§push(0);
            if(_loc12_)
            {
               break loop2;
            }
            addr0123:
            var _loc3_:* = §§pop();
            var _loc4_:Vector.<Number> = §!!,§.§;;§;
            if(_loc12_)
            {
               loop0:
               while(_loc3_ < int(_loc4_.length))
               {
                  while(true)
                  {
                     §§push(_loc4_[_loc3_]);
                     if(_loc12_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc13_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
                  _loc5_ = §§pop();
                  if(!_loc13_)
                  {
                     _loc3_++;
                  }
                  _loc6_ = §;;§;
                  _loc7_ = §>x§.§"!7§;
                  _loc8_ = null;
                  loop5:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc12_)
                        {
                           if(_loc8_ == null)
                           {
                              _loc8_ = new §"B§();
                           }
                           _loc9_ = Number(Math.sin(_loc5_ / 2));
                           _loc8_.x = _loc7_.x * _loc9_;
                           _loc8_.y = _loc7_.y * _loc9_;
                           if(!_loc12_)
                           {
                              break;
                           }
                           §§push(_loc8_);
                           §§push(_loc7_.z);
                           if(!_loc13_)
                           {
                              §§push(§§pop() * _loc9_);
                           }
                           §§pop().z = §§pop();
                           if(!_loc12_)
                           {
                              break loop5;
                           }
                        }
                        _loc8_.w = Number(Math.cos(_loc5_ / 2));
                        §§push(_loc8_.x);
                        §§push(_loc8_.x);
                        if(!_loc13_)
                        {
                           §§push(§§pop() * §§pop());
                           §§push(_loc8_.y);
                        }
                        loop10:
                        while(true)
                        {
                           loop11:
                           while(true)
                           {
                              §§push(_loc8_.y);
                              if(_loc12_)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc13_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc13_)
                                       {
                                          break loop10;
                                       }
                                       §§push(Number(§§pop()));
                                       §§push(_loc8_.z);
                                       if(_loc12_)
                                       {
                                          §§push(_loc8_.z);
                                          if(_loc13_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop() + §§pop() * §§pop());
                                          if(_loc12_)
                                          {
                                             §§push(_loc8_.w);
                                             if(_loc13_)
                                             {
                                                break loop11;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr02aa);
                                          }
                                       }
                                    }
                                    §§push(_loc8_.w);
                                    break;
                                 }
                              }
                              §§push(§§pop() * §§pop());
                              break;
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc12_)
                           {
                              _loc10_ = §§pop();
                              if(!_loc13_)
                              {
                                 §§push(_loc10_);
                                 if(_loc13_)
                                 {
                                    break loop7;
                                 }
                                 §§push(1);
                                 if(!_loc13_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!_loc13_)
                                    {
                                       break;
                                    }
                                    continue loop8;
                                 }
                                 §§goto(addr02ca);
                              }
                              §§goto(addr032d);
                           }
                           §§goto(addr0282);
                        }
                        §§push(Number(§§pop()));
                        if(!_loc13_)
                        {
                           addr0282:
                           _loc11_ = §§pop();
                           break loop5;
                        }
                        continue loop8;
                     }
                     §§push(_loc8_);
                     §§push(_loc8_.y);
                     if(!_loc13_)
                     {
                        §§push(§§pop() * _loc10_);
                     }
                     §§pop().y = §§pop();
                     if(_loc13_)
                     {
                        break loop8;
                     }
                     §§goto(addr032d);
                  }
                  loop7:
                  while(true)
                  {
                     loop8:
                     while(true)
                     {
                        while(true)
                        {
                           addr02ca:
                           §§push(_loc11_);
                           §§push(0);
                           if(_loc12_)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(_loc13_)
                                 {
                                    break;
                                 }
                                 addr02aa:
                                 §§push(_loc11_ < 1e-10);
                                 if(!_loc13_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(!§§pop())
                                 {
                                    break loop8;
                                 }
                                 if(!_loc12_)
                                 {
                                    break loop8;
                                 }
                                 §§push(_loc10_);
                                 if(!_loc12_)
                                 {
                                    break loop7;
                                 }
                              }
                              else
                              {
                                 §§push(_loc11_);
                                 if(!_loc13_)
                                 {
                                    §§goto(addr02aa);
                                    §§push(-§§pop());
                                 }
                              }
                              §§push(0);
                           }
                           if(§§pop() != §§pop())
                           {
                              §§push(1 / Number(Math.sqrt(_loc10_)));
                              break loop7;
                           }
                           _loc8_.x = 0;
                           _loc8_.y = 0;
                           _loc8_.z = 0;
                           if(_loc12_)
                           {
                              break;
                           }
                           §§goto(addr0351);
                        }
                        _loc8_.w = 1;
                        break;
                     }
                     _loc6_.push(_loc8_);
                     continue loop0;
                  }
                  _loc10_ = §§pop();
                  §§push(_loc8_);
                  §§push(_loc8_.x);
                  if(_loc12_)
                  {
                     §§push(§§pop() * _loc10_);
                  }
                  §§pop().x = §§pop();
                  if(!_loc13_)
                  {
                     break loop6;
                  }
                  addr032d:
                  §§push(_loc8_);
                  §§push(_loc8_.z);
                  if(!_loc13_)
                  {
                     §§push(§§pop() * _loc10_);
                  }
                  §§pop().z = §§pop();
                  if(!_loc12_)
                  {
                     break loop8;
                  }
                  addr0351:
                  §§push(_loc8_);
                  §§push(_loc8_.w);
                  if(!_loc13_)
                  {
                     §§push(§§pop() * _loc10_);
                  }
                  §§pop().w = §§pop();
                  if(_loc12_)
                  {
                     break loop8;
                  }
               }
            }
            return;
         }
         addr005e:
         Boot.lastError = new Error();
         throw new ArgumentError("Tunnels need at least three sides.");
      }
      
      public function toString() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push("tunnel");
         §§push(§+K§);
         if(!_loc1_)
         {
            while(true)
            {
               §§push(§§pop() + §§pop());
               if(!_loc1_)
               {
                  §§push(§§pop() + ",");
                  if(_loc1_)
                  {
                     break;
                  }
               }
               §§push(§§pop());
               break;
            }
         }
         §§push(§§pop() + §§pop());
         if(_loc2_)
         {
            return §§pop();
         }
      }
      
      public function rotate(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = _temp_1;
         var _loc4_:* = 0;
         var _loc5_:* = NaN;
         var _loc6_:* = null as Point3D;
         var _loc7_:* = null as §"B§;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc14_:* = null as Point;
         var _loc15_:* = null as Point3D;
         var _loc16_:* = null as §"B§;
         var _loc17_:* = NaN;
         §§push(0);
         if(!_loc19_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(int(§!!,§.§;;§.length));
         if(!_loc19_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc19_)
         {
            loop0:
            while(_loc2_ < _loc3_)
            {
               §§push(_loc2_);
               if(_loc20_)
               {
                  _loc2_++;
                  if(!_loc19_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc4_ = §§pop();
               if(!_loc19_)
               {
                  while(true)
                  {
                     §§push(§!!,§.§;;§[_loc4_]);
                     if(_loc20_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc19_)
                        {
                           §§push(§§pop() + param1);
                           if(!_loc19_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc19_)
                              {
                                 break;
                              }
                           }
                        }
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
                  _loc5_ = §§pop();
               }
               _loc6_ = §>x§.§"!7§;
               _loc7_ = §;;§[_loc4_];
               if(_loc7_ == null)
               {
                  _loc7_ = new §"B§();
               }
               _loc8_ = Number(Math.sin(_loc5_ / 2));
               _loc7_.x = _loc6_.x * _loc8_;
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        loop7:
                        while(true)
                        {
                           while(true)
                           {
                              if(_loc20_)
                              {
                                 _loc7_.y = _loc6_.y * _loc8_;
                                 §§push(_loc7_);
                                 §§push(_loc6_.z);
                                 if(_loc20_)
                                 {
                                    §§push(§§pop() * _loc8_);
                                 }
                                 §§pop().z = §§pop();
                                 _loc7_.w = Number(Math.cos(_loc5_ / 2));
                                 if(!_loc20_)
                                 {
                                    break loop3;
                                 }
                                 while(true)
                                 {
                                    §§push(_loc7_.x);
                                    if(_loc20_)
                                    {
                                       §§push(§§pop() * _loc7_.x);
                                       if(!_loc20_)
                                       {
                                          break loop5;
                                       }
                                       §§push(_loc7_.y);
                                       §§push(_loc7_.y);
                                       if(_loc19_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop() + §§pop() * §§pop());
                                       if(_loc20_)
                                       {
                                          §§push(Number(§§pop()));
                                          §§push(_loc7_.z);
                                          §§push(_loc7_.z);
                                          if(_loc19_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop() + §§pop() * §§pop());
                                          if(!_loc20_)
                                          {
                                             break loop7;
                                          }
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    §§push(_loc7_.w);
                                    §§push(_loc7_.w);
                                    break;
                                 }
                                 §§push(§§pop() + §§pop() * §§pop());
                                 if(!_loc19_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 _loc9_ = §§pop();
                                 §§push(_loc9_);
                                 §§push(1);
                                 if(_loc19_)
                                 {
                                    break loop4;
                                 }
                                 _loc10_ = §§pop() - §§pop();
                                 §§push(_loc10_);
                                 if(!_loc19_)
                                 {
                                    §§push(0);
                                    if(_loc19_)
                                    {
                                       break loop4;
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       §§push(_loc10_);
                                    }
                                    else
                                    {
                                       §§push(_loc10_);
                                       if(_loc19_)
                                       {
                                          break;
                                       }
                                       §§push(-§§pop());
                                    }
                                 }
                                 §§push(§§pop() < 1e-10);
                                 if(_loc20_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(!§§pop())
                                 {
                                    continue loop0;
                                 }
                                 if(!_loc20_)
                                 {
                                    break loop3;
                                 }
                              }
                              §§push(_loc9_);
                              break;
                           }
                           §§push(0);
                           break loop4;
                        }
                        §§goto(addr0220);
                     }
                     _loc9_ = §§pop();
                     if(!_loc19_)
                     {
                        §§push(_loc7_);
                        §§push(_loc7_.x);
                        if(!_loc19_)
                        {
                           §§push(§§pop() * _loc9_);
                        }
                        §§pop().x = §§pop();
                        §§goto(addr023c);
                     }
                     §§goto(addr0266);
                  }
                  if(§§pop() != §§pop())
                  {
                     addr0220:
                     §§push(1 / Number(Math.sqrt(_loc9_)));
                     break loop5;
                  }
                  _loc7_.x = 0;
                  while(true)
                  {
                     if(_loc20_)
                     {
                        _loc7_.y = 0;
                        if(_loc19_)
                        {
                           break;
                        }
                        _loc7_.z = 0;
                        if(!_loc19_)
                        {
                           break loop3;
                        }
                     }
                     addr023c:
                     §§push(_loc7_);
                     §§push(_loc7_.y);
                     if(_loc20_)
                     {
                        §§push(§§pop() * _loc9_);
                     }
                     §§pop().y = §§pop();
                     if(_loc20_)
                     {
                        §§push(_loc7_);
                        §§push(_loc7_.z);
                        if(_loc20_)
                        {
                           §§push(§§pop() * _loc9_);
                        }
                        §§pop().z = §§pop();
                     }
                     break;
                  }
                  addr0266:
                  §§push(_loc7_);
                  §§push(_loc7_.w);
                  if(!_loc19_)
                  {
                     §§push(§§pop() * _loc9_);
                  }
                  §§pop().w = §§pop();
                  continue loop0;
               }
               _loc7_.w = 1;
            }
         }
         _loc6_ = §>x§.§"!7§;
         _loc7_ = null;
         loop10:
         while(true)
         {
            if(_loc20_)
            {
               if(_loc7_ == null)
               {
                  _loc7_ = new §"B§();
               }
               _loc5_ = Number(Math.sin(param1 / 2));
               if(_loc19_)
               {
                  break;
               }
            }
            _loc7_.x = _loc6_.x * _loc5_;
            _loc7_.y = _loc6_.y * _loc5_;
            §§push(_loc7_);
            §§push(_loc6_.z);
            if(!_loc19_)
            {
               §§push(§§pop() * _loc5_);
            }
            §§pop().z = §§pop();
            _loc7_.w = Number(Math.cos(param1 / 2));
            while(true)
            {
               while(true)
               {
                  §§push(_loc7_.x);
                  if(!_loc19_)
                  {
                     §§push(§§pop() * _loc7_.x);
                     §§push(_loc7_.y);
                     §§push(_loc7_.y);
                     if(_loc19_)
                     {
                        break;
                     }
                     §§push(§§pop() * §§pop());
                     if(!_loc20_)
                     {
                        continue loop13;
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(Number(§§pop()));
                  if(!_loc19_)
                  {
                     §§push(_loc7_.z);
                     §§push(_loc7_.z);
                     if(_loc20_)
                     {
                        break;
                     }
                     addr034c:
                     §§push(§§pop() * §§pop());
                     continue loop13;
                  }
                  addr0344:
                  §§goto(addr034c);
               }
               §§push(§§pop() * §§pop());
               if(!_loc19_)
               {
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc20_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc19_)
                           {
                              §§goto(addr0344);
                           }
                           else
                           {
                              §§goto(addr03a7);
                           }
                        }
                        else
                        {
                           §§goto(addr0357);
                        }
                        §§goto(addr03c0);
                     }
                     §§goto(addr044d);
                  }
                  §§goto(addr03ff);
               }
               §§goto(addr03a9);
            }
            loop13:
            while(true)
            {
               while(true)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc20_)
                  {
                     addr0357:
                     _loc8_ = §§pop();
                     if(_loc19_)
                     {
                        break loop10;
                     }
                     §§push(_loc8_);
                     §§push(1);
                     if(_loc19_)
                     {
                        break;
                     }
                     §§push(§§pop() - §§pop());
                     if(_loc19_)
                     {
                        break loop13;
                     }
                  }
                  §§push(Number(§§pop()));
                  break loop13;
               }
               addr03c0:
               if(§§pop() == §§pop())
               {
                  if(!_loc19_)
                  {
                     _loc7_.x = 0;
                     _loc7_.y = 0;
                     if(_loc20_)
                     {
                        _loc7_.z = 0;
                        _loc7_.w = 1;
                     }
                     else
                     {
                        §§goto(addr043b);
                     }
                  }
               }
               else
               {
                  §§push(1 / Number(Math.sqrt(_loc8_)));
                  if(_loc20_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr03ff);
               }
               §§goto(addr044d);
            }
            _loc9_ = §§pop();
            §§push(_loc9_);
            §§push(0);
            if(_loc20_)
            {
               if(§§pop() >= §§pop())
               {
                  while(true)
                  {
                     if(!_loc19_)
                     {
                        break loop10;
                     }
                     addr0413:
                     §§push(_loc7_);
                     §§push(_loc7_.y);
                     if(!_loc19_)
                     {
                        §§push(§§pop() * _loc8_);
                     }
                     §§pop().y = §§pop();
                     if(_loc20_)
                     {
                        §§push(_loc7_);
                        §§push(_loc7_.z);
                        if(_loc20_)
                        {
                           §§push(§§pop() * _loc8_);
                        }
                        §§pop().z = §§pop();
                        addr043b:
                        §§push(_loc7_);
                        §§push(_loc7_.w);
                        if(_loc20_)
                        {
                           §§push(§§pop() * _loc8_);
                        }
                        §§pop().w = §§pop();
                     }
                     break;
                  }
               }
               else
               {
                  addr03a7:
                  addr03a9:
                  addr03a6:
                  §§push(-_loc9_ < 1e-10);
                  if(!_loc19_)
                  {
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     addr03ff:
                     §§push(_loc8_);
                     if(_loc20_)
                     {
                        §§push(0);
                        break loop14;
                     }
                     _loc8_ = §§pop();
                     §§push(_loc7_);
                     §§push(_loc7_.x);
                     if(!_loc19_)
                     {
                        §§push(§§pop() * _loc8_);
                     }
                     §§pop().x = §§pop();
                     §§goto(addr0413);
                  }
               }
               addr044d:
               var _loc11_:§"B§ = _loc7_;
               var _loc12_:Point3D = new Point3D(0,0,0);
               if(_loc20_)
               {
                  §§push(0);
                  if(!_loc19_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc2_ = §§pop();
               }
               var _loc13_:Vector.<Point> = vertices;
               loop1:
               while(_loc2_ < int(_loc13_.length))
               {
                  _loc14_ = _loc13_[_loc2_];
                  _loc2_++;
                  _loc12_.x = _loc14_.x;
                  _loc12_.y = _loc14_.y;
                  while(true)
                  {
                     if(_loc20_)
                     {
                        _loc12_.z = 0;
                        if(!_loc20_)
                        {
                           continue loop1;
                        }
                        §4!R§.§@!M§(_loc11_,_loc12_,_loc12_);
                        if(_loc19_)
                        {
                           break;
                        }
                     }
                     _loc14_.x = _loc12_.x;
                     break;
                  }
                  _loc14_.y = _loc12_.y;
               }
               if(_loc20_)
               {
                  if(§-!Z§ != null)
                  {
                     if(!_loc19_)
                     {
                        §§push(§§findproperty(rotation));
                        §§push(rotation);
                        if(_loc20_)
                        {
                           §§push(§§pop() + param1);
                           if(_loc20_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        §§pop().rotation = §§pop();
                        §§push(rotation);
                        if(_loc20_)
                        {
                           §§push(Number(§§pop()));
                        }
                        _loc8_ = §§pop();
                     }
                     _loc15_ = §>x§.§"!7§;
                     _loc16_ = §-!Z§;
                     loop17:
                     while(true)
                     {
                        if(_loc16_ == null)
                        {
                           if(_loc19_)
                           {
                              break;
                           }
                           _loc16_ = new §"B§();
                        }
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
                                    while(true)
                                    {
                                       §§push(Number(Math.sin(_loc8_ / 2)));
                                       if(!_loc19_)
                                       {
                                          _loc9_ = §§pop();
                                          _loc16_.x = _loc15_.x * _loc9_;
                                          _loc16_.y = _loc15_.y * _loc9_;
                                          if(_loc20_)
                                          {
                                             §§push(_loc16_);
                                             §§push(_loc15_.z);
                                             if(!_loc19_)
                                             {
                                                §§push(§§pop() * _loc9_);
                                             }
                                             §§pop().z = §§pop();
                                             if(_loc20_)
                                             {
                                                _loc16_.w = Number(Math.cos(_loc8_ / 2));
                                                loop23:
                                                while(true)
                                                {
                                                   loop24:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc16_.x);
                                                         if(!_loc19_)
                                                         {
                                                            §§push(§§pop() * _loc16_.x);
                                                            if(_loc19_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(_loc16_.y);
                                                            §§push(_loc16_.y);
                                                            if(_loc20_)
                                                            {
                                                               §§push(§§pop() + §§pop() * §§pop());
                                                               if(_loc19_)
                                                               {
                                                                  break loop24;
                                                               }
                                                               §§push(_loc16_.z);
                                                               §§push(_loc16_.z);
                                                               if(_loc19_)
                                                               {
                                                                  break loop23;
                                                               }
                                                            }
                                                            §§push(§§pop() + §§pop() * §§pop());
                                                         }
                                                         §§push(Number(§§pop()));
                                                         §§push(_loc16_.w);
                                                         if(_loc20_)
                                                         {
                                                            §§push(_loc16_.w);
                                                            break loop23;
                                                         }
                                                         §§goto(addr05fd);
                                                      }
                                                      _loc17_ = §§pop();
                                                      break loop17;
                                                   }
                                                   _loc10_ = Number(§§pop());
                                                   §§push(_loc10_);
                                                   §§push(1);
                                                   if(_loc19_)
                                                   {
                                                      break loop20;
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc20_)
                                                   {
                                                      break loop25;
                                                   }
                                                   §§push(0);
                                                   if(_loc19_)
                                                   {
                                                      break loop20;
                                                   }
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(_loc19_)
                                                      {
                                                         break loop19;
                                                      }
                                                      §§push(_loc17_);
                                                   }
                                                   else
                                                   {
                                                      §§push(-_loc17_);
                                                      if(!_loc20_)
                                                      {
                                                         break loop18;
                                                      }
                                                   }
                                                }
                                                addr05fd:
                                                §§push(§§pop() + §§pop() * §§pop());
                                                break loop24;
                                             }
                                             break loop21;
                                          }
                                          break;
                                       }
                                       §§push(§§pop() < 1e-10);
                                       if(_loc20_)
                                       {
                                          §§push(!§§pop());
                                       }
                                       if(§§pop())
                                       {
                                          §§push(_loc10_);
                                          if(_loc20_)
                                          {
                                             break loop18;
                                          }
                                          §§goto(addr068d);
                                       }
                                    }
                                    §§goto(addr0665);
                                 }
                                 §§goto(addr06a9);
                              }
                              §§goto(addr0654);
                           }
                           §§push(_loc16_);
                           §§push(_loc16_.w);
                           if(!_loc19_)
                           {
                              §§push(§§pop() * _loc10_);
                           }
                           §§pop().w = §§pop();
                        }
                        addr0654:
                        if(§§pop() == 0)
                        {
                           if(!_loc19_)
                           {
                              _loc16_.x = 0;
                              addr0665:
                              _loc16_.y = 0;
                              if(!_loc20_)
                              {
                                 addr06a9:
                                 §§push(_loc16_);
                                 §§push(_loc16_.y);
                                 if(!_loc19_)
                                 {
                                    §§push(§§pop() * _loc10_);
                                 }
                                 §§pop().y = §§pop();
                                 §§push(_loc16_);
                                 §§push(_loc16_.z);
                                 if(_loc20_)
                                 {
                                    §§push(§§pop() * _loc10_);
                                 }
                                 §§pop().z = §§pop();
                                 break loop19;
                              }
                              _loc16_.z = 0;
                              _loc16_.w = 1;
                           }
                        }
                        else
                        {
                           addr068d:
                           _loc10_ = 1 / Number(Math.sqrt(_loc10_));
                           §§push(_loc16_);
                           §§push(_loc16_.x);
                           if(!_loc19_)
                           {
                              §§push(§§pop() * _loc10_);
                           }
                           §§pop().x = §§pop();
                           if(!_loc19_)
                           {
                              §§goto(addr06a9);
                           }
                        }
                     }
                     §§goto(addr061a);
                  }
                  else
                  {
                     rotation = param1;
                     §-!Z§ = _loc11_;
                  }
               }
               _loc16_ = §-!Z§;
               var _loc18_:§"B§ = §-!Z§;
               loop26:
               while(true)
               {
                  while(true)
                  {
                     if(_loc20_)
                     {
                        if(_loc18_ == null)
                        {
                           if(_loc19_)
                           {
                              break;
                           }
                           _loc18_ = new §"B§();
                        }
                        §§push(_loc18_);
                        §§push(_loc16_.x);
                        if(_loc20_)
                        {
                           §§push(-§§pop());
                        }
                        §§pop().x = §§pop();
                        if(!_loc20_)
                        {
                           break loop26;
                        }
                     }
                     §§push(_loc18_);
                     §§push(_loc16_.y);
                     if(!_loc19_)
                     {
                        §§push(-§§pop());
                     }
                     §§pop().y = §§pop();
                     if(_loc20_)
                     {
                        break loop26;
                     }
                     §§goto(addr0771);
                  }
                  return;
               }
               §§push(_loc18_);
               §§push(_loc16_.z);
               if(!_loc19_)
               {
                  §§push(-§§pop());
               }
               §§pop().z = §§pop();
               if(!_loc19_)
               {
                  addr0771:
                  _loc18_.w = _loc16_.w;
               }
               break loop27;
            }
            break loop14;
         }
         §§push(_loc9_);
         if(_loc19_)
         {
            §§goto(addr03a6);
         }
         §§goto(addr03a7);
         §§push(_loc7_.w);
         §§push(_loc7_.w);
      }
      
      override public function §6!,§(param1:int, param2:int = 0, param3:int = 0, param4:int = 0) : int
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         §§push(param1);
         if(_loc7_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(§5k§);
                  if(!_loc8_)
                  {
                     §§push(int(§§pop() % §§pop()));
                     if(!_loc7_)
                     {
                        break;
                     }
                     if(!flipped)
                     {
                        §§push(param2);
                        break loop0;
                     }
                     if(_loc8_)
                     {
                        break;
                     }
                     §§push(param2);
                     if(_loc8_)
                     {
                        break loop0;
                     }
                  }
                  §§push(-§§pop());
                  if(_loc8_)
                  {
                  }
                  break loop0;
               }
            }
            §§push(§§pop() + §§pop());
            if(_loc7_)
            {
               break loop1;
            }
         }
         var _loc5_:* = §§pop();
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  while(true)
                  {
                     if(_loc7_)
                     {
                        §§push(_loc5_);
                        if(!_loc7_)
                        {
                           break;
                        }
                        §§push(0);
                        if(!_loc8_)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc8_)
                              {
                                 break loop2;
                              }
                              §§push(_loc5_);
                              if(!_loc7_)
                              {
                                 break loop4;
                              }
                              §§push(§5k§);
                              if(!_loc8_)
                              {
                                 §§push(int(§§pop() + §§pop()));
                                 if(!_loc8_)
                                 {
                                    _loc5_ = §§pop();
                                    if(_loc8_)
                                    {
                                    }
                                    break loop2;
                                 }
                                 §§goto(addr0103);
                              }
                           }
                           else
                           {
                              §§push(_loc5_);
                              §§push(§5k§);
                              if(!_loc7_)
                              {
                                 break loop3;
                              }
                           }
                        }
                        if(§§pop() < §§pop())
                        {
                           break loop2;
                        }
                        if(_loc8_)
                        {
                           break loop2;
                        }
                     }
                     §§push(_loc5_);
                     §§push(§5k§);
                     if(!_loc8_)
                     {
                        §§push(§§pop() - §§pop());
                        break;
                     }
                     break loop3;
                  }
                  §§push(int(§§pop()));
                  break;
               }
               _loc5_ = §§pop();
               break loop2;
            }
            §§push(§§pop() + §§pop());
            if(_loc7_)
            {
               §§push(int(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc6_);
            if(!_loc8_)
            {
               while(true)
               {
                  §§push(§5k§);
                  if(_loc7_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc7_)
                     {
                        break;
                     }
                     §§push(_loc5_);
                  }
                  return §§pop() + §§pop();
               }
            }
            return §§pop();
         }
         addr0103:
         §§push(int(Math.floor(param1 / §5k§)));
         §§push(param4);
         break loop3;
      }
      
      override public function §<!C§(param1:int, param2:PositionData3D = undefined) : PositionData3D
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         if(param2 == null)
         {
            param2 = new PositionData3D(0,0,0);
         }
         param2.position.x = 0;
         loop1:
         while(true)
         {
            while(true)
            {
               if(_loc9_)
               {
                  param2.position.y = 0;
                  param2.position.z = Number(Math.floor(param1 * §6R§));
                  §§push(param1);
                  if(!_loc10_)
                  {
                     §§push(§5k§);
                     if(_loc10_)
                     {
                        break;
                     }
                     param1 = int(§§pop() % §§pop());
                     §§push(param1);
                  }
                  §§push(0);
                  if(!_loc9_)
                  {
                     break;
                  }
                  if(§§pop() >= §§pop())
                  {
                     break loop1;
                  }
                  if(_loc10_)
                  {
                     break loop1;
                  }
               }
               §§push(param1);
               §§push(§5k§);
               break;
            }
            §§push(§§pop() + §§pop());
            if(!_loc10_)
            {
               param1 = int(§§pop());
               break;
            }
            §§goto(addr009b);
         }
         addr009b:
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc9_)
            {
               while(param1 >= §^X§)
               {
                  §§push(param1);
                  if(!_loc10_)
                  {
                     §§push(§§pop() - §^X§);
                     if(_loc9_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
                  param1 = §§pop();
                  if(_loc9_)
                  {
                     _loc3_++;
                  }
               }
               if(!_loc10_)
               {
                  if(param2.rotation != null)
                  {
                     break;
                  }
                  if(_loc10_)
                  {
                     break;
                  }
               }
            }
            param2.rotation = new §"B§();
            break;
         }
         var _loc4_:§"B§ = param2.rotation;
         var _loc5_:§"B§ = §;;§[_loc3_];
         while(true)
         {
            if(_loc9_)
            {
               _loc4_.x = _loc5_.x;
               if(!_loc9_)
               {
                  break;
               }
            }
            _loc4_.y = _loc5_.y;
            if(!_loc10_)
            {
               _loc4_.z = _loc5_.z;
               if(_loc9_)
               {
                  break;
               }
               §§goto(addr0151);
            }
            break;
         }
         _loc4_.w = _loc5_.w;
         addr0151:
         while(true)
         {
            §§push(param1 + 0.5);
            if(!_loc10_)
            {
               §§push(Number(§§pop()));
               if(!_loc9_)
               {
                  break;
               }
               §§push(§§pop() * §;!>§);
               if(!_loc9_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc6_:* = §§pop();
         var _loc7_:Point = vertices[_loc3_];
         loop6:
         while(true)
         {
            if(_loc9_)
            {
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc9_)
                  {
                     §§push(1);
                     if(!_loc9_)
                     {
                        break;
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(int(vertices.length));
                  if(_loc9_)
                  {
                     break;
                  }
                  addr01bf:
                  if(§§pop() >= int(§§pop()))
                  {
                     §§push(vertices[0]);
                     break loop6;
                  }
               }
               var _temp_1:* = §§pop();
               §§push(_temp_1);
               if(!(_temp_1 is Number))
               {
                  if(!_loc10_)
                  {
                     throw "Class cast error";
                  }
               }
               §§goto(addr01bf);
            }
            §§push(vertices);
            §§push(_loc3_);
            if(_loc9_)
            {
               §§push(§§pop() + 1);
            }
            §§push(§§pop()[§§pop()]);
            break;
         }
         var _loc8_:Point = §§pop();
         if(_loc9_)
         {
            param2.position.x = _loc7_.x + _loc6_ * (_loc8_.x - _loc7_.x);
            if(!_loc10_)
            {
               param2.position.y = _loc7_.y + _loc6_ * (_loc8_.y - _loc7_.y);
            }
         }
         return param2;
      }
      
      override public function §!N§(param1:Point3D) : int
      {
         §§push(false);
         var _loc14_:Boolean = true;
         var _loc15_:* = §§pop();
         var _loc10_:* = NaN;
         var _loc12_:* = NaN;
         var _loc2_:Point3D = §>x§.§1]§;
         loop2:
         while(true)
         {
            if(!_loc15_)
            {
               _loc2_.x = param1.x;
               if(!_loc14_)
               {
                  break;
               }
            }
            _loc2_.y = param1.y;
            while(true)
            {
               if(!_loc15_)
               {
                  break loop2;
               }
               addr0067:
               §4!R§.§@!M§(§-!Z§,§>x§.§1]§,§>x§.§1]§);
               break;
            }
            addr007e:
            §§push(Number(Math.atan2(§>x§.§1]§.y,flipped ? -§>x§.§1]§.x : §>x§.§1]§.x)));
            if(!_loc15_)
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!_loc15_)
            {
               loop0:
               for(; _loc3_ < 0; _loc3_ = §§pop())
               {
                  while(true)
                  {
                     §§push(_loc3_);
                     if(_loc14_)
                     {
                        §§push(§§pop() + 6.283185307179586);
                        if(_loc15_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     if(_loc14_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  §§push(Number(§§pop()));
               }
            }
            §§push(int(Math.round(_loc3_ / (6.283185307179586 / §+K§))));
            if(!_loc15_)
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  if(!_loc15_)
                  {
                     while(true)
                     {
                        §§push(_loc4_);
                        if(!_loc14_)
                        {
                           break loop6;
                        }
                        §§push(§+K§);
                        if(!_loc14_)
                        {
                           break loop5;
                        }
                        if(§§pop() >= §§pop())
                        {
                           §§push(_loc4_);
                           if(!_loc15_)
                           {
                              §§push(§§pop() - §+K§);
                              if(!_loc14_)
                              {
                                 continue;
                              }
                           }
                           §§push(int(§§pop()));
                           continue;
                        }
                        _loc4_ = §§pop();
                     }
                  }
                  §§push(_loc4_);
                  if(!_loc15_)
                  {
                     §§push(1);
                     break loop5;
                  }
                  break;
               }
               var _loc5_:* = §§pop();
               if(!_loc15_)
               {
                  while(true)
                  {
                     §§push(_loc5_);
                     if(!_loc15_)
                     {
                        if(§§pop() < §+K§)
                        {
                           break;
                        }
                        if(_loc15_)
                        {
                           break;
                        }
                        §§push(0);
                        if(!_loc15_)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     _loc5_ = §§pop();
                     break;
                  }
               }
               var _loc6_:Point = §!!,§.vertices[_loc4_];
               var _loc7_:Point = §!!,§.vertices[_loc5_];
               var _loc8_:Point = §>x§.§1]§;
               _loc8_ = Point2DUtils.§-_§(param1.x - _loc6_.x,param1.y - _loc6_.y,_loc7_.x - _loc6_.x,_loc7_.y - _loc6_.y,_loc8_);
               var _loc9_:Point = _loc8_;
               if(_loc14_)
               {
                  while(true)
                  {
                     if(_loc9_ == null)
                     {
                        if(_loc15_)
                        {
                           break;
                        }
                        _loc9_ = new Point(0,0);
                     }
                     _loc9_.x = _loc6_.x + _loc8_.x;
                     if(!_loc15_)
                     {
                        break;
                     }
                  }
                  _loc9_.y = _loc6_.y + _loc8_.y;
               }
               _loc6_ = §!!,§.vertices[_loc4_];
               _loc7_ = §!!,§.vertices[_loc5_];
               _loc8_ = §>x§.§1]§;
               §§push(_loc6_.x - _loc7_.x);
               if(_loc14_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc11_:* = §§pop();
               loop9:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc11_);
                     if(!_loc15_)
                     {
                        §§push(0);
                        if(!_loc15_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              §§push(_loc11_);
                           }
                           else
                           {
                              §§push(-_loc11_);
                              if(!_loc14_)
                              {
                                 §§goto(addr032a);
                              }
                           }
                           §§push(1e-10);
                           if(_loc14_)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 §§push(Number(_loc6_.x));
                                 if(!_loc15_)
                                 {
                                    _loc12_ = §§pop();
                                    addr02ec:
                                    §§push(_loc8_.x - _loc12_);
                                    §§push(_loc7_.x - _loc12_);
                                    break;
                                 }
                                 break loop9;
                              }
                              if(!_loc14_)
                              {
                                 continue loop12;
                              }
                              _loc12_ = Number(_loc6_.y);
                              §§push(_loc8_.y - _loc12_);
                              if(_loc15_)
                              {
                                 break loop12;
                              }
                              §§push(_loc7_.y - _loc12_);
                              if(_loc15_)
                              {
                                 break;
                              }
                           }
                           §§push(§§pop() / §§pop());
                           if(!_loc14_)
                           {
                              addr02f4:
                              §§push(Number(§§pop()));
                              break loop9;
                           }
                           _loc10_ = §§pop();
                           continue loop12;
                        }
                        §§goto(addr032c);
                     }
                     §§goto(addr02ec);
                  }
                  §§goto(addr02f4);
               }
               _loc10_ = §§pop();
               loop11:
               while(true)
               {
                  if(!_loc15_)
                  {
                     loop12:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc10_);
                           §§push(1);
                           if(!_loc15_)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(_loc14_)
                                 {
                                    §§push(0.9999);
                                    if(!_loc15_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    _loc10_ = §§pop();
                                 }
                                 break;
                              }
                              §§push(_loc10_);
                              if(!_loc14_)
                              {
                                 break loop12;
                              }
                              §§push(0);
                           }
                           addr032c:
                           if(§§pop() < §§pop())
                           {
                              §§push(0);
                              if(!_loc15_)
                              {
                                 §§push(Number(§§pop()));
                                 break loop12;
                              }
                              break loop11;
                           }
                           break;
                        }
                     }
                     _loc10_ = §§pop();
                     break loop13;
                  }
                  §§push(int(Math.floor(_loc10_ * §^X§)));
                  if(!_loc15_)
                  {
                     §§push(int(§§pop()));
                  }
                  break;
               }
               var _loc13_:* = §§pop();
               loop14:
               while(true)
               {
                  loop15:
                  while(true)
                  {
                     §§push(int(Math.round(param1.z)));
                     if(!_loc15_)
                     {
                        while(true)
                        {
                           §§push(§5k§);
                           if(!_loc15_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc14_)
                              {
                                 break;
                              }
                              §§push(_loc4_);
                              if(!_loc15_)
                              {
                                 §§push(§§pop() * §^X§);
                                 if(!_loc14_)
                                 {
                                    break loop15;
                                 }
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc15_)
                           {
                              break;
                           }
                           break loop14;
                        }
                     }
                     §§push(_loc13_);
                     break;
                  }
                  return §§pop() + §§pop();
               }
               return §§pop();
            }
            §§push(§§pop() + §§pop());
            if(_loc14_)
            {
               §§push(int(§§pop()));
            }
            break loop6;
         }
         _loc2_.z = param1.z;
         if(!_loc15_)
         {
            if(§-!Z§ != null)
            {
               if(!_loc15_)
               {
                  §§goto(addr0067);
               }
            }
         }
         §§goto(addr007e);
      }
      
      override public function §4L§() : §,!Z§
      {
         §§push(false);
         var _loc17_:Boolean = true;
         var _loc18_:* = §§pop();
         var _loc1_:* = null as Vector.<§?!H§>;
         var _loc2_:* = null as Point3D;
         var _loc3_:int = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         var _loc7_:* = 0;
         var _loc8_:Boolean = false;
         var _loc9_:* = NaN;
         var _loc10_:* = null as §?!H§;
         var _loc11_:* = null as Point3D;
         var _loc12_:* = null as Transform;
         var _loc13_:int = 0;
         var _loc14_:* = null as Point3D;
         var _loc15_:* = null as §"B§;
         var _loc16_:* = null as §"B§;
         loop10:
         while(true)
         {
            if(_loc17_)
            {
               if(§;!C§ != null)
               {
                  break;
               }
            }
            _loc1_ = new Vector.<§?!H§>();
            _loc2_ = new Point3D(0,1,0);
            loop11:
            while(true)
            {
               loop12:
               while(true)
               {
                  loop29:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc18_)
                        {
                           §§push(flipped);
                           if(_loc17_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc17_)
                                 {
                                    break;
                                 }
                                 §§push(-1);
                                 if(_loc18_)
                                 {
                                    break loop29;
                                 }
                              }
                              else
                              {
                                 §§push(1);
                                 if(!_loc17_)
                                 {
                                    break loop29;
                                 }
                              }
                              _loc3_ = §§pop();
                              §§push(flipped);
                           }
                           if(!§§pop())
                           {
                              §§push(0);
                              break loop12;
                           }
                        }
                        §§push(int(vertices.length));
                        break loop29;
                     }
                     §§goto(addr0293);
                  }
                  §§push(1);
                  if(_loc17_)
                  {
                     §§push(§§pop() - §§pop());
                     break;
                  }
                  break loop11;
               }
               while(true)
               {
                  §§push(int(§§pop()));
                  if(_loc17_)
                  {
                     _loc4_ = §§pop();
                     if(!_loc17_)
                     {
                        break;
                     }
                     §§push(1);
                  }
                  §§push(int(§§pop()));
                  if(_loc17_)
                  {
                     _loc5_ = §§pop();
                     break;
                  }
                  addr0109:
                  _loc6_ = §§pop();
                  §§goto(addr0293);
               }
               §§goto(addr0109);
            }
            loop9:
            while(§§pop() < §§pop())
            {
               _loc7_ = _loc5_++;
               loop13:
               while(true)
               {
                  loop14:
                  while(true)
                  {
                     loop15:
                     while(true)
                     {
                        loop17:
                        while(true)
                        {
                           loop18:
                           while(true)
                           {
                              if(!_loc18_)
                              {
                                 loop19:
                                 while(true)
                                 {
                                    loop20:
                                    while(true)
                                    {
                                       §§push(true);
                                       if(!_loc18_)
                                       {
                                          while(true)
                                          {
                                             if(vertices[_loc7_].x <= 0)
                                             {
                                                if(!_loc17_)
                                                {
                                                   break;
                                                }
                                                §§pop();
                                                §§push(vertices);
                                                §§push(_loc7_);
                                                if(!_loc18_)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                §§push(§§pop()[§§pop()].x > 0);
                                             }
                                             if(§§pop())
                                             {
                                                if(!_loc18_)
                                                {
                                                   §§push(vertices);
                                                   §§push(_loc7_);
                                                   if(!_loc18_)
                                                   {
                                                      §§push(§§pop() - 1);
                                                   }
                                                   _loc9_ = Number(§§pop()[§§pop()].y);
                                                   if(_loc17_)
                                                   {
                                                      §§push(_loc9_);
                                                      §§push(0);
                                                      if(_loc17_)
                                                      {
                                                         §§push(§§pop() >= §§pop() ? _loc9_ : -_loc9_);
                                                         §§push(1e-10);
                                                         if(_loc17_)
                                                         {
                                                            §§push(§§pop() >= §§pop());
                                                            break;
                                                         }
                                                         break loop14;
                                                      }
                                                      break loop15;
                                                   }
                                                   break loop20;
                                                }
                                                break loop17;
                                             }
                                             _loc8_ = false;
                                             break loop20;
                                          }
                                          if(§§pop())
                                          {
                                             if(!_loc17_)
                                             {
                                                break loop18;
                                             }
                                             §§push(vertices[_loc7_].y > 0);
                                             if(_loc17_)
                                             {
                                                §§push(vertices);
                                                §§push(_loc7_);
                                                if(_loc17_)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                §§push(§§pop() != §§pop()[§§pop()].y > 0);
                                                if(!_loc17_)
                                                {
                                                   break loop19;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             _loc8_ = true;
                                             if(_loc17_)
                                             {
                                                break;
                                             }
                                             addr021f:
                                             while(true)
                                             {
                                                §§push(Number(vertices[_loc7_].y));
                                                if(_loc17_)
                                                {
                                                   _loc9_ = §§pop();
                                                   break loop18;
                                                }
                                                §§goto(addr024c);
                                             }
                                             §§goto(addr024d);
                                          }
                                       }
                                       _loc8_ = §§pop();
                                       break;
                                    }
                                    §§push(_loc8_);
                                    if(!_loc18_)
                                    {
                                       if(§§pop())
                                       {
                                          §§push(flipped);
                                          break;
                                       }
                                       addr0293:
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          §§push(_loc6_);
                                          continue loop9;
                                       }
                                       break loop9;
                                    }
                                    break;
                                 }
                                 if(!§§pop())
                                 {
                                    §§push(_loc7_);
                                    §§push(1);
                                    break loop13;
                                 }
                              }
                              §§goto(addr021f);
                           }
                           §§push(_loc9_);
                           §§push(0);
                           break loop15;
                        }
                        §§goto(addr024d);
                     }
                     if(§§pop() >= §§pop())
                     {
                        break loop17;
                     }
                     addr024d:
                     §§push(_loc9_);
                     if(_loc17_)
                     {
                        addr024c:
                        §§push(-§§pop());
                     }
                     §§push(1e-10);
                     break;
                  }
                  while(true)
                  {
                     if(§§pop() < §§pop())
                     {
                        §§push(_loc7_);
                        if(_loc17_)
                        {
                           §§push(1);
                           if(_loc17_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc17_)
                              {
                                 _loc4_ = int(§§pop());
                                 if(_loc18_)
                                 {
                                 }
                                 break loop9;
                              }
                              break;
                           }
                           break loop13;
                        }
                     }
                     else
                     {
                        §§push(_loc7_);
                     }
                     §§push(int(§§pop()));
                     break;
                  }
                  _loc4_ = §§pop();
                  break loop9;
               }
               §§push(§§pop() - §§pop());
               if(_loc17_)
               {
                  §§push(int(§§pop()));
               }
               _loc4_ = §§pop();
               break;
            }
            _loc11_ = new Point3D(0,0,0);
            loop23:
            while(true)
            {
               if(_loc17_)
               {
                  §§push(0);
                  if(!_loc17_)
                  {
                     break;
                  }
                  _loc6_ = §§pop();
               }
               loop24:
               while(true)
               {
                  §§push(int(vertices.length));
                  if(_loc17_)
                  {
                     §§push(int(§§pop()));
                     break loop23;
                  }
                  while(true)
                  {
                     §§push(int(vertices.length));
                     loop5:
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           §§push(_loc5_);
                           if(_loc17_)
                           {
                              loop6:
                              while(true)
                              {
                                 §§push(int(vertices.length));
                                 if(_loc17_)
                                 {
                                    addr0345:
                                    §§push(int(§§pop() - §§pop()));
                                    while(true)
                                    {
                                       _loc5_ = §§pop();
                                       while(true)
                                       {
                                          _loc10_ = new §?!H§();
                                          while(true)
                                          {
                                             if(!_loc18_)
                                             {
                                                _loc1_.push(_loc10_);
                                                if(!_loc17_)
                                                {
                                                   break;
                                                }
                                             }
                                             _loc10_.§;[§(_loc2_.x,_loc2_.y,_loc2_.z);
                                             break;
                                          }
                                          _loc12_ = new Transform();
                                          _loc14_ = _loc12_.§%!7§;
                                          while(true)
                                          {
                                             if(!_loc18_)
                                             {
                                                _loc9_ = Number(vertices[_loc5_].y);
                                                if(!_loc17_)
                                                {
                                                   break;
                                                }
                                                _loc14_.x = vertices[_loc5_].x;
                                                if(!_loc17_)
                                                {
                                                   break;
                                                }
                                                _loc14_.y = _loc9_;
                                                if(!_loc17_)
                                                {
                                                   break;
                                                }
                                             }
                                             _loc14_.z = 0;
                                             break;
                                          }
                                          _loc15_ = _loc12_.§,t§;
                                          _loc16_ = §;;§[_loc5_];
                                          while(true)
                                          {
                                             if(_loc17_)
                                             {
                                                _loc15_.x = _loc16_.x;
                                                if(!_loc17_)
                                                {
                                                   break;
                                                }
                                                _loc15_.y = _loc16_.y;
                                                if(!_loc17_)
                                                {
                                                   break;
                                                }
                                                _loc15_.z = _loc16_.z;
                                             }
                                             _loc15_.w = _loc16_.w;
                                             _loc12_.reset();
                                             _loc10_.§;!6§(_loc12_);
                                             break;
                                          }
                                          addr0434:
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             §§push(_loc7_);
                                          }
                                          break loop24;
                                       }
                                    }
                                    addr0347:
                                 }
                                 while(true)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       break loop24;
                                    }
                                    §§push(_loc6_);
                                    if(!_loc17_)
                                    {
                                       continue loop6;
                                    }
                                    _loc6_++;
                                    _loc13_ = §§pop();
                                    §§push(_loc4_);
                                    §§push(_loc13_);
                                    if(!_loc18_)
                                    {
                                       §§push(int(§§pop() + §§pop() * _loc3_));
                                       if(_loc18_)
                                       {
                                          continue loop6;
                                       }
                                       _loc5_ = §§pop();
                                       §§push(_loc5_);
                                       §§push(0);
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       §§push(_loc5_);
                                       if(_loc17_)
                                       {
                                          break loop5;
                                       }
                                       continue loop6;
                                    }
                                    while(true)
                                    {
                                       §§push(_loc5_);
                                       §§push(int(vertices.length));
                                       if(_loc17_)
                                       {
                                          _loc5_ = int(§§pop() + §§pop());
                                          continue loop4;
                                       }
                                       continue loop5;
                                    }
                                    continue loop6;
                                 }
                                 §§goto(addr0345);
                              }
                           }
                           §§goto(addr0347);
                        }
                        continue loop4;
                     }
                  }
               }
               addr043c:
               if(_loc17_)
               {
                  §;!C§ = new §&B§(_loc1_);
               }
               break loop10;
            }
            _loc7_ = §§pop();
            while(true)
            {
               if(!_loc18_)
               {
                  §§goto(addr0434);
               }
               §§goto(addr0304);
            }
            §§goto(addr043c);
         }
         return §;!C§;
      }
      
      public function §]!4§() : void
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc1_:* = NaN;
         var _loc4_:* = 0;
         var _loc5_:* = null as Point3D;
         var _loc6_:* = null as §"B§;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = null as §"B§;
         if(_loc13_)
         {
            §§push(§§findproperty(flipped));
            §§push(flipped);
            if(_loc13_)
            {
               §§push(!§§pop());
            }
            §§pop().flipped = §§pop();
         }
         §§push(0);
         if(_loc13_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(int(vertices.length));
         if(_loc13_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc13_)
         {
            loop0:
            while(_loc2_ < _loc3_)
            {
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc13_)
                  {
                     _loc2_++;
                     if(_loc12_)
                     {
                        break;
                     }
                  }
                  §§push(int(§§pop()));
                  break;
               }
               _loc4_ = §§pop();
               vertices[_loc4_].x = -vertices[_loc4_].x;
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc13_)
                        {
                           _loc1_ = §!!,§.§;;§[_loc4_];
                           §§push(_loc1_);
                           §§push(1.5707963267948966);
                           if(!_loc12_)
                           {
                              _loc1_ = §§pop() - §§pop();
                              §§push(3.141592653589793);
                              if(_loc12_)
                              {
                                 break;
                              }
                              §§push(_loc1_);
                              if(_loc12_)
                              {
                                 break loop3;
                              }
                           }
                           _loc1_ = §§pop() - §§pop();
                           if(!_loc13_)
                           {
                              break loop2;
                           }
                        }
                        §§push(_loc1_);
                        §§push(1.5707963267948966);
                        break loop3;
                     }
                     §§push(Number(§§pop()));
                     if(_loc13_)
                     {
                        §§push(Number(§§pop()));
                     }
                     _loc1_ = §§pop();
                     break loop2;
                  }
                  §§push(§§pop() + §§pop());
                  break loop11;
               }
               §!!,§.§;;§[_loc4_] = _loc1_;
               _loc5_ = §>x§.§"!7§;
               _loc6_ = §;;§[_loc4_];
               if(!_loc13_)
               {
                  continue;
               }
               loop4:
               while(true)
               {
                  if(_loc6_ == null)
                  {
                     if(!_loc13_)
                     {
                        break;
                     }
                     _loc6_ = new §"B§();
                  }
                  _loc7_ = Number(Math.sin(_loc1_ / 2));
                  if(_loc13_)
                  {
                     _loc6_.x = _loc5_.x * _loc7_;
                     loop5:
                     while(true)
                     {
                        loop6:
                        while(true)
                        {
                           while(true)
                           {
                              if(_loc13_)
                              {
                                 _loc6_.y = _loc5_.y * _loc7_;
                                 §§push(_loc6_);
                                 §§push(_loc5_.z);
                                 if(!_loc12_)
                                 {
                                    §§push(§§pop() * _loc7_);
                                 }
                                 §§pop().z = §§pop();
                                 if(!_loc13_)
                                 {
                                    break;
                                 }
                                 _loc6_.w = Number(Math.cos(_loc1_ / 2));
                                 if(_loc12_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(_loc6_.x);
                                 if(!_loc12_)
                                 {
                                    §§push(_loc6_.x);
                                    if(_loc13_)
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                §§push(_loc6_.y);
                                                if(!_loc12_)
                                                {
                                                   §§push(_loc6_.y);
                                                   if(_loc12_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop() + §§pop() * §§pop());
                                                   if(!_loc13_)
                                                   {
                                                      break loop9;
                                                   }
                                                   §§push(Number(§§pop()));
                                                   §§push(_loc6_.z);
                                                   if(_loc12_)
                                                   {
                                                      break loop8;
                                                   }
                                                }
                                                §§push(_loc6_.z);
                                                if(_loc13_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   break loop8;
                                                }
                                                break;
                                             }
                                          }
                                          §§push(_loc6_.w);
                                          §§push(_loc6_.w);
                                          break loop10;
                                       }
                                       §§push(§§pop() + §§pop());
                                       break loop9;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc12_)
                                    {
                                       break loop6;
                                    }
                                    §§push(Number(§§pop()));
                                    if(!_loc13_)
                                    {
                                       break loop6;
                                    }
                                 }
                                 _loc8_ = §§pop();
                                 if(!_loc13_)
                                 {
                                    break loop5;
                                 }
                              }
                              §§push(_loc8_);
                              if(!_loc12_)
                              {
                                 §§push(1);
                                 if(!_loc12_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!_loc12_)
                                    {
                                       _loc9_ = §§pop();
                                       if(_loc13_)
                                       {
                                          break loop5;
                                       }
                                       break loop4;
                                    }
                                    break loop6;
                                 }
                                 §§goto(addr0250);
                              }
                              §§goto(addr0229);
                           }
                           §§goto(addr02ca);
                        }
                        §§goto(addr023e);
                     }
                     addr0229:
                     §§push(_loc9_);
                     §§push(0);
                     if(!_loc12_)
                     {
                        if(§§pop() < §§pop())
                        {
                           §§push(_loc9_);
                           break loop6;
                        }
                        addr023e:
                        §§push(_loc9_ < 1e-10);
                        if(!_loc12_)
                        {
                           §§push(!§§pop());
                        }
                        if(!§§pop())
                        {
                           continue loop0;
                        }
                        §§push(_loc8_);
                        §§push(0);
                     }
                     addr0250:
                     if(§§pop() == §§pop())
                     {
                        if(_loc13_)
                        {
                           _loc6_.x = 0;
                           if(!_loc12_)
                           {
                              break;
                           }
                           addr02db:
                           addr02ca:
                           §§push(_loc6_);
                           §§push(_loc6_.y);
                           if(_loc13_)
                           {
                              §§push(§§pop() * _loc8_);
                           }
                           §§pop().y = §§pop();
                           §§push(_loc6_);
                           §§push(_loc6_.z);
                           if(_loc13_)
                           {
                              §§push(§§pop() * _loc8_);
                           }
                           §§pop().z = §§pop();
                           addr02ec:
                           §§push(_loc6_);
                           §§push(_loc6_.w);
                           if(_loc13_)
                           {
                              §§push(§§pop() * _loc8_);
                           }
                           §§pop().w = §§pop();
                           continue loop0;
                        }
                        addr0281:
                        _loc6_.w = 1;
                        continue loop0;
                     }
                     §§push(1 / Number(Math.sqrt(_loc8_)));
                     if(_loc13_)
                     {
                        §§push(Number(§§pop()));
                     }
                     _loc8_ = §§pop();
                     if(!_loc12_)
                     {
                        §§push(_loc6_);
                        §§push(_loc6_.x);
                        if(_loc13_)
                        {
                           §§push(§§pop() * _loc8_);
                        }
                        §§pop().x = §§pop();
                        if(_loc12_)
                        {
                           continue loop0;
                        }
                        §§goto(addr02ca);
                     }
                     §§goto(addr02ec);
                  }
                  §§goto(addr0281);
               }
               _loc6_.y = 0;
               if(!_loc13_)
               {
                  continue;
               }
               _loc6_.z = 0;
               if(!_loc12_)
               {
                  §§goto(addr0281);
               }
               else
               {
                  §§goto(addr02db);
               }
            }
         }
         if(§-!Z§ != null)
         {
            §§push(§§findproperty(rotation));
            §§push(rotation);
            if(_loc13_)
            {
               §§push(§§pop() - 1.5707963267948966);
            }
            §§pop().rotation = §§pop();
            if(!_loc12_)
            {
               §§push(§§findproperty(rotation));
               §§push(3.141592653589793);
               if(!_loc12_)
               {
                  §§push(§§pop() - rotation);
               }
               §§pop().rotation = §§pop();
               §§push(§§findproperty(rotation));
               §§push(rotation);
               if(!_loc12_)
               {
                  §§push(§§pop() + 1.5707963267948966);
                  if(_loc13_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§pop().rotation = §§pop();
            }
            §§push(rotation);
            if(_loc13_)
            {
               §§push(Number(§§pop()));
            }
            _loc7_ = §§pop();
            _loc5_ = §>x§.§"!7§;
            _loc6_ = §-!Z§;
            loop12:
            while(true)
            {
               loop13:
               while(true)
               {
                  while(true)
                  {
                     if(_loc13_)
                     {
                        if(_loc6_ == null)
                        {
                           _loc6_ = new §"B§();
                        }
                        §§push(Number(Math.sin(_loc7_ / 2)));
                        if(_loc12_)
                        {
                           break;
                        }
                        _loc8_ = §§pop();
                        if(_loc12_)
                        {
                           break loop13;
                        }
                        _loc6_.x = _loc5_.x * _loc8_;
                        _loc6_.y = _loc5_.y * _loc8_;
                        if(_loc12_)
                        {
                           break loop12;
                        }
                        §§push(_loc6_);
                        §§push(_loc5_.z);
                        if(_loc13_)
                        {
                           §§push(§§pop() * _loc8_);
                        }
                        §§pop().z = §§pop();
                        _loc6_.w = Number(Math.cos(_loc7_ / 2));
                     }
                     §§push(_loc6_.x * _loc6_.x);
                     break;
                  }
                  loop18:
                  while(true)
                  {
                     loop19:
                     while(true)
                     {
                        loop20:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(_loc6_.y);
                              if(!_loc12_)
                              {
                                 §§push(_loc6_.y);
                                 if(_loc12_)
                                 {
                                    break loop20;
                                 }
                                 §§push(§§pop() + §§pop() * §§pop());
                                 if(!_loc13_)
                                 {
                                    break;
                                 }
                                 §§push(Number(§§pop()));
                                 §§push(_loc6_.z);
                                 §§push(_loc6_.z);
                                 if(!_loc13_)
                                 {
                                    break loop20;
                                 }
                                 §§push(§§pop() + §§pop() * §§pop());
                                 if(_loc12_)
                                 {
                                    break loop19;
                                 }
                                 §§push(Number(§§pop()));
                                 §§push(_loc6_.w);
                                 if(!_loc13_)
                                 {
                                    break loop18;
                                 }
                              }
                              §§push(_loc6_.w);
                              break loop20;
                           }
                           §§goto(addr0457);
                        }
                        §§push(§§pop() * §§pop());
                        break loop18;
                     }
                     loop21:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc12_)
                        {
                           _loc9_ = Number(§§pop());
                           §§push(_loc9_);
                           if(!_loc13_)
                           {
                              break;
                           }
                        }
                        addr0457:
                        loop22:
                        while(true)
                        {
                           §§push(1);
                           if(!_loc12_)
                           {
                              §§push(§§pop() - §§pop());
                              if(_loc13_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              _loc10_ = §§pop();
                              while(true)
                              {
                                 §§push(_loc10_);
                                 if(_loc13_)
                                 {
                                    §§push(0);
                                    if(_loc12_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          §§push(_loc10_);
                                          if(_loc13_)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          §§push(_loc10_);
                                          if(_loc12_)
                                          {
                                             break loop21;
                                          }
                                       }
                                       §§push(-§§pop());
                                       if(_loc13_)
                                       {
                                          break;
                                       }
                                       break loop22;
                                    }
                                 }
                                 §§push(§§pop() < 1e-10);
                                 if(!_loc12_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(§§pop())
                                 {
                                    §§push(_loc9_);
                                    if(!_loc12_)
                                    {
                                       §§push(0);
                                       break;
                                    }
                                    break loop22;
                                 }
                                 continue loop14;
                              }
                           }
                           if(§§pop() != §§pop())
                           {
                              §§push(1 / Number(Math.sqrt(_loc9_)));
                              if(!_loc12_)
                              {
                                 break;
                              }
                              break loop21;
                           }
                           _loc6_.x = 0;
                           _loc6_.y = 0;
                           _loc6_.z = 0;
                           _loc6_.w = 1;
                           if(_loc13_)
                           {
                           }
                           continue loop14;
                        }
                        §§push(Number(§§pop()));
                        break;
                     }
                     _loc9_ = §§pop();
                     if(_loc13_)
                     {
                        §§push(_loc6_);
                        §§push(_loc6_.x);
                        if(!_loc12_)
                        {
                           §§push(§§pop() * _loc9_);
                        }
                        §§pop().x = §§pop();
                        if(!_loc12_)
                        {
                           break loop13;
                        }
                        break loop12;
                     }
                     §§goto(addr0521);
                  }
                  §§push(§§pop() + §§pop());
                  break loop19;
               }
               §§push(_loc6_);
               §§push(_loc6_.y);
               if(!_loc12_)
               {
                  §§push(§§pop() * _loc9_);
               }
               §§pop().y = §§pop();
               addr0521:
               §§push(_loc6_);
               §§push(_loc6_.z);
               if(_loc13_)
               {
                  §§push(§§pop() * _loc9_);
               }
               §§pop().z = §§pop();
               break;
            }
            §§push(_loc6_);
            §§push(_loc6_.w);
            if(!_loc12_)
            {
               §§push(§§pop() * _loc9_);
            }
            §§pop().w = §§pop();
            _loc6_ = §-!Z§;
            _loc11_ = §-!Z§;
            loop14:
            while(true)
            {
               loop15:
               while(true)
               {
                  if(_loc13_)
                  {
                     while(true)
                     {
                        if(_loc11_ == null)
                        {
                           if(!_loc13_)
                           {
                              break;
                           }
                           _loc11_ = new §"B§();
                        }
                        §§push(_loc11_);
                        §§push(_loc6_.x);
                        if(_loc13_)
                        {
                           §§push(-§§pop());
                        }
                        §§pop().x = §§pop();
                        if(_loc13_)
                        {
                           break;
                        }
                        break loop15;
                     }
                     §§push(_loc11_);
                     §§push(_loc6_.y);
                     if(!_loc12_)
                     {
                        §§push(-§§pop());
                     }
                     §§pop().y = §§pop();
                     if(_loc12_)
                     {
                        break loop14;
                     }
                  }
                  §§push(_loc11_);
                  §§push(_loc6_.z);
                  if(!_loc12_)
                  {
                     §§push(-§§pop());
                  }
                  §§pop().z = §§pop();
                  if(!_loc12_)
                  {
                     break;
                  }
                  break loop14;
               }
               _loc11_.w = _loc6_.w;
               break;
            }
         }
         break loop14;
      }
   }
}

