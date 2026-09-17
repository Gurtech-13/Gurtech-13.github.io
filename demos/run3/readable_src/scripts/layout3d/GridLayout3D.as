package layout3d
{
   import §'!1§.§ E§;
   import §0!"§.§&B§;
   import §0!"§.§,!Z§;
   import geom3d.Transform;
   import §]N§.§?!H§;
   import stage.§']§;
   import flash.Boot;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   
   public class GridLayout3D extends Layout3D
   {
      
      public static var init__:Boolean;
      
      public static var SPEC:EReg;
      
      public var width:int;
      
      public var §&+§:Number;
      
      public var §@?§:Number;
      
      public var height:int;
      
      public var §;!C§:§&B§;
      
      public var §&!$§:int;
      
      public function GridLayout3D(param1:int, param2:int)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         super();
         loop0:
         while(true)
         {
            if(!_loc4_)
            {
               while(true)
               {
                  §§push(true);
                  if(_loc3_)
                  {
                     if(param1 <= 0)
                     {
                        break;
                     }
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§pop();
                     §§push(param2 <= 0);
                     if(!_loc3_)
                     {
                        break;
                     }
                  }
                  §§push(Boolean(§§pop()));
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     Boot.lastError = new Error();
                     if(!_loc4_)
                     {
                        throw new ArgumentError("Grids must be at least 1x1.");
                     }
                  }
                  width = param1;
                  if(_loc3_)
                  {
                     height = param2;
                     if(!_loc4_)
                     {
                        §§push(§§findproperty(§&!$§));
                        §§push(param1);
                        if(_loc3_)
                        {
                           §§push(§§pop() * param2);
                        }
                        §§pop().§&!$§ = §§pop();
                     }
                     §&+§ = 1 / param1;
                     if(_loc3_)
                     {
                        break;
                     }
                     break loop0;
                  }
                  break;
               }
            }
            §@?§ = 1 / §&!$§;
            break;
         }
      }
      
      override public function getRelativeIndex(param1:int, param2:int = 0, param3:int = 0, param4:int = 0) : int
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         while(true)
         {
            §§push(param1);
            if(_loc11_)
            {
               §§push(width);
               if(!_loc10_)
               {
                  §§push(int(§§pop() % §§pop()));
                  if(_loc10_)
                  {
                     break;
                  }
                  §§push(param2);
               }
               §§push(§§pop() + §§pop());
               if(!_loc11_)
               {
                  break;
               }
            }
            §§push(int(§§pop()));
            break;
         }
         var _loc5_:* = §§pop();
         §§push(width);
         if(!_loc10_)
         {
            §§push(§§pop() - 1);
            if(!_loc10_)
            {
               §§push(int(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         loop1:
         while(true)
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
                     if(!_loc10_)
                     {
                        loop13:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(_loc5_);
                              if(!_loc10_)
                              {
                                 §§push(0);
                                 if(!_loc11_)
                                 {
                                    break loop1;
                                 }
                                 if(§§pop() >= §§pop())
                                 {
                                    §§push(_loc5_);
                                    if(!_loc10_)
                                    {
                                       §§push(_loc6_);
                                       if(_loc10_)
                                       {
                                          break loop3;
                                       }
                                       if(§§pop() <= §§pop())
                                       {
                                          _loc5_ = int(_loc5_);
                                          break loop13;
                                       }
                                       if(_loc10_)
                                       {
                                          break loop13;
                                       }
                                       §§push(_loc6_);
                                    }
                                    §§push(int(§§pop()));
                                    if(_loc11_)
                                    {
                                       break;
                                    }
                                    break loop4;
                                 }
                                 if(_loc10_)
                                 {
                                    break loop13;
                                 }
                                 §§push(0);
                                 if(!_loc11_)
                                 {
                                    break loop2;
                                 }
                              }
                              §§push(int(§§pop()));
                              if(!_loc10_)
                              {
                                 _loc5_ = §§pop();
                                 if(_loc10_)
                                 {
                                 }
                                 break loop13;
                              }
                              break;
                           }
                           _loc5_ = §§pop();
                           if(_loc10_)
                           {
                           }
                           break;
                        }
                     }
                     break loop13;
                  }
                  §§goto(addr00ee);
               }
               var _loc7_:* = int(§§pop() + §§pop());
               §§push(height);
               if(!_loc10_)
               {
                  §§push(§§pop() - 1);
                  if(_loc11_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               var _loc8_:* = §§pop();
               loop5:
               while(true)
               {
                  loop6:
                  while(true)
                  {
                     loop9:
                     while(true)
                     {
                        if(_loc11_)
                        {
                           loop10:
                           while(true)
                           {
                              loop11:
                              while(true)
                              {
                                 §§push(_loc7_);
                                 if(!_loc10_)
                                 {
                                    while(true)
                                    {
                                       §§push(0);
                                       if(_loc11_)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             if(!_loc10_)
                                             {
                                                §§push(0);
                                                if(!_loc10_)
                                                {
                                                   addr013b:
                                                   §§push(int(§§pop()));
                                                   if(_loc11_)
                                                   {
                                                      _loc7_ = §§pop();
                                                      if(_loc11_)
                                                      {
                                                      }
                                                      break loop10;
                                                   }
                                                   break loop11;
                                                }
                                                addr0174:
                                                _loc7_ = §§pop();
                                                if(_loc11_)
                                                {
                                                }
                                                break loop10;
                                             }
                                             break;
                                          }
                                          §§push(_loc7_);
                                          if(_loc10_)
                                          {
                                             break loop6;
                                          }
                                          §§push(_loc8_);
                                          if(_loc10_)
                                          {
                                             break loop5;
                                          }
                                       }
                                       if(§§pop() > §§pop())
                                       {
                                          if(!_loc10_)
                                          {
                                             break;
                                          }
                                          break loop10;
                                       }
                                       §§push(_loc7_);
                                       if(!_loc10_)
                                       {
                                          §§push(int(§§pop()));
                                          break loop11;
                                       }
                                       break loop9;
                                    }
                                    §§push(_loc8_);
                                    if(_loc10_)
                                    {
                                       break;
                                    }
                                    §§goto(addr0174);
                                    §§push(int(§§pop()));
                                 }
                                 §§goto(addr013b);
                              }
                              _loc7_ = §§pop();
                              break;
                           }
                        }
                        break loop10;
                     }
                     §§goto(addr01a3);
                  }
                  §§push(param4);
                  break;
               }
               addr01a3:
               var _loc9_:int = §§pop() + §§pop();
               §§push(_loc9_);
               if(!_loc10_)
               {
                  loop7:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§&!$§);
                        if(_loc11_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc11_)
                           {
                              break;
                           }
                           §§push(_loc7_);
                           if(_loc10_)
                           {
                              break loop7;
                           }
                        }
                        §§push(§§pop() * width);
                        if(_loc11_)
                        {
                           break loop7;
                        }
                        addr01f0:
                     }
                     §§goto(addr01f0);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc11_)
                  {
                     break loop8;
                  }
                  return §§pop() + §§pop();
               }
            }
            §§push(param3);
            break loop3;
         }
         §§push(§§pop() % §§pop());
         if(!_loc10_)
         {
            addr00ee:
            §§push(int(§§pop()) * §&+§);
         }
         §§push(int(§§pop()));
         break loop2;
      }
      
      override public function getPosition(param1:int, param2:PositionData3D = undefined) : PositionData3D
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            if(!_loc4_)
            {
               while(true)
               {
                  if(param2 == null)
                  {
                     if(_loc4_)
                     {
                        break;
                     }
                     param2 = new PositionData3D(0,0,0);
                  }
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(param2.position);
                        §§push(param1);
                        if(_loc3_)
                        {
                           §§push(width);
                           if(!_loc3_)
                           {
                              break;
                           }
                           §§push(§§pop() % §§pop());
                           if(_loc4_)
                           {
                              break loop2;
                           }
                           §§push(int(§§pop()));
                        }
                        §§push(width);
                        break;
                     }
                     §§push(§§pop() - §§pop() / 2);
                     if(!_loc4_)
                     {
                        break;
                     }
                     §§goto(addr007b);
                  }
                  addr007b:
                  §§push(§§pop() + 0.5);
                  if(_loc3_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§pop().x = §§pop();
                  if(!_loc4_)
                  {
                     break;
                  }
                  addr00c6:
                  param2.position.z = int(Math.floor(param1 * §@?§));
                  if(!_loc3_)
                  {
                     break loop0;
                  }
               }
               §§push(param2.position);
               §§push(int(Math.floor(int(param1 % §&!$§) * §&+§)) - height / 2);
               if(!_loc4_)
               {
                  §§push(§§pop() + 0.5);
                  if(_loc3_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§pop().y = §§pop();
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr00c6);
            }
            param2.rotation = null;
            break;
         }
         return param2;
      }
      
      override public function getIndexNearest(param1:Point3D) : int
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         §§push(int(Math.floor(param1.x + width / 2)));
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(width);
            if(_loc9_)
            {
               §§push(§§pop() - 1);
               if(!_loc9_)
               {
                  break;
               }
            }
            §§push(int(§§pop()));
            break;
         }
         var _loc3_:* = §§pop();
         loop1:
         while(true)
         {
            if(_loc9_)
            {
               loop2:
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc9_)
                  {
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(0);
                           if(!_loc8_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 if(_loc9_)
                                 {
                                    _loc2_ = 0;
                                    if(!_loc8_)
                                    {
                                       break loop2;
                                    }
                                    break;
                                 }
                                 break loop2;
                              }
                              §§push(_loc2_);
                              if(!_loc9_)
                              {
                                 break loop3;
                              }
                              §§push(_loc3_);
                           }
                           if(§§pop() > §§pop())
                           {
                              if(_loc9_)
                              {
                                 break;
                              }
                              break loop2;
                           }
                           §§push(_loc2_);
                           if(_loc9_)
                           {
                              §§push(int(§§pop()));
                              if(!_loc8_)
                              {
                                 _loc2_ = §§pop();
                                 break loop2;
                              }
                           }
                           break loop1;
                        }
                        §§push(_loc3_);
                        break;
                     }
                  }
                  _loc2_ = §§pop();
                  if(_loc9_)
                  {
                  }
                  break;
               }
            }
            §§push(int(Math.floor(param1.y + height / 2)));
            break;
         }
         var _loc4_:* = §§pop();
         §§push(height);
         if(!_loc8_)
         {
            §§push(§§pop() - 1);
            if(_loc9_)
            {
               §§push(int(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         loop5:
         while(true)
         {
            if(_loc9_)
            {
               loop6:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc4_);
                     §§push(0);
                     if(_loc9_)
                     {
                        if(§§pop() < §§pop())
                        {
                           if(!_loc8_)
                           {
                              §§push(0);
                              if(!_loc8_)
                              {
                                 §§push(int(§§pop()));
                                 if(!_loc8_)
                                 {
                                    _loc4_ = §§pop();
                                    if(_loc8_)
                                    {
                                    }
                                    break;
                                 }
                                 break loop5;
                              }
                              break loop6;
                           }
                           break;
                        }
                        §§push(_loc4_);
                        §§push(_loc5_);
                     }
                     if(§§pop() > §§pop())
                     {
                        if(!_loc8_)
                        {
                           _loc4_ = int(_loc5_);
                           if(_loc8_)
                           {
                           }
                        }
                        break;
                     }
                     §§push(_loc4_);
                     if(_loc9_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc8_)
                        {
                           break loop6;
                        }
                        break loop5;
                     }
                     break loop6;
                  }
               }
               _loc4_ = §§pop();
               break loop7;
            }
            §§push(int(Math.floor(param1.z)));
            break;
         }
         var _loc6_:* = §§pop();
         while(true)
         {
            if(!_loc8_)
            {
               §§push(0);
               if(_loc8_)
               {
                  break;
               }
               if(§§pop() < _loc6_)
               {
                  §§push(_loc6_);
                  if(_loc9_)
                  {
                     break;
                  }
                  §§goto(addr0184);
               }
            }
            §§push(0);
            if(_loc9_)
            {
            }
            break;
         }
         addr0184:
         var _loc7_:* = §§pop();
         §§push(_loc7_);
         if(!_loc8_)
         {
            loop9:
            while(true)
            {
               while(true)
               {
                  §§push(§&!$§);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc8_)
                     {
                        break;
                     }
                     §§push(_loc4_);
                     if(_loc8_)
                     {
                        break loop9;
                     }
                     §§push(§§pop() * width);
                     if(_loc8_)
                     {
                        break loop9;
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc9_)
                  {
                     break;
                  }
               }
               return _loc2_;
            }
         }
         return §§pop();
      }
      
      override public function getAreaBounds() : §,!Z§
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc1_:* = null as Point3D;
         var _loc2_:* = null as Vector.<§?!H§>;
         var _loc3_:* = null as §?!H§;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = null as Transform;
         var _loc7_:* = null as Point3D;
         var _loc8_:* = null as Quaternion;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         loop2:
         while(true)
         {
            if(_loc13_)
            {
               if(§;!C§ != null)
               {
                  break;
               }
            }
            _loc1_ = new Point3D(0,0,1);
            _loc2_ = new Vector.<§?!H§>();
            loop3:
            while(true)
            {
               if(_loc13_)
               {
                  while(true)
                  {
                     §§push(0);
                     if(_loc13_)
                     {
                        §§push(int(§§pop()));
                        if(_loc12_)
                        {
                           break;
                        }
                     }
                     _loc4_ = §§pop();
                     if(_loc12_)
                     {
                        break loop3;
                     }
                  }
                  while(true)
                  {
                     if(§§pop() >= 4)
                     {
                        break loop3;
                     }
                     §§push(_loc4_);
                     if(!_loc12_)
                     {
                        _loc4_++;
                        if(!_loc12_)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     _loc5_ = §§pop();
                     _loc3_ = new §?!H§();
                     if(!_loc12_)
                     {
                        _loc3_.§;[§(0,1,0);
                        if(_loc13_)
                        {
                           _loc2_.push(_loc3_);
                        }
                     }
                  }
                  break;
                  addr00dd:
               }
               while(true)
               {
                  §§goto(addr00dd);
               }
            }
            _loc6_ = new Transform();
            _loc7_ = _loc6_.§%!7§;
            while(true)
            {
               if(!_loc12_)
               {
                  §§push(_loc7_);
                  §§push(width);
                  if(!_loc12_)
                  {
                     §§push(-§§pop());
                  }
                  §§pop().x = §§pop() / 2;
                  if(!_loc12_)
                  {
                     §§push(_loc7_);
                     §§push(height);
                     if(_loc13_)
                     {
                        §§push(-§§pop());
                     }
                     §§pop().y = §§pop() / 2;
                     if(_loc12_)
                     {
                        break;
                     }
                     _loc7_.z = 0;
                     if(!_loc13_)
                     {
                        break;
                     }
                  }
               }
               _loc6_.reset();
               if(!_loc12_)
               {
                  break;
               }
               addr0157:
               _loc6_ = new Transform();
               _loc7_ = _loc6_.§%!7§;
               while(true)
               {
                  if(!_loc12_)
                  {
                     _loc7_.x = width / 2;
                     if(!_loc13_)
                     {
                        break;
                     }
                  }
                  §§push(_loc7_);
                  §§push(height);
                  if(_loc13_)
                  {
                     §§push(-§§pop());
                  }
                  §§pop().y = §§pop() / 2;
                  if(_loc13_)
                  {
                     break;
                  }
                  addr01a1:
                  _loc8_ = _loc6_.§,t§;
                  loop7:
                  while(true)
                  {
                     if(_loc8_ == null)
                     {
                        if(!_loc13_)
                        {
                           break;
                        }
                        _loc8_ = new Quaternion();
                     }
                     loop8:
                     while(true)
                     {
                        loop9:
                        while(true)
                        {
                           §§push(Number(Math.sin(0.7853981633974483)));
                           if(_loc13_)
                           {
                              _loc9_ = §§pop();
                              _loc8_.x = _loc1_.x * _loc9_;
                              _loc8_.y = _loc1_.y * _loc9_;
                              if(_loc12_)
                              {
                                 break loop7;
                              }
                              §§push(_loc8_);
                              §§push(_loc1_.z);
                              if(!_loc12_)
                              {
                                 §§push(§§pop() * _loc9_);
                              }
                              §§pop().z = §§pop();
                              _loc8_.w = Number(Math.cos(0.7853981633974483));
                              loop10:
                              while(true)
                              {
                                 loop11:
                                 while(true)
                                 {
                                    loop12:
                                    while(true)
                                    {
                                       §§push(_loc8_.x * _loc8_.x);
                                       §§push(_loc8_.y);
                                       if(!_loc12_)
                                       {
                                          loop13:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc8_.y);
                                                if(_loc13_)
                                                {
                                                   §§push(§§pop() + §§pop() * §§pop());
                                                   if(!_loc13_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(_loc8_.z);
                                                   if(_loc12_)
                                                   {
                                                      break loop10;
                                                   }
                                                   §§push(_loc8_.z);
                                                   if(!_loc13_)
                                                   {
                                                      break loop13;
                                                   }
                                                }
                                                §§push(§§pop() + §§pop() * §§pop());
                                                if(_loc13_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!_loc12_)
                                                   {
                                                      break;
                                                   }
                                                   break loop11;
                                                }
                                                break loop12;
                                             }
                                             §§push(_loc8_.w);
                                             §§push(_loc8_.w);
                                             break;
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc13_)
                                          {
                                             break loop11;
                                          }
                                          addr0284:
                                          _loc11_ = §§pop();
                                          if(_loc12_)
                                          {
                                             break loop9;
                                          }
                                          §§push(_loc11_);
                                          §§push(0);
                                          if(!_loc12_)
                                          {
                                             break;
                                          }
                                          if(§§pop() == §§pop())
                                          {
                                             _loc8_.x = 0;
                                             _loc8_.y = 0;
                                             _loc8_.z = 0;
                                             _loc8_.w = 1;
                                             if(!_loc13_)
                                             {
                                                §§goto(addr0308);
                                             }
                                             §§goto(addr035a);
                                          }
                                          else
                                          {
                                             §§push(1 / Number(Math.sqrt(_loc10_)));
                                             if(_loc12_)
                                             {
                                                break loop8;
                                             }
                                          }
                                       }
                                       addr0298:
                                       if(§§pop() >= §§pop())
                                       {
                                          §§push(_loc11_);
                                          if(!_loc12_)
                                          {
                                             addr02b3:
                                             §§push(1e-10);
                                             break loop10;
                                          }
                                       }
                                       else
                                       {
                                          §§push(-_loc11_);
                                          if(_loc13_)
                                          {
                                             §§goto(addr02b3);
                                          }
                                       }
                                       addr02cb:
                                       §§goto(addr02cd);
                                    }
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc12_)
                                       {
                                          _loc10_ = §§pop();
                                          if(_loc12_)
                                          {
                                             break loop9;
                                          }
                                          §§push(_loc10_);
                                          §§push(1);
                                          if(!_loc13_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop() - §§pop());
                                       }
                                       §§goto(addr0284);
                                    }
                                    §§goto(addr0298);
                                 }
                                 §§push(Number(§§pop()));
                                 break loop12;
                              }
                              §§push(§§pop() < §§pop());
                              if(_loc13_)
                              {
                                 §§push(!§§pop());
                              }
                              if(§§pop())
                              {
                                 break loop7;
                              }
                              §§goto(addr035a);
                           }
                           addr0305:
                           §§push(Number(§§pop()));
                           break loop8;
                        }
                        _loc2_[1].§;!6§(_loc6_);
                        _loc6_ = new Transform();
                        _loc7_ = _loc6_.§%!7§;
                        while(true)
                        {
                           if(!_loc12_)
                           {
                              _loc7_.x = width / 2;
                              if(!_loc13_)
                              {
                                 break;
                              }
                              _loc7_.y = height / 2;
                              if(!_loc13_)
                              {
                                 break;
                              }
                           }
                           _loc7_.z = 0;
                           break;
                        }
                        _loc8_ = _loc6_.§,t§;
                        loop18:
                        while(true)
                        {
                           loop19:
                           while(true)
                           {
                              if(!_loc12_)
                              {
                                 loop20:
                                 while(true)
                                 {
                                    if(_loc8_ == null)
                                    {
                                       if(_loc12_)
                                       {
                                          break;
                                       }
                                       _loc8_ = new Quaternion();
                                    }
                                    while(true)
                                    {
                                       loop22:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(Number(Math.sin(1.5707963267948966)));
                                             if(!_loc12_)
                                             {
                                                _loc9_ = Number(§§pop());
                                                _loc8_.x = _loc1_.x * _loc9_;
                                                _loc8_.y = _loc1_.y * _loc9_;
                                                §§push(_loc8_);
                                                §§push(_loc1_.z);
                                                if(_loc13_)
                                                {
                                                   §§push(§§pop() * _loc9_);
                                                }
                                                §§pop().z = §§pop();
                                                if(_loc12_)
                                                {
                                                   break loop19;
                                                }
                                                _loc8_.w = Number(Math.cos(1.5707963267948966));
                                                if(_loc13_)
                                                {
                                                   §§push(_loc8_.x);
                                                   §§push(_loc8_.x);
                                                   if(_loc13_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc12_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(_loc8_.y);
                                                      if(!_loc13_)
                                                      {
                                                         break loop22;
                                                      }
                                                      §§push(_loc8_.y);
                                                      if(!_loc13_)
                                                      {
                                                         continue loop24;
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                else
                                                {
                                                   §§goto(addr04b2);
                                                }
                                             }
                                             §§push(_loc8_.z);
                                             break loop22;
                                          }
                                          §§goto(addr0521);
                                       }
                                       §§push(_loc8_.z);
                                       if(!_loc13_)
                                       {
                                          continue loop24;
                                       }
                                       §§push(§§pop() * §§pop());
                                       if(!_loc12_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          §§push(_loc8_.w);
                                          §§push(_loc8_.w);
                                          continue loop24;
                                       }
                                       §§goto(addr04de);
                                    }
                                    loop23:
                                    while(true)
                                    {
                                       loop24:
                                       while(true)
                                       {
                                          loop25:
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc12_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!_loc12_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                _loc10_ = §§pop();
                                                while(true)
                                                {
                                                   §§push(_loc10_);
                                                   if(!_loc12_)
                                                   {
                                                      §§push(1);
                                                      if(_loc12_)
                                                      {
                                                         break loop24;
                                                      }
                                                      _loc11_ = §§pop() - §§pop();
                                                      if(_loc12_)
                                                      {
                                                         break loop25;
                                                      }
                                                      §§push(_loc11_);
                                                      if(_loc13_)
                                                      {
                                                         §§push(0);
                                                         if(_loc12_)
                                                         {
                                                            break loop24;
                                                         }
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            if(_loc13_)
                                                            {
                                                               §§push(_loc11_);
                                                               break;
                                                            }
                                                            break loop18;
                                                         }
                                                         §§push(_loc11_);
                                                      }
                                                   }
                                                   §§push(-§§pop());
                                                   if(_loc13_)
                                                   {
                                                      break;
                                                   }
                                                   break loop23;
                                                }
                                             }
                                             addr04de:
                                             §§push(§§pop() < §§pop());
                                             if(_loc13_)
                                             {
                                                §§push(!§§pop());
                                             }
                                             if(§§pop())
                                             {
                                                §§push(_loc10_);
                                                break loop23;
                                             }
                                             break loop18;
                                          }
                                          §§push(_loc8_);
                                          §§push(_loc8_.z);
                                          if(_loc13_)
                                          {
                                             §§push(§§pop() * _loc10_);
                                          }
                                          §§pop().z = §§pop();
                                          §§goto(addr056c);
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          _loc8_.x = 0;
                                          if(!_loc12_)
                                          {
                                             break loop20;
                                          }
                                          addr056c:
                                          §§push(_loc8_);
                                          §§push(_loc8_.w);
                                          if(!_loc12_)
                                          {
                                             §§push(§§pop() * _loc10_);
                                          }
                                          §§pop().w = §§pop();
                                          break loop18;
                                       }
                                       addr0521:
                                       _loc10_ = 1 / Number(Math.sqrt(_loc10_));
                                       while(true)
                                       {
                                          if(_loc13_)
                                          {
                                             §§push(_loc8_);
                                             §§push(_loc8_.x);
                                             if(_loc13_)
                                             {
                                                §§push(§§pop() * _loc10_);
                                             }
                                             §§pop().x = §§pop();
                                             if(_loc12_)
                                             {
                                                break;
                                             }
                                          }
                                          §§push(_loc8_);
                                          §§push(_loc8_.y);
                                          if(!_loc12_)
                                          {
                                             §§push(§§pop() * _loc10_);
                                          }
                                          §§pop().y = §§pop();
                                          if(!_loc12_)
                                          {
                                             break loop25;
                                          }
                                          break loop19;
                                       }
                                       §§goto(addr0583);
                                    }
                                    §§push(0);
                                    break loop24;
                                 }
                              }
                              _loc8_.y = 0;
                              _loc8_.z = 0;
                              _loc8_.w = 1;
                              break loop18;
                           }
                           _loc6_ = new Transform();
                           _loc7_ = _loc6_.§%!7§;
                           if(_loc13_)
                           {
                              §§push(_loc7_);
                              §§push(width);
                              if(_loc13_)
                              {
                                 §§push(-§§pop());
                              }
                              §§pop().x = §§pop() / 2;
                              while(true)
                              {
                                 if(!_loc12_)
                                 {
                                    _loc7_.y = height / 2;
                                    if(_loc12_)
                                    {
                                       break;
                                    }
                                 }
                                 _loc7_.z = 0;
                                 break;
                              }
                           }
                           _loc8_ = _loc6_.§,t§;
                           loop30:
                           while(true)
                           {
                              if(_loc8_ == null)
                              {
                                 if(_loc12_)
                                 {
                                    break;
                                 }
                                 _loc8_ = new Quaternion();
                              }
                              _loc9_ = Number(Math.sin(2.356194490192345));
                              while(true)
                              {
                                 while(true)
                                 {
                                    loop33:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          if(!_loc12_)
                                          {
                                             _loc8_.x = _loc1_.x * _loc9_;
                                             break loop30;
                                          }
                                          addr075f:
                                          §§push(_loc8_);
                                          §§push(_loc8_.x);
                                          if(!_loc12_)
                                          {
                                             §§push(§§pop() * _loc10_);
                                          }
                                          §§pop().x = §§pop();
                                          break loop33;
                                       }
                                       §§goto(addr07be);
                                    }
                                    §§push(_loc8_);
                                    §§push(_loc8_.y);
                                    if(_loc13_)
                                    {
                                       §§push(§§pop() * _loc10_);
                                    }
                                    §§pop().y = §§pop();
                                    if(_loc13_)
                                    {
                                       break;
                                    }
                                    break loop2;
                                 }
                                 §§push(_loc8_);
                                 §§push(_loc8_.z);
                                 if(_loc13_)
                                 {
                                    §§push(§§pop() * _loc10_);
                                 }
                                 §§pop().z = §§pop();
                                 if(!_loc12_)
                                 {
                                    §§push(_loc8_);
                                    §§push(_loc8_.w);
                                    if(!_loc12_)
                                    {
                                       §§push(§§pop() * _loc10_);
                                    }
                                    §§pop().w = §§pop();
                                 }
                                 addr07be:
                                 _loc6_.reset();
                                 break;
                              }
                              _loc2_[3].§;!6§(_loc6_);
                              if(!_loc12_)
                              {
                                 §;!C§ = new §&B§(_loc2_);
                              }
                              break loop2;
                           }
                           _loc8_.y = _loc1_.y * _loc9_;
                           loop35:
                           while(true)
                           {
                              loop36:
                              while(true)
                              {
                                 loop37:
                                 while(true)
                                 {
                                    loop38:
                                    while(true)
                                    {
                                       loop39:
                                       while(true)
                                       {
                                          loop40:
                                          while(true)
                                          {
                                             if(!_loc12_)
                                             {
                                                §§push(_loc8_);
                                                §§push(_loc1_.z);
                                                if(!_loc12_)
                                                {
                                                   §§push(§§pop() * _loc9_);
                                                }
                                                §§pop().z = §§pop();
                                                _loc8_.w = Number(Math.cos(2.356194490192345));
                                                if(_loc12_)
                                                {
                                                   break loop32;
                                                }
                                                §§push(_loc8_.x);
                                                if(!_loc13_)
                                                {
                                                   break loop38;
                                                }
                                                §§push(§§pop() * _loc8_.x);
                                                §§push(_loc8_.y);
                                                if(!_loc12_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc8_.y);
                                                      if(!_loc12_)
                                                      {
                                                         §§push(§§pop() + §§pop() * §§pop());
                                                         if(!_loc13_)
                                                         {
                                                            break loop38;
                                                         }
                                                         §§push(_loc8_.z);
                                                         §§push(_loc8_.z);
                                                         if(!_loc13_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc13_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc12_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc13_)
                                                            {
                                                               §§push(_loc8_.w);
                                                               §§push(_loc8_.w);
                                                               break;
                                                            }
                                                            break loop38;
                                                         }
                                                         break loop35;
                                                      }
                                                      break loop39;
                                                   }
                                                }
                                                _loc10_ = §§pop() + §§pop();
                                                while(true)
                                                {
                                                   if(!_loc12_)
                                                   {
                                                      §§push(_loc10_);
                                                      §§push(1);
                                                      if(!_loc13_)
                                                      {
                                                         break loop36;
                                                      }
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc13_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(Number(§§pop()));
                                                      if(_loc12_)
                                                      {
                                                         break loop37;
                                                      }
                                                      _loc11_ = §§pop();
                                                      if(!_loc13_)
                                                      {
                                                         break loop40;
                                                      }
                                                   }
                                                   §§push(_loc11_);
                                                   if(!_loc12_)
                                                   {
                                                      break;
                                                   }
                                                   break loop37;
                                                }
                                                §§push(0);
                                                if(!_loc13_)
                                                {
                                                   break loop36;
                                                }
                                                if(§§pop() < §§pop())
                                                {
                                                   §§push(_loc11_);
                                                   if(_loc13_)
                                                   {
                                                      §§push(-§§pop());
                                                      break loop35;
                                                   }
                                                   break loop37;
                                                }
                                             }
                                             §§push(_loc11_);
                                             if(_loc12_)
                                             {
                                             }
                                             break loop35;
                                          }
                                          §§goto(addr07be);
                                       }
                                       §§goto(addr0707);
                                    }
                                    §§goto(addr0756);
                                 }
                                 §§goto(addr071c);
                              }
                              if(§§pop() == §§pop())
                              {
                                 if(_loc12_)
                                 {
                                    break loop33;
                                 }
                                 _loc8_.x = 0;
                                 _loc8_.y = 0;
                                 _loc8_.z = 0;
                                 if(_loc12_)
                                 {
                                    break loop33;
                                 }
                                 _loc8_.w = 1;
                                 §§goto(addr07be);
                              }
                              else
                              {
                                 addr0756:
                                 _loc10_ = 1 / Number(Math.sqrt(_loc10_));
                                 if(_loc12_)
                                 {
                                    break loop31;
                                 }
                                 §§goto(addr075f);
                              }
                           }
                           addr0707:
                           §§push(§§pop() < 1e-10);
                           if(!_loc12_)
                           {
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              if(_loc13_)
                              {
                                 addr071c:
                                 §§push(_loc10_);
                                 §§push(0);
                                 break loop36;
                              }
                              break loop31;
                           }
                           §§goto(addr07be);
                        }
                        _loc6_.reset();
                        addr0583:
                        _loc2_[2].§;!6§(_loc6_);
                        break loop19;
                     }
                     _loc10_ = §§pop();
                     addr0308:
                     §§push(_loc8_);
                     §§push(_loc8_.x);
                     if(_loc13_)
                     {
                        §§push(§§pop() * _loc10_);
                     }
                     §§pop().x = §§pop();
                     §§push(_loc8_);
                     §§push(_loc8_.y);
                     if(_loc13_)
                     {
                        §§push(§§pop() * _loc10_);
                     }
                     §§pop().y = §§pop();
                     §§push(_loc8_);
                     §§push(_loc8_.z);
                     if(_loc13_)
                     {
                        §§push(§§pop() * _loc10_);
                     }
                     §§pop().z = §§pop();
                     if(!_loc12_)
                     {
                        §§push(_loc8_);
                        §§push(_loc8_.w);
                        if(_loc13_)
                        {
                           §§push(§§pop() * _loc10_);
                        }
                        §§pop().w = §§pop();
                        if(_loc12_)
                        {
                           break loop9;
                        }
                     }
                     addr035a:
                     _loc6_.reset();
                     break loop9;
                  }
                  §§push(_loc10_);
                  if(_loc13_)
                  {
                     §§goto(addr02cb);
                  }
                  §§goto(addr0305);
               }
               _loc7_.z = 0;
               §§goto(addr01a1);
            }
            _loc2_[0].§;!6§(_loc6_);
            §§goto(addr0157);
         }
         return §;!C§;
      }
   }
}

