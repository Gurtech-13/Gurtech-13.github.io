package §2n§
{
   import §!!$§.§ 6§;
   import §!!$§.§4o§;
   import §!!$§.§?y§;
   import §"p§.§'A§;
   import §%!Z§.§&!S§;
   import §-!!§.§ B§;
   import §-!!§.§&!;§;
   import §-!!§.§&l§;
   import §-v§.§0!5§;
   import §-v§.§?P§;
   import §-v§.§@U§;
   import layout3d.LineLayout2D;
   import scenes.MyTurn;
   import §6!Q§.§<!T§;
   import §6!Q§.§]u§;
   import §6!Q§.§^F§;
   import §<?§.§#!7§;
   import §=w§.§,D§;
   import §>!O§.§#!6§;
   import §>!O§.§0S§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §>T§.§"=§;
   import §>T§.§0!E§;
   import §>T§.§[C§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import §[!P§.§30§;
   import §[!P§.§@$§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§'!O§;
   import com.player03.layout.§2u§;
   import com.player03.run3.Currency;
   import com.player03.run3.Save;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.character.Lizard;
   import com.player03.run3.character.§]!W§;
   import com.player03.run3.level.§-p§;
   import com.player03.run3.menu.§#C§;
   import com.player03.run3.menu.§=!>§;
   import com.player03.run3.save.§2!;§;
   import com.player03.run3.save.§]k§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import haxeutils.math.GrowthFunctions;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   import nme3D.Scene3D;
   import nme3D.Context3DUtils;
   import openfl.Lib;
   import unitsystem.§7o§;
   
   public class §7%§ extends §'!O§ implements §,D§, §+<§
   {
      
      public static var init__:Boolean;
      
      public static var §`!-§:§]k§;
      
      public static var instance:§7%§;
      
      public var §0!L§:int;
      
      public var §7A§:Function;
      
      public var §8;§:TextField;
      
      public var § u§:Function;
      
      public var §"0§:int;
      
      public var §[!B§:LineLayout2D;
      
      public var §+!J§:§&l§;
      
      public var § ]§:§ B§;
      
      public var §]e§:Boolean;
      
      public var §4!%§:int;
      
      public var §1q§:CharacterDef;
      
      public var §%!C§:Vector.<§?P§>;
      
      public var §&!5§:Function;
      
      public function §7%§()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               §4!%§ = 0;
               if(!_loc1_)
               {
                  break;
               }
               super();
               if(_loc2_)
               {
                  break;
               }
            }
            § u§ = GrowthFunctions.§`r§(10,30,2);
            if(!_loc2_)
            {
               break;
            }
            §§goto(addr0066);
         }
         addEventListener(Event.REMOVED,§&!%§);
         addr0066:
      }
      
      public static function §@!A§() : §7%§
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = null as §7%§;
         if(!_loc3_)
         {
            if(§7%§.instance != null)
            {
               return §7%§.instance;
            }
         }
         return §7%§.instance = new §7%§();
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc2_:* = false;
         var _loc3_:* = 0;
         var _loc4_:* = null as Currency;
         var _loc5_:* = null as §2!;§;
         var _loc6_:* = 0;
         var _loc7_:* = null as §2!;§;
         var _loc8_:* = 0;
         var _loc9_:* = null as §2!;§;
         var _loc10_:* = 0;
         var _loc11_:* = null as §2!;§;
         loop2:
         while(true)
         {
            loop3:
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
                        if(§1q§ == null && §]u§.§@!A§().§>_§ >= 0.36)
                        {
                           loop12:
                           while(true)
                           {
                              loop13:
                              while(true)
                              {
                                 if(!_loc12_)
                                 {
                                    if(§7o§.controlScheme.§+l§("jump"))
                                    {
                                       §§push(§4!%§);
                                       if(_loc12_)
                                       {
                                          break loop3;
                                       }
                                       §§push(0);
                                       if(!_loc12_)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             §'k§(CharacterRegistry.available[§4!%§]);
                                             break;
                                          }
                                          visible = false;
                                          if(!_loc12_)
                                          {
                                             break;
                                          }
                                          break loop2;
                                       }
                                    }
                                    else
                                    {
                                       §7o§.controlScheme.update(param1);
                                       while(true)
                                       {
                                          §§push(§7o§.controlScheme.§+l§("left"));
                                          if(_loc13_)
                                          {
                                             if(§§pop())
                                             {
                                                §§push(§4!%§);
                                                if(_loc12_)
                                                {
                                                   break;
                                                }
                                                §§push(0);
                                                if(!_loc13_)
                                                {
                                                   addr0226:
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(!_loc13_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      §,!&§(§%!C§[§4!%§]);
                                                   }
                                                   loop1:
                                                   while(true)
                                                   {
                                                      if(false)
                                                      {
                                                         break loop12;
                                                      }
                                                      §§push(§§findproperty(§4!%§));
                                                      §§push(§4!%§);
                                                      if(!_loc12_)
                                                      {
                                                         §§push(§§pop() + 1);
                                                      }
                                                      §§pop().§4!%§ = §§pop();
                                                      loop20:
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            if(!_loc12_)
                                                            {
                                                               §§push(§4!%§);
                                                               if(_loc12_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(int(§%!C§.length));
                                                               if(!_loc13_)
                                                               {
                                                                  break loop20;
                                                               }
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  §4!%§ = -1;
                                                                  if(_loc12_)
                                                                  {
                                                                     break loop12;
                                                                  }
                                                               }
                                                            }
                                                            §§push(false);
                                                            if(!_loc12_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(§4!%§ >= 0)
                                                                  {
                                                                     if(_loc13_)
                                                                     {
                                                                        §§pop();
                                                                        §§push(!§%!C§[§4!%§].visible);
                                                                        if(_loc12_)
                                                                        {
                                                                           break;
                                                                        }
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                     if(!_loc13_)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  §§push(!§§pop());
                                                                  break;
                                                               }
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               continue loop1;
                                                            }
                                                            if(!_loc12_)
                                                            {
                                                               break loop12;
                                                            }
                                                            §§goto(addr0301);
                                                         }
                                                         §§goto(addr02fb);
                                                      }
                                                      §§goto(addr02fd);
                                                   }
                                                   break loop12;
                                                   addr02f0:
                                                }
                                                if(§§pop() >= §§pop())
                                                {
                                                   §,!&§(§%!C§[§4!%§]);
                                                }
                                                while(true)
                                                {
                                                   loop15:
                                                   while(true)
                                                   {
                                                      loop16:
                                                      while(true)
                                                      {
                                                         loop17:
                                                         while(true)
                                                         {
                                                            if(false)
                                                            {
                                                               if(_loc12_)
                                                               {
                                                                  break loop12;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(§§findproperty(§4!%§));
                                                               §§push(§4!%§);
                                                               if(!_loc12_)
                                                               {
                                                                  §§push(§§pop() - 1);
                                                               }
                                                               §§pop().§4!%§ = §§pop();
                                                               while(true)
                                                               {
                                                                  if(!_loc12_)
                                                                  {
                                                                     §§push(§4!%§);
                                                                     if(!_loc13_)
                                                                     {
                                                                        break loop17;
                                                                     }
                                                                     §§push(-1);
                                                                     if(!_loc13_)
                                                                     {
                                                                        break loop16;
                                                                     }
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  §§push(§§findproperty(§4!%§));
                                                                  §§push(int(§%!C§.length));
                                                                  if(!_loc12_)
                                                                  {
                                                                     §§push(§§pop() - 1);
                                                                  }
                                                                  §§pop().§4!%§ = §§pop();
                                                                  break;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(false);
                                                                  if(_loc13_)
                                                                  {
                                                                     if(§4!%§ < 0)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!_loc13_)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  §§pop();
                                                                  if(!_loc12_)
                                                                  {
                                                                     §§push(!§%!C§[§4!%§].visible);
                                                                     if(_loc12_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                     if(_loc13_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!§§pop())
                                                                     {
                                                                        continue loop17;
                                                                     }
                                                                     if(_loc12_)
                                                                     {
                                                                        break loop15;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr01b1);
                                                            }
                                                            §§push(§4!%§);
                                                            break;
                                                         }
                                                         §§push(0);
                                                         break;
                                                      }
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         if(!_loc12_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      break loop13;
                                                   }
                                                   §!!4§(§%!C§[§4!%§]);
                                                   break loop13;
                                                }
                                             }
                                             else
                                             {
                                                §§push(§7o§.controlScheme.§+l§("right"));
                                                if(_loc12_)
                                                {
                                                   break loop10;
                                                }
                                                §§push(Boolean(§§pop()));
                                                if(!_loc13_)
                                                {
                                                   break loop9;
                                                }
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             §§push(§4!%§);
                                             if(!_loc12_)
                                             {
                                                break;
                                             }
                                             break loop11;
                                          }
                                          break loop13;
                                       }
                                       §§goto(addr0226);
                                    }
                                    §§goto(addr0100);
                                 }
                                 §§goto(addr02f0);
                              }
                           }
                           addr02fd:
                           addr02fb:
                           if(§4!%§ >= 0)
                           {
                              addr0301:
                              §!!4§(§%!C§[§4!%§]);
                           }
                           break loop13;
                        }
                        if(§1q§ != null)
                        {
                           §§push(§]e§);
                           if(!_loc13_)
                           {
                              break loop10;
                           }
                           §§push(!§§pop());
                           if(_loc13_)
                           {
                              break loop10;
                           }
                           §§goto(addr046b);
                        }
                        §§goto(addr052a);
                     }
                     §§goto(addr0375);
                  }
                  if(§§pop())
                  {
                     if(!_loc12_)
                     {
                        §]e§ = true;
                     }
                     return;
                  }
                  §§push(§7A§);
                  if(_loc13_)
                  {
                     §§push(§§pop());
                  }
                  if(§§pop() == null)
                  {
                     §§push(false);
                     break;
                  }
                  if(_loc13_)
                  {
                     break loop2;
                  }
                  §§goto(addr037d);
               }
               addr046b:
               _loc2_ = Boolean(§§pop());
               continue loop7;
            }
            §§goto(addr0375);
         }
         §§push(§"0§);
         if(!_loc12_)
         {
            break loop3;
         }
         addr0375:
         _loc3_ = §§pop();
         loop4:
         while(true)
         {
            if(_loc13_)
            {
               addr037d:
               _loc4_ = Currency.§@!A§();
               _loc5_ = Currency.softEarned;
               if(_loc13_)
               {
                  §§push(int(Save.§@!A§().get(_loc5_.§=-§,int(_loc5_.§ -§))));
                  if(!_loc12_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc6_ = §§pop();
               }
               _loc7_ = Currency.softBought;
               if(_loc13_)
               {
                  while(true)
                  {
                     §§push(_loc6_);
                     if(_loc13_)
                     {
                        §§push(§§pop() + int(Save.§@!A§().get(_loc7_.§=-§,int(_loc7_.§ -§))));
                        if(_loc12_)
                        {
                           break;
                        }
                     }
                     §§push(int(§§pop()));
                     break;
                  }
                  _loc8_ = §§pop();
               }
               _loc9_ = Currency.softSpent;
               if(!_loc12_)
               {
                  while(true)
                  {
                     §§push(_loc8_);
                     if(_loc13_)
                     {
                        §§push(§§pop() - int(Save.§@!A§().get(_loc9_.§=-§,int(_loc9_.§ -§))));
                        if(!_loc13_)
                        {
                           break;
                        }
                     }
                     §§push(int(§§pop()));
                     break;
                  }
                  _loc10_ = §§pop();
               }
               _loc11_ = Currency.softFromOffers;
               §§push(_loc3_);
               §§push(_loc10_);
               if(_loc13_)
               {
                  §§push(§§pop() + int(Save.§@!A§().get(_loc11_.§=-§,int(_loc11_.§ -§))));
               }
               §§push(§§pop() <= §§pop());
               if(!_loc12_)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc13_)
                  {
                     break;
                  }
               }
               _loc2_ = §§pop();
            }
            loop7:
            while(true)
            {
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc12_)
                  {
                     if(!§§pop())
                     {
                        break;
                     }
                     if(!_loc13_)
                     {
                        break loop7;
                     }
                     §§push(Boolean(§7A§(§1q§)));
                     if(!_loc12_)
                     {
                        break loop4;
                     }
                  }
                  addr0494:
                  if(!§§pop())
                  {
                     §7A§ = null;
                     Currency.§@!A§().recordSoftSpent(§"0§,"Respawn");
                     visible = false;
                     if(!_loc12_)
                     {
                        break;
                     }
                     §§goto(addr0523);
                  }
                  if(_loc13_)
                  {
                     break loop7;
                  }
                  §§goto(addr04d0);
               }
               §&!5§ = null;
               if(!_loc12_)
               {
                  addr0523:
                  §]e§ = false;
                  §§goto(addr052a);
               }
               addr052a:
               return;
            }
            §%!C§[§1q§.§?@§].graphics.clear();
            §%!C§[§1q§.§?@§].visible = false;
            addr04d0:
            §1q§ = null;
            return;
         }
         §§goto(addr0494);
      }
      
      public function show(param1:Vector.<CharacterDef>, param2:Function, param3:Function) : void
      {
         §§push(false);
         var _loc20_:Boolean = true;
         var _loc21_:* = §§pop();
         var _loc4_:* = false;
         var _loc5_:* = 0;
         var _loc6_:* = null as Currency;
         var _loc7_:* = null as §2!;§;
         var _loc8_:* = 0;
         var _loc9_:* = null as §2!;§;
         var _loc10_:* = 0;
         var _loc11_:* = null as §2!;§;
         var _loc12_:* = 0;
         var _loc13_:* = null as §2!;§;
         var _loc16_:* = null as §?P§;
         var _loc17_:* = null as Vector.<CharacterDef>;
         var _loc18_:* = null as CharacterDef;
         loop2:
         while(true)
         {
            while(true)
            {
               if(§8;§ == null)
               {
                  §§push(§6!]§);
                  if(_loc21_)
                  {
                     break;
                  }
                  §§push(!§§pop());
                  if(!_loc20_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     if(!_loc20_)
                     {
                        break loop2;
                     }
                     §^,§(null);
                  }
               }
               §1q§ = null;
               if(_loc20_)
               {
                  §0!L§ = int(param1.length);
               }
               §§push(§§findproperty(§"0§));
               §§push(§§findproperty(§=!Z§));
               §§push(int(param1.length));
               if(_loc20_)
               {
                  §§push(§§pop() - 1);
               }
               §§push(§§pop().§=!Z§(§§pop()));
               if(_loc20_)
               {
                  §§push(int(§§pop()));
               }
               §§pop().§"0§ = §§pop();
               loop20:
               while(true)
               {
                  if(_loc20_)
                  {
                     break loop2;
                  }
                  addr010b:
                  _loc6_ = Currency.§@!A§();
                  _loc7_ = Currency.softEarned;
                  if(!_loc21_)
                  {
                     §§push(int(Save.§@!A§().get(_loc7_.§=-§,int(_loc7_.§ -§))));
                     if(_loc20_)
                     {
                        §§push(int(§§pop()));
                     }
                     _loc8_ = §§pop();
                  }
                  _loc9_ = Currency.softBought;
                  if(_loc20_)
                  {
                     while(true)
                     {
                        §§push(_loc8_);
                        if(!_loc21_)
                        {
                           §§push(§§pop() + int(Save.§@!A§().get(_loc9_.§=-§,int(_loc9_.§ -§))));
                           if(_loc21_)
                           {
                              break;
                           }
                        }
                        §§push(int(§§pop()));
                        break;
                     }
                     _loc10_ = §§pop();
                  }
                  _loc11_ = Currency.softSpent;
                  if(_loc20_)
                  {
                     §§push(_loc10_);
                     if(!_loc21_)
                     {
                        §§push(§§pop() - int(Save.§@!A§().get(_loc11_.§=-§,int(_loc11_.§ -§))));
                        if(!_loc21_)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     _loc12_ = §§pop();
                  }
                  _loc13_ = Currency.softFromOffers;
                  while(true)
                  {
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc5_);
                           if(!_loc21_)
                           {
                              §§push(_loc12_);
                              if(!_loc20_)
                              {
                                 break;
                              }
                              §§push(§§pop() + int(Save.§@!A§().get(_loc13_.§=-§,int(_loc13_.§ -§))));
                              if(!_loc20_)
                              {
                                 break;
                              }
                              §§push(§§pop() > §§pop());
                              if(!_loc21_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!_loc21_)
                                 {
                                    _loc4_ = §§pop();
                                    break loop20;
                                 }
                              }
                              §§goto(addr021a);
                           }
                           §§goto(addr024c);
                        }
                        §§goto(addr024e);
                     }
                     §§goto(addr028c);
                  }
                  §§goto(addr0285);
               }
               §§goto(addr0212);
            }
            if(§§pop())
            {
               if(_loc20_)
               {
                  §§push(§"0§);
                  if(_loc20_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc5_ = §§pop();
                  if(_loc20_)
                  {
                     §§goto(addr010b);
                  }
               }
            }
            else
            {
               §§push(false);
               if(!_loc21_)
               {
                  §§push(Boolean(§§pop()));
               }
               §§goto(addr0210);
            }
            §§goto(addr0212);
         }
         §§push(§9'§.§@!A§().§?!;§.§ G§);
         if(!_loc21_)
         {
            §§push(!§§pop());
            if(_loc20_)
            {
               break loop3;
            }
         }
         addr0210:
         _loc4_ = §§pop();
         addr0212:
         §§push(_loc4_);
         if(!_loc21_)
         {
            addr021a:
            if(§§pop())
            {
               return;
            }
            §7A§ = param2;
            if(!_loc21_)
            {
               §&!5§ = param3;
               §8;§.text = "Keep going with a new character?\n";
               if(!_loc21_)
               {
                  addr024c:
                  addr024e:
                  if(§"0§ > 0)
                  {
                     §8;§.appendText("It will cost " + §"0§ + " power cells.");
                     if(_loc21_)
                     {
                     }
                  }
                  else
                  {
                     §8;§.appendText("The first time is free!");
                  }
               }
               addr0285:
               Lizard.§?!-§();
            }
            addr028c:
            §§push(false);
            if(_loc20_)
            {
               §§push(Boolean(§§pop()));
            }
         }
         var _loc14_:* = §§pop();
         if(!_loc21_)
         {
            §§push(0);
            if(_loc20_)
            {
               §§push(int(§§pop()));
            }
            _loc5_ = §§pop();
         }
         var _loc15_:Vector.<§?P§> = §%!C§;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(!_loc20_)
            {
               break;
            }
            loop4:
            while(true)
            {
               §§push(int(_loc15_.length));
               if(_loc20_)
               {
                  if(§§pop() >= §§pop())
                  {
                     § ]§.§3!,§();
                     loop5:
                     while(true)
                     {
                        §§push(_loc14_);
                        if(!_loc21_)
                        {
                           §§push(!§§pop());
                           if(!_loc20_)
                           {
                              break;
                           }
                        }
                        if(§§pop())
                        {
                           §^<§(true);
                           return;
                        }
                        addr04db:
                        §§push(int(Save.§@!A§().get("preferRespawningAs",-1)));
                        if(!_loc21_)
                        {
                           break loop0;
                        }
                        _loc5_ = §§pop();
                        if(_loc21_)
                        {
                           break loop4;
                        }
                        while(true)
                        {
                           §§push(false);
                           if(_loc20_)
                           {
                              §§push(false);
                              if(_loc20_)
                              {
                                 if(§"0§ != 0)
                                 {
                                    break;
                                 }
                                 if(!_loc20_)
                                 {
                                    break;
                                 }
                              }
                              §§pop();
                              if(!_loc20_)
                              {
                                 break loop5;
                              }
                           }
                           §§push(_loc5_ >= 0);
                           if(_loc20_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           break;
                        }
                        if(§§pop())
                        {
                           if(!_loc21_)
                           {
                              break;
                           }
                        }
                        if(!§§pop())
                        {
                           §4!%§ = -1;
                           break loop4;
                        }
                        §§push(§4!%§);
                        §§push(0);
                     }
                     §§pop();
                     §§goto(addr0536);
                  }
                  else
                  {
                     _loc16_ = _loc15_[_loc5_];
                     _loc5_++;
                     loop7:
                     while(true)
                     {
                        loop8:
                        while(true)
                        {
                           §§push(_loc16_);
                           if(_loc20_)
                           {
                              §§push(true);
                              if(_loc20_)
                              {
                                 loop12:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(false);
                                       if(!_loc21_)
                                       {
                                          §§push(_loc16_.character.§<!,§());
                                          if(!_loc21_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(!§§pop())
                                          {
                                             break;
                                          }
                                          if(_loc21_)
                                          {
                                             break loop12;
                                          }
                                       }
                                       §§pop();
                                       if(_loc20_)
                                       {
                                          §§push(_loc16_.character.§#U§);
                                          if(_loc20_)
                                          {
                                             break loop12;
                                          }
                                          break;
                                       }
                                       break loop8;
                                    }
                                    if(§§pop())
                                    {
                                       break loop7;
                                    }
                                    if(_loc21_)
                                    {
                                       break loop7;
                                    }
                                    §§pop();
                                 }
                                 §§push(!§§pop());
                                 if(!_loc21_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 break loop13;
                              }
                              break loop7;
                           }
                           §§push(_loc16_.character == CharacterRegistry.random);
                           if(_loc20_)
                           {
                              break;
                           }
                           break loop7;
                        }
                        §§push(Boolean(§§pop()));
                        break;
                     }
                     §§pop().visible = §§pop();
                     loop9:
                     while(true)
                     {
                        §§push(false);
                        if(_loc20_)
                        {
                           if(_loc16_.character.§[P§ != null)
                           {
                              if(!_loc21_)
                              {
                                 §§pop();
                                 if(!_loc20_)
                                 {
                                    break;
                                 }
                                 §§push(_loc16_.character == CharacterRegistry.random);
                                 if(!_loc21_)
                                 {
                                    §§push(!§§pop());
                                    if(!_loc21_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                 }
                              }
                           }
                        }
                        if(§§pop())
                        {
                           while(true)
                           {
                              if(_loc16_.character != _loc16_.character.§[P§.§?7§())
                              {
                                 if(_loc21_)
                                 {
                                    break loop9;
                                 }
                                 _loc16_.§[!`§(_loc16_.character.§[P§.§?7§());
                                 if(!_loc20_)
                                 {
                                    break;
                                 }
                              }
                              §§push(0);
                              if(!_loc21_)
                              {
                                 §§push(int(§§pop()));
                                 if(_loc21_)
                                 {
                                    addr043e:
                                    if(§§pop() >= 0)
                                    {
                                       _loc16_.visible = false;
                                    }
                                    break loop9;
                                 }
                              }
                              _loc8_ = §§pop();
                              break;
                           }
                           _loc17_ = _loc16_.character.§[P§.§@D§;
                           if(_loc20_)
                           {
                              while(true)
                              {
                                 if(_loc8_ >= int(_loc17_.length))
                                 {
                                    break loop9;
                                 }
                                 _loc18_ = _loc17_[_loc8_];
                                 _loc8_++;
                                 if(int(param1.indexOf(_loc18_,0)) >= 0)
                                 {
                                    while(true)
                                    {
                                       if(!_loc21_)
                                       {
                                          _loc16_.visible = false;
                                          break loop9;
                                       }
                                       addr0461:
                                       if(_loc16_.character != CharacterRegistry.random)
                                       {
                                          if(_loc20_)
                                          {
                                             break;
                                          }
                                       }
                                       continue loop0;
                                    }
                                    addr0475:
                                    §§push(true);
                                    if(!_loc21_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    _loc14_ = §§pop();
                                    continue loop0;
                                 }
                              }
                           }
                           break;
                        }
                        §§push(int(param1.indexOf(_loc16_.character,0)));
                        §§goto(addr043e);
                     }
                     if(!_loc16_.visible)
                     {
                        continue loop0;
                     }
                     §,!&§(_loc16_);
                     if(_loc20_)
                     {
                        §§goto(addr0461);
                     }
                     §§goto(addr0475);
                  }
               }
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc21_)
                     {
                        break;
                     }
                     §,!&§(§%!C§[§4!%§]);
                  }
                  §4!%§ = _loc5_;
                  §!!4§(§%!C§[§4!%§]);
                  break loop4;
               }
               §§goto(addr0598);
            }
            layout.apply();
            addr0598:
            var _loc19_:§]u§ = §]u§.§@!A§();
            while(true)
            {
               if(!_loc21_)
               {
                  loop16:
                  while(true)
                  {
                     loop17:
                     while(true)
                     {
                        §§push(false);
                        if(_loc20_)
                        {
                           if(_loc19_.visible)
                           {
                              while(true)
                              {
                                 if(_loc20_)
                                 {
                                    §§pop();
                                    if(_loc21_)
                                    {
                                       break loop17;
                                    }
                                    §§push(int(_loc19_.blockingOverlays.length) > 0);
                                    if(!_loc20_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(Boolean(§§pop()));
                                 if(_loc20_)
                                 {
                                    break;
                                 }
                                 break loop16;
                              }
                           }
                        }
                        §§push(!§§pop());
                        break loop16;
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc21_)
                     {
                        break loop17;
                     }
                  }
                  break;
               }
               §]u§.§@!A§().§5B§(this);
               break;
            }
            return;
         }
         while(true)
         {
            §§push(int(§§pop()));
            if(_loc20_)
            {
               §§goto(addr04db);
            }
            §§goto(addr0540);
         }
         §§goto(addr0590);
      }
      
      public function §'k§(param1:CharacterDef) : void
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc12_)
               {
                  while(true)
                  {
                     §§push(true);
                     §§push(true);
                     if(_loc12_)
                     {
                        if(§]u§.§@!A§().§>_§ < 0.6)
                        {
                           break;
                        }
                        if(!_loc13_)
                        {
                           §§pop();
                           §§push(§1q§ == null);
                           if(!_loc12_)
                           {
                              break;
                           }
                           §§push(!§§pop());
                           if(!_loc12_)
                           {
                              break;
                           }
                        }
                     }
                     §§push(Boolean(§§pop()));
                     break;
                  }
                  if(§§pop())
                  {
                     break;
                  }
                  if(!_loc12_)
                  {
                     break;
                  }
                  §§pop();
                  if(_loc13_)
                  {
                     break loop0;
                  }
               }
               §§push(param1.§<!,§());
               if(!_loc13_)
               {
                  §§push(!§§pop());
               }
               break;
            }
            if(§§pop())
            {
               break;
            }
            §§push(int(CharacterRegistry.available.indexOf(param1,0)));
            if(_loc12_)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            loop3:
            while(true)
            {
               if(!_loc13_)
               {
                  while(true)
                  {
                     §§push(false);
                     if(param1.§[P§ != null)
                     {
                        §§pop();
                        if(_loc13_)
                        {
                           break;
                        }
                        §§push(param1 != CharacterRegistry.random);
                     }
                     if(§§pop())
                     {
                        if(_loc12_)
                        {
                           §§push(param1.§[P§.§?7§().§<!,§());
                           if(_loc12_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(§§pop())
                           {
                              break;
                           }
                           break loop3;
                        }
                        break;
                     }
                     break loop3;
                  }
               }
               param1 = param1.§[P§.§?7§();
               break;
            }
            §§push(§"0§);
            if(!_loc13_)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:Currency = Currency.§@!A§();
            var _loc5_:§2!;§ = Currency.softEarned;
            §§push(int(Save.§@!A§().get(_loc5_.§=-§,int(_loc5_.§ -§))));
            if(!_loc13_)
            {
               §§push(int(§§pop()));
            }
            var _loc6_:* = §§pop();
            var _loc7_:§2!;§ = Currency.softBought;
            §§push(_loc6_);
            if(!_loc13_)
            {
               §§push(§§pop() + int(Save.§@!A§().get(_loc7_.§=-§,int(_loc7_.§ -§))));
               if(!_loc13_)
               {
                  §§push(int(§§pop()));
               }
            }
            var _loc8_:* = §§pop();
            var _loc9_:§2!;§ = Currency.softSpent;
            §§push(_loc8_);
            if(_loc12_)
            {
               §§push(§§pop() - int(Save.§@!A§().get(_loc9_.§=-§,int(_loc9_.§ -§))));
               if(!_loc13_)
               {
                  §§push(int(§§pop()));
               }
            }
            var _loc10_:* = §§pop();
            var _loc11_:§2!;§ = Currency.softFromOffers;
            loop5:
            while(true)
            {
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc3_);
                     if(_loc12_)
                     {
                        §§push(_loc10_);
                        if(!_loc13_)
                        {
                           §§push(§§pop() + int(Save.§@!A§().get(_loc11_.§=-§,int(_loc11_.§ -§))));
                           if(_loc13_)
                           {
                              break;
                           }
                        }
                        if(§§pop() > §§pop())
                        {
                           §]u§.§@!A§().§5B§(§#C§.§@!A§(),true);
                           break loop5;
                        }
                        if(!_loc12_)
                        {
                           continue loop9;
                        }
                        §!!4§(§%!C§[_loc2_]);
                        while(true)
                        {
                           if(_loc12_)
                           {
                              §1q§ = param1;
                              if(!_loc12_)
                              {
                                 break;
                              }
                           }
                           §]e§ = false;
                           if(!_loc13_)
                           {
                              break;
                           }
                           break loop5;
                        }
                     }
                     §§push(0);
                     break;
                  }
                  if(§§pop() != §§pop())
                  {
                     break loop5;
                  }
                  continue loop9;
               }
               loop8:
               while(true)
               {
                  loop9:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(Save.§@!A§());
                        §§push("preferRespawningAs");
                        if(!_loc13_)
                        {
                           §§push(§0!L§);
                           if(!_loc12_)
                           {
                              break;
                           }
                           if(§§pop() <= 0)
                           {
                              §§push("");
                              break loop9;
                           }
                           if(_loc13_)
                           {
                              break loop8;
                           }
                        }
                        §§push(Std.string(§0!L§));
                        if(!_loc13_)
                        {
                           §§push(§§pop());
                        }
                        break loop9;
                     }
                     §§goto(addr027e);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc13_)
                  {
                     §§push(§§pop());
                  }
                  break;
               }
               addr027e:
               §§pop().§1!R§(§§pop(),_loc2_);
               if(_loc13_)
               {
               }
               break;
            }
            return;
         }
      }
      
      public function reset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               §1q§ = null;
               if(_loc1_)
               {
                  break;
               }
            }
            §]e§ = false;
            break;
         }
      }
      
      public function §,!&§(param1:§?P§) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         param1.§;!+§(false);
         if(_loc2_)
         {
            param1.§@F§();
         }
      }
      
      public function §4!"§() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = null as §?P§;
         §§push(0);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:Vector.<§?P§> = §%!C§;
         while(true)
         {
            if(!_loc4_)
            {
               while(_loc1_ < int(_loc2_.length))
               {
                  _loc3_ = _loc2_[_loc1_];
                  if(!_loc4_)
                  {
                     _loc1_++;
                     if(!_loc5_)
                     {
                        continue;
                     }
                  }
                  layout.§%X§(new §?y§(_loc3_.§6!B§));
               }
               if(!_loc5_)
               {
                  break;
               }
            }
            § ]§.§3!,§();
            break;
         }
      }
      
      override public function §8G§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               super.§8G§(param1);
               if(!_loc3_)
               {
                  break;
               }
            }
            Lib.get_current().stage.removeEventListener(MouseEvent.CLICK,hide);
            break;
         }
      }
      
      public function §&!%§(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(param1.target == this)
            {
               if(_loc2_)
               {
                  §§push(§§findproperty(§^<§));
                  §§push(Context3DUtils.§"[§ == null);
                  if(!_loc3_)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().§^<§(§§pop());
               }
            }
         }
      }
      
      public function §9!P§(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      public function §"!`§(param1:CharacterDef, param2:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(_loc4_)
            {
               param2.stopImmediatePropagation();
               if(_loc3_)
               {
                  break;
               }
            }
            §'k§(param1);
            break;
         }
      }
      
      override public function §3%§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.§3%§(param1);
            if(!_loc2_)
            {
               stage.addEventListener(MouseEvent.CLICK,hide);
            }
         }
      }
      
      public function §!!4§(param1:§?P§) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            param1.§;!+§(true);
            if(_loc2_)
            {
               param1.§&!Q§(4,0,13311,2.4,0);
               if(!_loc3_)
               {
                  §+!J§.§+!>§(param1.x + param1.width / 2);
               }
            }
         }
      }
      
      public function hide(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               if(§]u§.§@!A§().§>_§ < 0.6)
               {
                  break;
               }
               if(_loc3_)
               {
                  break;
               }
            }
            visible = false;
            break;
         }
      }
      
      public function §=!V§() : Boolean
      {
         return false;
      }
      
      override public function §^g§() : void
      {
         var xButton:Shape;
         var _gthis:§7%§;
         §§push(false);
         var _loc17_:Boolean = true;
         var _loc18_:* = §§pop();
         var _loc8_:* = null as CharacterDef;
         var _loc9_:* = null as §?P§;
         if(_loc17_)
         {
            _gthis = this;
         }
         var _loc1_:§ 7§ = new §?y§(this);
         var _loc2_:§&d§ = §&d§.§;`§();
         if(!_loc18_)
         {
            while(true)
            {
               if(_loc2_ == null)
               {
                  if(_loc18_)
                  {
                     break;
                  }
                  §§push(§&d§.§1$§());
               }
               else
               {
                  §§push(_loc2_);
               }
               §§pop().add(_loc1_,new §30§(true,0.9));
               break;
            }
         }
         _loc1_ = new §?y§(this);
         _loc2_ = §&d§.§;`§();
         loop2:
         while(true)
         {
            while(true)
            {
               if(_loc17_)
               {
                  if(_loc2_ != null)
                  {
                     §§push(_loc2_);
                     break;
                  }
                  if(_loc18_)
                  {
                     break loop2;
                  }
               }
               §§push(§&d§.§1$§());
               break;
            }
            §§pop().add(_loc1_,new §4$§(true,0.5));
            break;
         }
         while(true)
         {
            §§push(§4!"§);
            if(_loc17_)
            {
               §§push(§§pop());
               if(_loc18_)
               {
                  break;
               }
            }
            §§push(§§pop());
            break;
         }
         var _loc3_:* = §§pop();
         if(!_loc18_)
         {
            layout.§6"§.push(new §#!7§(null,null,new §#!6§(_loc3_)));
         }
         var _loc4_:Vector.<§?P§> = new Vector.<§?P§>(0,false);
         if(!_loc18_)
         {
            §%!C§ = _loc4_;
            while(true)
            {
               if(!_loc18_)
               {
                  §+!J§ = new §&l§(100,100);
                  if(!_loc18_)
                  {
                     §+!J§.addEventListener(MouseEvent.CLICK,§9!P§);
                     if(_loc18_)
                     {
                        break;
                     }
                  }
               }
               addChild(§+!J§);
               break;
            }
         }
         var _loc5_:§?P§ = null;
         §§push(0);
         if(!_loc18_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<CharacterDef> = CharacterRegistry.available;
         while(true)
         {
            if(_loc17_)
            {
               loop0:
               for(; _loc6_ < int(_loc7_.length); _loc5_ = _loc9_)
               {
                  _loc8_ = _loc7_[_loc6_];
                  while(true)
                  {
                     if(_loc17_)
                     {
                        _loc6_++;
                        if(!_loc18_)
                        {
                           if(_loc8_ != CharacterRegistry.lizard)
                           {
                              §§push(§§findproperty(§?P§));
                              §§push(_loc8_);
                              §§push(global);
                              §§push([_loc8_]);
                              §§push(§"!`§);
                              if(_loc17_)
                              {
                                 §§push(§§pop());
                              }
                              _loc9_ = new §§pop().§?P§(§§pop(),§§pop()(§§pop(),null));
                              break;
                           }
                        }
                     }
                     §§push(§§findproperty(§0!5§));
                     §§push(global);
                     §§push([_loc8_]);
                     §§push(§"!`§);
                     if(_loc17_)
                     {
                        §§push(§§pop());
                     }
                     _loc9_ = new §§pop().§0!5§(§§pop()(§§pop(),null));
                     if(!_loc18_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  layout.remove(new §?y§(_loc9_));
                  if(!_loc18_)
                  {
                     §%!C§.push(_loc9_);
                     if(_loc18_)
                     {
                        continue;
                     }
                  }
                  §+!J§.addChild(_loc9_);
               }
               if(!_loc18_)
               {
                  §[!B§ = new LineLayout2D(0,0);
                  if(!_loc17_)
                  {
                     break;
                  }
                  § ]§ = new § B§(§[!B§,true,false,§+!J§);
                  if(!_loc17_)
                  {
                     break;
                  }
               }
            }
            § ]§.§3!,§();
            break;
         }
         _loc1_ = new §?y§(§+!J§);
         if(!_loc18_)
         {
            §&d§.§1$§().add(_loc1_,new §@$§(true,32));
         }
         _loc1_ = new §?y§(§+!J§);
         var _loc10_:§ 7§ = new §?y§(§%!C§[0]);
         if(_loc17_)
         {
            §&d§.§1$§().add(_loc1_,new §@$§(false,0),_loc10_);
         }
         _loc1_ = new §?y§(§+!J§);
         while(true)
         {
            if(_loc17_)
            {
               §&d§.§1$§().add(_loc1_,new §4$§(true,0.5));
               if(!_loc17_)
               {
                  break;
               }
            }
            §8;§ = §&!;§.§9Q§(0,32,null,"xyzzy",100,null,null,null,"center");
            break;
         }
         var _loc11_:TextField = §8;§;
         var _loc12_:* = null;
         loop9:
         while(true)
         {
            while(true)
            {
               if(!_loc18_)
               {
                  if(_loc12_ != null)
                  {
                     break;
                  }
                  if(_loc18_)
                  {
                     break loop9;
                  }
               }
               _loc12_ = int(Number(_loc11_.defaultTextFormat.size));
               break;
            }
            §&d§.§1$§().add(new §?y§(_loc11_),new §=!]§(int(_loc12_)));
            break;
         }
         _loc1_ = new §?y§(§8;§);
         _loc10_ = new §?y§(§+!J§);
         if(!_loc18_)
         {
            §&d§.§1$§().add(_loc1_,new §@$§(true,0),_loc10_);
         }
         _loc1_ = new §?y§(§8;§);
         if(_loc17_)
         {
            §&d§.§1$§().add(_loc1_,new §4$§(true,0.5));
         }
         _loc1_ = new §?y§(§8;§);
         while(true)
         {
            if(!_loc18_)
            {
               §&d§.§1$§().add(_loc1_,new §;!!§(40,§2u§.TOP));
               if(_loc18_)
               {
                  break;
               }
            }
            addChild(§8;§);
            break;
         }
         _loc1_ = new §?y§(§+!J§);
         _loc10_ = new §?y§(§8;§);
         while(true)
         {
            if(!_loc18_)
            {
               §&d§.§1$§().add(_loc1_,new §+X§(0,§2u§.BOTTOM),_loc10_);
               if(_loc18_)
               {
                  break;
               }
            }
            §!1§(null,new §?y§(§+!J§),40);
            if(!_loc18_)
            {
               layout.add(new §?y§(this),new §4$§(false,0.5),new §4o§(§&d§.§;`§().§&#§));
            }
            break;
         }
         var _loc13_:Shape = new Shape();
         §§push(3.2);
         if(_loc17_)
         {
            §§push(Number(§§pop()));
         }
         var _loc14_:* = §§pop();
         var _loc15_:§<!T§ = new §<!T§(null,28);
         while(true)
         {
            if(!_loc18_)
            {
               _loc15_.fill = §^F§.SOLID(16777215);
               _loc15_.§=M§ = 13421772;
               if(_loc17_)
               {
                  _loc15_.§4#§ = _loc14_;
                  if(!_loc17_)
                  {
                     break;
                  }
                  layout.add(new §?y§(_loc13_),_loc15_);
               }
            }
            addChildAt(_loc13_,0);
            xButton = new Shape();
            break;
         }
         layout.add(new §?y§(xButton),new §@U§());
         if(_loc17_)
         {
            layout.§6"§.push(new §#!7§(null,null,new §#!6§(function():void
            {
               var _temp_1:* = true;
               var _loc2_:Boolean = false;
               var _loc3_:Boolean = _temp_1;
               var _loc1_:§'A§ = _gthis.layout.§&#§;
               if(_loc3_)
               {
                  xButton.x = _loc1_.x + _loc1_.width;
               }
            })));
         }
         var _loc16_:§'A§ = _gthis.layout.§&#§;
         while(true)
         {
            if(!_loc18_)
            {
               xButton.x = _loc16_.x + _loc16_.width;
               if(!_loc17_)
               {
                  break;
               }
            }
            addChild(xButton);
            break;
         }
      }
      
      public function §^<§(param1:Boolean) : void
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
                           loop7:
                           while(true)
                           {
                              §§push(false);
                              if(_loc3_)
                              {
                                 loop8:
                                 while(true)
                                 {
                                    §§push(param1);
                                    if(!_loc2_)
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc2_)
                                             {
                                                break;
                                             }
                                             §§pop();
                                             if(!_loc3_)
                                             {
                                                break loop1;
                                             }
                                             §§push(§&!5§);
                                             if(!_loc2_)
                                             {
                                                §§push(§§pop());
                                             }
                                             §§push(§§pop() == null);
                                             if(!_loc3_)
                                             {
                                                break loop0;
                                             }
                                             §§push(!§§pop());
                                             if(_loc2_)
                                             {
                                                break loop8;
                                             }
                                             §§push(Boolean(§§pop()));
                                             if(_loc2_)
                                             {
                                                break loop7;
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             §&!5§();
                                             if(_loc2_)
                                             {
                                                break loop6;
                                             }
                                          }
                                          §§push(false);
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          break loop5;
                                       }
                                       §§push(false);
                                       if(_loc2_)
                                       {
                                          break loop4;
                                       }
                                    }
                                    if(§"0§ == 0)
                                    {
                                       if(!_loc2_)
                                       {
                                          §§pop();
                                          break;
                                       }
                                       break loop3;
                                    }
                                    break loop4;
                                 }
                              }
                              §§push(§4!%§ < 0);
                              if(!_loc2_)
                              {
                                 break loop3;
                              }
                              break loop4;
                           }
                           §§goto(addr00ae);
                        }
                        §§push(param1);
                        break loop0;
                     }
                     §§pop();
                     if(!_loc2_)
                     {
                        break loop6;
                     }
                     §§goto(addr0106);
                  }
                  if(§§pop())
                  {
                     break loop5;
                  }
                  §§goto(addr00ae);
               }
               §§push(Boolean(§§pop()));
               break loop4;
            }
            §]e§ = false;
            visible = false;
            §§goto(addr0106);
         }
         addr00ae:
         while(true)
         {
            if(Boolean(§§pop()))
            {
               Save.§@!A§().§1!R§("preferRespawningAs",null);
               if(!_loc3_)
               {
                  break;
               }
            }
            §7A§ = null;
            if(_loc3_)
            {
               §&!5§ = null;
            }
            §1q§ = null;
            if(_loc3_)
            {
               break loop1;
            }
            break;
         }
         addr0106:
      }
      
      public function §7!4§(param1:int) : int
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc5_:* = 0;
         §§push(0);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param1);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop1:
         while(true)
         {
            if(_loc6_)
            {
               loop0:
               while(true)
               {
                  §§push(_loc3_);
                  if(!_loc6_)
                  {
                     break loop1;
                  }
                  if(§§pop() < _loc4_)
                  {
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!_loc7_)
                        {
                           _loc3_++;
                           if(_loc7_)
                           {
                              break;
                           }
                           §§push(int(§§pop()));
                           if(_loc6_)
                           {
                              _loc5_ = §§pop();
                              if(_loc7_)
                              {
                                 continue loop0;
                              }
                              §§push(_loc2_);
                              if(_loc7_)
                              {
                                 break;
                              }
                           }
                        }
                        §§push(§=!Z§(_loc5_));
                        if(_loc6_)
                        {
                           §§push(int(§§pop()));
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc7_)
                        {
                           §§push(int(§§pop()));
                        }
                        break;
                     }
                     _loc2_ = §§pop();
                     continue;
                  }
               }
            }
            return _loc2_;
         }
         return §§pop();
      }
      
      public function §=!Z§(param1:int) : int
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:* = 0;
         §§push(int(Math.round(Number(§ u§(param1)))));
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc4_:§]k§ = §7%§.§`!-§;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc6_)
                  {
                     if(!Boolean(Save.§@!A§().get(_loc4_.§=-§,Boolean(_loc4_.§ -§))))
                     {
                        §§push(0);
                        if(!_loc6_)
                        {
                           §§push(int(§§pop()));
                           if(!_loc6_)
                           {
                              break;
                           }
                        }
                        break loop1;
                     }
                     if(!_loc5_)
                     {
                        break loop0;
                     }
                  }
                  §§push(10);
                  if(!_loc6_)
                  {
                     §§push(int(§§pop()));
                     if(!_loc6_)
                     {
                        _loc3_ = §§pop();
                        if(_loc6_)
                        {
                        }
                        break loop0;
                     }
                     break;
                  }
                  break loop1;
               }
               _loc3_ = §§pop();
               break loop0;
            }
            return §§pop();
         }
         §§push(_loc2_);
         if(_loc5_)
         {
            §§push(§§pop() - _loc3_);
         }
         break loop1;
      }
   }
}

