package § 0§
{
   import §!!$§.§ 6§;
   import §!D§.§1!&§;
   import §!D§.§;U§;
   import §%!Z§.§'§;
   import §'!W§.§&!A§;
   import §,!G§.§6!7§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §4n§.§3!G§;
   import §4n§.Achievement;
   import §6!Q§.§'!E§;
   import §6!Q§.§]u§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.§59§;
   import com.player03.run3.level.TunnelSection;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import haxe.Timer;
   import haxeutils.math.§<!$§;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   import motion.Actuate;
   import motion.actuators.GenericActuator;
   import openfl.Assets;
   
   public class §8!=§ implements §+<§, §1!&§
   {
      
      public static var init__:Boolean;
      
      public static var §1!`§:§6!7§;
      
      public static var instance:§8!=§;
      
      public var pathName:String;
      
      public var §9V§:int;
      
      public var levels:Vector.<String>;
      
      public var levelCount:int;
      
      public var §9M§:int;
      
      public var extraParams:Object;
      
      public var §7!V§:Number;
      
      public var angle:Number;
      
      public function §8!=§()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         angle = 0;
         while(true)
         {
            if(_loc1_)
            {
               §9V§ = 0;
               if(!_loc1_)
               {
                  break;
               }
               §7!V§ = 0;
               §9M§ = -1;
               pathName = "infinite";
               if(!_loc1_)
               {
                  break;
               }
            }
            §§push(§§findproperty(levels));
            §§push(§;U§);
            §§push(Assets.getText("text/InfiniteLevels.txt"));
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            §§pop().levels = §§pop().§8a§(§§pop());
            if(_loc1_)
            {
               break;
            }
            §§goto(addr0098);
         }
         levelCount = int(levels.length);
         addr0098:
      }
      
      public static function §@!A§() : §8!=§
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = null as §8!=§;
         if(_loc2_)
         {
            if(§8!=§.instance != null)
            {
               return §8!=§.instance;
            }
         }
         return §8!=§.instance = new §8!=§();
      }
      
      public function §5!Z§(param1:Number, param2:Number) : int
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         §§push(int(Math.round(§<!$§.random(param1,param2))));
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(levelCount);
         if(!_loc6_)
         {
            §§push(§§pop() - 2);
            if(_loc5_)
            {
               §§push(int(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
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
                     §§push(_loc3_);
                     if(!_loc6_)
                     {
                        §§push(0);
                        if(_loc6_)
                        {
                           break;
                        }
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(!_loc5_)
                              {
                                 break loop1;
                              }
                              §§push(0);
                              if(_loc5_)
                              {
                                 _loc3_ = §§pop();
                                 if(_loc6_)
                                 {
                                 }
                                 break loop1;
                              }
                              addr008e:
                              §§push(_loc4_);
                              if(!_loc5_)
                              {
                                 break loop3;
                              }
                              if(§§pop() > §§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    §§push(_loc4_);
                                    if(_loc5_)
                                    {
                                       _loc3_ = int(§§pop());
                                       if(_loc5_)
                                       {
                                          break loop1;
                                       }
                                       break loop2;
                                    }
                                    break;
                                 }
                                 break loop2;
                              }
                              §§push(_loc3_);
                              if(_loc6_)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              §§push(_loc3_);
                              if(_loc5_)
                              {
                                 §§goto(addr008e);
                              }
                           }
                           §§push(int(§§pop()));
                           if(!_loc6_)
                           {
                              break;
                           }
                           break loop0;
                        }
                     }
                     _loc3_ = §§pop();
                     break loop1;
                  }
                  §§goto(addr00d9);
               }
               §§goto(addr00df);
            }
            §§push(_loc3_);
            break;
         }
         addr00d9:
         if(§§pop() >= §9M§)
         {
            _loc3_++;
         }
         addr00df:
         return _loc3_;
      }
      
      public function §5!D§(param1:§ !W§) : void
      {
         §>!0§.§@!A§().§]!M§(param1);
      }
      
      public function §31§(param1:int, param2:TunnelSection) : void
      {
      }
      
      public function §%!U§(param1:int, param2:TunnelSection, param3:int) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         while(true)
         {
            §§push(param2.tunnel);
            §§push(param2.endZ);
            if(_loc6_)
            {
               §§push(§§pop() + 1);
               if(_loc5_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc4_:TunnelSection = §§pop().§]!#§(§§pop(),true);
         if(!_loc5_)
         {
            §§push(§§findproperty(§%I§));
            §§push(param1);
            if(!_loc5_)
            {
               §§push(§§pop() + 1);
            }
            §§pop().§%I§(§§pop(),_loc4_);
         }
      }
      
      public function §%I§(param1:int, param2:TunnelSection) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc3_:* = null as §'!E§;
         var _loc4_:* = null as §3!I§;
         var _loc5_:* = null as §3!I§;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               if(!_loc8_)
               {
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        §§push(true);
                        if(_loc9_)
                        {
                           if(param1 == 0)
                           {
                              break;
                           }
                           if(_loc8_)
                           {
                              break loop3;
                           }
                        }
                        §§pop();
                        while(true)
                        {
                           if(!_loc8_)
                           {
                              §§push(param1);
                              if(!_loc8_)
                              {
                                 §§push(§9V§);
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop() >= §§pop());
                                    if(!_loc8_)
                                    {
                                       break loop3;
                                    }
                                    break loop4;
                                 }
                                 addr0082:
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc9_)
                                    {
                                       addr008c:
                                       _loc3_ = §'!E§.§@!A§();
                                       while(true)
                                       {
                                          §§push(§=B§);
                                          §§push(int(_loc3_.§6a§.length));
                                          if(_loc9_)
                                          {
                                             §§push(1);
                                             if(!_loc9_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop() - §§pop());
                                          }
                                          §§push(-1);
                                          break;
                                       }
                                       _loc4_ = §§pop().§@W§(§§pop(),§§pop(),-1);
                                       if(_loc9_)
                                       {
                                          while(_loc4_.§#1§ != _loc4_.end)
                                          {
                                             _loc5_ = _loc4_;
                                             if(!_loc8_)
                                             {
                                                §§push(_loc5_);
                                                §§push(_loc5_.§#1§);
                                                if(_loc9_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc4_.§['§);
                                                      if(!_loc8_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc8_)
                                                         {
                                                            §§push(int(§§pop()));
                                                            if(!_loc9_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         var _temp_2:* = §§pop();
                                                         §§push(_temp_2);
                                                         §§push(_temp_2);
                                                      }
                                                      _loc7_ = §§pop();
                                                      break;
                                                   }
                                                }
                                                §§pop().§#1§ = §§pop();
                                                if(!_loc8_)
                                                {
                                                   §§push(_loc7_);
                                                   if(_loc9_)
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                   _loc6_ = §§pop();
                                                   if(!_loc8_)
                                                   {
                                                      _loc3_.§6a§[_loc6_].hide();
                                                   }
                                                }
                                             }
                                          }
                                          if(_loc9_)
                                          {
                                             break;
                                          }
                                          break loop1;
                                       }
                                    }
                                    break;
                                 }
                                 §§push(§'!E§.§@!A§());
                                 §§push(Timer.stamp());
                                 if(_loc9_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc9_)
                                    {
                                       §§push(§§pop() - 2);
                                    }
                                 }
                                 §§pop().dismissOld(§§pop());
                                 break;
                              }
                              addr0080:
                              §§goto(addr0082);
                              §§push(0);
                           }
                           §§goto(addr008c);
                        }
                     }
                     if(!§§pop())
                     {
                        break loop2;
                     }
                     if(_loc9_)
                     {
                        §§goto(addr0080);
                        §§push(param1);
                     }
                  }
                  §§push(Boolean(§§pop()));
                  break loop4;
               }
               §§push(§§findproperty(§9V§));
               §§push(param1);
               if(_loc9_)
               {
                  §§push(§§pop() + 1);
               }
               §§pop().§9V§ = §§pop();
               if(!_loc8_)
               {
                  break loop1;
               }
               break;
            }
            return;
         }
         §>!0§.§@!A§().§%X§(param2.tunnel,param2.id);
         if(_loc9_)
         {
            §]u§.§@!A§().options.§3!_§.§8!§(param2.tunnel);
         }
         break loop2;
      }
      
      public function §'m§(param1:int, param2:Object = undefined) : Boolean
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(param2 == null)
            {
               §§push(false);
               if(_loc4_)
               {
                  break;
               }
               param2 = §§pop();
            }
            return true;
         }
         return §§pop();
      }
      
      public function §`!R§(param1:int, param2:Point = undefined) : Point
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(param2 == null)
            {
               if(_loc3_)
               {
                  break;
               }
               param2 = new Point(0,0);
            }
            param2.x = param1 * 10;
            if(!_loc3_)
            {
               param2.y = 0;
            }
            break;
         }
         return param2;
      }
      
      public function §]Z§(param1:int) : Number
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         loop0:
         while(true)
         {
            if(_loc4_)
            {
               loop1:
               while(true)
               {
                  if(param1 == 0)
                  {
                     if(!_loc5_)
                     {
                        loop2:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(§§findproperty(angle));
                              §§push(Number(Math.random()));
                              if(_loc4_)
                              {
                                 §§push(0.5);
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() - §§pop());
                                 if(_loc5_)
                                 {
                                    break loop2;
                                 }
                              }
                              §§push(§§pop() * 2);
                              if(_loc4_)
                              {
                                 break loop2;
                              }
                              addr005f:
                              §§pop().angle = §§pop();
                              if(_loc4_)
                              {
                                 break loop1;
                              }
                           }
                           §§goto(addr005f);
                        }
                        §§push(1.5707963267948966);
                        break loop3;
                     }
                  }
                  else
                  {
                     loop4:
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           §§push(§§findproperty(angle));
                           §§push(angle);
                           if(_loc4_)
                           {
                              §§push(Number(Math.random()));
                              if(!_loc4_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 §§push(0.5);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc5_)
                                    {
                                       break loop5;
                                    }
                                    §§push(§§pop() * 2);
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    §§push(0);
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 break loop5;
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc5_)
                              {
                                 break loop4;
                              }
                              §§push(Number(§§pop()));
                              if(_loc5_)
                              {
                                 break loop4;
                              }
                           }
                           §§push(Number(§§pop()));
                           if(_loc4_)
                           {
                              var _temp_1:* = §§pop();
                              §§push(_temp_1);
                              §§push(_temp_1);
                              break;
                           }
                           break loop4;
                        }
                        _loc3_ = §§pop();
                        break;
                     }
                     §§pop().angle = §§pop();
                     if(_loc4_)
                     {
                        §§push(_loc3_);
                        if(!_loc4_)
                        {
                           break loop0;
                        }
                        §§push(Number(§§pop()));
                        if(_loc5_)
                        {
                           break loop0;
                        }
                        _loc2_ = §§pop();
                        if(!_loc4_)
                        {
                           break;
                        }
                     }
                  }
                  loop7:
                  while(true)
                  {
                     §§push(§§findproperty(angle));
                     if(_loc4_)
                     {
                        §§push(_loc2_);
                        if(_loc5_)
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(-1.5707963267948966);
                           if(!_loc5_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 §§push(-1.5707963267948966);
                                 break loop7;
                              }
                              if(!_loc4_)
                              {
                                 break;
                              }
                              §§push(_loc2_);
                              if(!_loc4_)
                              {
                                 break loop7;
                              }
                              §§push(1.5707963267948966);
                           }
                           if(§§pop() <= §§pop())
                           {
                              break;
                           }
                           §§push(1.5707963267948966);
                           if(_loc5_)
                           {
                           }
                           break loop7;
                        }
                     }
                     §§push(_loc2_);
                     if(_loc5_)
                     {
                     }
                     break;
                  }
                  §§pop().angle = §§pop();
                  break;
               }
            }
            return angle;
         }
         return §§pop();
      }
      
      public function §,q§(param1:int) : String
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:* = 0;
         var _loc5_:* = null as String;
         var _loc6_:* = 0;
         while(true)
         {
            if(!_loc8_)
            {
               if(param1 > 0)
               {
                  break;
               }
               if(!_loc7_)
               {
                  break;
               }
            }
            §§push(§§findproperty(§7!V§));
            §§push(§8!=§.§1!`§.§[!$§(Number(Math.random())));
            if(_loc7_)
            {
               §§push(Number(§§pop()));
            }
            §§pop().§7!V§ = §§pop();
            break;
         }
         while(true)
         {
            §§push(§7!V§);
            if(!_loc8_)
            {
               §§push(§§pop() + 6 * param1);
               if(!_loc7_)
               {
                  break;
               }
               §§push(Number(§§pop()));
               if(_loc8_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc2_:* = §§pop();
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               if(_loc7_)
               {
                  §§push(_loc2_);
                  if(_loc8_)
                  {
                     break;
                  }
                  §§push(0.9);
                  if(_loc7_)
                  {
                     §§push(§§pop() * levelCount);
                  }
                  if(§§pop() <= §§pop())
                  {
                     break loop3;
                  }
                  if(!_loc7_)
                  {
                     break loop3;
                  }
               }
               while(true)
               {
                  §§push(0.9);
                  if(_loc7_)
                  {
                     §§push(levelCount);
                     if(_loc8_)
                     {
                        break;
                     }
                     §§push(§§pop() * §§pop());
                     if(!_loc7_)
                     {
                        break loop4;
                     }
                  }
                  _loc2_ = §§pop();
                  break loop3;
               }
               §§goto(addr00cb);
            }
            §§push(Number(§§pop()));
            continue loop6;
         }
         §§push(0.3);
         if(!_loc8_)
         {
            addr00cb:
            §§push(§§pop() * param1);
            if(_loc7_)
            {
               break loop4;
            }
            var _loc3_:* = §§pop();
            loop5:
            while(true)
            {
               while(true)
               {
                  while(true)
                  {
                     if(_loc7_)
                     {
                        §§push(_loc3_);
                        if(!_loc7_)
                        {
                           break;
                        }
                        §§push(_loc2_);
                        if(!_loc8_)
                        {
                           §§push(§§pop() * 0.3);
                           if(!_loc7_)
                           {
                              break loop5;
                           }
                        }
                        if(§§pop() > §§pop())
                        {
                           §§push(_loc2_);
                           if(_loc8_)
                           {
                              continue loop8;
                           }
                           §§push(0.3);
                           if(_loc8_)
                           {
                              break loop5;
                           }
                           _loc3_ = §§pop() * §§pop();
                        }
                     }
                     §§push(_loc3_);
                     if(_loc7_)
                     {
                        §§push(10);
                        break loop5;
                     }
                     break;
                  }
                  §§goto(addr0126);
               }
               _loc3_ = §§pop();
               loop8:
               while(true)
               {
                  loop9:
                  while(true)
                  {
                     if(_loc7_)
                     {
                        loop10:
                        while(true)
                        {
                           while(true)
                           {
                              if(§3!G§.§07§ != null)
                              {
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                                 §§push(6);
                                 if(_loc7_)
                                 {
                                    §§push(int(§§pop()));
                                    if(_loc7_)
                                    {
                                       _loc6_ = §§pop();
                                       if(_loc7_)
                                       {
                                          loop0:
                                          while(true)
                                          {
                                             if(false)
                                             {
                                                break loop10;
                                             }
                                             loop12:
                                             while(true)
                                             {
                                                §§push(§5!Z§(_loc2_,_loc3_));
                                                if(!_loc8_)
                                                {
                                                   §§push(int(§§pop()));
                                                   if(_loc8_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                §§push(int(§§pop()));
                                                if(_loc8_)
                                                {
                                                   break;
                                                }
                                                _loc4_ = §§pop();
                                                §§push(levels[_loc4_]);
                                                if(_loc7_)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc8_)
                                                   {
                                                      break loop9;
                                                   }
                                                }
                                                §§push(§§pop());
                                                if(_loc8_)
                                                {
                                                   break loop9;
                                                }
                                                _loc5_ = §§pop();
                                                while(true)
                                                {
                                                   §§push(false);
                                                   if(_loc6_ > 1)
                                                   {
                                                      §§pop();
                                                      §§push(§>!0§.§@!A§());
                                                      §§push(§59§.§,<§(_loc5_));
                                                      if(_loc7_)
                                                      {
                                                         §§push(int(§§pop()));
                                                      }
                                                      §§push(§§pop().§>E§(§§pop()));
                                                      if(_loc8_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         break loop10;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      _loc6_--;
                                                   }
                                                   §§push(_loc6_);
                                                   break loop12;
                                                }
                                                if(!§§pop())
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      break loop10;
                                                   }
                                                   break loop8;
                                                }
                                                continue loop0;
                                             }
                                             §§goto(addr01e8);
                                          }
                                       }
                                       break loop10;
                                    }
                                 }
                                 else
                                 {
                                    addr0224:
                                    §§push(int(§§pop()));
                                 }
                              }
                              else
                              {
                                 §§push(§5!Z§(_loc2_,_loc3_));
                                 if(!_loc8_)
                                 {
                                    §§push(int(§§pop()));
                                    if(!_loc8_)
                                    {
                                       §§goto(addr0224);
                                    }
                                 }
                              }
                              _loc4_ = §§pop();
                              break;
                           }
                           §§push(levels[_loc4_]);
                           if(_loc7_)
                           {
                              §§push(§§pop());
                              if(_loc7_)
                              {
                                 §§push(§§pop());
                              }
                           }
                           _loc5_ = §§pop();
                           break;
                        }
                     }
                     break loop10;
                  }
                  return §§pop();
               }
               §§push(_loc5_);
               break loop9;
            }
            §§push(§§pop() + §§pop());
            if(!_loc8_)
            {
               addr0126:
               §§push(Number(§§pop()));
            }
            break loop6;
         }
         break loop4;
      }
      
      public function §5i§(param1:int) : String
      {
         return "";
      }
      
      public function §99§(param1:Object = undefined) : Number
      {
         if(param1 == null)
         {
            param1 = 0;
         }
         return param1 * 0.001;
      }
   }
}

