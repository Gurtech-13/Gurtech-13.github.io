package §>T§
{
   import §!!$§.§ 6§;
   import §"!M§.§!!P§;
   import §%!Z§.§&!S§;
   import layout3d.§"S§;
   import layout3d.§+F§;
   import layout3d.§>N§;
   import layout3d.Layout3D;
   import layout3d.PositionData3D;
   import §4!6§.§!!V§;
   import §4!6§.§'!Y§;
   import §4!6§.§=s§;
   import §8!0§.§2_§;
   import §@H§.§!7§;
   import §`!7§.§`!3§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.level.Level;
   import com.player03.run3.menu.§ L§;
   import flash.Boot;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Rectangle;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.Quaternion;
   import unitsystem.§7o§;
   
   public class §"=§ extends §+F§
   {
      
      public static var init__:Boolean;
      
      public static var §,n§:Vector.<String>;
      
      public static var § !G§:Vector.<String>;
      
      public static var §7t§:Number;
      
      public static var §2`§:Vector.<String>;
      
      public function §"=§()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super("terrain");
         }
      }
      
      public static function §]R§(param1:Level = undefined, param2:String = undefined, param3:Object = undefined, param4:String = undefined, param5:Object = undefined, param6:String = undefined, param7:Object = undefined) : §0!E§
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1299
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public static function § n§(param1:String) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  §§push(param1);
                  if(!_loc3_)
                  {
                     if(§§pop() == null)
                     {
                        §§push(true);
                        break;
                     }
                     if(_loc3_)
                     {
                        break loop1;
                     }
                     §§push(param1);
                     if(_loc3_)
                     {
                        break loop0;
                     }
                  }
                  §§push("box");
                  if(!_loc3_)
                  {
                     if(§§pop() != §§pop())
                     {
                        break loop1;
                     }
                     §§push(false);
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                     break;
                  }
                  §§goto(addr004a);
               }
               §§goto(addr0069);
            }
            §§push(param1);
            break;
         }
         addr004a:
         §§push(int(§§pop().indexOf("Box")) < 0);
         if(_loc2_)
         {
            return §§pop();
         }
         addr0069:
         return §§pop();
      }
      
      public static function §"!-§(param1:String) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               §§push(param1);
               if(!_loc3_)
               {
                  if(§§pop() == null)
                  {
                     §§push(false);
                     break loop0;
                  }
                  while(true)
                  {
                     if(_loc2_)
                     {
                        §§push(param1);
                        if(_loc3_)
                        {
                           break;
                        }
                        §§push("box");
                        if(!_loc2_)
                        {
                           break loop1;
                        }
                        if(§§pop() == §§pop())
                        {
                           §§push(true);
                           if(!_loc3_)
                           {
                              return §§pop();
                           }
                           break loop0;
                        }
                     }
                     §§push(param1);
                     break;
                  }
               }
               §§push("Box");
               break;
            }
            §§push(int(§§pop().indexOf(§§pop())) >= 0);
            if(_loc2_)
            {
               return §§pop();
            }
            break;
         }
         return §§pop();
      }
      
      public static function §0§(param1:String) : Number
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(param1);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            if(!_loc3_)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(_loc2_);
                              if(_loc4_)
                              {
                                 §§push("fast");
                                 if(_loc4_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc3_)
                                       {
                                          break loop2;
                                       }
                                       §§push(3.141592653589793);
                                       if(!_loc3_)
                                       {
                                          return §§pop();
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc2_);
                                       if(!_loc4_)
                                       {
                                          break loop5;
                                       }
                                       §§push("left");
                                       if(!_loc4_)
                                       {
                                          break loop4;
                                       }
                                       if(§§pop() != §§pop())
                                       {
                                          §§push(_loc2_);
                                          if(_loc4_)
                                          {
                                             addr0087:
                                             §§push("right");
                                             if(_loc4_)
                                             {
                                                break loop4;
                                             }
                                             break;
                                          }
                                          break loop1;
                                       }
                                       if(_loc3_)
                                       {
                                          break loop2;
                                       }
                                       §§push(-1.5707963267948966);
                                       if(!_loc4_)
                                       {
                                          break loop0;
                                       }
                                    }
                                    return §§pop();
                                 }
                                 break;
                              }
                              §§goto(addr0087);
                           }
                           §§goto(addr00da);
                        }
                        §§goto(addr00d7);
                     }
                     if(§§pop() != §§pop())
                     {
                        §§push(_loc2_);
                        if(_loc4_)
                        {
                           break loop1;
                        }
                        break loop5;
                     }
                     if(_loc4_)
                     {
                        break;
                     }
                     §§goto(addr00de);
                  }
                  §§push(1.5707963267948966);
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
                  break loop0;
               }
               while(true)
               {
                  §§push("rotatedBox");
                  if(!_loc3_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc4_)
                        {
                           addr00cf:
                           §§push(0.7853981633974483);
                           break loop0;
                        }
                        break;
                     }
                     addr00d7:
                     §§push(_loc2_);
                     §§push("slow");
                  }
                  addr00da:
                  if(§§pop() == §§pop())
                  {
                     break;
                  }
                  §§goto(addr00ee);
               }
               addr00de:
               §§push(0);
               if(_loc4_)
               {
                  return §§pop();
               }
               addr00ee:
               return 0;
            }
            §§goto(addr00cf);
         }
         return §§pop();
      }
      
      public static function §^a§(param1:String) : String
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
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
                        loop5:
                        while(true)
                        {
                           §§push(param1);
                           if(!_loc2_)
                           {
                              §§push("crumbling");
                              if(!_loc3_)
                              {
                                 break loop3;
                              }
                              if(§§pop() == §§pop())
                              {
                                 §§push(§"=§.§2`§);
                                 §§push(§9'§.§@!A§().§?!;§.getUsername());
                                 if(_loc3_)
                                 {
                                    §§push(§§pop());
                                 }
                                 if(int(§§pop().indexOf(§§pop())) != -1)
                                 {
                                    §§push("DragonBones.png");
                                    if(_loc3_)
                                    {
                                       return §§pop();
                                    }
                                 }
                                 else
                                 {
                                    §§push("CrumblingTile.png");
                                    if(!_loc2_)
                                    {
                                       return §§pop();
                                    }
                                    §§goto(addr015b);
                                 }
                              }
                              else
                              {
                                 loop6:
                                 while(true)
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(true);
                                          §§push(param1);
                                          if(!_loc2_)
                                          {
                                             §§push("ice");
                                             if(!_loc3_)
                                             {
                                                break loop7;
                                             }
                                             if(§§pop() != §§pop())
                                             {
                                                if(_loc2_)
                                                {
                                                   break loop5;
                                                }
                                                §§pop();
                                                §§push(param1);
                                                if(!_loc3_)
                                                {
                                                   break loop4;
                                                }
                                                §§push("ramp");
                                                if(_loc2_)
                                                {
                                                   break loop3;
                                                }
                                                §§push(§§pop() == §§pop());
                                             }
                                             if(§§pop())
                                             {
                                                if(!_loc3_)
                                                {
                                                   break loop2;
                                                }
                                                §§push("IceTile.png");
                                                if(!_loc2_)
                                                {
                                                   §§goto(addr00b3);
                                                }
                                                §§goto(addr0149);
                                             }
                                             else
                                             {
                                                §§push(true);
                                                §§push(true);
                                                if(!_loc2_)
                                                {
                                                   loop9:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(true);
                                                         if(!_loc2_)
                                                         {
                                                            if(param1 == "fast")
                                                            {
                                                               break loop9;
                                                            }
                                                            if(_loc3_)
                                                            {
                                                               §§pop();
                                                               if(_loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(param1 == "slow");
                                                               if(!_loc3_)
                                                               {
                                                                  break loop9;
                                                               }
                                                            }
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                         break loop9;
                                                      }
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         break loop10;
                                                      }
                                                      break loop6;
                                                   }
                                                   break;
                                                }
                                                §§pop();
                                                §§push(param1);
                                             }
                                          }
                                          §§push("left");
                                          break loop7;
                                       }
                                       §§goto(addr00f7);
                                    }
                                    §§push(§§pop() == §§pop());
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    break loop8;
                                 }
                                 addr00f7:
                                 if(Boolean(§§pop()))
                                 {
                                    break loop1;
                                 }
                                 §§pop();
                                 §§push(param1);
                                 if(_loc2_)
                                 {
                                    break loop0;
                                 }
                                 addr0103:
                                 §§push("right");
                                 if(_loc3_)
                                 {
                                    break loop3;
                                 }
                                 §§goto(addr0154);
                              }
                              addr00b3:
                              return §§pop();
                           }
                           §§goto(addr0103);
                        }
                        §§goto(addr010c);
                     }
                     §§goto(addr012e);
                  }
                  addr010c:
                  §§push(§§pop() == §§pop());
                  break loop1;
               }
               §§goto(addr0158);
            }
            if(§§pop())
            {
               §§push("Acceleration.png");
               if(_loc3_)
               {
                  return §§pop();
               }
            }
            else
            {
               §§push(param1);
               if(_loc2_)
               {
                  break;
               }
               addr012e:
               §§push("battery");
               if(!_loc2_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc2_)
                     {
                        break loop2;
                     }
                     §§push("Battery.png");
                     if(!_loc2_)
                     {
                        addr0149:
                        return §§pop();
                     }
                     §§goto(addr015b);
                  }
                  else
                  {
                     §§push(param1);
                     if(!_loc2_)
                     {
                        break;
                     }
                     §§goto(addr015f);
                  }
               }
               §§goto(addr0154);
            }
            §§goto(addr015b);
         }
         addr0154:
         if(§§pop() != "ruined")
         {
            addr015f:
            return null;
         }
         addr015b:
         return "RuinedTile.png";
         addr0158:
      }
      
      public static function §%-§(param1:§=!U§) : String
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = null as String;
         §§push(0);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Vector.<String> = §"=§.§,n§;
         if(_loc6_)
         {
            loop0:
            while(_loc2_ < int(_loc3_.length))
            {
               §§push(_loc3_[_loc2_]);
               if(_loc6_)
               {
                  §§push(§§pop());
                  if(_loc6_)
                  {
                     loop1:
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(§§pop());
                              if(!_loc5_)
                              {
                                 _loc4_ = §§pop();
                                 if(_loc6_)
                                 {
                                    _loc2_++;
                                    if(_loc6_)
                                    {
                                       §§push(_loc4_);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() in StringMap.§+!#§);
                                          if(!_loc6_)
                                          {
                                             break loop2;
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc6_)
                                             {
                                                addr0097:
                                                §§push(Boolean(param1.existsReserved(_loc4_)));
                                                if(_loc6_)
                                                {
                                                }
                                                break loop2;
                                             }
                                             break;
                                          }
                                          §§push(_loc4_);
                                          if(_loc5_)
                                          {
                                             break loop1;
                                          }
                                       }
                                       addr00bf:
                                       §§push(§§pop() in param1.h);
                                       break loop2;
                                    }
                                    break;
                                 }
                                 §§goto(addr0097);
                              }
                              §§goto(addr00bf);
                           }
                           §§push(_loc4_);
                           break loop1;
                        }
                        if(§§pop())
                        {
                           break loop3;
                        }
                        continue loop0;
                     }
                  }
               }
               break loop1;
            }
         }
         return null;
      }
      
      public static function §9!&§(param1:Level = undefined, param2:§=!U§ = undefined, param3:Object = undefined) : §0!E§
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc8_:* = null as Array;
         var _loc9_:* = null as Quaternion;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         while(true)
         {
            if(!_loc12_)
            {
               if(param3 != null)
               {
                  break;
               }
            }
            param3 = false;
            break;
         }
         §§push(0);
         if(!_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop1:
         while(true)
         {
            while(true)
            {
               §§push("color");
               if(!_loc12_)
               {
                  §§push(§§pop() in StringMap.§+!#§);
                  if(!_loc13_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     §§push(Boolean(param2.existsReserved("color")));
                     if(!_loc12_)
                     {
                        break;
                     }
                     addr0130:
                     if(!§§pop())
                     {
                        §§push(param2.h["texture"]);
                        break loop1;
                     }
                     §§push(param2.getReserved("texture"));
                     if(_loc13_)
                     {
                        break loop1;
                     }
                     continue loop3;
                  }
                  §§push("color");
                  if(!_loc13_)
                  {
                     break loop1;
                  }
               }
               §§push(§§pop() in param2.h);
               break;
            }
            if(§§pop())
            {
               §§push("color");
               if(_loc12_)
               {
                  break;
               }
               while(true)
               {
                  if(§§pop() in StringMap.§+!#§)
                  {
                     if(_loc12_)
                     {
                        break;
                     }
                     §§push(Boolean(param2.existsReserved("color")));
                  }
                  else
                  {
                     §§push("color");
                     if(!_loc13_)
                     {
                        break loop1;
                     }
                     §§push(§§pop() in param2.h);
                  }
                  if(§§pop())
                  {
                     if(_loc12_)
                     {
                        break;
                     }
                     while(true)
                     {
                        §§push(§`!3§);
                        if(_loc13_)
                        {
                           §§push("color");
                           if(_loc12_)
                           {
                              break;
                           }
                           if(!(§§pop() in StringMap.§+!#§))
                           {
                              §§push(param2.h["color"]);
                              break;
                           }
                        }
                        §§push(param2.getReserved("color"));
                        break;
                     }
                     §§push(§§pop().§ !`§(§§pop(),0));
                     if(_loc13_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc12_)
                        {
                           §§push(int(§§pop()));
                           if(!_loc13_)
                           {
                              addr011f:
                              _loc4_ = §§pop();
                              break;
                           }
                        }
                        _loc4_ = §§pop();
                        break;
                     }
                  }
                  else
                  {
                     §§push(0);
                     if(_loc13_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
                  §§goto(addr011f);
               }
            }
            §§push("texture");
            if(!_loc13_)
            {
               break;
            }
            §§goto(addr0130);
            §§push(§§pop() in StringMap.§+!#§);
         }
         var _loc5_:* = §§pop();
         loop3:
         while(true)
         {
            while(true)
            {
               if(!_loc12_)
               {
                  §§push(_loc5_);
                  if(!_loc13_)
                  {
                     break;
                  }
                  if(§§pop() == null)
                  {
                     break loop3;
                  }
                  if(!_loc13_)
                  {
                     break loop3;
                  }
               }
               §§push(_loc5_);
               break;
            }
            while(true)
            {
               §§push(§§pop() + ".png");
               if(_loc13_)
               {
                  §§push(§§pop());
                  if(!_loc13_)
                  {
                     break;
                  }
               }
               §§push(§§pop());
               break;
            }
            _loc5_ = §§pop();
            break;
         }
         §§push(§"=§);
         §§push(param1);
         §§push(§"=§.§%-§(param2));
         if(_loc13_)
         {
            §§push(§§pop());
         }
         loop5:
         while(true)
         {
            while(true)
            {
               §§push(_loc4_);
               §§push(_loc5_);
               if(_loc13_)
               {
                  §§push("tileWidth");
                  if(_loc13_)
                  {
                     §§push(§§pop() in StringMap.§+!#§);
                     if(!_loc13_)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        if(_loc13_)
                        {
                           addr01c7:
                           §§push(Boolean(param2.existsReserved("tileWidth")));
                           if(_loc13_)
                           {
                           }
                           break;
                        }
                        break loop5;
                     }
                     §§push("tileWidth");
                  }
                  §§push(§§pop() in param2.h);
                  break;
               }
               §§goto(addr01c7);
            }
            if(§§pop())
            {
               break;
            }
            while(true)
            {
               §§push(-1);
               if(!_loc12_)
               {
                  §§goto(addr023b);
               }
               §§goto(addr024e);
            }
            §§goto(addr0266);
         }
         while(true)
         {
            §§push(§`!3§);
            if(_loc13_)
            {
               §§push("tileWidth");
               if(_loc12_)
               {
                  break;
               }
               if(!(§§pop() in StringMap.§+!#§))
               {
                  §§push(param2.h["tileWidth"]);
                  break;
               }
            }
            §§push(param2.getReserved("tileWidth"));
            break;
         }
         while(true)
         {
            §§push(§§pop().§ !`§(§§pop(),-1));
            if(_loc13_)
            {
               §§push(int(§§pop()));
               if(_loc12_)
               {
                  break;
               }
            }
            addr023b:
            §§push("id");
            if(!_loc12_)
            {
               if(§§pop() in StringMap.§+!#§)
               {
                  break;
               }
               §§push(param2.h["id"]);
            }
            §§goto(addr0266);
         }
         addr024e:
         addr0266:
         var _loc6_:§0!E§ = §§pop().§]R§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),param3);
         loop9:
         while(true)
         {
            while(true)
            {
               if(!_loc12_)
               {
                  §§push("rotation");
                  if(!_loc13_)
                  {
                     break;
                  }
                  if(!(§§pop() in StringMap.§+!#§))
                  {
                     §§push(param2.h["rotation"]);
                     break;
                  }
               }
               §§push(param2.getReserved("rotation"));
               if(!_loc12_)
               {
                  break;
               }
               break loop9;
            }
            §§push(§§pop());
            break;
         }
         var _loc7_:* = §§pop();
         loop11:
         while(true)
         {
            if(!_loc12_)
            {
               while(true)
               {
                  §§push(_loc7_);
                  if(_loc13_)
                  {
                     if(§§pop() == null)
                     {
                        break loop11;
                     }
                     if(_loc12_)
                     {
                        break;
                     }
                     §§push(_loc7_);
                  }
                  §§push(§§pop().split(","));
                  if(_loc13_)
                  {
                     §§push(§§pop());
                     if(_loc13_)
                     {
                        _loc8_ = §§pop();
                        if(_loc12_)
                        {
                           break;
                        }
                        §§push(_loc8_);
                     }
                  }
                  if(int(§§pop().length) >= 4)
                  {
                     break;
                  }
                  break loop11;
               }
            }
            _loc9_ = new Quaternion();
            loop13:
            while(true)
            {
               loop14:
               while(true)
               {
                  loop15:
                  while(true)
                  {
                     if(!_loc12_)
                     {
                        §§push(_loc9_);
                        §§push(Std.parseFloat(_loc8_[0]));
                        if(!_loc12_)
                        {
                           §§push(Number(§§pop()));
                        }
                        §§pop().x = §§pop();
                        loop16:
                        while(true)
                        {
                           if(_loc13_)
                           {
                              §§push(_loc9_);
                              §§push(Std.parseFloat(_loc8_[1]));
                              if(!_loc12_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              §§pop().y = §§pop();
                              if(_loc12_)
                              {
                                 break;
                              }
                              §§push(_loc9_);
                              §§push(Std.parseFloat(_loc8_[2]));
                              if(!_loc12_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              §§pop().z = §§pop();
                           }
                           §§push(_loc9_);
                           §§push(Std.parseFloat(_loc8_[3]));
                           if(!_loc12_)
                           {
                              §§push(Number(§§pop()));
                           }
                           §§pop().w = §§pop();
                           loop17:
                           while(true)
                           {
                              loop18:
                              while(true)
                              {
                                 loop20:
                                 while(true)
                                 {
                                    loop21:
                                    while(true)
                                    {
                                       if(!_loc12_)
                                       {
                                          loop22:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc9_.x);
                                                §§push(_loc9_.x);
                                                if(_loc13_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc12_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(_loc9_.y);
                                                   if(_loc12_)
                                                   {
                                                      break loop20;
                                                   }
                                                   §§push(_loc9_.y);
                                                   if(!_loc12_)
                                                   {
                                                      §§push(§§pop() + §§pop() * §§pop());
                                                      §§push(_loc9_.z);
                                                      §§push(_loc9_.z);
                                                      if(_loc12_)
                                                      {
                                                         break loop22;
                                                      }
                                                   }
                                                   §§push(§§pop() + §§pop() * §§pop());
                                                   if(_loc12_)
                                                   {
                                                      break loop21;
                                                   }
                                                   §§push(Number(§§pop()));
                                                   §§push(_loc9_.w);
                                                }
                                                §§push(_loc9_.w);
                                                break loop22;
                                             }
                                             _loc11_ = §§pop();
                                             if(_loc12_)
                                             {
                                                break loop15;
                                             }
                                          }
                                          §§push(§§pop() + §§pop() * §§pop());
                                          if(_loc13_)
                                          {
                                             _loc10_ = §§pop();
                                             if(_loc13_)
                                             {
                                                §§push(_loc10_);
                                                if(_loc13_)
                                                {
                                                   §§push(1);
                                                   if(_loc13_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      break loop23;
                                                   }
                                                   break loop17;
                                                }
                                                break loop18;
                                             }
                                             break loop14;
                                          }
                                          break loop18;
                                       }
                                       §§push(_loc11_);
                                       if(!_loc13_)
                                       {
                                          break loop18;
                                       }
                                       §§push(0);
                                       if(_loc13_)
                                       {
                                          break loop17;
                                       }
                                       §§goto(addr044f);
                                    }
                                    §§goto(addr0434);
                                 }
                                 §§goto(addr0437);
                              }
                              _loc10_ = §§pop();
                              if(_loc12_)
                              {
                                 break loop16;
                              }
                              §§goto(addr0497);
                           }
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(_loc12_)
                                 {
                                    break;
                                 }
                                 §§push(_loc11_);
                              }
                              else
                              {
                                 §§push(_loc11_);
                                 if(!_loc12_)
                                 {
                                    addr0434:
                                    §§push(-§§pop());
                                 }
                              }
                              addr0437:
                              §§push(§§pop() < 1e-10);
                              if(!_loc12_)
                              {
                                 §§push(!§§pop());
                              }
                              if(!§§pop())
                              {
                                 break loop14;
                              }
                              if(_loc12_)
                              {
                                 break loop14;
                              }
                              if(_loc10_ != 0)
                              {
                                 §§push(1 / Number(Math.sqrt(_loc10_)));
                                 if(!_loc12_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 break loop18;
                              }
                              _loc9_.x = 0;
                              if(!_loc13_)
                              {
                                 break loop13;
                              }
                           }
                           addr0497:
                           §§push(_loc9_);
                           §§push(_loc9_.x);
                           if(_loc13_)
                           {
                              §§push(§§pop() * _loc10_);
                           }
                           §§pop().x = §§pop();
                           §§push(_loc9_);
                           §§push(_loc9_.y);
                           if(!_loc12_)
                           {
                              §§push(§§pop() * _loc10_);
                           }
                           §§pop().y = §§pop();
                           break;
                        }
                        §§push(_loc9_);
                        §§push(_loc9_.z);
                        if(_loc13_)
                        {
                           §§push(§§pop() * _loc10_);
                        }
                        §§pop().z = §§pop();
                        §§push(_loc9_);
                        §§push(_loc9_.w);
                        if(!_loc12_)
                        {
                           §§push(§§pop() * _loc10_);
                        }
                        §§pop().w = §§pop();
                        break loop14;
                     }
                     _loc9_.y = 0;
                     break loop13;
                  }
                  §§goto(addr0473);
               }
               _loc6_.rotation = _loc9_;
               break loop11;
            }
            _loc9_.z = 0;
            if(!_loc12_)
            {
               addr0473:
               _loc9_.w = 1;
               break loop14;
            }
            break;
         }
         return _loc6_;
      }
      
      override public function §3N§(param1:§>N§, param2:§=!U§, param3:int = -1) : §"S§
      {
         §§push(false);
         var _loc17_:Boolean = true;
         var _loc18_:* = §§pop();
         var _loc6_:* = 0;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null as PositionData3D;
         if(_loc17_)
         {
            §§push(param1 is Level);
            if(_loc17_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(!_loc18_)
               {
                  Boot.lastError = new Error();
                  if(!_loc18_)
                  {
                     throw new ArgumentError("level parameter for TerrainDecorator.decorate() must be a Run 3 level.");
                  }
               }
            }
            else
            {
               § L§.mid = 737000;
            }
         }
         var _loc4_:Level = param1;
         if(!_loc18_)
         {
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  §§push(false);
                  if(_loc17_)
                  {
                     if(!_loc4_.noCrumblingTiles)
                     {
                        break loop3;
                     }
                     loop37:
                     while(true)
                     {
                        while(true)
                        {
                           if(_loc17_)
                           {
                              §§pop();
                              if(!_loc17_)
                              {
                                 break loop4;
                              }
                              §§push("crumbling");
                              if(!_loc17_)
                              {
                                 break;
                              }
                              §§push(§§pop() in StringMap.§+!#§);
                              if(_loc18_)
                              {
                                 break loop37;
                              }
                           }
                           if(§§pop())
                           {
                              if(_loc17_)
                              {
                                 §§push(Boolean(param2.existsReserved("crumbling")));
                                 if(!_loc18_)
                                 {
                                    break loop37;
                                 }
                                 break loop3;
                              }
                              break loop4;
                           }
                           §§push("crumbling");
                           break;
                        }
                        §§push(§§pop() in param2.h);
                        if(!_loc18_)
                        {
                           break;
                        }
                        break loop3;
                     }
                  }
                  break loop37;
               }
            }
            if(§§pop())
            {
               break loop4;
            }
            var _loc5_:Layout3D = _loc4_.§1W§.layout;
            loop5:
            while(true)
            {
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     loop32:
                     while(true)
                     {
                        if(_loc17_)
                        {
                           while(true)
                           {
                              §§push(false);
                              if(!_loc18_)
                              {
                                 while(true)
                                 {
                                    §§push("layout");
                                    if(_loc17_)
                                    {
                                       §§push(§§pop() in StringMap.§+!#§);
                                       if(!_loc17_)
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          §§push(Boolean(param2.existsReserved("layout")));
                                          if(_loc17_)
                                          {
                                          }
                                          break;
                                       }
                                       §§push("layout");
                                    }
                                    §§push(§§pop() in param2.h);
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc17_)
                                    {
                                       §§pop();
                                       if(!_loc17_)
                                       {
                                          break loop5;
                                       }
                                       §§push(_loc4_.§1W§.§0!^§ != null);
                                       if(!_loc18_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                 }
                                 if(!§§pop())
                                 {
                                    continue loop9;
                                 }
                                 if(_loc18_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§push("layout");
                                    if(_loc17_)
                                    {
                                       if(§§pop() in StringMap.§+!#§)
                                       {
                                          if(_loc17_)
                                          {
                                             §§push(Boolean(param2.existsReserved("layout")));
                                             break;
                                          }
                                          break loop5;
                                       }
                                       §§push("layout");
                                    }
                                    §§push(§§pop() in param2.h);
                                    break;
                                 }
                              }
                              if(§§pop())
                              {
                                 if(_loc17_)
                                 {
                                    break;
                                 }
                                 break loop5;
                              }
                              §§push(0);
                              if(!_loc18_)
                              {
                                 break loop7;
                              }
                              break loop32;
                           }
                        }
                        while(true)
                        {
                           §§push(§`!3§);
                           if(!_loc18_)
                           {
                              §§push("layout");
                              if(_loc18_)
                              {
                                 break;
                              }
                              if(!(§§pop() in StringMap.§+!#§))
                              {
                                 §§push(param2.h["layout"]);
                                 break;
                              }
                           }
                           §§push(param2.getReserved("layout"));
                           break;
                        }
                        §§push(§§pop().§ !`§(§§pop(),0));
                        if(!_loc18_)
                        {
                           §§push(int(§§pop()));
                           if(!_loc18_)
                           {
                              break loop7;
                           }
                           break;
                        }
                        break loop7;
                     }
                     _loc6_ = §§pop();
                     break loop5;
                  }
                  §§push(int(§§pop()));
                  break loop32;
               }
               var _loc7_:Vector.<int> = new Vector.<int>();
               var _loc8_:Vector.<PositionData3D> = new Vector.<PositionData3D>();
               loop8:
               while(true)
               {
                  loop9:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc17_)
                        {
                           loop30:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(false);
                                 if(_loc17_)
                                 {
                                    if(_loc5_ == null)
                                    {
                                       break loop9;
                                    }
                                    if(!_loc17_)
                                    {
                                       break loop9;
                                    }
                                    §§pop();
                                    if(!_loc17_)
                                    {
                                       break;
                                    }
                                    §§push("pos");
                                    if(!_loc17_)
                                    {
                                       break loop30;
                                    }
                                    §§push(§§pop() in StringMap.§+!#§);
                                    if(!_loc17_)
                                    {
                                       break loop9;
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc18_)
                                    {
                                       break;
                                    }
                                    break loop8;
                                 }
                                 §§push("pos");
                                 break loop30;
                              }
                           }
                           §§push(§§pop() in param2.h);
                           if(_loc17_)
                           {
                              break;
                           }
                           break loop9;
                        }
                        §§push(Boolean(param2.existsReserved("pos")));
                        if(!_loc18_)
                        {
                           break;
                        }
                        break loop9;
                     }
                     §§push(Boolean(§§pop()));
                     break;
                  }
                  if(!§§pop())
                  {
                     _loc8_.push(new PositionData3D(0,0,0));
                     break;
                  }
                  if(!_loc17_)
                  {
                     break;
                  }
                  while(true)
                  {
                     §§push(§§findproperty(§!7§));
                     if(!_loc18_)
                     {
                        §§push("pos");
                        if(!_loc17_)
                        {
                           break;
                        }
                        if(!(§§pop() in StringMap.§+!#§))
                        {
                           §§push(param2.h["pos"]);
                           break;
                        }
                     }
                     §§push(param2.getReserved("pos"));
                     break;
                  }
                  _loc9_ = new §§pop().§!7§(§§pop());
                  _loc10_ = _loc9_.iterator();
                  if(_loc18_)
                  {
                     break;
                  }
                  while(true)
                  {
                     while(true)
                     {
                        §§push(Boolean(_loc10_.hasNext()));
                        if(_loc17_)
                        {
                           if(§§pop())
                           {
                              §§push(int(_loc10_.next()));
                              if(_loc17_)
                              {
                                 §§push(int(§§pop()));
                              }
                              _loc6_ = §§pop();
                              _loc11_ = _loc5_.§<!C§(_loc6_);
                              if(_loc17_)
                              {
                                 _loc8_.push(_loc11_);
                                 if(!_loc17_)
                                 {
                                    continue;
                                 }
                                 if(_loc7_ == null)
                                 {
                                    continue;
                                 }
                                 if(!_loc17_)
                                 {
                                    continue;
                                 }
                              }
                              _loc7_.push(_loc6_);
                              continue;
                           }
                           if(_loc17_)
                           {
                              break loop8;
                           }
                           §§goto(addr03a7);
                        }
                        §§goto(addr0380);
                     }
                     §§goto(addr03a3);
                  }
               }
               while(true)
               {
                  §§push("x");
                  if(_loc17_)
                  {
                     §§push(§§pop() in StringMap.§+!#§);
                     if(_loc18_)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        if(!_loc18_)
                        {
                           §§push(Boolean(param2.existsReserved("x")));
                           if(_loc18_)
                           {
                           }
                           break;
                        }
                        addr03a7:
                        while(true)
                        {
                           §§push(§`!3§);
                           if(!_loc18_)
                           {
                              §§push("x");
                              if(!_loc17_)
                              {
                                 break;
                              }
                              if(!(§§pop() in StringMap.§+!#§))
                              {
                                 §§push(param2.h["x"]);
                                 break;
                              }
                           }
                           §§push(param2.getReserved("x"));
                           break;
                        }
                        §§push(§§pop().§ M§(§§pop(),0));
                        if(!_loc18_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc17_)
                           {
                           }
                        }
                        var _loc12_:Number = §§pop();
                        addr03fa:
                        loop12:
                        while(true)
                        {
                           while(true)
                           {
                              if(!_loc18_)
                              {
                                 §§push("y");
                                 if(_loc17_)
                                 {
                                    §§push(§§pop() in StringMap.§+!#§);
                                    if(_loc18_)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       if(!_loc18_)
                                       {
                                          addr0423:
                                          §§push(Boolean(param2.existsReserved("y")));
                                          if(_loc18_)
                                          {
                                          }
                                          break;
                                       }
                                       break loop12;
                                    }
                                    §§push("y");
                                 }
                                 §§push(§§pop() in param2.h);
                                 break;
                              }
                              §§goto(addr0423);
                           }
                           if(§§pop())
                           {
                              break;
                           }
                           §§push(0);
                           if(!_loc18_)
                           {
                              §§goto(addr0494);
                           }
                           §§goto(addr0495);
                        }
                        while(true)
                        {
                           §§push(§`!3§);
                           if(!_loc18_)
                           {
                              §§push("y");
                              if(!_loc17_)
                              {
                                 break;
                              }
                              if(!(§§pop() in StringMap.§+!#§))
                              {
                                 §§push(param2.h["y"]);
                                 break;
                              }
                           }
                           §§push(param2.getReserved("y"));
                           break;
                        }
                        §§push(§§pop().§ M§(§§pop(),0));
                        if(!_loc18_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc17_)
                           {
                           }
                        }
                        addr0495:
                        var _loc13_:Number = §§pop();
                        addr0494:
                        loop15:
                        while(true)
                        {
                           if(_loc17_)
                           {
                              while(true)
                              {
                                 §§push("z");
                                 if(_loc17_)
                                 {
                                    §§push(§§pop() in StringMap.§+!#§);
                                    if(!_loc17_)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc17_)
                                       {
                                          §§push(Boolean(param2.existsReserved("z")));
                                          if(_loc17_)
                                          {
                                          }
                                          break;
                                       }
                                       addr04d6:
                                       while(true)
                                       {
                                          §§push(§`!3§);
                                          if(_loc17_)
                                          {
                                             §§push("z");
                                             if(_loc18_)
                                             {
                                                break;
                                             }
                                             if(!(§§pop() in StringMap.§+!#§))
                                             {
                                                §§push(param2.h["z"]);
                                                break;
                                             }
                                          }
                                          §§push(param2.getReserved("z"));
                                          break;
                                       }
                                       §§push(§§pop().§ M§(§§pop(),0));
                                       if(!_loc18_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc18_)
                                          {
                                          }
                                       }
                                       break loop15;
                                    }
                                    §§push("z");
                                 }
                                 §§push(§§pop() in param2.h);
                                 break;
                              }
                              if(!§§pop())
                              {
                                 §§push(0);
                                 if(!_loc18_)
                                 {
                                    break;
                                 }
                                 var _loc14_:* = §§pop();
                                 loop18:
                                 while(true)
                                 {
                                    loop19:
                                    while(true)
                                    {
                                       loop23:
                                       while(true)
                                       {
                                          if(!_loc18_)
                                          {
                                             loop25:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   §§push(true);
                                                   if(!_loc18_)
                                                   {
                                                      §§push(true);
                                                      if(!_loc18_)
                                                      {
                                                         if(_loc12_ != 0)
                                                         {
                                                            break;
                                                         }
                                                         if(!_loc17_)
                                                         {
                                                            break loop25;
                                                         }
                                                      }
                                                      §§pop();
                                                      if(!_loc17_)
                                                      {
                                                         break loop23;
                                                      }
                                                   }
                                                   §§push(_loc13_ == 0);
                                                   if(_loc17_)
                                                   {
                                                      break loop25;
                                                   }
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   break loop19;
                                                }
                                                if(_loc18_)
                                                {
                                                   break loop19;
                                                }
                                                §§pop();
                                                if(!_loc17_)
                                                {
                                                   break loop18;
                                                }
                                             }
                                             §§push(!§§pop());
                                             if(!_loc18_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             break loop26;
                                          }
                                          §§push(_loc14_ == 0);
                                          if(_loc17_)
                                          {
                                             break;
                                          }
                                          addr0591:
                                          §§push(Boolean(§§pop()));
                                          break loop19;
                                       }
                                       §§push(!§§pop());
                                       if(!_loc17_)
                                       {
                                          break;
                                       }
                                       §§goto(addr0591);
                                    }
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          if(!_loc18_)
                                          {
                                             break loop18;
                                          }
                                          §§goto(addr0616);
                                       }
                                    }
                                    §§goto(addr0621);
                                 }
                                 loop20:
                                 while(true)
                                 {
                                    §§push(0);
                                    if(!_loc18_)
                                    {
                                       §§push(int(§§pop()));
                                       if(_loc17_)
                                       {
                                          _loc6_ = §§pop();
                                          if(_loc18_)
                                          {
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                          }
                                          addr0616:
                                       }
                                    }
                                    while(true)
                                    {
                                       if(§§pop() >= int(_loc8_.length))
                                       {
                                          break loop20;
                                       }
                                       _loc11_ = _loc8_[_loc6_];
                                       while(true)
                                       {
                                          if(_loc17_)
                                          {
                                             _loc6_++;
                                             if(_loc18_)
                                             {
                                                break;
                                             }
                                          }
                                          _temp_1.x += _loc12_;
                                          if(_loc17_)
                                          {
                                             _temp_2.y += _loc13_;
                                             if(_loc17_)
                                             {
                                                var _temp_3:* = _loc11_.position;
                                                while(true)
                                                {
                                                   §§push(_temp_3);
                                                   §§push(_temp_3.z);
                                                   if(!_loc18_)
                                                   {
                                                      §§push(§§pop() + _loc14_);
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
                                          break;
                                       }
                                       §§goto(addr0616);
                                    }
                                    break;
                                 }
                                 var _loc15_:Vector.<PositionData3D> = _loc8_;
                                 var _loc16_:§!=§ = new §!=§(_loc4_,this,_loc15_,_loc7_,§"=§.§9!&§(_loc4_,param2));
                                 addr0621:
                                 if(!_loc18_)
                                 {
                                    §^!9§(_loc16_,param3);
                                 }
                                 return _loc16_;
                              }
                           }
                           §§goto(addr04d6);
                        }
                        §§push(Number(§§pop()));
                        continue loop19;
                     }
                     §§push("x");
                  }
                  §§push(§§pop() in param2.h);
                  break;
               }
               addr03a3:
               if(§§pop())
               {
                  §§goto(addr03a7);
               }
               else
               {
                  §§push(0);
                  if(_loc18_)
                  {
                     continue loop12;
                  }
               }
               §§goto(addr03fa);
            }
            _loc5_ = _loc4_.§1W§.§0!^§[_loc6_];
            break loop6;
         }
         return null;
      }
      
      override public function §^!9§(param1:§"S§, param2:int = -1) : void
      {
         var _temp_1:* = true;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = _temp_1;
         var _loc11_:* = 0;
         var _loc12_:int = 0;
         var _loc3_:* = param1.positionIterator3D;
         if(_loc14_)
         {
            §§push(Boolean(_loc3_.hasNext()));
            if(_loc14_)
            {
               §§push(!§§pop());
            }
            if(!§§pop())
            {
               var _loc4_:§[C§ = null;
               var _loc5_:PositionData3D = null;
               var _loc6_:§!=§ = param1;
               var _loc7_:Level = _loc6_.tunnel;
               var _loc8_:§0!E§ = _loc6_.§]!,§;
               var _loc9_:Vector.<§[C§> = _loc6_.§+!R§;
               §§push(0);
               if(!_loc13_)
               {
                  §§push(int(§§pop()));
               }
               var _loc10_:* = §§pop();
               while(true)
               {
                  if(_loc14_)
                  {
                     loop0:
                     while(true)
                     {
                        §§push(false);
                        if(Boolean(_loc3_.hasNext()))
                        {
                           §§pop();
                           while(true)
                           {
                              §§push(true);
                              if(_loc14_)
                              {
                                 if(_loc10_ < param2)
                                 {
                                    break;
                                 }
                                 §§pop();
                                 §§push(param2 < 0);
                              }
                              §§push(Boolean(§§pop()));
                              if(_loc14_)
                              {
                                 break;
                              }
                           }
                        }
                        if(!§§pop())
                        {
                           break;
                        }
                        _loc5_ = _loc3_.next();
                        _loc4_ = §[C§.§4r§(_loc7_,_loc8_);
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
                                    if(!_loc13_)
                                    {
                                       _loc4_.§,W§(_loc5_,_loc7_.§1W§);
                                       while(true)
                                       {
                                          if(_loc4_.§4!5§ != §-n§.§6!P§)
                                          {
                                             while(true)
                                             {
                                                §§push(true);
                                                if(_loc14_)
                                                {
                                                   if(_loc4_.§ !&§ != null)
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc13_)
                                                   {
                                                      §§pop();
                                                      if(!_loc14_)
                                                      {
                                                         break loop8;
                                                      }
                                                      §§push(false);
                                                      if(_loc4_.§@!B§ != null)
                                                      {
                                                         §§pop();
                                                         §§push(_loc4_.§@!B§.§-!9§);
                                                         if(!_loc13_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                      }
                                                   }
                                                }
                                                §§push(Boolean(§§pop()));
                                                if(!_loc13_)
                                                {
                                                   break;
                                                }
                                                break loop7;
                                             }
                                             if(§§pop())
                                             {
                                                _loc7_.§4M§(_loc4_);
                                             }
                                             else
                                             {
                                                _loc7_.§`=§(_loc4_);
                                                if(_loc13_)
                                                {
                                                   break;
                                                }
                                             }
                                          }
                                          if(_loc9_ != null)
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       §§push(_loc10_);
                                       §§push(param1.count);
                                       if(_loc13_)
                                       {
                                          break loop6;
                                       }
                                       §§push(int(§§pop() + §§pop()));
                                       if(_loc13_)
                                       {
                                          break loop5;
                                       }
                                       _loc11_ = §§pop();
                                    }
                                    §§push(_loc7_.backwards);
                                    break loop7;
                                 }
                                 §§goto(addr01c2);
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc14_)
                                    {
                                       §§push(int(_loc6_.indices.length));
                                       §§push(1);
                                       if(_loc14_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          §§push(_loc11_);
                                          if(_loc14_)
                                          {
                                             break loop6;
                                          }
                                       }
                                       §§goto(addr01be);
                                    }
                                 }
                                 §§goto(addr019d);
                              }
                              §§goto(addr01b7);
                           }
                           §§push(§§pop() - §§pop());
                           if(_loc14_)
                           {
                              _loc11_ = int(§§pop());
                              if(_loc14_)
                              {
                                 addr019d:
                                 §§push(_loc6_.indices[_loc11_]);
                                 break;
                              }
                              §§goto(addr01b7);
                           }
                           §§goto(addr01a8);
                        }
                        addr01a8:
                        _loc12_ = §§pop();
                        loop1:
                        while(true)
                        {
                           §§push(int(_loc9_.length));
                           §§push(_loc12_);
                           addr01be:
                           while(§§pop() <= §§pop())
                           {
                              _loc9_.push(null);
                              continue loop1;
                           }
                           break;
                        }
                        addr01c2:
                        _loc9_[_loc12_] = _loc4_;
                        continue;
                        addr01b7:
                        _loc10_++;
                     }
                     _loc6_.§>k§ = _loc4_;
                     if(!_loc14_)
                     {
                        break;
                     }
                  }
                  param1.§]!F§ = _loc5_;
                  if(!_loc13_)
                  {
                     §§push(param1);
                     §§push(param1.count);
                     if(!_loc13_)
                     {
                        §§push(§§pop() + _loc10_);
                     }
                     §§pop().count = §§pop();
                  }
                  break;
               }
               return;
            }
         }
      }
   }
}

