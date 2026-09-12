package com.player03.run3.level
{
   import §!!$§.§ 6§;
   import §!D§.§1!&§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§=e§;
   import §%!Q§.§>K§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §0!"§.§&B§;
   import §0!"§.§,!Z§;
   import §1^§.Transform;
   import §1^§.§]!Q§;
   import §2X§.§>N§;
   import §2n§.§'!^§;
   import §3!b§.Cutscenes;
   import §3!b§.DontKnockIt;
   import §6!Q§.§#W§;
   import §6!Q§.§'!E§;
   import §6!Q§.§'[§;
   import §6!Q§.§]u§;
   import §6[§.§`!O§;
   import §<!&§.§%!§;
   import §<!&§.§=2§;
   import §<!&§.§]p§;
   import §=w§.§,D§;
   import §>T§.§!=§;
   import §[^§.§ !X§;
   import §[^§.§!A§;
   import §`_§.§^s§;
   import co.janicek.core.math.UUID;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Currency;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.api.§<,§;
   import com.player03.run3.api.GlobalEventManager;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.level.trigger.§,!A§;
   import com.player03.run3.menu.§ L§;
   import flash.Boot;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import haxe.Timer;
   import haxe.ds.StringMap;
   import haxeutils.math.§,@§;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   import haxeutils.sound.§5! §;
   import motion.Actuate;
   import motion.actuators.GenericActuator;
   import motion.easing.IEasing;
   import nme3D.§1![§;
   import nme3D.shader.§<!9§;
   import unitsystem.§7o§;
   
   public class § !W§ extends §=2§
   {
      
      public static var init__:Boolean;
      
      public static var §7!,§:Point3D;
      
      public static var §!+§:Point3D;
      
      public static var §7K§:Point3D;
      
      public static var §"X§:int = 75;
      
      public static var §+M§:Number = 1050;
      
      public static var §<!%§:Number = 300;
      
      public static var §1d§:Number = 180;
      
      public static var §"P§:Number = 60;
      
      public static var §0[§:String = "TravelTheGalaxy";
      
      public static var §@!§:String = "tunnelFirstSection";
      
      public static var §]t§:Number = 5;
      
      public static var §^[§:Number = 0.3;
      
      public static var §;!%§:Number = 0.031415926535897934;
      
      public static var §>!T§:Number = 0.05235987755982988;
      
      public var §8O§:Boolean;
      
      public var victoryCondition:Function;
      
      public var victoryCallback:Function;
      
      public var § y§:Number;
      
      public var §9`§:Vector.<§2N§>;
      
      public var title:String;
      
      public var §8o§:Number;
      
      public var §`!M§:Number;
      
      public var §4!+§:Number;
      
      public var §'y§:IEasing;
      
      public var §<!Y§:§]!^§;
      
      public var §8!$§:Vector.<TunnelSection>;
      
      public var §-!-§:String;
      
      public var §%!]§:Boolean;
      
      public var §1+§:Number;
      
      public var §+!I§:§8-§;
      
      public var power:Number;
      
      public var §;!8§:Boolean;
      
      public var §;!E§:Number;
      
      public var §%K§:Point3D;
      
      public var §&A§:String;
      
      public var noCrumblingTiles:Boolean;
      
      public var §?!I§:§1!&§;
      
      public var §1W§:TunnelSection;
      
      public var §--§:Boolean;
      
      public var §5§:§,a§;
      
      public var fadeOut:§#W§;
      
      public var extraParams:Object;
      
      public var §7!E§:§6O§;
      
      public var endTiles:Boolean;
      
      public var §'!,§:Number;
      
      public var §&^§:Boolean;
      
      public var § %§:Boolean;
      
      public var §3j§:int;
      
      public var §>!S§:Number;
      
      public var §73§:§[!M§;
      
      public var §3A§:Point3D;
      
      public var characters:Vector.<§6M§>;
      
      public var §4-§:§"B§;
      
      public var §'!U§:§"B§;
      
      public var §<!;§:int;
      
      public var backwards:Boolean;
      
      public var §54§:Boolean;
      
      public var analytics:§8!M§;
      
      public function § !W§(param1:int, param2:§1!&§, param3:§,a§, param4:Object = undefined)
      {
         var problemSection:TunnelSection;
         var rejectedCharacter:§6O§;
         var _gthis:§ !W§;
         var _temp_1:* = true;
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = _temp_1;
         var _loc11_:* = null as §6O§;
         var _loc12_:* = null as §6M§;
         var _loc13_:* = 0;
         var _loc14_:* = null as Vector.<§6O§>;
         var _loc15_:* = null as §6O§;
         var _loc16_:* = null as Array;
         var _loc17_:* = null as §,D§;
         endTiles = false;
         §&^§ = false;
         §3j§ = 0;
         §8O§ = false;
         while(true)
         {
            if(_loc19_)
            {
               §;!8§ = false;
               §§push(§§findproperty(§'!,§));
               §§push(1050);
               if(!_loc18_)
               {
                  §§push(Number(§§pop()));
               }
               §§pop().§'!,§ = §§pop();
               if(_loc19_)
               {
                  §>!S§ = 1;
                  §4!+§ = 0.5;
                  §8o§ = 0.25;
                  if(!_loc18_)
                  {
                     §`!M§ = 0;
                     § y§ = 0;
                  }
               }
               §;!E§ = 0;
               §--§ = true;
               §4-§ = null;
               if(!_loc19_)
               {
                  break;
               }
               §1+§ = 0;
               §%!]§ = false;
            }
            _gthis = this;
            break;
         }
         var _loc5_:§1![§ = new §1![§();
         _loc5_.§9!R§ = new § !X§();
         super(_loc5_,422,0.017);
         §9]§ = true;
         if(param4 == null)
         {
            param4 = {};
         }
         extraParams = param4;
         loop5:
         while(true)
         {
            loop6:
            while(true)
            {
               while(true)
               {
                  §§push(false);
                  if(param2 != null)
                  {
                     §§pop();
                     if(_loc18_)
                     {
                        break;
                     }
                     §§push(param2.extraParams == null);
                     if(_loc18_)
                     {
                        break loop6;
                     }
                     §§push(!§§pop());
                     if(_loc18_)
                     {
                        break loop5;
                     }
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     break;
                  }
                  §5§ = param3;
                  loop26:
                  while(true)
                  {
                     loop27:
                     while(true)
                     {
                        loop28:
                        while(true)
                        {
                           while(true)
                           {
                              if(!_loc18_)
                              {
                                 if(§5§ == null)
                                 {
                                    §5§ = §,a§.EXPLORE;
                                 }
                                 §;!8§ = §5§ == §,a§.PLAYTEST;
                                 if(_loc19_)
                                 {
                                    §54§ = param4.randomTransforms;
                                    backwards = param4.backwards;
                                 }
                                 noCrumblingTiles = param4.noCrumblingTiles;
                                 if(!_loc19_)
                                 {
                                    break;
                                 }
                                 loop30:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(§§findproperty(endTiles));
                                       if(!_loc18_)
                                       {
                                          §§push(true);
                                          if(_loc18_)
                                          {
                                             break;
                                          }
                                          if(param4.endTiles)
                                          {
                                             break loop30;
                                          }
                                          if(_loc18_)
                                          {
                                             break loop30;
                                          }
                                          §§pop();
                                       }
                                       §§push(backwards);
                                       if(_loc19_)
                                       {
                                          break;
                                       }
                                       break loop30;
                                    }
                                    §§push(Boolean(§§pop()));
                                    break;
                                 }
                                 §§pop().endTiles = §§pop();
                                 if(_loc18_)
                                 {
                                    break loop28;
                                 }
                                 victoryCondition = param4.victoryCondition;
                                 if(_loc18_)
                                 {
                                    break loop27;
                                 }
                                 victoryCallback = param4.victoryCallback;
                                 if(_loc18_)
                                 {
                                    break loop26;
                                 }
                                 if(param4.noTransitionTiles)
                                 {
                                    §'!,§ = 0;
                                 }
                              }
                              if(param4.characterByName == null)
                              {
                                 break loop27;
                              }
                              if(_loc18_)
                              {
                                 break loop26;
                              }
                              param4.character = §'O§.§3'§(param4.characterByName);
                              if(!_loc18_)
                              {
                                 break loop27;
                              }
                              §§goto(addr02f1);
                           }
                           §§goto(addr0312);
                        }
                        §§goto(addr02b4);
                     }
                     §7!E§ = param4.character;
                     if(!_loc18_)
                     {
                        §?!I§ = param2;
                        if(!_loc18_)
                        {
                           §§push(false);
                           if(param1 < 0)
                           {
                              §§pop();
                              §§push(param2 != null);
                              if(_loc19_)
                              {
                                 §§push(Boolean(§§pop()));
                                 break loop6;
                              }
                              break loop5;
                           }
                           break loop6;
                        }
                     }
                     break;
                  }
                  §§goto(addr02a0);
               }
               §,!H§(param2.extraParams);
               continue loop28;
            }
            if(§§pop())
            {
               addr02a0:
               §§push(param1);
               if(!_loc18_)
               {
                  §§push(§§pop() + param2.levelCount);
                  if(_loc19_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               param1 = §§pop();
            }
            addr02b4:
            § %§ = param4.onlyTerrain;
            if(!_loc18_)
            {
               §§push(true);
               if(!_loc19_)
               {
                  break;
               }
               if(§ %§)
               {
                  break;
               }
               §§pop();
               if(_loc19_)
               {
                  §§push(§5§ == §,a§.CUTSCENE);
                  break;
               }
               §§goto(addr02f8);
            }
            §§goto(addr02f1);
         }
         if(§§pop())
         {
            addr02f1:
            §&^§ = true;
            addr02f8:
            §%!Y§ = true;
         }
         §&A§ = param4.music;
         if(_loc19_)
         {
            addr0312:
            §'!U§ = new §"B§();
         }
         var _loc6_:Point3D = § !W§.§7!,§;
         if(!_loc18_)
         {
            §%K§ = new Point3D(_loc6_.x,_loc6_.y,_loc6_.z);
         }
         var _loc7_:Point3D = § !W§.§7!,§;
         loop7:
         while(true)
         {
            if(_loc19_)
            {
               §3A§ = new Point3D(_loc7_.x,_loc7_.y,_loc7_.z);
               if(_loc18_)
               {
                  break;
               }
               §§push(§ %§);
               if(!_loc18_)
               {
                  §§push(!§§pop());
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(!_loc19_)
                     {
                        break;
                     }
                     §<!Y§ = new §]!^§(_loc5_,§<!M§);
                     _loc5_.§<!Y§ = §<!Y§;
                  }
                  if(param3 != §,a§.SHARED_CONTENT)
                  {
                     if(_loc19_)
                     {
                        break;
                     }
                     break loop7;
                  }
                  §<M§(1);
                  break loop7;
               }
            }
            this["power"] = 1;
            break;
         }
         var _loc8_:Vector.<TunnelSection> = new Vector.<TunnelSection>(0,false);
         if(!_loc18_)
         {
            §8!$§ = _loc8_;
         }
         var _loc9_:Vector.<§2N§> = new Vector.<§2N§>(0,false);
         while(true)
         {
            if(!_loc18_)
            {
               §9`§ = _loc9_;
               if(!_loc19_)
               {
                  break;
               }
            }
            §<L§(param1);
            if(_loc19_)
            {
               break;
            }
            §§goto(addr043f);
         }
         if(§"[§ == null)
         {
            addr043f:
            return;
         }
         var _loc10_:Vector.<§6M§> = new Vector.<§6M§>(0,false);
         loop10:
         while(true)
         {
            loop11:
            while(true)
            {
               loop13:
               while(true)
               {
                  if(!_loc18_)
                  {
                     characters = _loc10_;
                     loop14:
                     while(true)
                     {
                        loop15:
                        while(true)
                        {
                           if(_loc19_)
                           {
                              while(true)
                              {
                                 §§push(false);
                                 if(!_loc18_)
                                 {
                                    §§push(§ %§);
                                    if(!_loc18_)
                                    {
                                       §§push(!§§pop());
                                    }
                                    if(§§pop())
                                    {
                                       §§pop();
                                       §§push(§5§ == §,a§.CUTSCENE);
                                       if(_loc18_)
                                       {
                                          break;
                                       }
                                       §§push(!§§pop());
                                       if(_loc18_)
                                       {
                                          break loop14;
                                       }
                                       §§push(Boolean(§§pop()));
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc18_)
                                    {
                                       _loc11_ = §'O§.§;<§;
                                       loop17:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             if(§7!E§ != null)
                                             {
                                                if(_loc19_)
                                                {
                                                   _loc11_ = §7!E§;
                                                   _loc12_ = _loc11_.§1!L§(this);
                                                   if(!_loc18_)
                                                   {
                                                      characters.push(_loc12_);
                                                      if(!_loc18_)
                                                      {
                                                         §4M§(_loc12_);
                                                      }
                                                   }
                                                   break;
                                                }
                                                addr0513:
                                                §'O§.random.§4!a§(§1W§.charactersAllowed);
                                                if(_loc18_)
                                                {
                                                   break loop17;
                                                }
                                             }
                                             else if(_loc11_ == §'O§.random && Boolean(param4.randomizeOnStart))
                                             {
                                                §§goto(addr0513);
                                             }
                                             param4.randomizeOnStart = false;
                                             while(true)
                                             {
                                                §§push(true);
                                                §§push(§1W§.§%f§(_loc11_));
                                                if(!_loc18_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc18_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                §§push(!§§pop());
                                                break;
                                             }
                                             if(!§§pop())
                                             {
                                                §§pop();
                                                break loop17;
                                             }
                                             §§goto(addr0559);
                                          }
                                       }
                                       addr0559:
                                       if(_loc11_.§#U§)
                                       {
                                          if(!_loc18_)
                                          {
                                             rejectedCharacter = _loc11_;
                                          }
                                          _loc11_ = null;
                                          if(!_loc18_)
                                          {
                                             §§push(0);
                                             if(!_loc18_)
                                             {
                                                §§push(int(§§pop()));
                                             }
                                             _loc13_ = §§pop();
                                          }
                                          _loc14_ = §'O§.available;
                                          if(_loc19_)
                                          {
                                             loop0:
                                             while(_loc13_ < int(_loc14_.length))
                                             {
                                                _loc15_ = _loc14_[_loc13_];
                                                loop19:
                                                while(true)
                                                {
                                                   if(_loc19_)
                                                   {
                                                      _loc13_++;
                                                      if(_loc18_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(false);
                                                      if(!_loc18_)
                                                      {
                                                         loop21:
                                                         while(true)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(false);
                                                               if(_loc19_)
                                                               {
                                                                  §§push(§1W§.§%f§(_loc15_));
                                                                  if(!_loc18_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     break loop21;
                                                                  }
                                                                  if(_loc19_)
                                                                  {
                                                                     §§pop();
                                                                     if(!_loc19_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(_loc15_.§<!,§());
                                                                     if(_loc18_)
                                                                     {
                                                                        break loop21;
                                                                     }
                                                                  }
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                               if(!_loc18_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                               break loop21;
                                                            }
                                                            §§pop();
                                                            if(_loc19_)
                                                            {
                                                               break loop19;
                                                            }
                                                            addr0626:
                                                            _loc11_ = _loc15_;
                                                            break loop0;
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            break;
                                                         }
                                                         if(_loc19_)
                                                         {
                                                            break loop22;
                                                         }
                                                      }
                                                      addr0621:
                                                      §§push(Boolean(§§pop()));
                                                      break;
                                                   }
                                                   addr0622:
                                                   if(!§§pop())
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§goto(addr0626);
                                                }
                                                §§push(_loc15_.§#U§);
                                                if(!_loc18_)
                                                {
                                                   §§push(!§§pop());
                                                   if(_loc19_)
                                                   {
                                                      §§goto(addr0621);
                                                   }
                                                }
                                                §§goto(addr0622);
                                             }
                                          }
                                          if(_loc11_ == null)
                                          {
                                             if(!_loc18_)
                                             {
                                                §1W§.§;$§();
                                             }
                                             dispose();
                                             Main.instance.§,Z§(null);
                                             return;
                                          }
                                          problemSection = §1W§;
                                          if(!_loc18_)
                                          {
                                             Timer.delay(function():void
                                             {
                                                var _temp_1:* = false;
                                                var _loc1_:Boolean = true;
                                                var _loc2_:Boolean = _temp_1;
                                                if(_gthis.§"[§ != null)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      §]u§.§@!A§().§5B§(new §'!^§(problemSection,rejectedCharacter));
                                                   }
                                                }
                                             },0);
                                          }
                                       }
                                       _loc12_ = _loc11_.§2!F§(this);
                                       if(!_loc18_)
                                       {
                                          characters.push(_loc12_);
                                          if(!_loc18_)
                                          {
                                             §4M§(_loc12_);
                                          }
                                       }
                                       break loop18;
                                    }
                                    break loop15;
                                 }
                                 §<!M§.§%!7§.x = 2;
                                 §+!I§ = new §8-§(this);
                                 registerAnimation(§+!I§);
                                 §§push(false);
                                 break;
                              }
                              if(characters == null)
                              {
                                 break loop14;
                              }
                              if(_loc18_)
                              {
                                 break loop14;
                              }
                              §§pop();
                              if(_loc18_)
                              {
                                 break loop13;
                              }
                           }
                           §§push(int(characters.length));
                           if(_loc19_)
                           {
                              §§push(0);
                              if(!_loc18_)
                              {
                                 §§push(§§pop() > §§pop());
                                 if(_loc19_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 break loop14;
                              }
                              break loop10;
                           }
                           break loop11;
                        }
                        analytics = new §8!M§(this);
                        animations.unshift(analytics);
                     }
                     if(§§pop())
                     {
                        break loop15;
                     }
                  }
                  while(true)
                  {
                     §§push(param4.animations);
                     if(_loc19_)
                     {
                        if(§§pop() == null)
                        {
                           break loop13;
                        }
                        if(_loc18_)
                        {
                           break loop13;
                        }
                        §§push(0);
                        if(_loc19_)
                        {
                           break loop11;
                        }
                        §§goto(addr0761);
                     }
                     §§goto(addr0771);
                  }
                  §§goto(addr0773);
               }
               §§goto(addr07d6);
            }
            §§push(int(§§pop()));
            if(!_loc18_)
            {
               addr0761:
               _loc13_ = §§pop();
               addr0773:
               §§push(param4.animations);
               if(_loc19_)
               {
                  addr0771:
                  §§push(§§pop());
               }
               _loc16_ = §§pop();
               §§goto(addr07cb);
            }
            §§goto(addr07cd);
         }
         while(§§pop() < §§pop())
         {
            _loc17_ = _loc16_[_loc13_];
            if(!_loc18_)
            {
               _loc13_++;
               while(true)
               {
                  if(!_loc18_)
                  {
                     if(_loc17_ is §,!A§)
                     {
                        if(!_loc19_)
                        {
                           break;
                        }
                        _loc17_.tunnel = this;
                        if(!_loc19_)
                        {
                           break;
                        }
                     }
                  }
                  registerAnimation(_loc17_);
                  break;
               }
            }
            loop2:
            while(true)
            {
               §§push(_loc13_);
               addr07cd:
               while(true)
               {
                  §§push(int(_loc16_.length));
                  break loop2;
               }
            }
         }
         addr07d6:
      }
      
      public function §2d§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               if(int(characters.length) <= 0)
               {
                  break;
               }
            }
            § L§.mid = 74894;
            §+,§(§'O§.§;<§);
            §3j§ = 0;
            if(_loc1_)
            {
               §?!I§.§%I§(characters[0].§73§.§[9§,characters[0].§73§);
               if(_loc1_)
               {
                  if(§"[§ == null)
                  {
                     if(!_loc2_)
                     {
                        return;
                     }
                     break;
                  }
                  reset();
               }
               §]u§.§@!A§().§]]§.reset();
               if(!_loc2_)
               {
                  if(!§7o§.instance.paused)
                  {
                     break;
                  }
                  if(_loc1_)
                  {
                     update(0);
                  }
               }
            }
            display(0);
            break;
         }
      }
      
      override public function update(param1:Number) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 2010
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function §=X§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_)
            {
               §`!M§ = 1;
               if(!_loc1_)
               {
                  break;
               }
            }
            §>!S§ = 1;
            break;
         }
      }
      
      public function §,J§() : void
      {
         var victoryZ:Number;
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc3_:* = null;
         var _loc4_:* = null as String;
         var _loc5_:* = null as § !>§;
         var _loc6_:* = NaN;
         if(!_loc8_)
         {
            § L§.mid = 319444;
         }
         §§push(0);
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(null);
         if(!_loc8_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(§9$§(§1W§.§[9§,false,false));
            if(_loc7_)
            {
               §§push(int(§§pop()));
               if(!_loc8_)
               {
                  §§push(int(§§pop()));
                  if(_loc8_)
                  {
                     break;
                  }
               }
            }
            _loc1_ = §§pop();
            while(true)
            {
               §§push(true);
               if(_loc7_)
               {
                  if(extraParams.stopLoadingAfter == null)
                  {
                     break;
                  }
               }
               §§pop();
               §§push(_loc1_);
               if(!_loc8_)
               {
                  break loop0;
               }
               loop2:
               while(true)
               {
                  while(true)
                  {
                     if(§§pop() >= 0)
                     {
                        if(_loc8_)
                        {
                           break;
                        }
                        if(extraParams.modifyData == null)
                        {
                           while(true)
                           {
                              §§push(§?!I§.§,q§(_loc1_));
                              if(!_loc8_)
                              {
                                 §§push(§§pop());
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                              }
                              §§push(§§pop());
                              if(!_loc8_)
                              {
                                 break;
                              }
                              break loop2;
                           }
                           _loc2_ = §§pop();
                        }
                        else
                        {
                           _loc3_ = extraParams;
                           if(_loc7_)
                           {
                              loop8:
                              while(true)
                              {
                                 §§push(§?!I§.§,q§(_loc1_));
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc8_)
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc7_)
                                          {
                                             _loc4_ = §§pop();
                                             if(_loc8_)
                                             {
                                                break loop8;
                                             }
                                             §§push(_loc3_.modifyData(_loc1_,_loc4_));
                                             if(_loc8_)
                                             {
                                                break;
                                             }
                                          }
                                          §§push(§§pop());
                                          break;
                                       }
                                    }
                                 }
                                 _loc2_ = §§pop();
                                 break;
                              }
                           }
                        }
                     }
                     §§push(false);
                     if(!_loc8_)
                     {
                        loop10:
                        while(true)
                        {
                           if(_loc2_ == null)
                           {
                              while(true)
                              {
                                 if(!_loc8_)
                                 {
                                    §§pop();
                                    §§push(extraParams.continuesTo);
                                    if(!_loc7_)
                                    {
                                       break loop10;
                                    }
                                    §§push(§§pop() == null);
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                    §§push(!§§pop());
                                 }
                                 §§push(Boolean(§§pop()));
                                 break;
                              }
                           }
                           if(§§pop())
                           {
                              §§push(extraParams.continuesTo);
                              if(!_loc8_)
                              {
                                 §§push(§§pop());
                              }
                              break;
                           }
                           addr026b:
                           §§push(_loc2_);
                           break loop2;
                        }
                        _loc4_ = §§pop();
                        if(_loc7_)
                        {
                           _loc5_ = §>K§.§@!A§().§7j§.get(_loc4_);
                           if(!_loc8_)
                           {
                              if(_loc5_ != null)
                              {
                                 loop12:
                                 while(true)
                                 {
                                    if(!_loc8_)
                                    {
                                       loop13:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(§1W§.§[9§);
                                             if(!_loc8_)
                                             {
                                                §§push(1);
                                                if(_loc8_)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!_loc7_)
                                                {
                                                   break loop13;
                                                }
                                             }
                                             §§push(int(§§pop()));
                                             if(!_loc8_)
                                             {
                                                _loc1_ = §§pop();
                                                §§push(_loc1_);
                                             }
                                             break loop13;
                                          }
                                          if(§§pop() >= §§pop())
                                          {
                                             break loop12;
                                          }
                                          if(_loc7_)
                                          {
                                             §§push(§=e§.§ '§);
                                             §§push(_loc5_.levels);
                                             §§push(_loc1_);
                                             if(!_loc8_)
                                             {
                                                §§push(§§pop() - §?!I§.levelCount);
                                             }
                                             §§push(§§pop()[§§pop()]);
                                             if(!_loc8_)
                                             {
                                                §§push(int(§§pop()));
                                             }
                                             §§push(§§pop().get(§§pop()));
                                             if(_loc7_)
                                             {
                                                §§push(§§pop());
                                             }
                                             _loc2_ = §§pop();
                                             §§push(victoryCondition);
                                             if(_loc7_)
                                             {
                                                §§push(§§pop());
                                             }
                                             if(§§pop() != null)
                                             {
                                                break loop12;
                                             }
                                          }
                                          victoryZ = §1W§.endZ;
                                       }
                                       §§push(§?!I§.levelCount + _loc5_.levelCount);
                                       break loop14;
                                    }
                                    victoryCondition = function(param1:§6M§):Boolean
                                    {
                                       return param1.transform.position.z >= victoryZ;
                                    };
                                    break;
                                 }
                              }
                           }
                           §§goto(addr026b);
                        }
                        §§goto(addr0405);
                     }
                     addr0283:
                     if(§§pop())
                     {
                        loop15:
                        while(true)
                        {
                           §§push(§'!,§);
                           if(!_loc8_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc8_)
                              {
                                 _loc6_ = §§pop();
                                 §§push(§1W§.distToNextSection);
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(0);
                              if(!_loc8_)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    §§push(§1W§.distToNextSection);
                                    if(_loc7_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc7_)
                                       {
                                          break loop15;
                                       }
                                    }
                                    addr034f:
                                    addr0351:
                                    if(§§pop() > 0)
                                    {
                                       §§push(§9`§);
                                       §§push(§2N§);
                                       §§push(§8!$§);
                                       §§push(int(§8!$§.length));
                                       if(_loc7_)
                                       {
                                          §§push(§§pop() - 2);
                                       }
                                       §§pop().push(§§pop().§!G§(§§pop()[§§pop()],§1W§));
                                       if(_loc8_)
                                       {
                                          §§goto(addr03a0);
                                       }
                                    }
                                    §§goto(addr0405);
                                 }
                                 addr02d9:
                                 while(true)
                                 {
                                    §§push(§§findproperty(§1W§));
                                    §§push(§§findproperty(TunnelSection));
                                    §§push(this);
                                    §§push(§"[§);
                                    §§push(§<!7§);
                                    §§push(_loc2_);
                                    §§push(_loc1_);
                                    §§push(§1W§.endZ);
                                    if(!_loc8_)
                                    {
                                       §§push(_loc6_);
                                       if(!_loc7_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc7_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    §§push(§1W§.§6!0§);
                                    break;
                                 }
                                 §§pop().§1W§ = new §§pop().TunnelSection(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),null,§1W§.power,§54§);
                                 §8!$§.push(§1W§);
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                                 §1W§.init();
                                 §§goto(addr034f);
                                 §§push(_loc6_);
                              }
                              §§goto(addr0351);
                           }
                           §§goto(addr03fc);
                        }
                        _loc6_ = §§pop();
                        while(true)
                        {
                           while(true)
                           {
                              if(_loc7_)
                              {
                                 §§goto(addr02d9);
                              }
                              §§goto(addr03a0);
                           }
                           §§goto(addr03fc);
                        }
                     }
                     break loop18;
                  }
                  §§push(§1W§.§,`§);
                  if(!_loc8_)
                  {
                     §§goto(addr0283);
                  }
                  else
                  {
                     §§goto(addr039c);
                  }
               }
               if(§§pop() != null)
               {
                  break loop3;
               }
               addr039c:
               while(true)
               {
                  if(endTiles)
                  {
                     addr03a0:
                     loop5:
                     while(true)
                     {
                        §§push(§9`§);
                        §§push(§2N§);
                        §§push(§1W§);
                        §§push(3000);
                        if(_loc7_)
                        {
                           while(true)
                           {
                              §§push(§3A§.z);
                              if(!_loc8_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc7_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(300);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc7_)
                              {
                                 break;
                              }
                              break loop5;
                           }
                        }
                        §§push(Number(§§pop()));
                        break;
                     }
                     §§pop().push(§§pop().§`!L§(§§pop(),§§pop()));
                     if(_loc8_)
                     {
                        break;
                     }
                  }
                  addr03fc:
                  §1W§ = null;
                  break;
               }
               addr0405:
               return;
            }
            addr00a3:
            if(§§pop())
            {
               §§push(_loc1_);
               continue loop2;
            }
            §§goto(addr026b);
         }
         §§goto(addr00a3);
      }
      
      public function §<M§(param1:Number) : Number
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
               if(!_loc2_)
               {
                  §§push(power);
                  if(_loc3_)
                  {
                     while(true)
                     {
                        if(§§pop() == param1)
                        {
                           §§push(power);
                           if(!_loc2_)
                           {
                              §§goto(addr003a);
                           }
                           addr0049:
                           §§push(0);
                           if(_loc2_)
                           {
                              break;
                           }
                           if(§§pop() < §§pop())
                           {
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    power = 0;
                                    break loop0;
                                 }
                                 §§goto(addr00e1);
                              }
                              §§goto(addr00f4);
                           }
                           else
                           {
                              §§push(param1);
                              if(!_loc3_)
                              {
                                 break loop1;
                              }
                           }
                        }
                        else
                        {
                           § L§.mid = 858092;
                           §§push(param1);
                           if(_loc3_)
                           {
                              §§goto(addr0049);
                           }
                        }
                        §§push(1);
                        break;
                     }
                     if(§§pop() < §§pop())
                     {
                        addr007d:
                        power = param1;
                        break loop0;
                     }
                     power = 1;
                     break loop0;
                  }
                  addr003a:
                  return §§pop();
               }
               §§goto(addr007d);
            }
            return §§pop();
         }
         §<!9§.§^!<§(0,power);
         while(true)
         {
            §§push(gravity3D);
            §§push(0.9);
            if(!_loc2_)
            {
               §§push(power);
               if(!_loc2_)
               {
                  §§push(§§pop() * 0.09999999999999998);
               }
               §§push(§§pop() + §§pop());
               if(!_loc3_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            if(_loc3_)
            {
               break;
            }
            addr00da:
            §§pop().y = §§pop();
            if(_loc3_)
            {
               addr00e1:
               §5! §.§@!A§().§'J§(power);
            }
            addr00f4:
            §§push(power);
            break loop1;
         }
         §§goto(addr00da);
      }
      
      public function §<§(param1:§6M§) : void
      {
         var _gthis:§ !W§;
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:* = null as TunnelSection;
         var _loc3_:* = 0;
         var _loc4_:* = null as Vector.<§,D§>;
         var _loc5_:* = null as §,D§;
         loop2:
         while(true)
         {
            if(!_loc6_)
            {
               _gthis = this;
               § L§.high = 143579;
               loop3:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc6_)
                     {
                        if(extraParams.victoryMessage != null)
                        {
                           if(!_loc6_)
                           {
                              §'[§.§7!@§(param1.§!8§,extraParams.victoryMessage.split("\n"));
                           }
                           extraParams.victoryMessage = null;
                        }
                        §§push(true);
                        if(!_loc7_)
                        {
                           break;
                        }
                        if(§;!8§)
                        {
                           break;
                        }
                        if(!_loc7_)
                        {
                           break loop3;
                        }
                        §§pop();
                     }
                     §§push(§5§ == §,a§.SHARED_CONTENT);
                     if(!_loc6_)
                     {
                        break loop3;
                     }
                     break;
                  }
                  if(§§pop())
                  {
                     if(!_loc7_)
                     {
                        break loop2;
                     }
                     _loc2_ = param1.§73§;
                     loop5:
                     while(true)
                     {
                        if(_loc7_)
                        {
                           while(true)
                           {
                              if(_loc2_ == null)
                              {
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 _loc2_ = §]!#§(0,true);
                              }
                              §73§ = _loc2_;
                              if(!_loc6_)
                              {
                                 break;
                              }
                              break loop5;
                           }
                           if(param1.§!8§ == §'O§.random)
                           {
                              §2d§();
                           }
                           else
                           {
                              §§push(param1.§!8§.§?@§);
                              if(_loc7_)
                              {
                                 §§push(int(§§pop()));
                              }
                              _loc3_ = §§pop();
                              loop7:
                              while(true)
                              {
                                 if(_loc7_)
                                 {
                                    loop0:
                                    do
                                    {
                                       if(false)
                                       {
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          break loop5;
                                       }
                                       _loc3_++;
                                       if(_loc7_)
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(param1.§!8§.§?@§);
                                                      if(!_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            break loop0;
                                                         }
                                                         continue loop13;
                                                      }
                                                      §§push(_loc3_);
                                                      if(_loc6_)
                                                      {
                                                         break loop8;
                                                      }
                                                   }
                                                   §§push(int(§'O§.available.length));
                                                   break;
                                                }
                                                if(§§pop() >= §§pop())
                                                {
                                                   §§push(0);
                                                   if(_loc7_)
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                   break loop8;
                                                }
                                                continue loop13;
                                             }
                                             loop11:
                                             while(true)
                                             {
                                                loop12:
                                                while(true)
                                                {
                                                   loop13:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(false);
                                                         §§push(false);
                                                         if(_loc7_)
                                                         {
                                                            §§push(false);
                                                            if(_loc6_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§'O§.available[_loc3_].§<!,§());
                                                            if(_loc7_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               break loop13;
                                                            }
                                                            if(_loc6_)
                                                            {
                                                               break loop12;
                                                            }
                                                            §§pop();
                                                            if(!_loc7_)
                                                            {
                                                               break loop11;
                                                            }
                                                         }
                                                         §§push(§'O§.available[_loc3_].§#U§);
                                                         if(!_loc6_)
                                                         {
                                                            break loop12;
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr01dc);
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§pop();
                                                         §§push(§'O§.available[_loc3_] == §'O§.random);
                                                         if(_loc7_)
                                                         {
                                                            break loop11;
                                                         }
                                                      }
                                                   }
                                                   continue loop0;
                                                }
                                                §§push(!§§pop());
                                                if(_loc7_)
                                                {
                                                   addr01dc:
                                                   §§push(Boolean(§§pop()));
                                                }
                                                break loop13;
                                             }
                                             §§push(!§§pop());
                                             if(_loc7_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             continue loop0;
                                          }
                                          _loc3_ = §§pop();
                                          if(_loc7_)
                                          {
                                             break loop9;
                                          }
                                          break loop7;
                                       }
                                       break;
                                    }
                                    while(if(§§pop())
                                    {
                                       §§pop();
                                       §§push(_loc2_ == null || _loc2_.§%f§(§'O§.available[_loc3_]));
                                    }, !§§pop());
                                 }
                                 §'O§.§3§(§'O§.available[_loc3_]);
                                 break;
                              }
                           }
                        }
                        if(§?!I§.levelCount > 1)
                        {
                           break;
                        }
                        §§goto(addr03c6);
                     }
                     §5!Y§(0);
                     §§goto(addr03c6);
                  }
                  else
                  {
                     §8O§ = true;
                  }
               }
               §§push(Boolean(§§pop()));
               break loop4;
            }
            §§push(0);
            if(!_loc6_)
            {
               §§push(int(§§pop()));
            }
            _loc3_ = §§pop();
            break;
         }
         _loc4_ = animations;
         loop15:
         while(true)
         {
            loop16:
            while(true)
            {
               loop17:
               while(true)
               {
                  if(!_loc6_)
                  {
                     while(_loc3_ < int(_loc4_.length))
                     {
                        _loc5_ = _loc4_[_loc3_];
                        if(_loc7_)
                        {
                           _loc3_++;
                           if(!_loc7_)
                           {
                              continue;
                           }
                        }
                        _loc5_.update(0);
                     }
                     while(true)
                     {
                        §§push(false);
                        if(_loc7_)
                        {
                           if(extraParams.fadeOutOnVictory == null)
                           {
                              break;
                           }
                           if(!_loc6_)
                           {
                              §§pop();
                              if(!_loc7_)
                              {
                                 break loop17;
                              }
                              §§push(extraParams.fadeOutOnVictory > 0);
                              if(!_loc7_)
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
                        break;
                     }
                     fadeOut = new §#W§(extraParams.fadeOutOnVictory,0,extraParams.fadeOutOnVictory / 2);
                     if(!_loc7_)
                     {
                        break loop16;
                     }
                     §]u§.§@!A§().§3,§(fadeOut);
                     if(!_loc7_)
                     {
                        break loop15;
                     }
                     §5! §.§@!A§().§#v§(null);
                  }
                  §§push(victoryCallback);
                  if(!_loc6_)
                  {
                     §§push(§§pop());
                  }
                  if(§§pop() != null)
                  {
                     fadeOut.§9!C§ = function():void
                     {
                        var _temp_1:* = false;
                        var _loc1_:Boolean = true;
                        var _loc2_:Boolean = _temp_1;
                        §§push(_gthis.victoryCallback);
                        if(_loc1_)
                        {
                           §§push(§§pop());
                        }
                        if(§§pop() != null)
                        {
                           if(_loc1_)
                           {
                              §]u§.§@!A§().§5!@§ = false;
                              if(!_loc2_)
                              {
                                 _gthis.victoryCallback();
                                 if(_loc1_)
                                 {
                                    _gthis.victoryCallback = null;
                                 }
                              }
                           }
                        }
                     };
                     if(!_loc6_)
                     {
                        break;
                     }
                     break loop15;
                  }
                  break;
               }
               §?!I§.§%!U§(param1.§73§.§[9§,param1.§73§,§3j§);
               if(_loc7_)
               {
                  if(§5§ == §,a§.EXPLORE)
                  {
                     break loop15;
                  }
                  break;
               }
               break loop15;
            }
            addr03c6:
            return;
         }
         Save.forceVisitMap.§?F§(true);
         break loop16;
      }
      
      public function §+,§(param1:§6O§) : §6M§
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc6_:* = null as §6M§;
         loop1:
         while(true)
         {
            if(!_loc8_)
            {
               § L§.high = 605305;
               if(!_loc7_)
               {
                  break;
               }
            }
            loop2:
            while(true)
            {
               while(true)
               {
                  §§push(true);
                  §§push(false);
                  if(!_loc8_)
                  {
                     if(§7!E§ == null)
                     {
                        break;
                     }
                     if(_loc8_)
                     {
                        break loop2;
                     }
                  }
                  §§pop();
                  §§push(§7!E§ == param1);
                  if(!_loc8_)
                  {
                     break loop2;
                  }
                  §§goto(addr0065);
               }
               if(!§§pop())
               {
                  if(!_loc8_)
                  {
                     §§pop();
                     if(!_loc7_)
                     {
                        break loop1;
                     }
                     while(true)
                     {
                        §§push(false);
                        if(characters[0].§!8§ == param1)
                        {
                           §§pop();
                           if(!_loc8_)
                           {
                              break loop1;
                           }
                           §§goto(addr00b0);
                        }
                        addr00ab:
                        §§push(Boolean(§§pop()));
                        break;
                     }
                     addr00ac:
                     if(§§pop())
                     {
                        addr00b0:
                        return characters[0];
                     }
                     var _loc2_:TunnelSection = §]!#§(0,true);
                     var _loc3_:TunnelSection = null;
                     if(!_loc8_)
                     {
                        §§push(int(characters.length));
                        if(!_loc8_)
                        {
                           while(true)
                           {
                              if(§§pop() > 0)
                              {
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                                 _loc2_ = characters[0].§73§;
                                 _loc3_ = characters[0].§]!L§;
                              }
                              if(param1 == §'O§.random)
                              {
                                 if(!_loc8_)
                                 {
                                    §'O§.random.§4!a§(_loc2_.charactersAllowed);
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                 }
                                 §§goto(addr01b8);
                              }
                              break;
                           }
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
                                       §§push(false);
                                       if(!_loc8_)
                                       {
                                          §§push(false);
                                          if(!_loc7_)
                                          {
                                             break;
                                          }
                                          if(_loc2_ == null)
                                          {
                                             break loop8;
                                          }
                                          if(_loc8_)
                                          {
                                             break loop7;
                                          }
                                          §§pop();
                                          if(!_loc7_)
                                          {
                                             break loop6;
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(true);
                                          §§push(_loc2_.§%f§(param1));
                                          if(_loc7_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(_loc8_)
                                             {
                                                break;
                                             }
                                          }
                                          §§push(!§§pop());
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          break loop7;
                                       }
                                       §§pop();
                                       while(true)
                                       {
                                          if(_loc7_)
                                          {
                                             §§push(param1.§#U§);
                                             break loop9;
                                          }
                                          §§goto(addr01b4);
                                       }
                                       §§goto(addr01b8);
                                    }
                                    §§push(Boolean(§§pop()));
                                    if(!_loc8_)
                                    {
                                       break loop7;
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc7_)
                                       {
                                          §§pop();
                                          if(!_loc7_)
                                          {
                                             break;
                                          }
                                          §§push(§7!E§ == null);
                                          if(!_loc8_)
                                          {
                                             break loop6;
                                          }
                                       }
                                    }
                                    §§goto(addr01b4);
                                 }
                                 §§goto(addr01b8);
                              }
                              §§push(Boolean(§§pop()));
                              break loop8;
                           }
                           addr01b4:
                           if(Boolean(§§pop()))
                           {
                              §§goto(addr01b8);
                           }
                           else
                           {
                              §§push(0);
                              if(!_loc8_)
                              {
                                 §§push(int(§§pop()));
                              }
                           }
                        }
                        var _loc4_:* = §§pop();
                        var _loc5_:Vector.<§6M§> = characters;
                        while(true)
                        {
                           if(!_loc8_)
                           {
                              while(_loc4_ < int(_loc5_.length))
                              {
                                 _loc6_ = _loc5_[_loc4_];
                                 if(!_loc8_)
                                 {
                                    _loc4_++;
                                    if(_loc7_)
                                    {
                                       _loc6_.§9!?§();
                                    }
                                 }
                              }
                              if(_loc8_)
                              {
                                 break;
                              }
                              characters.length = 0;
                              if(!_loc7_)
                              {
                                 break;
                              }
                              characters.push(param1.§2!F§(this));
                           }
                           §4M§(characters[0]);
                           break;
                        }
                        characters[0].§73§ = _loc2_;
                        characters[0].§]!L§ = _loc3_;
                        return characters[0];
                     }
                     addr01b8:
                     return characters[0];
                  }
                  addr009b:
                  while(true)
                  {
                     §§push(!§§pop());
                     if(!_loc8_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc7_)
                        {
                           break;
                        }
                     }
                     §§goto(addr00ab);
                  }
               }
               §§goto(addr00ac);
            }
            §§push(!§§pop());
            if(!_loc8_)
            {
               addr0065:
               §§push(Boolean(§§pop()));
            }
            break loop3;
         }
         §§goto(addr009b);
      }
      
      public function §>j§() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = null as §6M§;
         §§push(0);
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:Vector.<§6M§> = characters;
         if(_loc4_)
         {
            while(_loc1_ < int(_loc2_.length))
            {
               _loc3_ = _loc2_[_loc1_];
               if(!_loc5_)
               {
                  _loc1_++;
                  if(!_loc5_)
                  {
                     _loc3_.reset();
                  }
               }
            }
            if(_loc4_)
            {
               reset2();
            }
         }
      }
      
      public function reset2() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc1_:* = null as §"B§;
         var _loc2_:* = null as §"B§;
         § L§.low = 298042;
         §1+§ = 0;
         §%!]§ = false;
         loop0:
         while(true)
         {
            if(!_loc6_)
            {
               loop1:
               while(true)
               {
                  if(int(characters.length) > 0)
                  {
                     characters[0].§73§ = §]!#§(characters[0].transform.position.z,true);
                     if(!_loc6_)
                     {
                        if(characters[0].§73§ == null)
                        {
                           characters[0].§73§ = §1W§;
                        }
                        loop2:
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              §§push(false);
                              §§push(false);
                              if(_loc5_)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(false);
                                       if(!_loc6_)
                                       {
                                          if(§5§ == §,a§.CUTSCENE)
                                          {
                                             break;
                                          }
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          §§pop();
                                          if(!_loc5_)
                                          {
                                             break loop2;
                                          }
                                          §§push(§5§ == §,a§.EDIT);
                                          if(!_loc5_)
                                          {
                                             break loop4;
                                          }
                                       }
                                       §§push(!§§pop());
                                       if(!_loc6_)
                                       {
                                          break loop4;
                                       }
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       break loop3;
                                    }
                                    if(!_loc5_)
                                    {
                                       break loop3;
                                    }
                                    §§pop();
                                    §§push(characters[0].§73§ == null);
                                    if(_loc6_)
                                    {
                                       break loop2;
                                    }
                                 }
                                 §§push(Boolean(§§pop()));
                                 break loop5;
                              }
                              §§push(!§§pop());
                              if(!_loc6_)
                              {
                                 break loop2;
                              }
                              break;
                           }
                           if(§§pop())
                           {
                              §§pop();
                              if(_loc6_)
                              {
                                 break loop1;
                              }
                              §§push(characters[0].§73§.§-x§(characters[0].§!8§));
                              if(!_loc6_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!_loc6_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                           }
                           if(§§pop())
                           {
                              if(_loc5_)
                              {
                                 return;
                              }
                              break loop1;
                           }
                           _loc1_ = §'!U§;
                           _loc2_ = characters[0].transform.§=0§.§+n§();
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 _loc1_.x = _loc2_.x;
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                              }
                              _loc1_.y = _loc2_.y;
                              if(_loc5_)
                              {
                                 break;
                              }
                           }
                           _loc1_.z = _loc2_.z;
                           if(_loc5_)
                           {
                              _loc1_.w = _loc2_.w;
                           }
                        }
                        §§push(Boolean(§§pop()));
                        break loop3;
                     }
                     break loop0;
                  }
                  §;!E§ = 0;
                  if(!_loc6_)
                  {
                     break;
                  }
                  break loop0;
               }
            }
            § y§ = 0;
            break;
         }
         var _loc3_:Point3D = §3A§;
         var _loc4_:Point3D = § !W§.§7!,§;
         while(true)
         {
            if(_loc5_)
            {
               _loc3_.x = _loc4_.x;
               if(_loc5_)
               {
                  _loc3_.y = _loc4_.y;
                  if(_loc6_)
                  {
                     break;
                  }
               }
            }
            _loc3_.z = _loc4_.z;
            break;
         }
         _loc3_ = §%K§;
         _loc4_ = § !W§.§7!,§;
         _loc3_.x = _loc4_.x;
         _loc3_.y = _loc4_.y;
         _loc3_.z = _loc4_.z;
         §4-§ = null;
         §--§ = true;
         loop8:
         while(true)
         {
            loop9:
            while(true)
            {
               loop10:
               while(true)
               {
                  if(!_loc6_)
                  {
                     §8O§ = false;
                     if(!_loc6_)
                     {
                        §<!;§ = 0;
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              §§push(false);
                              if(int(characters.length) > 0)
                              {
                                 if(!_loc6_)
                                 {
                                    §§pop();
                                    §§push(characters[0].§73§ == null);
                                 }
                                 §§push(!§§pop());
                                 if(!_loc5_)
                                 {
                                    break loop9;
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                              if(§§pop())
                              {
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 §<M§(characters[0].§73§.power);
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 if(§1W§ == null)
                                 {
                                    if(§]!#§(0,true,true) != null)
                                    {
                                       §<M§(§]!#§(0,true,true).power);
                                       break;
                                    }
                                    §<M§(1);
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    break loop8;
                                 }
                                 if(!_loc5_)
                                 {
                                    break loop10;
                                 }
                              }
                           }
                           §<M§(§1W§.power);
                           break;
                        }
                     }
                  }
                  §§push(§;!8§);
                  if(!_loc5_)
                  {
                     break loop9;
                  }
                  if(§§pop())
                  {
                     break;
                  }
                  if(_loc5_)
                  {
                     §§push(§§findproperty(§-!-§));
                     §§push(UUID.uuidFast());
                     if(_loc5_)
                     {
                        §§push(§§pop());
                     }
                     §§pop().§-!-§ = §§pop();
                     break;
                  }
                  §§goto(addr03b1);
               }
               §§push(false);
               if(!_loc6_)
               {
                  if(!§;!8§)
                  {
                     break;
                  }
               }
               §§pop();
               if(_loc5_)
               {
                  §§push(Main.instance.§[W§ != null);
                  break;
               }
               break loop8;
            }
            if(!§§pop())
            {
               break;
            }
            if(_loc6_)
            {
               break;
            }
            Main.instance.§[W§.§`9§();
            if(!_loc6_)
            {
               break;
            }
            §§goto(addr03b1);
         }
         §7o§.controlScheme.reset();
         addr03b1:
      }
      
      override public function reset() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = null as TunnelSection;
         if(_loc4_)
         {
            § L§.mid = 888653;
         }
         §§push(0);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:Vector.<TunnelSection> = §8!$§;
         if(!_loc5_)
         {
            while(_loc1_ < int(_loc2_.length))
            {
               _loc3_ = _loc2_[_loc1_];
               if(_loc4_)
               {
                  _loc1_++;
                  if(_loc5_)
                  {
                     continue;
                  }
               }
               _loc3_.§'W§();
            }
            while(true)
            {
               if(!_loc5_)
               {
                  super.reset();
                  if(_loc5_)
                  {
                     break;
                  }
               }
               reset2();
               break;
            }
         }
      }
      
      public function §'!5§(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            § L§.mid = 359160;
         }
         §§push(§;!E§);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            while(true)
            {
               §§push(§§findproperty(§;!E§));
               if(_loc4_)
               {
                  §§push(_loc2_);
                  if(_loc3_)
                  {
                     break;
                  }
                  if(§§pop() <= param1)
                  {
                     §§push(param1);
                     break;
                  }
               }
               §§push(_loc2_);
               if(_loc4_)
               {
               }
               break;
            }
            §§pop().§;!E§ = §§pop();
         }
      }
      
      public function §+!E§() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = null as String;
         if(_loc4_)
         {
            while(true)
            {
               if(§"[§ == null)
               {
                  if(_loc4_)
                  {
                     §§goto(addr0036);
                  }
                  addr0051:
                  if(extraParams.fadeOutOnVictory != null)
                  {
                     §§push(Number(extraParams.fadeOutOnVictory));
                     if(!_loc3_)
                     {
                        break;
                     }
                     addr0080:
                     var _loc1_:* = §§pop();
                     if(_loc4_)
                     {
                        loop1:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(§'!E§.§@!A§());
                              §§push(Timer.stamp());
                              if(_loc4_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc4_)
                                 {
                                    §§push(0.2);
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() - §§pop());
                                    if(_loc3_)
                                    {
                                       break loop1;
                                    }
                                 }
                              }
                              §§push(_loc1_);
                              break;
                           }
                           §§push(§§pop() - §§pop());
                           break;
                        }
                        §§pop().dismissOld(§§pop());
                     }
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(true);
                              if(!_loc3_)
                              {
                                 if(unpausedTime > 0.2)
                                 {
                                    break loop3;
                                 }
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 §§pop();
                                 if(!_loc4_)
                                 {
                                    break loop4;
                                 }
                                 §§push(§8O§);
                                 if(!_loc4_)
                                 {
                                    break loop3;
                                 }
                              }
                              §§push(Boolean(§§pop()));
                              if(!_loc3_)
                              {
                                 break loop3;
                              }
                              break;
                           }
                           §§goto(addr0108);
                        }
                        return;
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              addr0108:
                              if(§8O§)
                              {
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 §§push("Won");
                                 if(_loc4_)
                                 {
                                    addr0136:
                                    §§push(§§pop());
                                 }
                              }
                              else
                              {
                                 §§push("Quit");
                                 if(_loc4_)
                                 {
                                    §§goto(addr0136);
                                 }
                              }
                              _loc2_ = §§pop();
                              §<,§.§]!!§(this,characters[0],_loc2_);
                              if(_loc3_)
                              {
                                 break;
                              }
                           }
                        }
                        if(extraParams.quitCallback != null)
                        {
                           break;
                        }
                        break loop4;
                     }
                     extraParams.quitCallback();
                     break loop4;
                  }
               }
               else
               {
                  § L§.mid = 881961;
                  if(!_loc3_)
                  {
                     § L§.high = 881961;
                     if(_loc4_)
                     {
                        §§goto(addr0051);
                     }
                  }
               }
               §§push(0);
               if(_loc4_)
               {
               }
               break;
            }
            §§goto(addr0080);
         }
         addr0036:
      }
      
      public function §5h§(param1:§6M§) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc4_:* = 0;
         var _loc5_:* = null as §6M§;
         while(true)
         {
            if(_loc7_)
            {
               § L§.mid = 872125;
               if(_loc6_)
               {
                  break;
               }
            }
            param1.model.§#"§(false);
            break;
         }
         §§push(0);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(int(characters.length));
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc7_)
         {
            while(_loc2_ < _loc3_)
            {
               §§push(_loc2_);
               if(_loc7_)
               {
                  _loc2_++;
                  if(!_loc6_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc4_ = §§pop();
               if(!_loc6_)
               {
                  if(!characters[_loc4_].model.visible)
                  {
                     continue;
                  }
                  if(!_loc6_)
                  {
                     while(true)
                     {
                        if(characters[0] == param1)
                        {
                           if(!_loc7_)
                           {
                              break;
                           }
                           _loc5_ = characters[0];
                           while(true)
                           {
                              if(!_loc6_)
                              {
                                 characters[0] = characters[_loc4_];
                                 if(_loc7_)
                                 {
                                    characters[_loc4_] = _loc5_;
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                 }
                              }
                              §;!E§ = 0.3;
                              break;
                           }
                        }
                        param1.§'7§(false);
                        break;
                     }
                  }
               }
               return;
            }
            if(!_loc6_)
            {
               §#!§(param1);
            }
         }
      }
      
      public function §#!§(param1:§6M§) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         § L§.high = 742555;
         loop0:
         while(true)
         {
            §§push(§;!8§);
            if(!_loc3_)
            {
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        §<,§.§]!!§(this,param1,"Died");
                     }
                     Currency.§@!A§().§`L§();
                     §§push(§%!]§);
                     if(!_loc2_)
                     {
                        break;
                     }
                  }
                  if(§§pop())
                  {
                     §§push(§§findproperty(§3j§));
                     §§push(§3j§);
                     if(!_loc3_)
                     {
                        §§push(§§pop() + 1);
                     }
                     §§pop().§3j§ = §§pop();
                     if(!_loc2_)
                     {
                        break loop0;
                     }
                  }
                  param1.§'7§(true);
                  if(_loc2_)
                  {
                     if(§"[§ != null)
                     {
                        loop2:
                        while(true)
                        {
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 §§push(false);
                                 if(_loc2_)
                                 {
                                    break loop1;
                                 }
                                 break;
                              }
                              addr00cd:
                              §§push(Boolean(extraParams.onlyResetCharacter(this)));
                              break loop2;
                           }
                        }
                        §§push(Boolean(§§pop()));
                        break loop3;
                     }
                  }
                  break loop0;
               }
               if(extraParams.onlyResetCharacter != null)
               {
                  if(!_loc2_)
                  {
                     break loop2;
                  }
                  §§pop();
                  §§goto(addr00cd);
               }
            }
            if(§§pop())
            {
               if(_loc2_)
               {
                  §>j§();
                  if(_loc3_)
                  {
                  }
               }
               break;
            }
            reset();
            break;
         }
      }
      
      public function §#X§(param1:int, param2:Boolean = false) : int
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         loop5:
         while(true)
         {
            if(!_loc3_)
            {
               § L§.low = 785346;
               param1--;
               if(_loc3_)
               {
                  break;
               }
            }
            loop6:
            while(true)
            {
               while(true)
               {
                  §§push(param1);
                  if(!_loc3_)
                  {
                     if(§§pop() >= 0)
                     {
                        break;
                     }
                     if(!_loc4_)
                     {
                        break loop5;
                     }
                     §§push(§?!I§.levelCount - 1);
                     if(_loc4_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc4_)
                        {
                           break loop6;
                        }
                     }
                  }
                  param1 = §§pop();
                  if(_loc4_)
                  {
                     break;
                  }
                  §§push(param1);
                  break loop6;
               }
               §§push(param2);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        break loop5;
                     }
                     loop1:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(§?!I§.§'m§(param1,backwards));
                           if(_loc4_)
                           {
                              §§push(!Boolean(§§pop()));
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              addr00b5:
                           }
                           while(§§pop())
                           {
                              param1--;
                              break loop5;
                           }
                           break loop1;
                        }
                        addr009b:
                        while(true)
                        {
                           §§pop();
                           break;
                        }
                     }
                  }
                  break loop1;
               }
               §§goto(addr009b);
            }
            return §§pop();
         }
         while(true)
         {
            §§push(false);
            if(param1 > 0)
            {
               if(_loc4_)
               {
                  §§goto(addr009b);
               }
               else
               {
                  §§goto(addr00b5);
               }
            }
            §§goto(addr00b6);
            addr00b6:
         }
         break loop1;
      }
      
      public function §^!J§(param1:int, param2:Boolean = false) : int
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc3_)
               {
                  if(!backwards)
                  {
                     §§push(§#X§(param1,param2));
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                     break;
                  }
               }
               §§push(§1_§(param1,param2));
               if(_loc4_)
               {
                  §§push(int(§§pop()));
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
                  break;
               }
               break loop0;
            }
            return §§pop();
         }
         §§push(int(§§pop()));
         break loop1;
      }
      
      public function §1_§(param1:int, param2:Boolean = false, param3:Boolean = true) : int
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         loop4:
         while(true)
         {
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  if(_loc4_)
                  {
                     § L§.low = 790710;
                     param1++;
                     §§push(param2);
                     if(!_loc4_)
                     {
                        break;
                     }
                     if(!§§pop())
                     {
                        break loop5;
                     }
                     while(true)
                     {
                        loop8:
                        while(true)
                        {
                           §§push(false);
                           if(_loc4_)
                           {
                              if(param1 < §?!I§.levelCount)
                              {
                                 §§pop();
                                 if(!_loc5_)
                                 {
                                    while(true)
                                    {
                                       §§push(§?!I§.§'m§(param1,backwards));
                                    }
                                    break loop6;
                                    addr0064:
                                 }
                                 break loop4;
                              }
                              break;
                           }
                           while(true)
                           {
                              §§push(!Boolean(§§pop()));
                              if(!_loc5_)
                              {
                                 break loop8;
                              }
                              break loop6;
                           }
                           break loop6;
                        }
                        param1++;
                        while(true)
                        {
                           if(!§§pop())
                           {
                              break loop5;
                           }
                           break;
                        }
                     }
                  }
                  §§goto(addr0064);
               }
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(0);
                     if(_loc4_)
                     {
                        §§push(int(§§pop()));
                        if(_loc5_)
                        {
                           break;
                        }
                     }
                     param1 = §§pop();
                     if(_loc4_)
                     {
                     }
                     break loop4;
                  }
               }
               else
               {
                  §§push(-1);
                  if(!_loc5_)
                  {
                     §§goto(addr00d0);
                  }
               }
               §§goto(addr00d9);
            }
            while(true)
            {
               §§push(param1);
               if(_loc4_)
               {
                  if(§§pop() >= §?!I§.levelCount)
                  {
                     §§push(param3);
                     break loop6;
                  }
                  break loop4;
               }
               addr00d0:
               §§push(int(§§pop()));
               if(_loc4_)
               {
                  param1 = §§pop();
                  break loop4;
               }
               break;
            }
            §§goto(addr00d9);
         }
         addr00d9:
         return param1;
      }
      
      public function §9$§(param1:int, param2:Boolean = false, param3:Boolean = true) : int
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
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
                     if(!_loc5_)
                     {
                        §§push(backwards);
                        if(!_loc4_)
                        {
                           break;
                        }
                        if(!§§pop())
                        {
                           §§push(§1_§(param1,param2,param3));
                           if(_loc4_)
                           {
                              break loop1;
                           }
                           break loop2;
                        }
                        if(!_loc4_)
                        {
                           break loop0;
                        }
                     }
                     loop4:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(false);
                           if(!_loc5_)
                           {
                              break loop3;
                           }
                           addr0075:
                           §§push(Boolean(§§pop()));
                           break loop4;
                        }
                        §§goto(addr00a7);
                     }
                     if(§§pop())
                     {
                        break loop0;
                     }
                     §§push(§#X§(param1,param2));
                     if(!_loc5_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc5_)
                        {
                           break loop5;
                        }
                        break loop2;
                     }
                     break loop1;
                  }
                  §§push(param3);
                  if(_loc4_)
                  {
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(_loc4_)
                        {
                           §§pop();
                           if(!_loc4_)
                           {
                              break loop0;
                           }
                           §§push(param1);
                           if(_loc5_)
                           {
                              break;
                           }
                           §§push(§§pop() == 0);
                           if(_loc5_)
                           {
                              break loop4;
                           }
                        }
                        §§goto(addr0075);
                     }
                     addr00a7:
                     return §§pop();
                  }
                  break loop4;
               }
               return §§pop();
            }
            §§push(int(§§pop()));
            break loop2;
         }
         §§push(-1);
         if(_loc4_)
         {
            return §§pop();
         }
         break loop1;
      }
      
      public function §<L§(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = _temp_1;
         var _loc4_:* = null as String;
         var _loc5_:* = null;
         var _loc6_:* = null as String;
         var _loc7_:* = false;
         var _loc8_:Boolean = false;
         var _loc9_:* = false;
         var _loc11_:* = 0;
         var _loc12_:* = null as Vector.<§6O§>;
         var _loc13_:* = null as §6O§;
         if(!_loc14_)
         {
            if(§?!I§ == null)
            {
               if(!_loc14_)
               {
                  return;
               }
            }
            else
            {
               GlobalEventManager.dispatchEvent("tunnelFirstSection");
            }
         }
         var _loc2_:§1![§ = §"[§;
         var _loc3_:Vector.<§%!§> = §<!7§;
         while(true)
         {
            if(!_loc14_)
            {
               if(extraParams.modifyData != null)
               {
                  _loc5_ = extraParams;
                  if(!_loc14_)
                  {
                     §§push(§?!I§.§,q§(param1));
                     if(_loc15_)
                     {
                        §§push(§§pop());
                        if(!_loc14_)
                        {
                           §§push(§§pop());
                           if(_loc15_)
                           {
                              _loc6_ = §§pop();
                              if(_loc14_)
                              {
                                 break;
                              }
                              §§push(_loc5_.modifyData(param1,_loc6_));
                              if(_loc15_)
                              {
                                 §§push(§§pop());
                              }
                           }
                        }
                     }
                     _loc4_ = §§pop();
                  }
                  break;
               }
               if(_loc14_)
               {
                  break;
               }
            }
            §§push(§?!I§.§,q§(param1));
            if(_loc15_)
            {
               §§push(§§pop());
               if(!_loc14_)
               {
                  §§push(§§pop());
               }
            }
            _loc4_ = §§pop();
            if(!_loc14_)
            {
               break;
            }
            var _loc10_:TunnelSection = §1W§;
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
                        loop6:
                        while(true)
                        {
                           loop16:
                           while(true)
                           {
                              if(_loc15_)
                              {
                                 loop17:
                                 while(true)
                                 {
                                    §§push(false);
                                    if(_loc10_.charactersAllowed != null)
                                    {
                                       if(_loc14_)
                                       {
                                          break loop4;
                                       }
                                       §§pop();
                                       if(!_loc15_)
                                       {
                                          break loop7;
                                       }
                                       §§push(int(_loc10_.charactersAllowed.length));
                                       if(!_loc15_)
                                       {
                                          break loop6;
                                       }
                                       §§push(0);
                                       if(!_loc15_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop() > §§pop());
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc15_)
                                          {
                                             break;
                                          }
                                          if(characters != null)
                                          {
                                             §§push(int(characters.length));
                                             if(_loc15_)
                                             {
                                                §§push(0);
                                                break loop17;
                                             }
                                             break loop6;
                                          }
                                          §§push(false);
                                          if(!_loc15_)
                                          {
                                             break loop16;
                                          }
                                          §§push(Boolean(§§pop()));
                                          if(_loc15_)
                                          {
                                             _loc9_ = §§pop();
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          §§push(false);
                                       }
                                       _loc9_ = §§pop();
                                       if(!_loc14_)
                                       {
                                          break;
                                       }
                                       break loop5;
                                    }
                                    addr01c9:
                                    §§push(_loc9_);
                                    if(_loc14_)
                                    {
                                       break loop4;
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc14_)
                                       {
                                          break loop3;
                                       }
                                       _loc8_ = §7!E§ == null;
                                       if(_loc15_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       _loc8_ = false;
                                       if(!_loc15_)
                                       {
                                          break loop2;
                                       }
                                    }
                                 }
                                 §§push(§§pop() > §§pop());
                                 if(!_loc14_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 _loc9_ = §§pop();
                                 §§goto(addr01c9);
                              }
                              if(_loc8_)
                              {
                                 if(_loc15_)
                                 {
                                    break loop5;
                                 }
                                 break loop2;
                              }
                              §§goto(addr026f);
                              §§push(false);
                           }
                           §§goto(addr027a);
                        }
                        §§goto(addr028e);
                     }
                     loop7:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(§1W§.§%f§(characters[0].§!8§));
                           if(_loc15_)
                           {
                              if(!§§pop())
                              {
                                 §§push(true);
                                 if(_loc15_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc14_)
                                    {
                                       _loc7_ = §§pop();
                                       break;
                                    }
                                 }
                                 addr026f:
                                 _loc7_ = Boolean(§§pop());
                                 break;
                              }
                              if(_loc14_)
                              {
                                 break loop7;
                              }
                              §§push(characters[0].§!8§.§#U§);
                           }
                           _loc7_ = §§pop();
                           break;
                        }
                        §§push(_loc7_);
                        if(!_loc15_)
                        {
                           break loop4;
                        }
                        addr027a:
                        if(§§pop())
                        {
                           if(_loc15_)
                           {
                              §§push(0);
                              if(!_loc14_)
                              {
                                 break loop6;
                              }
                              addr028e:
                              _loc11_ = §§pop();
                              if(_loc14_)
                              {
                                 break loop3;
                              }
                           }
                           _loc12_ = §'O§.available;
                           loop9:
                           while(true)
                           {
                              loop10:
                              while(true)
                              {
                                 loop11:
                                 while(true)
                                 {
                                    if(_loc15_)
                                    {
                                       while(_loc11_ < int(_loc12_.length))
                                       {
                                          _loc13_ = _loc12_[_loc11_];
                                          if(_loc15_)
                                          {
                                             _loc11_++;
                                             loop12:
                                             while(true)
                                             {
                                                loop13:
                                                while(true)
                                                {
                                                   if(!_loc14_)
                                                   {
                                                      §§push(false);
                                                      if(_loc15_)
                                                      {
                                                         loop14:
                                                         while(true)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(false);
                                                               if(_loc15_)
                                                               {
                                                                  §§push(§1W§.§%f§(_loc13_));
                                                                  if(_loc15_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!_loc15_)
                                                                  {
                                                                     break loop14;
                                                                  }
                                                               }
                                                               §§pop();
                                                               if(!_loc15_)
                                                               {
                                                                  break loop13;
                                                               }
                                                               §§push(_loc13_.§<!,§());
                                                               if(_loc15_)
                                                               {
                                                                  break loop14;
                                                               }
                                                               §§goto(addr0312);
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               break loop12;
                                                            }
                                                            if(!_loc15_)
                                                            {
                                                               break loop12;
                                                            }
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc15_)
                                                         {
                                                            addr0312:
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         break loop15;
                                                      }
                                                      §§pop();
                                                      if(_loc14_)
                                                      {
                                                         break loop9;
                                                      }
                                                   }
                                                   §§push(_loc13_.§#U§);
                                                   if(!_loc14_)
                                                   {
                                                      break;
                                                   }
                                                   addr0339:
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc15_)
                                                   {
                                                      break loop12;
                                                   }
                                                   break loop10;
                                                }
                                                §§push(!§§pop());
                                                if(_loc14_)
                                                {
                                                   break loop11;
                                                }
                                                §§goto(addr0339);
                                             }
                                             if(!§§pop())
                                             {
                                                continue;
                                             }
                                             if(!_loc15_)
                                             {
                                                break loop9;
                                             }
                                          }
                                          §+,§(_loc13_);
                                          if(_loc15_)
                                          {
                                             break;
                                          }
                                          break loop9;
                                       }
                                    }
                                    §§push(§1W§.§-x§(characters[0].§!8§));
                                    if(_loc15_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc14_)
                                       {
                                          break;
                                       }
                                    }
                                    break loop10;
                                 }
                                 §§push(!§§pop());
                                 break;
                              }
                              if(§§pop())
                              {
                                 break;
                              }
                           }
                           return;
                        }
                        §8!$§.push(§1W§);
                        if(!_loc14_)
                        {
                           §1W§.init();
                           §<m§(§1W§);
                           §3j§ = 0;
                           if(!_loc14_)
                           {
                              §73§ = §1W§;
                              if(§5§ != §,a§.CUTSCENE)
                              {
                                 §?!I§.§5!D§(this);
                                 if(_loc14_)
                                 {
                                    break;
                                 }
                                 §?!I§.§%I§(§1W§.§[9§,§1W§);
                                 if(§"[§ == null)
                                 {
                                    §§goto(addr0425);
                                 }
                              }
                              §<!Y§.§"!b§(0).§[z§(§1W§);
                              §<!Y§.§5L§(0);
                              if(§5§ == §,a§.CUTSCENE)
                              {
                                 break loop3;
                              }
                              break;
                           }
                           §§goto(addr04a0);
                        }
                        addr0425:
                        return;
                     }
                     §§goto(addr0485);
                  }
                  if(§§pop())
                  {
                     break loop2;
                  }
                  §§goto(addr0485);
               }
               §1W§.build();
               §§push(endTiles);
               break loop4;
            }
            §,J§();
            addr0485:
            if(extraParams.initializedCallback != null)
            {
               extraParams.initializedCallback(this);
            }
            addr04a0:
            return;
         }
         §1W§ = new TunnelSection(this,_loc2_,_loc3_,_loc4_,param1,0,null,null,1,§54§);
         continue loop6;
      }
      
      public function init() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         § L§.high = 885680;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc2_)
               {
                  if(§1W§ != null)
                  {
                     §1W§.build(§<!M§.§<!C§());
                  }
                  if(extraParams.beginMessage != null)
                  {
                     §§push(false);
                     if(!_loc1_)
                     {
                        if(characters != null)
                        {
                           if(!_loc1_)
                           {
                              §§pop();
                              §§push(int(characters.length) > 0);
                              if(!_loc1_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                        }
                     }
                     if(§§pop())
                     {
                        §'[§.§7!@§(characters[0].§!8§,extraParams.beginMessage.split("\n"));
                        if(_loc1_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §'!E§.§@!A§().§7!@§(extraParams.beginMessage.split("\n"));
                        if(!_loc2_)
                        {
                           break loop0;
                        }
                     }
                  }
               }
               reset();
               if(§"[§ == null)
               {
                  break;
               }
               update(0);
               break loop0;
            }
            return;
         }
         display(0);
      }
      
      public function §5!M§(param1:§6M§) : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:Point3D = param1.transform.§2!§();
         var _loc3_:Number = 180;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  if(_loc5_)
                  {
                     loop3:
                     while(true)
                     {
                        §§push(false);
                        if(!_loc4_)
                        {
                           loop4:
                           while(true)
                           {
                              loop5:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(false);
                                    if(_loc5_)
                                    {
                                       if(extraParams == null)
                                       {
                                          break loop4;
                                       }
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       §§pop();
                                       if(_loc4_)
                                       {
                                          break loop5;
                                       }
                                       §§push(extraParams.onlyResetCharacter == null);
                                       if(_loc4_)
                                       {
                                          break loop4;
                                       }
                                    }
                                    §§push(!§§pop());
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    break loop4;
                                 }
                                 §§push(Boolean(§§pop()));
                                 break loop4;
                              }
                              §§pop();
                              if(_loc4_)
                              {
                                 break loop3;
                              }
                              §§push(param1.§!8§.§3>§);
                              if(_loc4_)
                              {
                                 break loop1;
                              }
                           }
                           if(§§pop())
                           {
                              if(_loc5_)
                              {
                                 break loop5;
                              }
                              break loop1;
                           }
                        }
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              _loc3_ = 250;
                              if(_loc5_)
                              {
                                 break;
                              }
                              break loop0;
                           }
                           break loop2;
                        }
                        break;
                     }
                  }
                  §§push(param1.§73§.tunnelBounds.§+!]§(_loc2_,_loc3_));
                  if(_loc5_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc4_)
                        {
                           break loop0;
                        }
                        break;
                     }
                     §§goto(addr011e);
                     §§push(false);
                  }
                  §§goto(addr010b);
               }
               §§goto(addr00ef);
            }
            §§push(Boolean(§§pop()));
            if(_loc5_)
            {
               §§goto(addr010b);
            }
            §§goto(addr010c);
         }
         if(param1.§]!L§ == null)
         {
            §§push(true);
            if(_loc5_)
            {
               return §§pop();
            }
            addr011e:
            return §§pop();
         }
         addr00ef:
         §§push(param1.§]!L§.tunnelBounds.§+!]§(_loc2_,_loc3_));
         if(_loc5_)
         {
            break loop1;
         }
         addr010c:
         return !§§pop();
         addr010b:
      }
      
      override public function §4<§(param1:String) : Boolean
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            if(§1W§ != null)
            {
               var _loc2_:StringMap = §1W§.params;
               loop0:
               while(true)
               {
                  while(true)
                  {
                     if(_loc4_)
                     {
                        §§push(param1);
                        if(!_loc3_)
                        {
                           §§push(§§pop() in StringMap.§+!#§);
                           if(_loc3_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              addr006c:
                              §§push(_loc2_.existsReserved(param1));
                              if(_loc4_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                              }
                              break loop0;
                           }
                           §§push(param1);
                        }
                        §§push(§§pop() in _loc2_.h);
                        break loop0;
                     }
                     §§goto(addr006c);
                  }
                  return §§pop();
               }
               return §§pop();
            }
         }
         return false;
      }
      
      public function §<J§(param1:Number) : §2N§
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:* = null as §2N§;
         §§push(0);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Vector.<§2N§> = §9`§;
         if(_loc5_)
         {
            loop0:
            while(_loc2_ < int(_loc3_.length))
            {
               _loc4_ = _loc3_[_loc2_];
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc5_)
                        {
                           _loc2_++;
                           if(_loc5_)
                           {
                              §§push(false);
                              if(!_loc5_)
                              {
                                 break;
                              }
                              if(_loc4_.startZ > param1)
                              {
                                 break loop2;
                              }
                              if(_loc6_)
                              {
                                 break loop2;
                              }
                              §§pop();
                              if(!_loc5_)
                              {
                                 break loop1;
                              }
                           }
                        }
                        §§push(_loc4_.endZ >= param1);
                        if(!_loc6_)
                        {
                           break;
                        }
                        break loop2;
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
               return _loc4_;
            }
         }
         return null;
      }
      
      public function §]!#§(param1:Number, param2:Object = undefined, param3:Boolean = false) : TunnelSection
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc7_:* = null as TunnelSection;
         if(_loc9_)
         {
            § L§.low = 568601;
         }
         var _loc4_:TunnelSection = null;
         §§push(0);
         if(_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:Vector.<TunnelSection> = §8!$§;
         if(_loc9_)
         {
            while(_loc5_ < int(_loc6_.length))
            {
               _loc7_ = _loc6_[_loc5_];
               if(!_loc8_)
               {
                  _loc5_++;
                  if(!_loc9_)
                  {
                     return _loc7_;
                  }
                  §§push(false);
                  §§push(param3);
                  if(_loc9_)
                  {
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     §§pop();
                     if(!_loc9_)
                     {
                        continue;
                     }
                     §§push(_loc7_.§!!8§ == null);
                  }
                  if(!§§pop())
                  {
                     if(param1 < _loc7_.endZ)
                     {
                        while(true)
                        {
                           §§push(true);
                           if(param1 < _loc7_.startZ)
                           {
                              if(!_loc8_)
                              {
                                 §§pop();
                                 if(!_loc9_)
                                 {
                                    break;
                                 }
                                 §§push(Boolean(param2));
                              }
                           }
                           if(!§§pop())
                           {
                              if(param2 == null)
                              {
                                 break;
                              }
                              return _loc4_;
                           }
                        }
                        return null;
                     }
                     _loc4_ = _loc7_;
                  }
               }
            }
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  while(true)
                  {
                     if(_loc9_)
                     {
                        §§push(true);
                        if(_loc9_)
                        {
                           if(param2)
                           {
                              break;
                           }
                           if(!_loc9_)
                           {
                              break loop3;
                           }
                        }
                        §§pop();
                        if(_loc8_)
                        {
                           break loop2;
                        }
                     }
                     §§push(param2 == null);
                     if(_loc9_)
                     {
                        break loop3;
                     }
                     break;
                  }
                  if(§§pop())
                  {
                     break loop2;
                  }
                  return _loc4_;
               }
               §§push(Boolean(§§pop()));
               break loop4;
            }
         }
         break loop2;
      }
      
      override public function §>!]§(param1:String) : String
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            if(§1W§ != null)
            {
               var _loc2_:StringMap = §1W§.params;
               while(true)
               {
                  if(!_loc3_)
                  {
                     §§push(param1);
                     if(_loc3_)
                     {
                        break;
                     }
                     if(!(§§pop() in StringMap.§+!#§))
                     {
                        return _loc2_.h[param1];
                     }
                  }
                  return _loc2_.getReserved(param1);
               }
               return §§pop();
            }
         }
         return null;
      }
      
      public function §!!J§(param1:Number) : §[!M§
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:§2N§ = §<J§(param1);
         if(!_loc4_)
         {
            if(_loc2_ == null)
            {
               return §]!#§(param1);
            }
         }
         return _loc2_;
      }
      
      override public function §6!=§() : Number
      {
         return gravity3D.y;
      }
      
      public function §06§(param1:§]!Q§, param2:Function, param3:Number = 0) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc4_:* = null as §%!§;
         var _loc5_:* = null as §,!Z§;
         var _loc7_:* = null as §]!Q§;
         if(!_loc8_)
         {
            § L§.mid = 582900;
         }
         §§push(-1);
         if(_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         loop4:
         while(true)
         {
            if(!_loc8_)
            {
               while(true)
               {
                  _loc6_++;
                  if(_loc8_)
                  {
                     break loop4;
                  }
               }
               break;
               addr00e0:
            }
            while(true)
            {
               if(_loc6_ >= int(§<!7§.length))
               {
                  break loop4;
               }
               _loc4_ = §<!7§[_loc6_];
               loop5:
               while(true)
               {
                  if(!_loc8_)
                  {
                     if(_loc4_.§[!G§ != null)
                     {
                        break;
                     }
                  }
                  _loc5_ = _loc4_.§;!C§;
                  if(!_loc8_)
                  {
                     while(true)
                     {
                        §§push(false);
                        if(!_loc8_)
                        {
                           if(_loc5_ != null)
                           {
                              if(_loc9_)
                              {
                                 §§pop();
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                                 §§push(_loc5_.§8W§.max.z);
                                 §§push(param1.min.z);
                                 if(_loc9_)
                                 {
                                    §§push(§§pop() - §7M§);
                                 }
                                 §§push(§§pop() > §§pop());
                                 if(!_loc8_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                           }
                        }
                        if(§§pop())
                        {
                           if(!_loc8_)
                           {
                              break;
                           }
                           §§goto(addr0318);
                        }
                        break loop5;
                     }
                     _loc6_--;
                     if(_loc9_)
                     {
                        break loop4;
                     }
                     §§goto(addr0318);
                  }
                  loop3:
                  while(_loc6_ < int(§<!7§.length))
                  {
                     _loc4_ = §<!7§[_loc6_];
                     _loc5_ = _loc4_.§;!C§;
                     if(_loc9_)
                     {
                        loop7:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(true);
                              if(!_loc8_)
                              {
                                 if(_loc5_ == null)
                                 {
                                    break loop7;
                                 }
                                 if(!_loc9_)
                                 {
                                    break;
                                 }
                                 §§pop();
                                 if(_loc8_)
                                 {
                                    break loop4;
                                 }
                                 §§push(_loc4_.§[!G§ == null);
                                 if(!_loc9_)
                                 {
                                    break loop7;
                                 }
                              }
                              §§push(!§§pop());
                              if(!_loc8_)
                              {
                                 break;
                              }
                              break loop7;
                           }
                           §§push(Boolean(§§pop()));
                           break;
                        }
                        if(§§pop())
                        {
                           break loop4;
                        }
                        _loc7_ = _loc4_.§;!C§.§8W§;
                        if(_loc9_)
                        {
                           loop9:
                           while(true)
                           {
                              §§push(false);
                              if(!_loc8_)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(false);
                                          if(_loc9_)
                                          {
                                             §§push(false);
                                             if(!_loc9_)
                                             {
                                                break;
                                             }
                                             loop14:
                                             while(true)
                                             {
                                                loop15:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(false);
                                                      if(_loc9_)
                                                      {
                                                         §§push(false);
                                                         if(_loc8_)
                                                         {
                                                            break loop15;
                                                         }
                                                         if(_loc7_.min.x > param1.max.x + param3)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc8_)
                                                         {
                                                            break loop15;
                                                         }
                                                         §§pop();
                                                         if(_loc8_)
                                                         {
                                                            break loop14;
                                                         }
                                                      }
                                                      §§push(_loc7_.max.x >= param1.min.x - param3);
                                                      if(_loc9_)
                                                      {
                                                         break loop15;
                                                      }
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         §§pop();
                                                         if(!_loc9_)
                                                         {
                                                            break loop11;
                                                         }
                                                         §§push(_loc7_.min.y <= param1.max.y + param3);
                                                         if(_loc9_)
                                                         {
                                                            break loop14;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr0206);
                                                }
                                                §§push(Boolean(§§pop()));
                                                break loop16;
                                             }
                                             addr0206:
                                             if(!Boolean(§§pop()))
                                             {
                                                break loop11;
                                             }
                                             if(!_loc9_)
                                             {
                                                break loop11;
                                             }
                                             §§pop();
                                             if(_loc8_)
                                             {
                                                break loop10;
                                             }
                                          }
                                          §§push(_loc7_.max.y >= param1.min.y - param3);
                                          if(_loc9_)
                                          {
                                             break;
                                          }
                                          break loop11;
                                       }
                                       §§push(Boolean(§§pop()));
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc9_)
                                       {
                                          §§pop();
                                          if(_loc8_)
                                          {
                                             break loop9;
                                          }
                                          while(true)
                                          {
                                             §§push(_loc7_.min.z);
                                             §§push(param1.max.z);
                                             if(!_loc8_)
                                             {
                                                §§push(§§pop() + param3);
                                                if(_loc8_)
                                                {
                                                   break;
                                                }
                                             }
                                             §§push(Number(§§pop()));
                                             break;
                                          }
                                          §§push(§§pop() <= §§pop());
                                          if(_loc8_)
                                          {
                                             break;
                                          }
                                       }
                                       §§push(Boolean(§§pop()));
                                    }
                                    break;
                                 }
                                 if(!§§pop())
                                 {
                                    break;
                                 }
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                              }
                              §§pop();
                              if(_loc8_)
                              {
                                 break loop3;
                              }
                              §§push(_loc7_.max.z);
                              if(_loc9_)
                              {
                                 §§push(param1.min.z);
                                 if(!_loc8_)
                                 {
                                    while(true)
                                    {
                                       §§push(param3);
                                       if(_loc9_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!_loc8_)
                                          {
                                             §§push(§§pop() >= §§pop());
                                             if(!_loc8_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             break loop9;
                                          }
                                          addr02ea:
                                          §§push(§7M§);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc9_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       break;
                                    }
                                 }
                                 addr02f9:
                                 if(§§pop() > §§pop())
                                 {
                                    break loop3;
                                 }
                                 break loop4;
                              }
                              §§push(param1.max.z);
                              if(!_loc8_)
                              {
                                 §§goto(addr02ea);
                              }
                              §§goto(addr02f9);
                           }
                           if(§§pop())
                           {
                              if(_loc8_)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              §§goto(addr02de);
                              §§push(_loc5_.§8W§.min.z);
                           }
                        }
                        param2(_loc4_);
                        if(!_loc8_)
                        {
                           break loop4;
                        }
                        break;
                     }
                     break loop4;
                  }
                  addr0318:
                  return;
                  addr0309:
               }
               §§goto(addr00e0);
            }
            break;
         }
         while(true)
         {
            _loc6_++;
            if(_loc8_)
            {
               break;
            }
            §§goto(addr0309);
         }
         §§goto(addr0318);
      }
      
      override public function dispose() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         § L§.low = 641965;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc2_)
                  {
                     super.dispose();
                     §?!I§ = null;
                     if(!_loc1_)
                     {
                        break;
                     }
                     characters = null;
                     if(!_loc1_)
                     {
                        break;
                     }
                     §73§ = null;
                     §3A§ = null;
                     if(!_loc1_)
                     {
                        break loop1;
                     }
                     §%K§ = null;
                     §8!$§ = null;
                     if(!_loc1_)
                     {
                        break loop0;
                     }
                     §9`§ = null;
                  }
                  §1W§ = null;
                  if(_loc1_)
                  {
                     extraParams = null;
                     break loop1;
                  }
                  §§goto(addr00dd);
               }
               §§goto(addr00d3);
            }
            victoryCallback = null;
            break;
         }
         victoryCondition = null;
         while(true)
         {
            if(_loc1_)
            {
               §<!Y§ = null;
               if(!_loc1_)
               {
                  break;
               }
            }
            addr00d3:
            §+!I§ = null;
            break;
         }
         addr00dd:
      }
      
      override public function display(param1:Number) : void
      {
         §§push(false);
         var _loc33_:Boolean = true;
         var _loc34_:* = §§pop();
         var _loc2_:* = null as §6M§;
         var _loc3_:* = 0;
         var _loc4_:* = null as Vector.<§6M§>;
         var _loc5_:* = null as §6M§;
         var _loc6_:* = null as §"B§;
         var _loc7_:* = null as §"B§;
         var _loc8_:* = NaN;
         var _loc9_:* = null as §"B§;
         var _loc10_:* = null as Transform;
         var _loc11_:* = null as §"B§;
         var _loc12_:* = NaN;
         var _loc13_:* = null as Point3D;
         var _loc14_:* = null as Point3D;
         var _loc15_:* = null as Point3D;
         var _loc16_:* = null as §[!M§;
         var _loc17_:* = null as §&B§;
         var _loc18_:* = false;
         var _loc19_:* = false;
         var _loc20_:* = NaN;
         var _loc21_:* = null as Point3D;
         var _loc22_:* = null as Point3D;
         var _loc23_:* = NaN;
         var _loc24_:* = null as §%!§;
         var _loc27_:* = null as TunnelSection;
         var _loc29_:* = null as §3!I§;
         var _loc30_:* = 0;
         var _loc31_:* = 0;
         var _loc32_:* = null as §2N§;
         if(_loc33_)
         {
            if(§"[§ == null)
            {
               return;
            }
            § L§.mid = 129652;
         }
         loop4:
         while(true)
         {
            loop5:
            while(true)
            {
               loop20:
               while(true)
               {
                  loop21:
                  while(true)
                  {
                     if(§>!S§ > 0)
                     {
                        if(!_loc33_)
                        {
                           break;
                        }
                        §§push(param1);
                        §§push(§>!S§);
                        if(!_loc33_)
                        {
                           break loop20;
                        }
                        §§push(§§pop() * §§pop());
                        if(_loc34_)
                        {
                           break loop5;
                        }
                        §§push(Number(§§pop()));
                        if(!_loc33_)
                        {
                           break loop4;
                        }
                        param1 = §§pop();
                     }
                     while(true)
                     {
                        §§push(false);
                        if(_loc33_)
                        {
                           §§push(§ %§);
                           if(!_loc34_)
                           {
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              if(_loc33_)
                              {
                                 §§pop();
                                 if(!_loc33_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§push(§5§ == §,a§.CUTSCENE);
                                    if(_loc33_)
                                    {
                                       §§push(!§§pop());
                                       if(_loc34_)
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
                           if(_loc33_)
                           {
                              break loop21;
                           }
                           break;
                        }
                        addr0bc9:
                        § L§.mid = 268499;
                        break;
                     }
                     §§push(§<!M§.position.z);
                     break loop4;
                  }
                  _loc2_ = characters[0];
                  if(!_loc34_)
                  {
                     §§push(0);
                     if(!_loc34_)
                     {
                        §§push(int(§§pop()));
                     }
                     _loc3_ = §§pop();
                  }
                  _loc4_ = characters;
                  loop24:
                  while(true)
                  {
                     if(_loc33_)
                     {
                        while(_loc3_ < int(_loc4_.length))
                        {
                           _loc5_ = _loc4_[_loc3_];
                           if(!_loc34_)
                           {
                              _loc3_++;
                              if(_loc33_)
                              {
                                 if(!_loc5_.model.visible)
                                 {
                                    continue;
                                 }
                              }
                           }
                           _loc2_ = _loc5_;
                           if(_loc33_)
                           {
                              break;
                           }
                           break loop24;
                        }
                     }
                     if(§4-§ != null)
                     {
                        break;
                     }
                     addr01c9:
                     _loc6_ = _loc2_.transform.§=0§.§+n§();
                     _loc7_ = §'!U§;
                     loop25:
                     while(true)
                     {
                        if(!_loc34_)
                        {
                           loop26:
                           while(true)
                           {
                              loop27:
                              while(true)
                              {
                                 §§push(_loc6_.x * _loc7_.x);
                                 if(_loc33_)
                                 {
                                    loop28:
                                    while(true)
                                    {
                                       loop29:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc6_.y);
                                             if(_loc33_)
                                             {
                                                §§push(_loc7_.y);
                                                if(!_loc34_)
                                                {
                                                   §§push(§§pop() + §§pop() * §§pop());
                                                   if(!_loc33_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(Number(§§pop()));
                                                   §§push(_loc6_.z);
                                                   §§push(_loc7_.z);
                                                   if(_loc34_)
                                                   {
                                                      break loop29;
                                                   }
                                                }
                                                §§push(§§pop() + §§pop() * §§pop());
                                                if(_loc34_)
                                                {
                                                   break loop28;
                                                }
                                                §§push(_loc6_.w);
                                                if(_loc34_)
                                                {
                                                   break loop27;
                                                }
                                             }
                                             §§push(_loc7_.w);
                                             break loop29;
                                          }
                                       }
                                       §§push(§§pop() + §§pop() * §§pop());
                                       break;
                                    }
                                    §§push(Number(§§pop()));
                                    if(!_loc34_)
                                    {
                                       _loc8_ = §§pop();
                                       loop30:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             if(!_loc34_)
                                             {
                                                if(_loc8_ < 0)
                                                {
                                                   §§push(_loc8_);
                                                   if(_loc33_)
                                                   {
                                                      break loop30;
                                                   }
                                                   break;
                                                }
                                                if(_loc34_)
                                                {
                                                   break loop26;
                                                }
                                             }
                                             §§push(_loc8_);
                                             if(!_loc34_)
                                             {
                                                break;
                                             }
                                             break loop30;
                                          }
                                       }
                                       §§push(-§§pop());
                                       break loop31;
                                    }
                                 }
                                 §§push(0.9999999999);
                                 break;
                              }
                              §§push(§§pop() > §§pop());
                              if(_loc33_)
                              {
                                 §§push(!§§pop());
                              }
                              if(§§pop())
                              {
                                 break;
                              }
                              break loop25;
                           }
                        }
                        break loop26;
                     }
                     _loc10_ = §<!M§;
                     _loc9_ = §'!U§;
                     _loc11_ = _loc10_.rotation;
                     if(_loc33_)
                     {
                        while(true)
                        {
                           §§push(_loc11_.x * _loc9_.x);
                           if(_loc33_)
                           {
                              §§push(_loc11_.y);
                              §§push(_loc9_.y);
                              if(!_loc33_)
                              {
                                 break;
                              }
                              §§push(§§pop() + §§pop() * §§pop());
                              if(!_loc34_)
                              {
                                 §§push(_loc11_.z);
                                 §§push(_loc9_.z);
                                 if(_loc34_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() + §§pop() * §§pop());
                              }
                           }
                           §§push(_loc11_.w);
                           §§push(_loc9_.w);
                           break;
                        }
                        §§push(§§pop() + §§pop() * §§pop());
                        if(!_loc34_)
                        {
                           §§push(Number(§§pop()));
                        }
                        _loc12_ = §§pop();
                     }
                     while(true)
                     {
                        §§push(_loc12_);
                        if(!_loc34_)
                        {
                           if(§§pop() >= 0)
                           {
                              §§push(_loc12_);
                              break;
                           }
                           §§push(_loc12_);
                        }
                        §§push(-§§pop());
                        break;
                     }
                     §§push(§§pop() > 0.9999999999);
                     if(_loc33_)
                     {
                        §§push(!§§pop());
                        if(!_loc34_)
                        {
                           if(§§pop())
                           {
                              if(!_loc34_)
                              {
                                 _loc10_.§"I§(_loc9_);
                              }
                           }
                           §§push(_loc2_.physicsData.onGround);
                        }
                     }
                     if(§§pop())
                     {
                        §4-§ = null;
                     }
                     _loc13_ = §3A§;
                     _loc14_ = §%K§;
                     if(_loc33_)
                     {
                        §§push(3 * param1);
                        if(!_loc34_)
                        {
                           §§push(Number(§§pop()));
                        }
                        _loc12_ = §§pop();
                     }
                     _loc15_ = §3A§;
                     if(_loc33_)
                     {
                        while(true)
                        {
                           if(_loc15_ == null)
                           {
                              if(_loc34_)
                              {
                                 break;
                              }
                              _loc15_ = new Point3D(0,0,0);
                           }
                           _loc15_.x = _loc13_.x + _loc12_ * (_loc14_.x - _loc13_.x);
                           if(_loc33_)
                           {
                              _loc15_.y = _loc13_.y + _loc12_ * (_loc14_.y - _loc13_.y);
                              if(!_loc33_)
                              {
                                 break;
                              }
                           }
                           while(true)
                           {
                              §§push(_loc15_);
                              §§push(_loc13_.z);
                              if(_loc33_)
                              {
                                 §§push(_loc12_);
                                 if(!_loc34_)
                                 {
                                    §§push(_loc14_.z);
                                    if(!_loc34_)
                                    {
                                       §§push(§§pop() - _loc13_.z);
                                    }
                                    §§push(§§pop() * §§pop());
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc34_)
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
                     }
                     _loc13_ = §%K§;
                     _loc14_ = § !W§.§7!,§;
                     while(true)
                     {
                        if(_loc33_)
                        {
                           _loc13_.x = _loc14_.x;
                           if(_loc34_)
                           {
                              break;
                           }
                        }
                        _loc13_.y = _loc14_.y;
                        if(_loc33_)
                        {
                           break;
                        }
                        addr054b:
                        _loc13_ = _loc2_.transform.§2!§();
                        if(!_loc34_)
                        {
                           §4!R§.§@!M§(§'!U§,§3A§,§ !W§.§!+§);
                        }
                        _loc14_ = § !W§.§!+§;
                        _loc15_ = _loc13_;
                        if(_loc15_ == null)
                        {
                           _loc15_ = new Point3D(0,0,0);
                        }
                        _loc15_.x = _loc13_.x + _loc14_.x;
                        _loc15_.y = _loc13_.y + _loc14_.y;
                        §§push(_loc15_);
                        §§push(_loc13_.z);
                        if(_loc33_)
                        {
                           §§push(§§pop() + _loc14_.z);
                           if(!_loc34_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        §§pop().z = §§pop();
                        loop38:
                        while(true)
                        {
                           if(_loc33_)
                           {
                              if(§--§)
                              {
                                 if(!_loc34_)
                                 {
                                    _loc16_ = §!!J§(_loc13_.z);
                                    if(!_loc33_)
                                    {
                                       break;
                                    }
                                    if(_loc16_ == null)
                                    {
                                       _loc16_ = §]!#§(_loc13_.z,true);
                                    }
                                    if(_loc16_ != null)
                                    {
                                       _loc17_ = _loc16_.tunnelBounds;
                                       if(_loc33_)
                                       {
                                          _loc17_.moveInside(_loc13_,60,§=2§.§1]§);
                                       }
                                       _loc14_ = §=2§.§1]§;
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             if(!_loc34_)
                                             {
                                                §§push(_loc13_.x - _loc14_.x);
                                                if(_loc34_)
                                                {
                                                   break;
                                                }
                                                §§push(Number(§§pop()));
                                                if(!_loc33_)
                                                {
                                                   continue loop57;
                                                }
                                                _loc12_ = §§pop();
                                             }
                                             §§push(_loc12_);
                                             §§push(0);
                                             if(_loc33_)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   §§push(_loc12_);
                                                   if(_loc34_)
                                                   {
                                                      break loop54;
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(-_loc12_);
                                                }
                                                continue loop57;
                                             }
                                             addr06c1:
                                             while(true)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   §§push(_loc20_);
                                                   if(_loc34_)
                                                   {
                                                      break loop55;
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(_loc20_);
                                                   if(_loc34_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(-§§pop());
                                                   if(_loc34_)
                                                   {
                                                      break loop54;
                                                   }
                                                }
                                                §§push(1e-10);
                                                if(_loc34_)
                                                {
                                                   break loop41;
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop() < §§pop());
                                                   if(!_loc34_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(!_loc33_)
                                                      {
                                                         break loop53;
                                                      }
                                                      _loc19_ = §§pop();
                                                      if(!_loc33_)
                                                      {
                                                         break loop52;
                                                      }
                                                      §§goto(addr0712);
                                                   }
                                                   §§goto(addr077e);
                                                }
                                                §§goto(addr077f);
                                             }
                                             §§goto(addr0745);
                                          }
                                          _loc20_ = Number(§§pop());
                                          if(!_loc34_)
                                          {
                                             §§push(_loc20_);
                                             if(!_loc33_)
                                             {
                                                break loop57;
                                             }
                                             §§push(0);
                                             if(_loc34_)
                                             {
                                                break loop56;
                                             }
                                             §§goto(addr06c1);
                                          }
                                          §§goto(addr073d);
                                       }
                                       loop41:
                                       while(true)
                                       {
                                          loop42:
                                          while(true)
                                          {
                                             loop43:
                                             while(true)
                                             {
                                                loop52:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      loop54:
                                                      while(true)
                                                      {
                                                         loop55:
                                                         while(true)
                                                         {
                                                            loop56:
                                                            while(true)
                                                            {
                                                               loop57:
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(1e-10);
                                                                     if(_loc33_)
                                                                     {
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           §§push(_loc13_.y - _loc14_.y);
                                                                           break loop40;
                                                                        }
                                                                        _loc19_ = false;
                                                                        if(!_loc34_)
                                                                        {
                                                                           addr0712:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc19_);
                                                                              if(_loc33_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!_loc34_)
                                                                                    {
                                                                                       §§push(_loc13_.z);
                                                                                       §§push(_loc14_.z);
                                                                                       if(_loc33_)
                                                                                       {
                                                                                          addr0733:
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(!_loc34_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             break loop57;
                                                                                          }
                                                                                          break loop55;
                                                                                       }
                                                                                       break loop41;
                                                                                    }
                                                                                    break loop42;
                                                                                 }
                                                                                 §§push(false);
                                                                                 if(_loc34_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                              }
                                                                              addr077e:
                                                                              §§push(Boolean(§§pop()));
                                                                              break;
                                                                           }
                                                                           addr077f:
                                                                           _loc18_ = §§pop();
                                                                           if(_loc33_)
                                                                           {
                                                                              break loop43;
                                                                           }
                                                                           break loop42;
                                                                        }
                                                                        break loop43;
                                                                     }
                                                                     §§goto(addr0733);
                                                                  }
                                                                  addr0745:
                                                                  §§push(0);
                                                                  break loop56;
                                                               }
                                                               _loc20_ = §§pop();
                                                               addr073d:
                                                               §§push(_loc20_);
                                                               if(!_loc34_)
                                                               {
                                                                  break loop58;
                                                               }
                                                               break loop55;
                                                            }
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               if(!_loc34_)
                                                               {
                                                                  break loop52;
                                                               }
                                                               break loop43;
                                                            }
                                                            §§push(_loc20_);
                                                            if(!_loc34_)
                                                            {
                                                               break;
                                                            }
                                                            break loop54;
                                                         }
                                                         §§push(-§§pop());
                                                         break;
                                                      }
                                                      §§goto(addr0762);
                                                   }
                                                   §§goto(addr0791);
                                                }
                                                addr0762:
                                                §§push(_loc20_);
                                                §§push(1e-10);
                                                break loop41;
                                             }
                                             §§goto(addr0788);
                                          }
                                          _loc15_ = § !W§.§7K§;
                                          while(true)
                                          {
                                             if(!_loc34_)
                                             {
                                                _loc15_.x = 0;
                                                if(_loc34_)
                                                {
                                                   break;
                                                }
                                             }
                                             _loc15_.y = 1;
                                             if(!_loc34_)
                                             {
                                                break;
                                             }
                                             addr07cd:
                                             §4!R§.§@!M§(§<!M§.§+n§(),§ !W§.§7K§,§ !W§.§7K§);
                                             addr07e8:
                                             _loc15_ = §=2§.§1]§;
                                             _loc21_ = §=2§.§1]§;
                                             loop45:
                                             while(true)
                                             {
                                                if(_loc33_)
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc21_ == null)
                                                      {
                                                         if(_loc34_)
                                                         {
                                                            break;
                                                         }
                                                         _loc21_ = new Point3D(0,0,0);
                                                      }
                                                      _loc21_.x = _loc15_.x - _loc13_.x;
                                                      if(_loc33_)
                                                      {
                                                         _loc21_.y = _loc15_.y - _loc13_.y;
                                                         if(_loc33_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      break loop45;
                                                   }
                                                }
                                                §§push(_loc21_);
                                                §§push(_loc15_.z);
                                                if(_loc33_)
                                                {
                                                   §§push(§§pop() - _loc13_.z);
                                                }
                                                §§pop().z = §§pop();
                                                break;
                                             }
                                             _loc15_ = §=2§.§1]§;
                                             _loc21_ = § !W§.§7K§;
                                             _loc22_ = §=2§.§1]§;
                                             while(true)
                                             {
                                                if(!_loc34_)
                                                {
                                                   if(_loc22_ == null)
                                                   {
                                                      if(!_loc33_)
                                                      {
                                                         break;
                                                      }
                                                      _loc22_ = new Point3D(0,0,0);
                                                   }
                                                   loop48:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc15_.x * _loc21_.x);
                                                         if(!_loc34_)
                                                         {
                                                            §§push(_loc15_.y * _loc21_.y);
                                                            if(_loc34_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc33_)
                                                            {
                                                               break loop48;
                                                            }
                                                         }
                                                         §§push(Number(§§pop()));
                                                         if(!_loc34_)
                                                         {
                                                            §§push(_loc15_.z);
                                                            if(!_loc34_)
                                                            {
                                                               §§push(§§pop() * _loc21_.z);
                                                            }
                                                            break;
                                                         }
                                                         break loop48;
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc33_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr08e7);
                                                   }
                                                   addr08e7:
                                                   §§push(Number(§§pop()));
                                                   if(_loc33_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   _loc20_ = §§pop();
                                                   if(_loc33_)
                                                   {
                                                      §§push(_loc22_);
                                                      §§push(_loc20_);
                                                      if(_loc33_)
                                                      {
                                                         §§push(§§pop() * _loc21_.x);
                                                      }
                                                      §§pop().x = §§pop();
                                                      if(_loc34_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                }
                                                §§push(_loc22_);
                                                §§push(_loc20_);
                                                if(!_loc34_)
                                                {
                                                   §§push(§§pop() * _loc21_.y);
                                                }
                                                §§pop().y = §§pop();
                                                if(!_loc34_)
                                                {
                                                   §§push(_loc22_);
                                                   §§push(_loc20_);
                                                   if(_loc33_)
                                                   {
                                                      §§push(§§pop() * _loc21_.z);
                                                   }
                                                   §§pop().z = §§pop();
                                                }
                                                break;
                                             }
                                             _loc15_ = §=2§.§1]§;
                                             _loc21_ = _loc13_;
                                             loop50:
                                             while(true)
                                             {
                                                if(!_loc34_)
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc21_ == null)
                                                      {
                                                         if(!_loc33_)
                                                         {
                                                            break;
                                                         }
                                                         _loc21_ = new Point3D(0,0,0);
                                                      }
                                                      _loc21_.x = _loc13_.x + _loc15_.x * 0.7;
                                                      if(_loc33_)
                                                      {
                                                         _loc21_.y = _loc13_.y + _loc15_.y * 0.7;
                                                         if(!_loc34_)
                                                         {
                                                            break;
                                                         }
                                                         break loop50;
                                                      }
                                                      break;
                                                   }
                                                }
                                                §§push(_loc21_);
                                                §§push(_loc13_.z);
                                                if(_loc33_)
                                                {
                                                   §§push(_loc15_.z);
                                                   if(!_loc34_)
                                                   {
                                                      §§push(§§pop() * 0.7);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc34_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                §§pop().z = §§pop();
                                                break;
                                             }
                                          }
                                          _loc15_.z = 0;
                                          if(_loc33_)
                                          {
                                             §§goto(addr07cd);
                                          }
                                          §§goto(addr07e8);
                                       }
                                       _loc18_ = §§pop() < §§pop();
                                       addr0788:
                                       §§push(_loc18_);
                                       if(!_loc34_)
                                       {
                                          addr0791:
                                          §§push(!§§pop());
                                       }
                                       if(§§pop())
                                       {
                                          break loop42;
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 §--§ = true;
                                 § y§ = 0.4;
                              }
                           }
                           loop62:
                           while(true)
                           {
                              loop63:
                              while(true)
                              {
                                 §§push(§;!E§);
                                 if(!_loc34_)
                                 {
                                    loop64:
                                    while(true)
                                    {
                                       §§push(0);
                                       if(!_loc34_)
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             while(true)
                                             {
                                                if(!_loc34_)
                                                {
                                                   loop66:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(0.8);
                                                         §§push(§;!E§);
                                                         if(_loc33_)
                                                         {
                                                            §§push(§§pop() / §§pop());
                                                            if(_loc34_)
                                                            {
                                                               break loop64;
                                                            }
                                                            §§push(param1);
                                                            if(_loc33_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc33_)
                                                               {
                                                                  _loc12_ = Number(§§pop());
                                                                  §§push(_loc12_);
                                                                  if(_loc34_)
                                                                  {
                                                                     break loop62;
                                                                  }
                                                                  §§push(0.4);
                                                                  if(!_loc34_)
                                                                  {
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        §§push(0.4);
                                                                        if(!_loc33_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc34_)
                                                                        {
                                                                           break loop66;
                                                                        }
                                                                        _loc12_ = §§pop();
                                                                     }
                                                                     _loc14_ = §<!M§.§<!C§();
                                                                     _loc15_ = _loc13_;
                                                                     while(true)
                                                                     {
                                                                        if(_loc15_ == null)
                                                                        {
                                                                           if(_loc34_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           _loc15_ = new Point3D(0,0,0);
                                                                        }
                                                                        _loc15_.x = _loc14_.x + _loc12_ * (_loc13_.x - _loc14_.x);
                                                                        if(_loc33_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr0aa6:
                                                                        §§push(_loc15_);
                                                                        §§push(_loc14_.z);
                                                                        if(!_loc34_)
                                                                        {
                                                                           §§push(_loc12_);
                                                                           if(!_loc34_)
                                                                           {
                                                                              §§push(_loc13_.z);
                                                                              if(_loc33_)
                                                                              {
                                                                                 §§push(§§pop() - _loc14_.z);
                                                                              }
                                                                              §§push(§§pop() * §§pop());
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!_loc34_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        §§pop().z = §§pop();
                                                                        if(_loc33_)
                                                                        {
                                                                           break loop63;
                                                                        }
                                                                        §§goto(addr0bc9);
                                                                     }
                                                                     _loc15_.y = _loc14_.y + _loc12_ * (_loc13_.y - _loc14_.y);
                                                                     if(_loc33_)
                                                                     {
                                                                        §§goto(addr0aa6);
                                                                     }
                                                                     addr0bbf:
                                                                     §<!M§.§"w§(_loc13_);
                                                                     §§goto(addr0bc9);
                                                                  }
                                                                  §§goto(addr0b1a);
                                                               }
                                                               §§goto(addr0b18);
                                                            }
                                                         }
                                                         addr0afe:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc33_)
                                                         {
                                                            break;
                                                         }
                                                         break loop66;
                                                      }
                                                      §§push(Number(§§pop()));
                                                      break;
                                                   }
                                                   _loc12_ = §§pop();
                                                   if(_loc33_)
                                                   {
                                                      §§push(_loc12_);
                                                      if(_loc34_)
                                                      {
                                                         break loop62;
                                                      }
                                                      addr0b1a:
                                                      addr0b18:
                                                      if(§§pop() > 0.4)
                                                      {
                                                         if(!_loc34_)
                                                         {
                                                            §§push(0.4);
                                                            if(!_loc33_)
                                                            {
                                                               break;
                                                            }
                                                            _loc12_ = §§pop();
                                                            if(_loc34_)
                                                            {
                                                               break loop63;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§push(Number(§<!M§.position.x));
                                                break;
                                             }
                                             addr0b3f:
                                             _loc20_ = §§pop();
                                             break loop38;
                                          }
                                          §§push(§ y§);
                                          §§push(0);
                                       }
                                       if(§§pop() > §§pop())
                                       {
                                          §§push(1 / § y§);
                                          break;
                                       }
                                       break loop63;
                                    }
                                    §§push(param1);
                                    if(_loc33_)
                                    {
                                       §§goto(addr0afe);
                                    }
                                    §§goto(addr0b1a);
                                 }
                                 §§goto(addr0b3f);
                              }
                              if(§ y§ > 0)
                              {
                                 §§push(§§findproperty(§ y§));
                                 §§push(§ y§);
                                 if(_loc33_)
                                 {
                                    §§push(§§pop() - param1);
                                 }
                                 §§pop().§ y§ = §§pop();
                              }
                              §§goto(addr0bbf);
                           }
                           _loc23_ = §§pop();
                           addr0b79:
                           §§push(_loc13_);
                           §§push(_loc23_);
                           if(!_loc34_)
                           {
                              §§push(_loc12_);
                              if(!_loc34_)
                              {
                                 §§push(§§pop() * (_loc13_.y - _loc23_));
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc33_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           §§pop().y = §§pop();
                           break loop63;
                        }
                        §§push(_loc13_);
                        §§push(_loc20_);
                        if(!_loc34_)
                        {
                           §§push(_loc12_);
                           if(!_loc34_)
                           {
                              §§push(§§pop() * (_loc13_.x - _loc20_));
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc34_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        §§pop().x = §§pop();
                        if(_loc33_)
                        {
                           §§push(Number(§<!M§.position.y));
                           break loop62;
                        }
                        §§goto(addr0b79);
                     }
                     _loc13_.z = _loc14_.z;
                     §§goto(addr054b);
                  }
                  §§goto(addr01c9);
               }
               §§goto(addr0bdc);
            }
            §§push(Number(§§pop()));
            if(_loc33_)
            {
               §§push(Number(§§pop()));
            }
            §§goto(addr0bec);
         }
         addr0bdc:
         §§push(§§pop() + 2970);
         if(_loc33_)
         {
            break loop5;
         }
         addr0bec:
         _loc8_ = §§pop();
         while(true)
         {
            §§push(§§findproperty(§]!#§));
            §§push(§<!M§.position.z);
            if(!_loc34_)
            {
               §§push(§§pop() + 3000);
               if(!_loc33_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc25_:TunnelSection = §§pop().§]!#§(§§pop());
         if(_loc33_)
         {
            §§push(0);
            if(_loc33_)
            {
               §§push(int(§§pop()));
            }
            _loc3_ = §§pop();
         }
         var _loc26_:Vector.<TunnelSection> = §8!$§;
         loop7:
         while(true)
         {
            loop8:
            while(true)
            {
               if(!_loc34_)
               {
                  while(true)
                  {
                     §§push(_loc3_);
                     if(_loc34_)
                     {
                        break loop8;
                     }
                     if(§§pop() < int(_loc26_.length))
                     {
                        _loc27_ = _loc26_[_loc3_];
                        if(!_loc34_)
                        {
                           _loc3_++;
                        }
                        _loc24_ = _loc27_.§4! §;
                        if(_loc33_)
                        {
                           if(_loc24_ != null)
                           {
                              if(!_loc34_)
                              {
                                 if(_loc27_ != _loc25_)
                                 {
                                    _loc24_.model.§#"§(false);
                                    continue;
                                 }
                                 if(_loc34_)
                                 {
                                    continue;
                                 }
                                 _loc24_.model.§#"§(true);
                                 if(_loc34_)
                                 {
                                    continue;
                                 }
                              }
                              _loc24_.transform.§6!&§(0,0,_loc8_);
                              if(_loc33_)
                              {
                              }
                           }
                        }
                        continue;
                     }
                     if(!_loc33_)
                     {
                        break loop7;
                     }
                  }
               }
               §§push(0);
               if(!_loc34_)
               {
                  §§push(int(§§pop()));
               }
               break;
            }
            _loc3_ = §§pop();
            break;
         }
         while(true)
         {
            §§push(§=B§);
            §§push(int(§8!$§.length));
            if(_loc33_)
            {
               §§push(1);
               if(_loc34_)
               {
                  break;
               }
               §§push(§§pop() - §§pop());
            }
            §§push(-1);
            break;
         }
         var _loc28_:§3!I§ = §§pop().§@W§(§§pop(),§§pop(),-1);
         loop10:
         while(true)
         {
            if(_loc33_)
            {
               loop1:
               while(_loc28_.§#1§ != _loc28_.end)
               {
                  _loc29_ = _loc28_;
                  while(true)
                  {
                     if(!_loc34_)
                     {
                        loop12:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(_loc29_);
                              §§push(_loc29_.§#1§);
                              if(_loc33_)
                              {
                                 §§push(_loc28_.§['§);
                                 if(_loc34_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc34_)
                                 {
                                    break loop12;
                                 }
                              }
                              §§push(int(§§pop()));
                              if(_loc33_)
                              {
                                 var _temp_1:* = §§pop();
                                 §§push(_temp_1);
                                 §§push(_temp_1);
                                 break;
                              }
                              break loop12;
                           }
                           _loc31_ = §§pop();
                           break;
                        }
                        §§pop().§#1§ = §§pop();
                        if(!_loc33_)
                        {
                           break;
                        }
                     }
                     §§push(_loc31_);
                     if(!_loc34_)
                     {
                        §§push(int(§§pop()));
                     }
                     _loc30_ = §§pop();
                     break;
                  }
                  _loc27_ = §8!$§[_loc30_];
                  loop14:
                  while(true)
                  {
                     §§push(_loc27_.startZ);
                     if(_loc33_)
                     {
                        while(true)
                        {
                           §§push(§<!M§.position.z);
                           if(!_loc34_)
                           {
                              §§push(§§pop() + 3000);
                              if(!_loc33_)
                              {
                                 break;
                              }
                           }
                           §§push(Number(§§pop()));
                           if(_loc33_)
                           {
                              break;
                           }
                           break loop14;
                        }
                        if(§§pop() >= §§pop())
                        {
                           continue loop1;
                        }
                        §§push(_loc27_.endZ);
                     }
                     §§push(§<!M§.position.z);
                     break;
                  }
                  if(§§pop() <= §§pop())
                  {
                     if(_loc33_)
                     {
                        §§push(_loc3_);
                        if(!_loc33_)
                        {
                           break loop10;
                        }
                        if(§§pop() <= 0)
                        {
                           break;
                        }
                        if(_loc33_)
                        {
                           §§push(§<!Y§);
                           §§push(_loc3_);
                           if(!_loc34_)
                           {
                              §§push(§§pop() - 1);
                           }
                           §§pop().§5L§(§§pop());
                           break;
                        }
                     }
                  }
                  else
                  {
                     §<!Y§.§"!b§(_loc3_).§[z§(_loc27_);
                     _loc3_++;
                  }
               }
            }
            §§push(1);
            if(_loc33_)
            {
               break;
            }
            §§goto(addr0e0b);
         }
         addr0e0b:
         _loc3_ = §§pop();
         while(true)
         {
            §§push(§=B§);
            §§push(int(§9`§.length));
            if(!_loc34_)
            {
               §§push(1);
               if(_loc34_)
               {
                  break;
               }
               §§push(§§pop() - §§pop());
            }
            §§push(-1);
            break;
         }
         _loc28_ = §§pop().§@W§(§§pop(),§§pop(),-1);
         if(!_loc34_)
         {
            loop2:
            while(_loc28_.§#1§ != _loc28_.end)
            {
               _loc29_ = _loc28_;
               if(!_loc34_)
               {
                  loop17:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc29_);
                        §§push(_loc29_.§#1§);
                        if(_loc33_)
                        {
                           §§push(_loc28_.§['§);
                           if(!_loc33_)
                           {
                              break;
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc34_)
                           {
                              §§push(int(§§pop()));
                              if(!_loc33_)
                              {
                                 break loop17;
                              }
                           }
                        }
                        var _temp_2:* = §§pop();
                        §§push(_temp_2);
                        §§push(_temp_2);
                        break;
                     }
                     _loc31_ = §§pop();
                     break;
                  }
                  §§pop().§#1§ = §§pop();
                  if(_loc33_)
                  {
                     §§push(_loc31_);
                     if(!_loc34_)
                     {
                        §§push(int(§§pop()));
                     }
                     _loc30_ = §§pop();
                  }
               }
               _loc32_ = §9`§[_loc30_];
               while(true)
               {
                  §§push(_loc32_.endZ);
                  if(!_loc34_)
                  {
                     §§push(§<!M§.position.z);
                     if(!_loc34_)
                     {
                        §§push(§§pop() + 3000);
                        if(!_loc33_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     if(!_loc33_)
                     {
                        break;
                     }
                     if(§§pop() >= §§pop())
                     {
                        _loc32_.§'!`§(0);
                        if(_loc33_)
                        {
                        }
                        continue loop2;
                     }
                     §§push(_loc32_.startZ);
                  }
                  §§push(§<!M§.position.z);
                  break;
               }
               if(§§pop() <= §§pop())
               {
                  break;
               }
               _loc32_.§'!`§(_loc3_);
               if(!_loc34_)
               {
                  _loc3_++;
               }
            }
         }
         super.display(param1);
      }
      
      public function §5!Y§(param1:int) : void
      {
         §§push(false);
         var _loc14_:Boolean = true;
         var _loc15_:* = §§pop();
         var _loc3_:* = null as §,@§;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc7_:* = null as TunnelSection;
         var _loc9_:* = null as §2N§;
         var _loc11_:* = null as §3!I§;
         var _loc13_:* = null as §6M§;
         if(_loc14_)
         {
            § L§.high = 38910;
            if(_loc14_)
            {
               victoryCondition = extraParams.victoryCondition;
            }
         }
         while(true)
         {
            §§push(§§findproperty(§,@§));
            §§push(int(§<!7§.length));
            if(!_loc15_)
            {
               §§push(1);
               if(!_loc14_)
               {
                  break;
               }
               §§push(§§pop() - §§pop());
            }
            §§push(0);
            break;
         }
         var _loc2_:§,@§ = new §§pop().§,@§(§§pop(),§§pop(),-1);
         if(!_loc15_)
         {
            loop0:
            while(true)
            {
               §§push(_loc2_.§#1§);
               if(!_loc14_)
               {
                  break;
               }
               §§push(_loc2_.§6!2§);
               if(!_loc15_)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc15_)
                  {
                     break;
                  }
                  §§push(_loc2_.end);
               }
               if(§§pop() != §§pop())
               {
                  _loc3_ = _loc2_;
                  while(true)
                  {
                     if(!_loc15_)
                     {
                        loop7:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(_loc3_);
                              §§push(_loc3_.§#1§);
                              if(!_loc15_)
                              {
                                 §§push(_loc2_.§6!2§);
                                 if(!_loc14_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc14_)
                                 {
                                    §§push(int(§§pop()));
                                    if(_loc15_)
                                    {
                                       break loop7;
                                    }
                                 }
                              }
                              var _temp_1:* = §§pop();
                              §§push(_temp_1);
                              §§push(_temp_1);
                              break;
                           }
                           _loc5_ = §§pop();
                           break;
                        }
                        §§pop().§#1§ = §§pop();
                        if(_loc15_)
                        {
                           break;
                        }
                        §§push(_loc5_);
                        if(!_loc15_)
                        {
                           §§push(int(§§pop()));
                        }
                        _loc4_ = §§pop();
                        if(_loc15_)
                        {
                           continue loop0;
                        }
                     }
                     §§push(§<!7§[_loc4_].§-3§);
                     if(_loc14_)
                     {
                        §§push(!§§pop());
                     }
                     if(§§pop())
                     {
                        if(_loc14_)
                        {
                           break;
                        }
                     }
                     continue loop0;
                  }
                  §<!7§[_loc4_].§9!?§();
                  continue;
               }
               if(!_loc15_)
               {
                  §§push(0);
                  if(_loc14_)
                  {
                     §§push(int(§§pop()));
                  }
                  break;
               }
            }
            _loc4_ = §§pop();
         }
         var _loc6_:Vector.<TunnelSection> = §8!$§;
         if(_loc14_)
         {
            while(true)
            {
               §§push(_loc4_);
               if(!_loc14_)
               {
                  break;
               }
               if(§§pop() < int(_loc6_.length))
               {
                  _loc7_ = _loc6_[_loc4_];
                  if(!_loc15_)
                  {
                     _loc4_++;
                     if(!_loc15_)
                     {
                        _loc7_.dispose();
                     }
                  }
                  continue;
               }
               if(!_loc15_)
               {
                  §§push(0);
                  if(_loc14_)
                  {
                     break;
                  }
                  addr01ae:
                  _loc4_ = §§pop();
               }
            }
            §§goto(addr01ae);
            §§push(int(§§pop()));
         }
         var _loc8_:Vector.<§2N§> = §9`§;
         while(true)
         {
            if(_loc14_)
            {
               while(_loc4_ < int(_loc8_.length))
               {
                  _loc9_ = _loc8_[_loc4_];
                  if(!_loc15_)
                  {
                     _loc4_++;
                     if(!_loc14_)
                     {
                        continue;
                     }
                  }
                  _loc9_.dispose();
               }
               if(!_loc15_)
               {
                  §8!$§.length = 0;
                  if(_loc15_)
                  {
                     break;
                  }
               }
            }
            §9`§.length = 0;
            break;
         }
         while(true)
         {
            §§push(§=B§);
            §§push(int(animations.length));
            if(!_loc15_)
            {
               §§push(1);
               if(!_loc14_)
               {
                  break;
               }
               §§push(§§pop() - §§pop());
            }
            §§push(-1);
            break;
         }
         var _loc10_:§3!I§ = §§pop().§@W§(§§pop(),§§pop(),-1);
         if(!_loc15_)
         {
            loop3:
            while(true)
            {
               §§push(_loc10_.§#1§);
               if(_loc15_)
               {
                  break;
               }
               if(§§pop() == _loc10_.end)
               {
                  if(_loc14_)
                  {
                     §<L§(param1);
                     if(_loc14_)
                     {
                        if(§"[§ == null)
                        {
                           if(!_loc15_)
                           {
                              §§goto(addr0304);
                           }
                        }
                        else
                        {
                           §§push(0);
                           if(!_loc15_)
                           {
                              break;
                           }
                           addr030e:
                           _loc4_ = §§pop();
                        }
                     }
                     §§goto(addr0310);
                  }
                  addr0304:
               }
               _loc11_ = _loc10_;
               loop12:
               while(true)
               {
                  if(!_loc15_)
                  {
                     loop13:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc11_);
                           §§push(_loc11_.§#1§);
                           if(!_loc15_)
                           {
                              §§push(_loc10_.§['§);
                              if(_loc15_)
                              {
                                 break;
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc15_)
                              {
                                 break loop13;
                              }
                           }
                           §§push(int(§§pop()));
                           if(!_loc15_)
                           {
                              break loop13;
                           }
                           addr0283:
                           §§pop().§#1§ = §§pop();
                           if(!_loc15_)
                           {
                              §§push(_loc5_);
                              if(_loc14_)
                              {
                                 §§push(int(§§pop()));
                              }
                              _loc4_ = §§pop();
                              if(_loc15_)
                              {
                                 break loop12;
                              }
                           }
                        }
                        _loc5_ = §§pop();
                        §§goto(addr0283);
                     }
                     var _temp_2:* = §§pop();
                     §§push(_temp_2);
                     §§push(_temp_2);
                     break loop14;
                  }
                  if(animations[_loc4_] is §,!A§)
                  {
                     if(!_loc15_)
                     {
                        break;
                     }
                  }
                  continue loop3;
               }
               animations.splice(_loc4_,1);
               continue;
               return;
            }
            §§goto(addr030e);
            §§push(int(§§pop()));
         }
         addr0310:
         var _loc12_:Vector.<§6M§> = characters;
         while(true)
         {
            if(!_loc15_)
            {
               while(_loc4_ < int(_loc12_.length))
               {
                  _loc13_ = _loc12_[_loc4_];
                  if(!_loc15_)
                  {
                     _loc4_++;
                     if(_loc14_)
                     {
                        _loc13_.transform.§6!&§(0,0,-1);
                     }
                  }
               }
               if(!_loc14_)
               {
                  break;
               }
            }
            reset();
            break;
         }
      }
      
      final public function §%>§(param1:Number) : void
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc4_:* = 0;
         var _loc5_:* = null as Vector.<TunnelSection>;
         var _loc6_:* = null as TunnelSection;
         var _loc7_:* = null as Vector.<§2N§>;
         var _loc8_:* = null as §2N§;
         var _loc10_:* = null as §3!I§;
         var _loc11_:* = 0;
         while(true)
         {
            §§push(§73§.startZ + §3A§.z);
            if(_loc12_)
            {
               §§push(§§pop() - §'!,§);
               if(_loc13_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(!_loc13_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc12_)
         {
            §§push(0);
            if(_loc12_)
            {
               §§push(int(§§pop()));
            }
            _loc4_ = §§pop();
         }
         _loc5_ = §8!$§;
         if(_loc12_)
         {
            loop0:
            while(_loc4_ < int(_loc5_.length))
            {
               _loc6_ = _loc5_[_loc4_];
               _loc4_++;
               loop4:
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(true);
                        if(_loc12_)
                        {
                           while(true)
                           {
                              §§push(true);
                              if(_loc12_)
                              {
                                 if(_loc6_.endZ >= §<!M§.position.z)
                                 {
                                    break;
                                 }
                                 if(!_loc12_)
                                 {
                                    break;
                                 }
                              }
                              §§pop();
                              if(!_loc13_)
                              {
                                 §§push(_loc6_.endZ >= §73§.startZ + § !W§.§7!,§.z);
                                 if(_loc12_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 break;
                              }
                              break loop4;
                           }
                           if(§§pop())
                           {
                              break loop4;
                           }
                           if(_loc12_)
                           {
                              §§pop();
                              §§push(_loc6_.endZ);
                              if(_loc13_)
                              {
                                 break;
                              }
                              §§push(param1);
                              if(!_loc12_)
                              {
                                 break loop5;
                              }
                              §§push(§§pop() + § !W§.§7!,§.z);
                              if(!_loc13_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc12_)
                                 {
                                    break loop5;
                                 }
                              }
                              §§push(§§pop() >= §§pop());
                              if(_loc13_)
                              {
                                 break loop4;
                              }
                           }
                        }
                        §§push(Boolean(§§pop()));
                        break loop4;
                     }
                     §§goto(addr0157);
                  }
                  if(§§pop() >= §§pop())
                  {
                     break loop0;
                  }
                  if(!_loc12_)
                  {
                     continue loop0;
                  }
                  §§push(_loc6_.startZ);
                  if(!_loc13_)
                  {
                     break loop18;
                  }
                  §§goto(addr0157);
               }
               if(§§pop())
               {
                  addr0157:
                  §§push(_loc6_.startZ);
                  if(_loc12_)
                  {
                     §§push(_loc2_);
                     break loop5;
                  }
                  _loc2_ = §§pop();
                  if(!_loc13_)
                  {
                     break;
                  }
               }
               else
               {
                  _loc6_.dispose();
               }
               _loc3_++;
               if(_loc13_)
               {
                  addr0189:
                  addr019e:
                  addr01b9:
                  _loc5_ = §8!$§.splice(0,_loc3_);
                  §§push(0);
                  if(!_loc13_)
                  {
                     addr01a6:
                     while(true)
                     {
                        §§push(int(§§pop()));
                        if(_loc12_)
                        {
                           _loc3_ = §§pop();
                           §§push(0);
                           if(_loc13_)
                           {
                              break;
                           }
                        }
                        §§push(int(§§pop()));
                        break;
                     }
                  }
                  _loc4_ = §§pop();
                  _loc7_ = §9`§;
               }
               continue;
               loop7:
               while(true)
               {
                  if(!_loc13_)
                  {
                     loop1:
                     while(_loc4_ < int(_loc7_.length))
                     {
                        _loc8_ = _loc7_[_loc4_];
                        if(!_loc12_)
                        {
                           break;
                        }
                        _loc4_++;
                        if(!_loc13_)
                        {
                           loop8:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(true);
                                 if(!_loc13_)
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(true);
                                          if(_loc12_)
                                          {
                                             if(_loc8_.endZ >= §<!M§.position.z)
                                             {
                                                break loop10;
                                             }
                                             if(_loc13_)
                                             {
                                                break loop10;
                                             }
                                             §§pop();
                                             if(!_loc12_)
                                             {
                                                break;
                                             }
                                             §§push(_loc8_.endZ >= §73§.startZ + § !W§.§7!,§.z);
                                             if(!_loc12_)
                                             {
                                                break loop10;
                                             }
                                          }
                                          §§push(Boolean(§§pop()));
                                          break loop10;
                                       }
                                    }
                                    if(!§§pop())
                                    {
                                       if(_loc12_)
                                       {
                                          §§pop();
                                          §§push(_loc8_.endZ);
                                          if(!_loc12_)
                                          {
                                             break;
                                          }
                                          §§push(param1);
                                          if(_loc12_)
                                          {
                                             §§push(§§pop() + § !W§.§7!,§.z);
                                             if(_loc12_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc13_)
                                                {
                                                   break loop8;
                                                }
                                             }
                                          }
                                          §§push(§§pop() >= §§pop());
                                          if(_loc12_)
                                          {
                                             break loop11;
                                          }
                                       }
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc13_)
                                    {
                                       §§push(_loc8_.startZ);
                                       if(!_loc13_)
                                       {
                                          §§push(_loc2_);
                                          break loop8;
                                       }
                                       break;
                                    }
                                    break loop7;
                                 }
                                 _loc8_.dispose();
                              }
                              _loc2_ = §§pop();
                              break loop1;
                           }
                           if(§§pop() < §§pop())
                           {
                              §§push(_loc8_.startZ);
                              if(!_loc13_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              break loop9;
                           }
                           break;
                        }
                        _loc3_++;
                        if(_loc13_)
                        {
                           break loop7;
                        }
                     }
                  }
                  if(_loc3_ > 0)
                  {
                     break;
                  }
                  §§goto(addr02e9);
               }
               _loc7_ = §9`§.splice(0,_loc3_);
               addr02e9:
               while(true)
               {
                  §§push(§=B§);
                  §§push(int(§<!7§.length));
                  if(!_loc13_)
                  {
                     §§push(1);
                     if(!_loc12_)
                     {
                        break;
                     }
                     §§push(§§pop() - §§pop());
                  }
                  §§push(-1);
                  break;
               }
               var _loc9_:§3!I§ = §§pop().§@W§(§§pop(),§§pop(),-1);
               if(!_loc13_)
               {
                  loop2:
                  while(_loc9_.§#1§ != _loc9_.end)
                  {
                     _loc10_ = _loc9_;
                     loop13:
                     while(true)
                     {
                        loop14:
                        while(true)
                        {
                           while(true)
                           {
                              if(!_loc13_)
                              {
                                 loop16:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc10_);
                                       §§push(_loc10_.§#1§);
                                       if(!_loc13_)
                                       {
                                          §§push(_loc9_.§['§);
                                          if(_loc13_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc13_)
                                          {
                                             break loop16;
                                          }
                                       }
                                       §§push(int(§§pop()));
                                       if(!_loc13_)
                                       {
                                          var _temp_1:* = §§pop();
                                          §§push(_temp_1);
                                          §§push(_temp_1);
                                          break;
                                       }
                                       break loop16;
                                    }
                                    _loc11_ = §§pop();
                                    break;
                                 }
                                 §§pop().§#1§ = §§pop();
                                 if(_loc13_)
                                 {
                                    break loop13;
                                 }
                                 §§push(_loc11_);
                                 if(!_loc13_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 _loc4_ = §§pop();
                                 if(!_loc12_)
                                 {
                                    break loop13;
                                 }
                                 §§push(false);
                                 if(!_loc12_)
                                 {
                                    break;
                                 }
                                 §§push(§<!7§[_loc4_].§-3§);
                                 if(_loc12_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(!§§pop())
                                 {
                                    break loop14;
                                 }
                                 if(!_loc12_)
                                 {
                                    break loop14;
                                 }
                                 §§pop();
                                 if(_loc13_)
                                 {
                                    break loop13;
                                 }
                              }
                              §§push(§<!7§[_loc4_].transform.position.z < _loc2_);
                              if(!_loc13_)
                              {
                                 break;
                              }
                              break loop14;
                           }
                           §§push(Boolean(§§pop()));
                           break;
                        }
                        if(§§pop())
                        {
                           if(!_loc13_)
                           {
                              break;
                           }
                        }
                        continue loop2;
                     }
                     §<!7§[_loc4_].§9!?§();
                  }
               }
               return;
            }
         }
         while(true)
         {
            §§push(_loc3_);
            if(_loc12_)
            {
               if(§§pop() > 0)
               {
                  §§goto(addr0189);
               }
               §§goto(addr019e);
            }
            §§goto(addr01a6);
         }
         §§goto(addr01b9);
      }
      
      public function §<m§(param1:TunnelSection, param2:Object = undefined) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc3_)
               {
                  if(extraParams.startTilesLength == null)
                  {
                     break;
                  }
                  if(!_loc3_)
                  {
                     break loop0;
                  }
               }
               while(true)
               {
                  if(extraParams.startTilesLength < 0)
                  {
                     if(!_loc4_)
                     {
                        return;
                     }
                  }
                  else
                  {
                     while(true)
                     {
                        §§push(false);
                        if(!_loc4_)
                        {
                           if(param2 != null)
                           {
                              break;
                           }
                           if(!_loc3_)
                           {
                              break;
                           }
                        }
                        §§pop();
                        if(!_loc4_)
                        {
                           break loop0;
                        }
                     }
                     §§goto(addr0097);
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr00c1);
            }
            §9`§.push(§2N§.§&>§(param1,param2));
            §§goto(addr00c1);
         }
         while(true)
         {
            §§push(extraParams.startTilesLength == 0);
            if(_loc3_)
            {
               §§push(!§§pop());
               if(!_loc3_)
               {
                  break;
               }
            }
            §§push(Boolean(§§pop()));
            break;
         }
         addr0097:
         if(§§pop())
         {
            if(_loc3_)
            {
               addr00a0:
               param2 = extraParams.startTilesLength;
               break loop1;
            }
            addr00c1:
            return;
         }
         break loop1;
      }
      
      public function §,!H§(param1:Object) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:* = null as String;
         §§push(0);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(Reflect.fields(param1));
            if(!_loc6_)
            {
               §§push(§§pop());
               if(_loc6_)
               {
                  break;
               }
            }
            §§push(§§pop());
            break;
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            while(_loc2_ < int(_loc3_.length))
            {
               §§push(_loc3_[_loc2_]);
               if(_loc5_)
               {
                  §§push(§§pop());
               }
               _loc4_ = §§pop();
               if(!_loc6_)
               {
                  _loc2_++;
                  if(!_loc6_)
                  {
                     §§push(Reflect.hasField(extraParams,_loc4_));
                     if(!_loc6_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc6_)
                        {
                           §§push(!§§pop());
                        }
                     }
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           extraParams[_loc4_] = Reflect.field(param1,_loc4_);
                        }
                     }
                  }
               }
            }
         }
      }
   }
}

