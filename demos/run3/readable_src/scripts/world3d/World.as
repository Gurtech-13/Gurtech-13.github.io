package world3d
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §%G§.§ m§;
   import §0!"§.§,!Z§;
   import geom3d.Transform;
   import geom3d.§]!Q§;
   import layout3d.§>N§;
   import scenes.Cutscenes;
   import scenes.MorningHypothesis3;
   import game.§11§;
   import game.§>3§;
   import §=w§.§,D§;
   import §>!O§.§ 3§;
   import §>T§.§"=§;
   import §>T§.§[C§;
   import §]!C§.§"V§;
   import stage.§3!J§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.Save;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.level.Level;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import haxeutils.math.§,@§;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Matrix3D;
   import haxeutils.math.geom.Point3D;
   import nme3D.Scene3D;
   import nme3D.model.§-!T§;
   import nme3D.model.Model;
   import openfl.Assets;
   
   public class World implements §>N§
   {
      
      public static var init__:Boolean;
      
      public static var §1]§:Point3D;
      
      public static var §7!U§:Quaternion;
      
      public var §7M§:Number;
      
      public var unpausedTime:Number;
      
      public var §9]§:Boolean;
      
      public var §"[§:Scene3D;
      
      public var §>!V§:Number;
      
      public var §]V§:int;
      
      public var §2C§:int;
      
      public var gravity3D:Point3D;
      
      public var gravity:Point;
      
      public var §<!7§:Vector.<Entity3D>;
      
      public var § >§:Number;
      
      public var §%!Y§:Boolean;
      
      public var §6!H§:Vector.<§"V§>;
      
      public var §'4§:Vector.<Entity3D>;
      
      public var §9!"§:Boolean;
      
      public var camera:Transform;
      
      public var animations:Vector.<§,D§>;
      
      public function World(param1:Scene3D, param2:Number, param3:Number = 0.017)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         while(true)
         {
            if(_loc5_)
            {
               §9!"§ = true;
               if(_loc6_)
               {
                  break;
               }
            }
            §7M§ = 1e-10;
            if(_loc5_)
            {
               §9]§ = false;
               if(_loc6_)
               {
                  break;
               }
               §%!Y§ = false;
               if(_loc5_)
               {
                  break;
               }
            }
            §§goto(addr005d);
         }
         §"[§ = param1;
         addr005d:
         gravity = gravity3D = new Point3D(0,param2,0);
         § >§ = param3;
         if(!_loc6_)
         {
            §>!V§ = 0;
         }
         §6!H§ = new Vector.<§"V§>();
         if(_loc5_)
         {
            §<!7§ = new Vector.<Entity3D>();
            animations = new Vector.<§,D§>();
            §'4§ = new Vector.<Entity3D>();
            while(true)
            {
               if(_loc5_)
               {
                  camera = new Transform();
                  if(!_loc5_)
                  {
                     break;
                  }
               }
               §§push(camera);
               §§push(§;u§);
               if(!_loc6_)
               {
                  §§push(§§pop());
               }
               §§pop().§ !%§(§§pop());
               break;
            }
         }
         §]V§ = 1;
         §2C§ = 1;
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:* = 0;
         if(!_loc4_)
         {
            §§push(§§findproperty(unpausedTime));
            §§push(unpausedTime);
            if(_loc5_)
            {
               §§push(§§pop() + param1);
               if(!_loc4_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§pop().unpausedTime = §§pop();
         }
         §§push(int(§6!H§.length));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop12:
         while(true)
         {
            §§push(§ >§);
            if(_loc5_)
            {
               §§push(0.0001);
               if(!_loc4_)
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
                           loop16:
                           while(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 §§push(§§findproperty(§>!V§));
                                 §§push(§>!V§);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop() + param1);
                                    if(!_loc4_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 §§pop().§>!V§ = §§pop();
                                 if(!_loc4_)
                                 {
                                    while(true)
                                    {
                                       §§push(§>!V§);
                                       addr017a:
                                       loop11:
                                       while(true)
                                       {
                                          §§push(§ >§);
                                          if(_loc5_)
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop() - 0.0001);
                                             }
                                             addr018d:
                                             if(_loc4_)
                                             {
                                             }
                                             break loop12;
                                             addr0186:
                                          }
                                          while(§§pop() > §§pop())
                                          {
                                             §§push(0);
                                             if(_loc5_)
                                             {
                                                loop17:
                                                while(true)
                                                {
                                                   loop18:
                                                   while(true)
                                                   {
                                                      loop19:
                                                      while(true)
                                                      {
                                                         §§push(int(§§pop()));
                                                         if(!_loc4_)
                                                         {
                                                            _loc2_ = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               if(_loc5_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(_loc5_)
                                                                  {
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           break loop18;
                                                                        }
                                                                        §-!?§(§ >§);
                                                                        if(_loc4_)
                                                                        {
                                                                           break loop18;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        if(§6!H§[_loc2_] == null)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!_loc4_)
                                                                        {
                                                                           §6!H§[_loc2_].update(§ >§);
                                                                           continue;
                                                                        }
                                                                     }
                                                                     §§push(0);
                                                                     if(_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     break loop17;
                                                                  }
                                                                  break loop19;
                                                               }
                                                               break;
                                                               _loc2_++;
                                                            }
                                                         }
                                                         §§push(int(§§pop()));
                                                         if(_loc5_)
                                                         {
                                                            break loop17;
                                                         }
                                                      }
                                                      while(§§pop() < §§pop())
                                                      {
                                                         if(§6!H§[_loc2_] != null)
                                                         {
                                                            §6!H§[_loc2_].§&7§();
                                                            if(!_loc5_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         _loc2_++;
                                                         break loop18;
                                                      }
                                                      §§push(§§findproperty(§>!V§));
                                                      §§push(§>!V§);
                                                      if(_loc5_)
                                                      {
                                                         §§push(§§pop() - § >§);
                                                      }
                                                      §§pop().§>!V§ = §§pop();
                                                      break loop11;
                                                      addr0157:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      _loc2_++;
                                                   }
                                                }
                                                _loc2_ = §§pop();
                                                if(_loc4_)
                                                {
                                                }
                                                break loop18;
                                             }
                                             while(true)
                                             {
                                                §§goto(addr0157);
                                             }
                                          }
                                          §§goto(addr018d);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(!_loc5_)
                                       {
                                          break loop16;
                                       }
                                       §§push(_loc3_);
                                       if(_loc4_)
                                       {
                                          break loop15;
                                       }
                                       if(§§pop() < §§pop())
                                       {
                                          if(§6!H§[_loc2_] != null)
                                          {
                                             if(!_loc4_)
                                             {
                                                §6!H§[_loc2_].update(param1);
                                                if(_loc4_)
                                                {
                                                   continue;
                                                }
                                             }
                                          }
                                          _loc2_++;
                                          continue;
                                       }
                                       if(_loc4_)
                                       {
                                          break loop14;
                                       }
                                       §-!?§(param1);
                                       if(!_loc5_)
                                       {
                                          break loop14;
                                       }
                                       §§push(0);
                                       if(!_loc5_)
                                       {
                                          break loop13;
                                       }
                                    }
                                    break;
                                    addr01e8:
                                 }
                              }
                              else
                              {
                                 §§push(0);
                                 if(!_loc4_)
                                 {
                                    §§push(int(§§pop()));
                                    if(_loc5_)
                                    {
                                       _loc2_ = §§pop();
                                       if(_loc4_)
                                       {
                                          break loop14;
                                       }
                                       §§goto(addr01e8);
                                    }
                                 }
                              }
                              §§push(int(§§pop()));
                              if(!_loc4_)
                              {
                                 break loop13;
                              }
                              break;
                           }
                           §§goto(addr0263);
                        }
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              break loop12;
                           }
                           if(§6!H§[_loc2_] != null)
                           {
                              if(!_loc4_)
                              {
                                 §6!H§[_loc2_].§&7§();
                                 if(_loc4_)
                                 {
                                    break loop14;
                                 }
                              }
                           }
                           _loc2_++;
                           break loop14;
                        }
                        break loop12;
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                        addr0263:
                        while(true)
                        {
                           §§push(_loc3_);
                           break loop15;
                        }
                     }
                  }
                  _loc2_ = §§pop();
                  break loop14;
               }
               §§goto(addr0186);
            }
            §§goto(addr017a);
         }
      }
      
      public function §?&§() : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc3_:int = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = null as Entity3D;
         var _loc8_:* = null as Entity3D;
         var _loc9_:* = null as Entity3D;
         §§push(true);
         if(_loc10_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(0);
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop5:
         while(true)
         {
            loop6:
            while(true)
            {
               loop7:
               while(true)
               {
                  if(_loc10_)
                  {
                     while(_loc2_ < 2)
                     {
                        loop8:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc10_)
                           {
                              _loc2_++;
                              _loc3_ = §§pop();
                              §§push(true);
                              if(_loc11_)
                              {
                                 break loop7;
                              }
                              §§push(Boolean(§§pop()));
                              if(_loc11_)
                              {
                                 break loop7;
                              }
                              _loc1_ = §§pop();
                              while(true)
                              {
                                 §§push(1);
                                 if(_loc10_)
                                 {
                                    §§push(int(§§pop()));
                                    if(_loc11_)
                                    {
                                       break;
                                    }
                                 }
                                 _loc4_ = §§pop();
                                 §§push(int(§<!7§.length));
                                 if(!_loc11_)
                                 {
                                    §§push(int(§§pop()));
                                    if(!_loc11_)
                                    {
                                       break;
                                    }
                                 }
                                 while(true)
                                 {
                                    _loc6_ = §§pop();
                                    §§push(§<!7§);
                                    §§push(_loc6_);
                                    if(!_loc11_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    _loc7_ = §§pop()[§§pop()];
                                    _loc8_ = §<!7§[_loc6_];
                                    §§push(false);
                                    if(_loc7_.§;!C§ != null)
                                    {
                                       §§pop();
                                       while(true)
                                       {
                                          §§push(_loc8_.§;!C§ == null);
                                          if(_loc10_)
                                          {
                                             §§push(!§§pop());
                                             if(!_loc10_)
                                             {
                                                break;
                                             }
                                          }
                                          §§push(Boolean(§§pop()));
                                          break;
                                       }
                                    }
                                    loop11:
                                    while(true)
                                    {
                                       loop12:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(_loc8_.§;!C§.§8W§.min.z);
                                                if(_loc10_)
                                                {
                                                   §§push(_loc7_.§;!C§.§8W§.max.z);
                                                   if(!_loc10_)
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(_loc10_)
                                                      {
                                                         §§push(-2);
                                                         if(_loc11_)
                                                         {
                                                         }
                                                         break loop11;
                                                      }
                                                      §§goto(addr023f);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc8_.§;!C§.§8W§.max.z);
                                                      if(_loc10_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc7_.§;!C§.§8W§.min.z);
                                                            if(_loc10_)
                                                            {
                                                               if(§§pop() <= §§pop())
                                                               {
                                                                  §§push(2);
                                                                  break loop11;
                                                               }
                                                               §§push(_loc8_.transform.position.z);
                                                               if(!_loc10_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(_loc7_.transform.position.z);
                                                               if(_loc11_)
                                                               {
                                                                  break loop12;
                                                               }
                                                            }
                                                            if(§§pop() > §§pop())
                                                            {
                                                               §§push(-1);
                                                               break loop11;
                                                            }
                                                            §§push(_loc8_.transform.position.z);
                                                            if(!_loc11_)
                                                            {
                                                               §§push(_loc7_.transform.position.z);
                                                               if(!_loc11_)
                                                               {
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     if(!_loc11_)
                                                                     {
                                                                        §§push(0);
                                                                        break loop11;
                                                                     }
                                                                     addr0227:
                                                                     §§push(0);
                                                                     break loop11;
                                                                  }
                                                                  §§push(1);
                                                                  if(_loc11_)
                                                                  {
                                                                  }
                                                                  break loop11;
                                                               }
                                                               break loop12;
                                                            }
                                                            break;
                                                         }
                                                      }
                                                   }
                                                }
                                                addr01f4:
                                                §§push(_loc7_.transform.position.z);
                                                if(!_loc11_)
                                                {
                                                   break;
                                                }
                                                break loop12;
                                             }
                                             if(§§pop() > §§pop())
                                             {
                                                §§push(-1);
                                                if(_loc10_)
                                                {
                                                }
                                                break loop11;
                                             }
                                             §§push(_loc8_.transform.position.z);
                                          }
                                          else
                                          {
                                             §§push(_loc8_.transform.position.z);
                                             if(!_loc11_)
                                             {
                                                §§goto(addr01f4);
                                             }
                                          }
                                          §§push(_loc7_.transform.position.z);
                                          break;
                                       }
                                       if(§§pop() != §§pop())
                                       {
                                          §§push(1);
                                          break;
                                       }
                                       §§goto(addr0227);
                                    }
                                    if(§§pop() > 0)
                                    {
                                       §§push(false);
                                       if(_loc10_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       _loc1_ = §§pop();
                                       addr023f:
                                       _loc9_ = §<!7§[_loc6_];
                                       if(_loc10_)
                                       {
                                          §§push(§<!7§);
                                          §§push(_loc6_);
                                          §§push(§<!7§);
                                          §§push(_loc6_);
                                          if(!_loc11_)
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          §§pop()[§§pop()] = §§pop()[§§pop()];
                                          if(_loc10_)
                                          {
                                             §§push(§<!7§);
                                             §§push(_loc6_);
                                             if(_loc10_)
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             §§pop()[§§pop()] = _loc9_;
                                          }
                                       }
                                    }
                                    addr0290:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       addr0292:
                                       while(true)
                                       {
                                          if(§§pop() >= _loc5_)
                                          {
                                             break loop8;
                                          }
                                          §§push(_loc4_);
                                          if(!_loc11_)
                                          {
                                             _loc4_++;
                                             if(_loc11_)
                                             {
                                                continue;
                                             }
                                          }
                                       }
                                       break loop8;
                                    }
                                    break loop8;
                                 }
                                 addr00b7:
                              }
                              _loc5_ = §§pop();
                              §§goto(addr0290);
                           }
                           while(true)
                           {
                              §§push(int(§§pop()));
                              if(_loc10_)
                              {
                                 §§goto(addr00b7);
                              }
                              else
                              {
                                 §§goto(addr0292);
                              }
                           }
                        }
                        §§push(_loc1_);
                        if(_loc11_)
                        {
                           break loop6;
                        }
                        if(§§pop())
                        {
                           if(!_loc11_)
                           {
                              break;
                           }
                           break loop5;
                        }
                     }
                  }
                  §§push(_loc1_);
                  if(_loc10_)
                  {
                     break loop6;
                  }
                  break;
               }
               if(§§pop())
               {
                  if(!_loc11_)
                  {
                     break loop5;
                  }
               }
               §§goto(addr02e7);
            }
            §§push(!§§pop());
            break loop7;
         }
         §§push(§<!7§);
         §§push(§`g§);
         if(!_loc11_)
         {
            §§push(§§pop());
         }
         §§pop().sort(§§pop());
         addr02e7:
      }
      
      public function reset() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:* = null as §"V§;
         var _loc5_:* = null as §,D§;
         if(!_loc7_)
         {
            unpausedTime = 0;
            if(_loc6_)
            {
               camera.reset();
               if(_loc6_)
               {
                  §"[§.reset();
               }
            }
         }
         §§push(0);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:Vector.<§"V§> = §6!H§;
         if(!_loc7_)
         {
            while(true)
            {
               §§push(_loc1_);
               if(!_loc6_)
               {
                  break;
               }
               if(§§pop() < int(_loc2_.length))
               {
                  _loc3_ = _loc2_[_loc1_];
                  if(_loc6_)
                  {
                     _loc1_++;
                     if(_loc7_)
                     {
                        continue;
                     }
                  }
                  _loc3_.reset();
                  continue;
               }
               if(_loc6_)
               {
                  §§push(0);
                  if(!_loc7_)
                  {
                     break;
                  }
                  addr00b9:
                  _loc1_ = §§pop();
               }
            }
            §§goto(addr00b9);
            §§push(int(§§pop()));
         }
         var _loc4_:Vector.<§,D§> = animations;
         if(_loc6_)
         {
            while(_loc1_ < int(_loc4_.length))
            {
               _loc5_ = _loc4_[_loc1_];
               if(!_loc7_)
               {
                  _loc1_++;
                  if(_loc6_)
                  {
                     _loc5_.reset();
                  }
               }
            }
         }
      }
      
      public function §1P§(param1:BitmapData) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §"[§.§1P§(param1);
         }
      }
      
      public function §`=§(param1:Entity3D) : void
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
               loop2:
               while(true)
               {
                  while(true)
                  {
                     if(_loc2_)
                     {
                        §<!7§.push(param1);
                        if(!_loc2_)
                        {
                           break;
                        }
                        §§push(false);
                        if(_loc3_)
                        {
                           break loop2;
                        }
                        if(param1.model == null)
                        {
                           break loop2;
                        }
                        if(_loc3_)
                        {
                           break loop1;
                        }
                        §§pop();
                        if(_loc3_)
                        {
                           break loop0;
                        }
                     }
                     §§push(§"[§.§#t§(param1.model));
                     if(_loc2_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc2_)
                        {
                           break loop2;
                        }
                     }
                     §§push(!§§pop());
                     if(!_loc3_)
                     {
                        break loop1;
                     }
                     break loop2;
                  }
                  §§goto(addr0090);
               }
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     break loop0;
                  }
               }
               break loop3;
            }
            §§push(Boolean(§§pop()));
            break loop2;
         }
         §"[§.§&!2§(param1.model);
         addr0090:
      }
      
      public function §4M§(param1:§"V§) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               §6!H§.push(param1);
               if(_loc3_)
               {
                  if(!(param1 is Entity3D))
                  {
                     break;
                  }
                  if(!_loc3_)
                  {
                     break;
                  }
               }
            }
            §`=§(param1);
            break;
         }
      }
      
      public function registerAnimation(param1:§,D§) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            animations.push(param1);
         }
      }
      
      public function §;u§(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            §9!"§ = true;
         }
      }
      
      public function §4<§(param1:String) : Boolean
      {
         return false;
      }
      
      public function §>!]§(param1:String) : String
      {
         return null;
      }
      
      public function §6!=§() : Number
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:* = NaN;
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
                     §§push(false);
                     if(!_loc4_)
                     {
                        if(gravity3D.x != 0)
                        {
                           break;
                        }
                        if(!_loc3_)
                        {
                           break loop1;
                        }
                     }
                     §§pop();
                     if(_loc4_)
                     {
                        break loop0;
                     }
                  }
                  §§push(gravity3D.z);
                  if(!_loc4_)
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                        §§push(§§pop() == §§pop());
                        if(!_loc4_)
                        {
                           break loop1;
                        }
                        break;
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr0090);
               }
               if(!§§pop())
               {
                  var _loc2_:Point3D = gravity3D;
                  return Number(Math.sqrt(_loc2_.x * _loc2_.x + _loc2_.y * _loc2_.y + _loc2_.z * _loc2_.z));
               }
               while(true)
               {
                  if(!_loc4_)
                  {
                     §§push(Number(gravity3D.y));
                     if(!_loc3_)
                     {
                        break;
                     }
                     _loc1_ = §§pop();
                     if(_loc3_)
                     {
                        break loop0;
                     }
                  }
                  §§goto(addr0096);
               }
               §§goto(addr00ab);
            }
            §§push(Boolean(§§pop()));
            break loop2;
         }
         §§push(_loc1_);
         if(_loc3_)
         {
            addr0092:
            addr0090:
            if(§§pop() >= 0)
            {
               addr0096:
               §§push(_loc1_);
               if(!_loc4_)
               {
                  return §§pop();
               }
               addr00ab:
               return -§§pop();
            }
            else
            {
               §§push(_loc1_);
               if(!_loc4_)
               {
                  §§goto(addr00ab);
               }
            }
         }
         return §§pop();
      }
      
      public function getBackgroundContainer() : DisplayObjectContainer
      {
         return null;
      }
      
      public function dispose() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(§"[§ == null)
         {
            return;
         }
         §"[§.dispose();
         §"[§ = null;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc1_)
               {
                  §6!H§.length = 0;
                  §6!H§ = null;
                  if(!_loc2_)
                  {
                     break;
                  }
                  §<!7§.length = 0;
                  §<!7§ = null;
                  if(_loc1_)
                  {
                     break loop0;
                  }
               }
               animations.length = 0;
               if(!_loc1_)
               {
                  break loop0;
               }
               break;
            }
            return;
         }
         animations = null;
         break loop1;
      }
      
      public function display(param1:Number) : void
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc2_:* = null as Scene3D;
         var _loc3_:* = null as Matrix3D;
         var _loc4_:* = null as Matrix3D;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc8_:* = null as §"V§;
         var _loc10_:* = null as §,@§;
         if(_loc11_)
         {
            §"[§.update(param1);
            loop4:
            while(true)
            {
               loop5:
               while(true)
               {
                  if(_loc11_)
                  {
                     if(!§9!"§)
                     {
                        break;
                     }
                     if(_loc12_)
                     {
                        break loop4;
                     }
                  }
                  _loc2_ = §"[§;
                  _loc3_ = camera.§6,§();
                  _loc4_ = _loc2_.§1`§;
                  if(_loc11_)
                  {
                     while(true)
                     {
                        §§push(0);
                        if(_loc11_)
                        {
                           §§push(int(§§pop()));
                           if(_loc11_)
                           {
                              _loc5_ = §§pop();
                              if(_loc12_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 §§push(_loc5_);
                              }
                              addr00d6:
                           }
                        }
                        while(§§pop() < 16)
                        {
                           while(true)
                           {
                              §§push(_loc5_);
                              if(!_loc12_)
                              {
                                 _loc5_++;
                                 if(_loc12_)
                                 {
                                    break;
                                 }
                              }
                              §§push(int(§§pop()));
                              break;
                           }
                           _loc6_ = §§pop();
                           if(!_loc12_)
                           {
                              §§push(_loc4_.rawData);
                              §§push(_loc6_);
                              §§push(_loc3_.rawData[_loc6_]);
                              if(_loc11_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              §§pop()[§§pop()] = §§pop();
                           }
                           §§goto(addr00d6);
                        }
                        if(_loc11_)
                        {
                           _loc2_.§1`§.invert();
                           if(!_loc12_)
                           {
                              break;
                           }
                           break loop5;
                        }
                        break;
                     }
                     _loc2_.§%a§ = true;
                     if(!_loc11_)
                     {
                        break;
                     }
                  }
                  §9!"§ = false;
                  break;
               }
               §§push(0);
               if(!_loc12_)
               {
                  §§push(int(§§pop()));
               }
               _loc5_ = §§pop();
               break;
            }
         }
         break loop4;
      }
      
      public function §0!`§(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc2_:* = null as Entity3D;
         var _loc3_:* = null as Vector.<§"V§>;
         var _loc4_:* = 0;
         var _loc5_:* = null as Vector.<§"V§>;
         var _loc6_:* = null as Vector.<Entity3D>;
         var _loc7_:* = null as Vector.<Entity3D>;
         loop0:
         while(true)
         {
            if(!_loc8_)
            {
               if(param1 < 0)
               {
                  break;
               }
            }
            _loc2_ = §<!7§[param1];
            _loc3_ = §6!H§;
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc8_)
                  {
                     while(true)
                     {
                        §§push(int(_loc3_.indexOf(_loc2_,0)));
                        if(_loc9_)
                        {
                           §§push(int(§§pop()));
                           if(!_loc9_)
                           {
                              break;
                           }
                        }
                        _loc4_ = §§pop();
                        addr00a2:
                        if(!_loc8_)
                        {
                           §§push(_loc4_);
                           break;
                        }
                        _loc5_ = _loc3_.splice(_loc4_,1);
                        addr00b3:
                        §<!7§.splice(param1,1);
                        if(!_loc9_)
                        {
                           break loop1;
                        }
                     }
                     if(§§pop() != -1)
                     {
                        if(!_loc9_)
                        {
                           break;
                        }
                        §§goto(addr00a2);
                     }
                     §§goto(addr00b3);
                  }
                  if(_loc2_.model != null)
                  {
                     if(!_loc8_)
                     {
                        break loop1;
                     }
                  }
                  break;
               }
               _loc6_ = §'4§;
               if(_loc9_)
               {
                  while(true)
                  {
                     §§push(int(_loc6_.indexOf(_loc2_,0)));
                     if(_loc9_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc9_)
                        {
                           break;
                        }
                     }
                     _loc4_ = §§pop();
                     if(_loc9_)
                     {
                        §§push(_loc4_);
                        break;
                     }
                  }
                  if(§§pop() == -1)
                  {
                     break loop0;
                  }
               }
               _loc7_ = _loc6_.splice(_loc4_,1);
               break loop0;
            }
            _loc2_.model.dispose();
            break loop2;
         }
      }
      
      public function §'L§(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §6!H§.splice(param1,1);
         }
      }
      
      public function §0a§(param1:§"V§) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               §§push(param1 is Entity3D);
               if(!_loc3_)
               {
                  §§push(!§§pop());
               }
               if(!§§pop())
               {
                  §0!`§(int(§<!7§.indexOf(param1)));
                  break;
               }
               if(!_loc2_)
               {
                  break;
               }
            }
            §'L§(int(§6!H§.indexOf(param1)));
            if(_loc2_)
            {
            }
            break;
         }
      }
      
      public function §5!F§(param1:§,D§) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = null as Vector.<§,D§>;
         var _loc2_:Vector.<§,D§> = animations;
         §§push(int(_loc2_.indexOf(param1,0)));
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc6_)
            {
               if(_loc3_ == -1)
               {
                  break;
               }
            }
            _loc4_ = _loc2_.splice(_loc3_,1);
            break;
         }
      }
      
      public function §`g§(param1:Entity3D, param2:Entity3D) : int
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               §§push(false);
               if(!_loc4_)
               {
                  if(param1.§;!C§ == null)
                  {
                     break loop0;
                  }
                  if(!_loc4_)
                  {
                     §§pop();
                     if(_loc4_)
                     {
                        break;
                     }
                     §§push(param2.§;!C§ == null);
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                     §§push(!§§pop());
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                  }
               }
               §§push(Boolean(§§pop()));
               break loop0;
            }
            return 2;
         }
         loop2:
         while(true)
         {
            if(§§pop())
            {
               while(true)
               {
                  if(_loc3_)
                  {
                     loop4:
                     while(true)
                     {
                        §§push(param2.§;!C§.§8W§.min.z);
                        if(_loc3_)
                        {
                           loop5:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(param1.§;!C§.§8W§.max.z);
                                 if(_loc3_)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       return -2;
                                    }
                                    §§push(param2.§;!C§.§8W§.max.z);
                                    if(!_loc4_)
                                    {
                                       §§push(param1.§;!C§.§8W§.min.z);
                                       if(_loc3_)
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             §§push(param2.transform.position.z);
                                             if(_loc3_)
                                             {
                                                addr00d1:
                                                §§push(param1.transform.position.z);
                                                if(_loc3_)
                                                {
                                                   addr00dd:
                                                   if(§§pop() > §§pop())
                                                   {
                                                      §§push(-1);
                                                      if(_loc3_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      addr0165:
                                                      return §§pop();
                                                   }
                                                   §§push(param2.transform.position.z);
                                                   if(!_loc4_)
                                                   {
                                                      break loop5;
                                                   }
                                                   break;
                                                }
                                                break loop4;
                                             }
                                             break loop5;
                                          }
                                          if(!_loc4_)
                                          {
                                             break loop1;
                                          }
                                       }
                                       else
                                       {
                                          addr0147:
                                          if(§§pop() <= §§pop())
                                          {
                                             §§push(param2.transform.position.z);
                                             break;
                                          }
                                       }
                                       return -1;
                                    }
                                    §§goto(addr00d1);
                                 }
                                 §§goto(addr00dd);
                              }
                              addr0155:
                              §§push(param1.transform.position.z);
                              break loop2;
                           }
                        }
                        break loop5;
                     }
                     if(§§pop() != §§pop())
                     {
                        §§push(1);
                        break;
                     }
                  }
                  §§push(0);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
                  break;
               }
               return §§pop();
            }
            §§push(param2.transform.position.z);
            if(!_loc4_)
            {
               §§push(param1.transform.position.z);
               if(_loc4_)
               {
                  break;
               }
               §§goto(addr0147);
            }
            §§goto(addr0155);
         }
         if(§§pop() == §§pop())
         {
            return 0;
         }
         §§goto(addr0165);
         §§push(1);
      }
      
      public function §-!?§(param1:Number) : void
      {
         var _temp_1:* = false;
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = _temp_1;
         var _loc2_:* = null as §]!Q§;
         var _loc3_:* = null as §]!Q§;
         var _loc4_:int = 0;
         var _loc7_:* = 0;
         var _loc8_:* = null as Entity3D;
         var _loc9_:* = 0;
         var _loc10_:* = null as Vector.<Entity3D>;
         var _loc11_:* = null as Entity3D;
         while(true)
         {
            if(_loc12_)
            {
               if(!§9]§)
               {
                  break;
               }
               if(_loc13_)
               {
                  break;
               }
            }
            §?&§();
            break;
         }
         §§push(0);
         if(!_loc13_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(int(§<!7§.length));
         if(_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         if(_loc12_)
         {
            loop0:
            while(_loc5_ < _loc6_)
            {
               while(true)
               {
                  §§push(_loc5_);
                  if(!_loc13_)
                  {
                     _loc5_++;
                     if(_loc13_)
                     {
                        break;
                     }
                  }
                  §§push(int(§§pop()));
                  break;
               }
               _loc7_ = §§pop();
               _loc8_ = §<!7§[_loc7_];
               loop18:
               while(true)
               {
                  loop19:
                  while(true)
                  {
                     loop46:
                     while(true)
                     {
                        if(_loc12_)
                        {
                           loop47:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(false);
                                 if(!_loc13_)
                                 {
                                    §§push(false);
                                    if(_loc13_)
                                    {
                                       break;
                                    }
                                    if(_loc8_.§;!C§ == null)
                                    {
                                       break loop47;
                                    }
                                    if(_loc13_)
                                    {
                                       break loop47;
                                    }
                                    §§pop();
                                    if(_loc13_)
                                    {
                                       break loop46;
                                    }
                                 }
                                 §§push(_loc8_.§2!9§);
                                 if(!_loc13_)
                                 {
                                    break;
                                 }
                                 break loop47;
                              }
                              §§push(Boolean(§§pop()));
                              break;
                           }
                           if(!§§pop())
                           {
                              break loop19;
                           }
                           if(_loc13_)
                           {
                              break loop19;
                           }
                           §§pop();
                           if(_loc13_)
                           {
                              break loop18;
                           }
                        }
                        §§push(_loc8_.§[!G§ == null);
                        if(!_loc13_)
                        {
                           §§push(!§§pop());
                           if(!_loc13_)
                           {
                              break;
                           }
                        }
                        break loop19;
                     }
                     §§push(Boolean(§§pop()));
                     break;
                  }
                  if(§§pop())
                  {
                     break;
                  }
                  continue loop0;
               }
               _loc2_ = _loc8_.§;!C§.§8W§;
               if(_loc12_)
               {
                  §§push(0);
                  if(_loc12_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc9_ = §§pop();
               }
               _loc10_ = §'4§;
               loop1:
               while(true)
               {
                  §§push(_loc9_);
                  if(_loc12_)
                  {
                     loop20:
                     while(true)
                     {
                        while(true)
                        {
                           while(true)
                           {
                              §§push(int(_loc10_.length));
                              if(_loc12_)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    _loc11_ = _loc10_[_loc9_];
                                    if(_loc12_)
                                    {
                                       _loc9_++;
                                       if(_loc13_)
                                       {
                                          continue loop1;
                                       }
                                    }
                                    _loc11_.§;!C§.§ i§.§%r§ = false;
                                    continue loop1;
                                 }
                                 if(_loc13_)
                                 {
                                    break;
                                 }
                                 _loc4_ = 0;
                                 §§push(false);
                                 §§push(§9]§);
                                 if(!_loc12_)
                                 {
                                    continue loop13;
                                 }
                                 if(!§§pop())
                                 {
                                    continue loop37;
                                 }
                                 §§pop();
                                 §§push(_loc7_);
                                 §§push(0);
                                 if(!_loc12_)
                                 {
                                    break loop20;
                                 }
                              }
                              §§push(§§pop() > §§pop());
                              continue loop37;
                           }
                           loop14:
                           while(true)
                           {
                              _loc3_ = §<!7§[_loc4_].§;!C§.§8W§;
                              if(!_loc13_)
                              {
                                 loop41:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(false);
                                       if(!_loc13_)
                                       {
                                          loop43:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(false);
                                                if(!_loc13_)
                                                {
                                                   §§push(false);
                                                   if(_loc13_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(_loc3_.max.z);
                                                   §§push(_loc2_.min.z);
                                                   if(_loc12_)
                                                   {
                                                      §§push(§§pop() - §7M§);
                                                   }
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      break;
                                                   }
                                                   if(_loc13_)
                                                   {
                                                      break;
                                                   }
                                                   §§pop();
                                                   if(_loc13_)
                                                   {
                                                      break loop43;
                                                   }
                                                }
                                                §§push(§<!7§[_loc4_].§[!G§ == null);
                                                if(_loc12_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc12_)
                                                   {
                                                      break loop43;
                                                   }
                                                   §§pop();
                                                   if(_loc13_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(_loc3_.max.z);
                                                   if(!_loc13_)
                                                   {
                                                      §§push(§§pop() - _loc3_.min.z);
                                                   }
                                                   §§push(§§pop() > 1);
                                                   if(_loc12_)
                                                   {
                                                      break loop43;
                                                   }
                                                }
                                                §§goto(addr027b);
                                             }
                                             §§goto(addr0286);
                                          }
                                          addr027b:
                                          if(!Boolean(§§pop()))
                                          {
                                             break;
                                          }
                                          if(_loc13_)
                                          {
                                             break;
                                          }
                                          addr0286:
                                          §§pop();
                                          if(_loc13_)
                                          {
                                             break loop14;
                                          }
                                          §§push(§<!7§[_loc4_].§-J§);
                                          if(!_loc12_)
                                          {
                                             break loop41;
                                          }
                                       }
                                       §§push(!§§pop());
                                       if(!_loc13_)
                                       {
                                          break loop41;
                                       }
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       break loop14;
                                    }
                                    §§goto(addr02b4);
                                 }
                                 §§push(Boolean(§§pop()));
                                 break loop42;
                              }
                              break;
                           }
                           §§goto(addr0332);
                        }
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
                                    if(§§pop())
                                    {
                                       §§push(_loc7_);
                                       §§push(1);
                                       if(!_loc13_)
                                       {
                                          _loc4_ = §§pop() - §§pop();
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             §§push(0);
                                             if(_loc13_)
                                             {
                                                break loop20;
                                             }
                                             if(§§pop() <= §§pop())
                                             {
                                                if(_loc12_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc4_);
                                                      if(!_loc12_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(_loc7_);
                                                      if(!_loc12_)
                                                      {
                                                         break loop20;
                                                      }
                                                   }
                                                   break loop1;
                                                   addr0332:
                                                }
                                                break loop36;
                                             }
                                             addr02b4:
                                             if(§<!7§[_loc4_].§;!C§ != null)
                                             {
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      if(!_loc13_)
                                                      {
                                                         break loop34;
                                                      }
                                                      §§goto(addr03aa);
                                                   }
                                                   §§goto(addr04b8);
                                                }
                                                §§goto(addr03b8);
                                             }
                                             while(true)
                                             {
                                                _loc4_--;
                                                break;
                                             }
                                          }
                                          break loop20;
                                       }
                                       while(true)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             break loop38;
                                          }
                                          if(§<!7§[_loc4_].§[!G§ == null && §<!7§[_loc4_].§2!9§)
                                          {
                                             _loc8_.§[!G§.§0!b§(§<!7§[_loc4_],param1);
                                             if(§"[§ == null)
                                             {
                                                break loop37;
                                             }
                                          }
                                          _loc4_++;
                                          if(_loc13_)
                                          {
                                             break loop35;
                                          }
                                       }
                                       break loop35;
                                    }
                                    §§goto(addr0332);
                                 }
                                 _loc4_++;
                                 if(_loc12_)
                                 {
                                    break loop35;
                                 }
                                 break loop39;
                              }
                              if(!_loc13_)
                              {
                                 return;
                              }
                              §§goto(addr036e);
                           }
                           §§goto(addr04c9);
                        }
                        §§goto(addr04ba);
                     }
                     loop2:
                     while(§§pop() < §§pop())
                     {
                        §§push(false);
                        §§push(§<!7§[_loc4_].§2!9§);
                        loop13:
                        while(true)
                        {
                           loop22:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 if(!_loc12_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§push(§<!7§[_loc4_].§;!C§ != null);
                                    if(_loc12_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc13_)
                                    {
                                       _loc8_.§[!G§.§0!b§(§<!7§[_loc4_],param1);
                                       while(true)
                                       {
                                          if(§"[§ != null)
                                          {
                                             if(§9]§)
                                             {
                                                _loc3_ = §<!7§[_loc4_].§;!C§.§8W§;
                                                if(!_loc12_)
                                                {
                                                   break;
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
                                                         §§push(false);
                                                         if(_loc12_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(false);
                                                               if(!_loc13_)
                                                               {
                                                                  loop30:
                                                                  while(true)
                                                                  {
                                                                     loop31:
                                                                     while(true)
                                                                     {
                                                                        §§push(false);
                                                                        if(!_loc13_)
                                                                        {
                                                                           loop32:
                                                                           while(true)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_.max.z);
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    §§push(§7M§);
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       break loop32;
                                                                                    }
                                                                                 }
                                                                                 §§push(Number(§§pop()));
                                                                                 break loop32;
                                                                              }
                                                                              if(§§pop() >= §§pop())
                                                                              {
                                                                                 break loop30;
                                                                              }
                                                                              if(!_loc12_)
                                                                              {
                                                                                 break loop30;
                                                                              }
                                                                              §§pop();
                                                                              if(_loc13_)
                                                                              {
                                                                                 break loop31;
                                                                              }
                                                                              §§push(§<!7§[_loc4_].§[!G§ == null);
                                                                              if(_loc13_)
                                                                              {
                                                                                 break loop30;
                                                                              }
                                                                           }
                                                                           §§push(_loc3_.min.z);
                                                                           break loop33;
                                                                        }
                                                                        §§push(Boolean(§§pop()));
                                                                        break loop30;
                                                                     }
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc12_)
                                                                     {
                                                                        §§pop();
                                                                        if(!_loc12_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(_loc3_.max.z);
                                                                        if(_loc12_)
                                                                        {
                                                                           §§push(§§pop() - _loc3_.min.z);
                                                                        }
                                                                        §§push(§§pop() > 1);
                                                                        if(!_loc12_)
                                                                        {
                                                                           break loop31;
                                                                        }
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  break loop31;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  break loop25;
                                                               }
                                                               if(_loc12_)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            §§pop();
                                                            if(_loc13_)
                                                            {
                                                               break loop24;
                                                            }
                                                            §§push(§<!7§[_loc4_].§-J§);
                                                            if(!_loc12_)
                                                            {
                                                               break loop23;
                                                            }
                                                         }
                                                         §§push(!§§pop());
                                                         if(!_loc13_)
                                                         {
                                                            break loop23;
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr04aa);
                                                   }
                                                   _loc10_ = §'4§;
                                                   if(_loc12_)
                                                   {
                                                      loop3:
                                                      while(_loc9_ < int(_loc10_.length))
                                                      {
                                                         _loc11_ = _loc10_[_loc9_];
                                                         loop26:
                                                         while(true)
                                                         {
                                                            loop27:
                                                            while(true)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!_loc13_)
                                                                  {
                                                                     _loc9_++;
                                                                     if(!_loc13_)
                                                                     {
                                                                        §§push(false);
                                                                        if(_loc12_)
                                                                        {
                                                                           §§push(false);
                                                                           if(!_loc13_)
                                                                           {
                                                                              if(_loc11_.§2!9§)
                                                                              {
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(_loc11_ == _loc8_);
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       if(_loc12_)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           if(!§§pop())
                                                                           {
                                                                              break loop27;
                                                                           }
                                                                           if(_loc13_)
                                                                           {
                                                                              break loop26;
                                                                           }
                                                                        }
                                                                        §§pop();
                                                                        if(_loc13_)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§push(_loc11_.§;!C§.§ i§.§%r§);
                                                                  if(!_loc13_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  break loop26;
                                                               }
                                                               §§push(!§§pop());
                                                               if(!_loc13_)
                                                               {
                                                                  break loop26;
                                                               }
                                                               break;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(_loc12_)
                                                               {
                                                                  _loc8_.§[!G§.§0!b§(_loc11_,param1);
                                                               }
                                                            }
                                                            continue loop3;
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                         break loop27;
                                                      }
                                                   }
                                                   continue loop0;
                                                }
                                                addr04aa:
                                                if(Boolean(§§pop()))
                                                {
                                                   if(!_loc13_)
                                                   {
                                                      break;
                                                   }
                                                   break loop24;
                                                }
                                             }
                                             while(true)
                                             {
                                                _loc4_++;
                                                break loop22;
                                             }
                                             addr04b8:
                                          }
                                       }
                                       break loop2;
                                       addr03aa:
                                    }
                                    addr03b8:
                                    return;
                                 }
                                 §§goto(addr04b8);
                              }
                           }
                           addr04ba:
                           while(true)
                           {
                              §§push(_loc4_);
                              break loop13;
                           }
                        }
                        break loop1;
                     }
                     addr04c9:
                     §§push(0);
                     if(!_loc13_)
                     {
                        §§push(int(§§pop()));
                     }
                     _loc9_ = §§pop();
                     break loop24;
                  }
                  break;
               }
               while(true)
               {
                  §§push(int(§<!7§.length));
                  break loop20;
               }
            }
         }
      }
      
      public function §1%§(param1:Point3D, param2:Point3D, param3:§]!Q§, param4:Point3D = undefined, param5:Object = undefined, param6:Object = undefined, param7:Quaternion = undefined) : Entity3D
      {
         §§push(false);
         var _loc23_:Boolean = true;
         var _loc24_:* = §§pop();
         var _loc13_:* = null as Entity3D;
         var _loc14_:* = null as §,!Z§;
         var _loc15_:* = null as §]!Q§;
         var _loc16_:* = false;
         var _loc17_:Boolean = false;
         var _loc18_:Number = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = null as Point3D;
         var _loc21_:* = NaN;
         var _loc22_:* = null as Point3D;
         while(true)
         {
            if(!_loc24_)
            {
               if(param7 == null)
               {
                  §§push(null);
                  break;
               }
            }
            §§push(World.§7!U§);
            break;
         }
         var _loc8_:Quaternion = §§pop();
         §§push(Number(Math.POSITIVE_INFINITY));
         if(_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Entity3D = null;
         §§push(0);
         if(_loc23_)
         {
            §§push(int(§§pop()));
         }
         var _loc11_:* = §§pop();
         var _loc12_:Vector.<Entity3D> = §<!7§;
         if(_loc23_)
         {
            loop0:
            while(_loc11_ < int(_loc12_.length))
            {
               _loc13_ = _loc12_[_loc11_];
               if(_loc23_)
               {
                  _loc11_++;
               }
               _loc14_ = _loc13_.§;!C§;
               if(_loc23_)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(true);
                        if(!_loc24_)
                        {
                           while(true)
                           {
                              §§push(true);
                              if(!_loc24_)
                              {
                                 if(_loc14_ == null)
                                 {
                                    break;
                                 }
                                 if(!_loc23_)
                                 {
                                    break;
                                 }
                                 §§pop();
                                 if(_loc24_)
                                 {
                                    break loop2;
                                 }
                                 §§push(_loc13_.§,!!§);
                                 if(!_loc23_)
                                 {
                                    break;
                                 }
                                 §§push(!§§pop());
                                 if(_loc24_)
                                 {
                                    break;
                                 }
                              }
                              §§push(Boolean(§§pop()));
                              break;
                           }
                           if(§§pop())
                           {
                              break;
                           }
                           if(_loc24_)
                           {
                              break;
                           }
                           §§pop();
                           if(!_loc23_)
                           {
                              continue loop0;
                           }
                           §§push(_loc13_.model.visible);
                           if(_loc24_)
                           {
                              break loop2;
                           }
                        }
                        §§push(!§§pop());
                        if(_loc23_)
                        {
                           break loop2;
                        }
                        break;
                     }
                     if(!§§pop())
                     {
                        _loc15_ = _loc14_.§8W§;
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
                                    loop9:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          loop11:
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
                                                         §§push(0);
                                                         if(!_loc24_)
                                                         {
                                                            _loc18_ = §§pop();
                                                            if(_loc24_)
                                                            {
                                                               break loop9;
                                                            }
                                                            §§push(false);
                                                            if(_loc24_)
                                                            {
                                                               break loop8;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc15_.min.z);
                                                               §§push(param3.max.z);
                                                               if(_loc23_)
                                                               {
                                                                  §§push(§§pop() + _loc18_);
                                                                  if(!_loc23_)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               §§push(Number(§§pop()));
                                                               break;
                                                            }
                                                            if(§§pop() <= §§pop())
                                                            {
                                                               §§pop();
                                                               §§push(_loc15_.max.z);
                                                               §§push(param3.min.z);
                                                               if(_loc24_)
                                                               {
                                                                  break loop7;
                                                               }
                                                               §§push(_loc18_);
                                                               if(_loc24_)
                                                               {
                                                                  break loop6;
                                                               }
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc24_)
                                                               {
                                                                  break loop5;
                                                               }
                                                               §§push(§§pop() >= §§pop());
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  §§push(0);
                                                                  if(!_loc23_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc24_)
                                                                  {
                                                                     break loop23;
                                                                  }
                                                                  _loc19_ = §§pop();
                                                                  if(_loc15_.min.y <= param3.max.y + _loc19_)
                                                                  {
                                                                     _loc17_ = _loc15_.max.y >= param3.min.y - _loc19_;
                                                                     if(_loc24_)
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc17_ = false;
                                                                  }
                                                                  addr01f6:
                                                                  §§push(_loc17_);
                                                                  if(!_loc23_)
                                                                  {
                                                                     break loop22;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(false);
                                                                  if(_loc23_)
                                                                  {
                                                                     _loc17_ = §§pop();
                                                                     if(_loc24_)
                                                                     {
                                                                        break loop0;
                                                                     }
                                                                     §§goto(addr01f6);
                                                                  }
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  _loc16_ = false;
                                                                  if(_loc23_)
                                                                  {
                                                                     break loop21;
                                                                  }
                                                                  break loop0;
                                                               }
                                                               if(!_loc24_)
                                                               {
                                                                  §§push(0);
                                                                  break;
                                                               }
                                                               continue loop13;
                                                            }
                                                         }
                                                         §§push(Number(§§pop()));
                                                         break;
                                                      }
                                                      _loc19_ = §§pop();
                                                      if(_loc23_)
                                                      {
                                                         if(_loc15_.min.x <= param3.max.x + _loc19_)
                                                         {
                                                            §§push(_loc15_.max.x >= param3.min.x - _loc19_);
                                                            if(_loc23_)
                                                            {
                                                               _loc16_ = §§pop();
                                                               if(_loc23_)
                                                               {
                                                                  break loop21;
                                                               }
                                                               break loop11;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(false);
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                         if(!_loc24_)
                                                         {
                                                            _loc16_ = §§pop();
                                                            if(_loc23_)
                                                            {
                                                               break loop21;
                                                            }
                                                            break loop11;
                                                         }
                                                         break loop20;
                                                      }
                                                      break loop11;
                                                   }
                                                   §§goto(addr0439);
                                                }
                                                §§push(_loc16_);
                                                if(_loc24_)
                                                {
                                                   break loop8;
                                                }
                                                if(!§§pop())
                                                {
                                                   §§push(false);
                                                   if(§9]§)
                                                   {
                                                      break;
                                                   }
                                                   break loop22;
                                                }
                                                _loc14_.§1%§(param1,param2,param5,param6,World.§1]§,_loc8_);
                                                §§push(Number(World.§1]§.x));
                                                if(!_loc24_)
                                                {
                                                   _loc19_ = §§pop();
                                                   if(!_loc24_)
                                                   {
                                                      break loop9;
                                                   }
                                                   continue loop13;
                                                }
                                                §§goto(addr041d);
                                             }
                                             §§pop();
                                             if(_loc23_)
                                             {
                                                break;
                                             }
                                             break loop0;
                                          }
                                          addr041d:
                                          §§push(_loc15_.min.z);
                                          §§push(param3.max.z);
                                          if(!_loc24_)
                                          {
                                             §§push(§7M§);
                                             break loop6;
                                          }
                                          break loop5;
                                       }
                                       _loc20_ = World.§1]§;
                                       loop12:
                                       while(true)
                                       {
                                          loop13:
                                          while(true)
                                          {
                                             loop17:
                                             while(true)
                                             {
                                                if(_loc23_)
                                                {
                                                   §§push(param1.x - _loc20_.x);
                                                   if(!_loc24_)
                                                   {
                                                      loop18:
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(param1.x - _loc20_.x);
                                                            if(_loc23_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc24_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(param1.y - _loc20_.y);
                                                               if(_loc24_)
                                                               {
                                                                  break loop17;
                                                               }
                                                               §§push(param1.y - _loc20_.y);
                                                               if(_loc24_)
                                                               {
                                                                  break loop18;
                                                               }
                                                               §§push(§§pop() + §§pop() * §§pop());
                                                               §§push(param1.z);
                                                            }
                                                            §§push(_loc20_.z);
                                                            if(!_loc23_)
                                                            {
                                                               break loop18;
                                                            }
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc23_)
                                                            {
                                                               §§push(param1.z);
                                                               if(_loc23_)
                                                               {
                                                                  break loop18;
                                                               }
                                                               §§goto(addr0335);
                                                            }
                                                            §§goto(addr0336);
                                                         }
                                                      }
                                                      addr0335:
                                                      addr0336:
                                                      §§push(§§pop() + §§pop() * (§§pop() - _loc20_.z));
                                                      if(_loc23_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!_loc24_)
                                                         {
                                                            break loop19;
                                                         }
                                                         break loop13;
                                                      }
                                                      break loop19;
                                                   }
                                                   §§push(Number(§§pop()));
                                                   if(_loc24_)
                                                   {
                                                      break loop13;
                                                   }
                                                   _loc21_ = §§pop();
                                                   if(_loc24_)
                                                   {
                                                      break loop12;
                                                   }
                                                }
                                                §§push(_loc21_);
                                                break loop13;
                                             }
                                             if(§§pop() < §§pop())
                                             {
                                                break loop12;
                                             }
                                             continue loop0;
                                          }
                                          §§push(_loc9_);
                                          break loop17;
                                       }
                                       _loc10_ = _loc13_;
                                       while(true)
                                       {
                                          if(_loc23_)
                                          {
                                             §§push(_loc21_);
                                             if(!_loc24_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             _loc9_ = §§pop();
                                             if(_loc24_)
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                if(param4 != null)
                                                {
                                                   if(!_loc23_)
                                                   {
                                                      break;
                                                   }
                                                   _loc22_ = World.§1]§;
                                                   while(true)
                                                   {
                                                      if(!_loc24_)
                                                      {
                                                         param4.x = _loc22_.x;
                                                         if(_loc24_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      param4.y = _loc22_.y;
                                                      if(_loc23_)
                                                      {
                                                         param4.z = _loc22_.z;
                                                      }
                                                      break;
                                                   }
                                                }
                                                if(param7 != null)
                                                {
                                                   if(_loc23_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                continue loop0;
                                             }
                                          }
                                          param7.x = _loc8_.x;
                                          break;
                                       }
                                       param7.y = _loc8_.y;
                                       param7.z = _loc8_.z;
                                       param7.w = _loc8_.w;
                                       continue loop0;
                                    }
                                    §§push(_loc19_);
                                    §§push(_loc19_);
                                    if(_loc24_)
                                    {
                                       break loop5;
                                    }
                                    if(§§pop() == §§pop())
                                    {
                                       break loop10;
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr0438);
                              }
                              §§goto(addr0437);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc23_)
                           {
                              break;
                           }
                           break loop7;
                        }
                        addr0437:
                        addr0438:
                        addr0439:
                        if(§§pop() > Number(§§pop()))
                        {
                           break loop0;
                        }
                     }
                     continue loop0;
                  }
                  §§push(Boolean(§§pop()));
                  break loop3;
               }
            }
         }
         return _loc10_;
      }
   }
}

