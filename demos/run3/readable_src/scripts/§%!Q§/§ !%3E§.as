package §%!Q§
{
   import §!!"§.§-m§;
   import §!!$§.§ 6§;
   import §!!X§.§`Q§;
   import §!D§.§0!M§;
   import §!D§.§1!&§;
   import map.Map;
   import map.§9u§;
   import map.Path;
   import §%!Z§.§&!S§;
   import §%!Z§.§'§;
   import §%!Z§.§^U§;
   import layout3d.§>N§;
   import scenes.§+Z§;
   import scenes.ComingThrough;
   import scenes.CrossingTheGap;
   import scenes.Cutscenes;
   import scenes.HeavySleeper;
   import scenes.Insanity;
   import scenes.PlanetMissing;
   import §4!8§.§[!!§;
   import §4n§.Achievements;
   import §6!Q§.§'!E§;
   import §6!Q§.§'[§;
   import §6!Q§.§<!T§;
   import §6!Q§.§]u§;
   import §6!Q§.§^F§;
   import §>d§.§#l§;
   import §@s§.§,%§;
   import §`!7§.§`!3§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§38§;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.api.§<,§;
   import com.player03.run3.api.GlobalEventManager;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.character.§]!W§;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.level.§59§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.level.trigger.§<!§;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.menu.§;!G§;
   import com.player03.run3.menu.§[!<§;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§0!#§;
   import com.player03.run3.save.§0!?§;
   import com.player03.run3.save.§2!;§;
   import com.player03.run3.save.§4!^§;
   import com.player03.run3.save.§9t§;
   import com.player03.run3.save.§]k§;
   import flash.Boot;
   import flash.display.Bitmap;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   import haxeutils.math.§`w§;
   
   public class § !>§ implements §1!&§
   {
      
      public static var §,!Q§:int = 2;
      
      public var unlockPoint:int;
      
      public var unlockPath:§ !>§;
      
      public var §3K§:Number;
      
      public var startCutscene:String;
      
      public var §0!R§:§-Q§;
      
      public var §^J§:§9t§;
      
      public var pathName:String;
      
      public var §&q§:Number;
      
      public var §#!@§:Path;
      
      public var levels:Vector.<int>;
      
      public var levelCount:int;
      
      public var extraParams:Object;
      
      public var §6!O§:Number;
      
      public var endCutscene:String;
      
      public var §,&§:String;
      
      public var continuesFrom:§ !>§;
      
      public var §^Y§:§,%§;
      
      public var availableUntil:int;
      
      public var available:Boolean;
      
      public var altEntryPoint:§,%§;
      
      public var §6+§:int;
      
      public var §74§:String;
      
      public function § !>§(param1:String, param2:§0!M§ = undefined, param3:Array = undefined, param4:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc6_:* = 0;
         var _loc7_:* = null as Vector.<String>;
         var _loc8_:* = null as String;
         var _loc9_:* = 0;
         if(param4 == null)
         {
            param4 = true;
         }
         §6!O§ = 1;
         §&q§ = 0.5;
         loop3:
         while(true)
         {
            while(true)
            {
               if(_loc11_)
               {
                  §3K§ = 0;
                  §74§ = null;
                  if(!_loc11_)
                  {
                     break;
                  }
                  §,&§ = "Level ";
                  if(_loc10_)
                  {
                     break loop3;
                  }
                  unlockPath = null;
               }
               unlockPoint = 0;
               break;
            }
            available = false;
            break;
         }
         var _loc5_:Vector.<int> = new Vector.<int>(0,false);
         levels = _loc5_;
         loop5:
         while(true)
         {
            if(_loc11_)
            {
               if(param2 != null)
               {
                  if(!_loc10_)
                  {
                     loop6:
                     while(true)
                     {
                        §§push(0);
                        if(_loc11_)
                        {
                           while(true)
                           {
                              §§push(int(§§pop()));
                              if(!_loc10_)
                              {
                                 _loc6_ = §§pop();
                                 if(!_loc10_)
                                 {
                                    _loc7_ = param2.§ '§;
                                    while(_loc6_ < int(_loc7_.length))
                                    {
                                       while(true)
                                       {
                                          §§push(_loc7_[_loc6_]);
                                          if(!_loc10_)
                                          {
                                             §§push(§§pop());
                                             if(!_loc11_)
                                             {
                                                break;
                                             }
                                          }
                                          §§push(§§pop());
                                          break;
                                       }
                                       _loc8_ = §§pop();
                                       if(!_loc10_)
                                       {
                                          _loc6_++;
                                          if(_loc10_)
                                          {
                                             continue;
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(§59§.§,<§(_loc8_));
                                          if(!_loc10_)
                                          {
                                             §§push(int(§§pop()));
                                             if(!_loc11_)
                                             {
                                                break;
                                             }
                                          }
                                          §§push(int(§§pop()));
                                          break;
                                       }
                                       _loc9_ = §§pop();
                                       if(_loc11_)
                                       {
                                          §=e§.§ '§.§1!R§(_loc9_,_loc8_);
                                          if(!_loc10_)
                                          {
                                             levels.push(_loc9_);
                                          }
                                       }
                                    }
                                    if(_loc11_)
                                    {
                                       break loop5;
                                    }
                                    §§goto(addr0277);
                                 }
                                 addr0180:
                                 §§push(0);
                                 if(_loc10_)
                                 {
                                    break;
                                 }
                              }
                              §§push(int(§§pop()));
                              if(_loc11_)
                              {
                                 break;
                              }
                              break loop6;
                           }
                        }
                        _loc6_ = §§pop();
                        if(!_loc11_)
                        {
                           break loop5;
                        }
                     }
                     while(true)
                     {
                        if(§§pop() >= int(param3.length))
                        {
                           break loop5;
                        }
                        §§push(int(param3[_loc6_]));
                        if(!_loc10_)
                        {
                           §§push(int(§§pop()));
                        }
                        _loc9_ = §§pop();
                        if(_loc11_)
                        {
                           _loc6_++;
                           if(!_loc10_)
                           {
                              levels.push(_loc9_);
                           }
                        }
                     }
                     break;
                     addr01c6:
                  }
               }
               else
               {
                  if(param3 == null)
                  {
                     break;
                  }
                  if(!_loc10_)
                  {
                     §§goto(addr0180);
                  }
               }
            }
            while(true)
            {
               §§goto(addr01c6);
            }
         }
         pathName = param1;
         §§push(§§findproperty(levelCount));
         §§push(levels.length);
         if(_loc11_)
         {
            §§push(int(§§pop()));
         }
         §§pop().levelCount = §§pop();
         if(param4)
         {
            §§push(§§findproperty(§0!R§));
            §§push(§§findproperty(§-Q§));
            §§push("explore");
            if(!_loc10_)
            {
               §§push(§§pop() + param1);
               if(_loc11_)
               {
                  §§push(§§pop());
               }
            }
            §§push(0);
            §§push(§-Q§.§"!8§);
            if(!_loc10_)
            {
               §§push(§§pop());
            }
            §§pop().§0!R§ = new §§pop().§-Q§(§§pop(),§§pop(),§§pop());
            while(true)
            {
               if(_loc11_)
               {
                  while(true)
                  {
                     §§push(§§findproperty(§^J§));
                     §§push(§§findproperty(§9t§));
                     §§push("exploreCurrent");
                     if(_loc11_)
                     {
                        §§push(§§pop() + param1);
                        if(_loc10_)
                        {
                           break;
                        }
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§pop().§^J§ = new §§pop().§9t§(§§pop());
                  if(!_loc11_)
                  {
                     break;
                  }
               }
               if(param1 == "wormholeCrossing")
               {
                  if(_loc11_)
                  {
                     break;
                  }
               }
            }
            §0!R§.§?F§(levelCount);
         }
         addr0277:
      }
      
      public function §-%§(param1:Boolean) : Boolean
      {
         §§push(false);
         var _loc22_:Boolean = true;
         var _loc23_:* = §§pop();
         var _loc2_:* = false;
         var _loc3_:* = null as § !>§;
         var _loc4_:* = null as §-Q§;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = null as PlanetMissing;
         var _loc8_:* = null as §]k§;
         var _loc9_:* = null as Insanity;
         var _loc10_:* = null as CrossingTheGap;
         var _loc11_:* = false;
         var _loc12_:* = null as § !>§;
         var _loc13_:* = null as §-Q§;
         var _loc14_:* = 0;
         var _loc15_:* = 0;
         var _loc16_:* = null as § !>§;
         var _loc17_:* = null as §-Q§;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:* = null as §&r§;
         var _loc21_:* = null as §2!;§;
         §§push(param1);
         if(!_loc23_)
         {
            §§push(!§§pop());
         }
         if(§§pop())
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     if(this == §>K§.§3p§)
                     {
                        _loc3_ = §>K§.§2s§;
                        _loc4_ = _loc3_.§0!R§;
                        loop3:
                        while(true)
                        {
                           if(!_loc23_)
                           {
                              _loc5_ = int(Save.§@!A§().get(_loc4_.§=-§,int(_loc4_.§ -§)));
                              if(_loc23_)
                              {
                                 break;
                              }
                           }
                           while(true)
                           {
                              §§push(_loc3_.levelCount);
                              if(_loc22_)
                              {
                                 _loc6_ = §§pop();
                                 if(_loc23_)
                                 {
                                    break loop3;
                                 }
                                 §§push(_loc5_);
                                 §§push(_loc6_);
                                 if(!_loc22_)
                                 {
                                    break;
                                 }
                                 if(§§pop() < §§pop())
                                 {
                                    if(!_loc23_)
                                    {
                                       break loop3;
                                    }
                                    break loop0;
                                 }
                                 §§push(_loc6_);
                              }
                              addr00f6:
                              §§push(_loc3_.levelCount);
                              break;
                           }
                           §§push(§§pop() >= §§pop());
                           if(_loc23_)
                           {
                              break loop2;
                           }
                           §§push(Boolean(§§pop()));
                           if(!_loc22_)
                           {
                              break loop1;
                           }
                           _loc2_ = §§pop();
                           if(!_loc22_)
                           {
                              break loop0;
                           }
                        }
                        §§push(_loc5_);
                        if(_loc23_)
                        {
                        }
                        §§goto(addr00f6);
                     }
                     else
                     {
                        §§push(false);
                        if(!_loc22_)
                        {
                           §§goto(addr020a);
                        }
                        _loc2_ = §§pop();
                     }
                     §§push(_loc2_);
                     if(_loc22_)
                     {
                        if(§§pop())
                        {
                           break loop0;
                        }
                        §§push(false);
                     }
                     break loop1;
                  }
                  §§goto(addr0133);
               }
               return §§pop();
            }
            §§push(true);
            if(_loc22_)
            {
               addr0133:
               return §§pop();
            }
            break loop1;
         }
         if(this != §>K§.§>y§)
         {
            if(this == §>K§.§;!4§)
            {
               if(_loc22_)
               {
                  _loc9_ = Cutscenes.§?2§();
                  if(!_loc23_)
                  {
                     if(_loc9_.§?^§ == null)
                     {
                        return false;
                     }
                  }
                  _loc8_ = _loc9_.§?^§;
                  return Boolean(Save.§@!A§().get(_loc8_.§=-§,Boolean(_loc8_.§ -§)));
               }
            }
            else if(this == §>K§.§^!T§)
            {
               if(CharacterRegistry.child.§<!,§())
               {
                  return true;
               }
               addr020a:
               return Boolean(§§pop());
               §§push(CharacterRegistry.duplicator.§<!,§());
            }
            else if(this != §>K§.§6-§)
            {
               if(this == §>K§.§]0§)
               {
                  _loc3_ = §>K§.§>=§;
                  _loc4_ = _loc3_.§0!R§;
                  loop5:
                  while(true)
                  {
                     if(!_loc23_)
                     {
                        _loc5_ = int(Save.§@!A§().get(_loc4_.§=-§,int(_loc4_.§ -§)));
                        if(_loc22_)
                        {
                           _loc6_ = _loc3_.levelCount;
                           loop6:
                           while(true)
                           {
                              while(true)
                              {
                                 if(_loc22_)
                                 {
                                    §§push(_loc5_);
                                    §§push(_loc6_);
                                    if(!_loc22_)
                                    {
                                       break;
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       §§push(_loc6_);
                                       break loop6;
                                    }
                                    if(_loc23_)
                                    {
                                       break loop5;
                                    }
                                 }
                                 §§push(_loc5_);
                                 if(_loc22_)
                                 {
                                 }
                                 break loop6;
                              }
                              if(§§pop() < §§pop())
                              {
                                 §§push(false);
                                 if(!_loc23_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 _loc11_ = §§pop();
                                 break loop5;
                              }
                              if(!_loc22_)
                              {
                                 break loop5;
                              }
                           }
                           §§push(_loc3_.levelCount);
                           break loop7;
                        }
                     }
                     _loc12_ = §>K§.§`S§;
                     _loc13_ = _loc12_.§0!R§;
                     loop8:
                     while(true)
                     {
                        loop9:
                        while(true)
                        {
                           while(true)
                           {
                              if(_loc22_)
                              {
                                 §§push(int(Save.§@!A§().get(_loc13_.§=-§,int(_loc13_.§ -§))));
                                 if(!_loc22_)
                                 {
                                    break;
                                 }
                                 §§push(int(§§pop()));
                                 if(!_loc22_)
                                 {
                                    break loop9;
                                 }
                                 _loc14_ = §§pop();
                                 if(_loc23_)
                                 {
                                    break loop8;
                                 }
                              }
                              §§push(_loc12_.levelCount);
                              if(!_loc23_)
                              {
                                 break;
                              }
                              break loop9;
                           }
                           §§push(int(§§pop()));
                           if(!_loc23_)
                           {
                              _loc15_ = §§pop();
                              if(!_loc22_)
                              {
                                 break loop8;
                              }
                              §§push(_loc14_);
                              if(!_loc23_)
                              {
                                 break;
                              }
                           }
                           §§goto(addr0374);
                        }
                        §§push(_loc15_);
                        if(_loc22_)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc23_)
                              {
                                 break;
                              }
                              §§push(_loc14_);
                           }
                           else
                           {
                              §§push(_loc15_);
                           }
                           addr0374:
                           §§push(_loc12_.levelCount);
                        }
                        if(§§pop() < §§pop())
                        {
                           if(!_loc23_)
                           {
                              break;
                           }
                           break loop5;
                        }
                        §§push(true);
                        if(_loc22_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        _loc11_ = §§pop();
                        break loop5;
                     }
                     _loc16_ = §>K§.§;!4§;
                     _loc17_ = _loc16_.§0!R§;
                     while(true)
                     {
                        §§push(int(Save.§@!A§().get(_loc17_.§=-§,int(_loc17_.§ -§))));
                        if(_loc22_)
                        {
                           _loc18_ = §§pop();
                           if(!_loc23_)
                           {
                              _loc19_ = _loc16_.levelCount;
                           }
                           §§push(_loc18_);
                           §§push(_loc19_);
                           if(!_loc22_)
                           {
                              break;
                           }
                           if(§§pop() < §§pop())
                           {
                              if(_loc23_)
                              {
                                 break loop5;
                              }
                              §§push(_loc18_);
                              if(_loc23_)
                              {
                              }
                           }
                           else
                           {
                              §§push(_loc19_);
                           }
                        }
                        §§push(_loc16_.levelCount);
                        break;
                     }
                     while(true)
                     {
                        while(true)
                        {
                           §§push(§§pop() >= §§pop());
                           if(!_loc23_)
                           {
                              _loc11_ = §§pop();
                              break loop5;
                           }
                           §§goto(addr0430);
                        }
                        addr044a:
                        §§push(§>K§.§`S§.§'m§(3));
                        if(!_loc23_)
                        {
                           §§push(Boolean(§§pop()));
                           break;
                        }
                        §§goto(addr0462);
                     }
                     return §§pop();
                  }
                  if(_loc11_)
                  {
                     while(true)
                     {
                        if(!_loc23_)
                        {
                           §§push(§>K§.§>-§.§'m§(6));
                           if(!_loc22_)
                           {
                              break loop11;
                           }
                           addr0430:
                           _loc2_ = Boolean(§§pop());
                           addr0445:
                           if(_loc2_)
                           {
                              break loop12;
                           }
                           addr0462:
                           addr0462:
                           return false;
                           §§push(Boolean(§§pop()));
                        }
                        §§goto(addr044a);
                     }
                  }
                  else
                  {
                     §§push(false);
                     if(!_loc23_)
                     {
                        _loc2_ = Boolean(§§pop());
                        while(true)
                        {
                           if(_loc22_)
                           {
                              §§goto(addr0445);
                           }
                           §§goto(addr044a);
                        }
                     }
                  }
                  §§goto(addr0462);
               }
               else
               {
                  if(this == §>K§.home0)
                  {
                     _loc20_ = §&r§.§@!A§();
                     _loc21_ = §&r§.§,U§;
                     return int(Save.§@!A§().get(_loc21_.§=-§,int(_loc21_.§ -§))) >= int(_loc20_.§;I§.length);
                  }
                  if(this == §>K§.§1k§)
                  {
                     if(_loc22_)
                     {
                        _loc20_ = §&r§.§@!A§();
                        _loc21_ = §&r§.§,U§;
                        if(_loc22_)
                        {
                           if(int(Save.§@!A§().get(_loc21_.§=-§,int(_loc21_.§ -§))) < int(_loc20_.§;I§.length))
                           {
                              return false;
                           }
                        }
                        _loc10_ = Cutscenes.§->§();
                        if(_loc22_)
                        {
                           if(_loc10_.§?^§ == null)
                           {
                              return false;
                           }
                        }
                        _loc8_ = _loc10_.§?^§;
                        return Boolean(Save.§@!A§().get(_loc8_.§=-§,Boolean(_loc8_.§ -§)));
                     }
                  }
                  else if(this != §>K§.§4>§)
                  {
                     §§goto(addr0659);
                  }
                  _loc3_ = §>K§.§1k§;
                  _loc4_ = _loc3_.§0!R§;
                  while(true)
                  {
                     loop17:
                     while(true)
                     {
                        while(true)
                        {
                           if(!_loc23_)
                           {
                              §§push(int(Save.§@!A§().get(_loc4_.§=-§,int(_loc4_.§ -§))));
                              if(!_loc23_)
                              {
                                 §§push(int(§§pop()));
                              }
                              _loc5_ = §§pop();
                              if(_loc22_)
                              {
                                 _loc6_ = _loc3_.levelCount;
                                 if(_loc23_)
                                 {
                                    continue loop18;
                                 }
                              }
                              §§push(_loc5_);
                              §§push(_loc6_);
                              if(_loc23_)
                              {
                                 break;
                              }
                              if(§§pop() >= §§pop())
                              {
                                 §§push(_loc6_);
                                 break loop17;
                              }
                              if(_loc23_)
                              {
                                 continue loop18;
                              }
                           }
                           §§push(_loc5_);
                           if(_loc22_)
                           {
                           }
                           break loop17;
                        }
                        if(§§pop() < §§pop())
                        {
                           return false;
                        }
                        continue loop18;
                     }
                     §§push(_loc3_.levelCount);
                     break loop20;
                  }
                  _loc12_ = §>K§.§1b§;
                  _loc13_ = _loc12_.§0!R§;
                  loop18:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc23_)
                        {
                           §§push(int(Save.§@!A§().get(_loc13_.§=-§,int(_loc13_.§ -§))));
                           if(_loc23_)
                           {
                              break;
                           }
                           §§push(int(§§pop()));
                           if(_loc22_)
                           {
                              _loc14_ = §§pop();
                              if(_loc23_)
                              {
                                 break loop18;
                              }
                              §§push(_loc12_.levelCount);
                           }
                           _loc15_ = §§pop();
                           if(!_loc22_)
                           {
                              break loop18;
                           }
                        }
                        §§push(_loc14_);
                        if(_loc22_)
                        {
                           break;
                        }
                        §§goto(addr064b);
                     }
                     §§push(_loc15_);
                     if(_loc22_)
                     {
                        if(§§pop() < §§pop())
                        {
                           break;
                        }
                        §§goto(addr064b);
                        §§push(_loc15_);
                     }
                     §§goto(addr0650);
                  }
                  §§push(_loc14_);
                  if(_loc23_)
                  {
                  }
                  addr0650:
                  return §§pop() >= _loc12_.levelCount;
                  addr064b:
               }
            }
            _loc10_ = Cutscenes.§->§();
            if(!_loc23_)
            {
               if(_loc10_.§?^§ == null)
               {
                  return false;
               }
            }
            _loc8_ = _loc10_.§?^§;
            return Boolean(Save.§@!A§().get(_loc8_.§=-§,Boolean(_loc8_.§ -§)));
         }
         _loc7_ = Cutscenes.§5!H§();
         if(_loc22_)
         {
            if(_loc7_.§?^§ == null)
            {
               return false;
            }
         }
         _loc8_ = _loc7_.§?^§;
         §§push(Boolean(Save.§@!A§().get(_loc8_.§=-§,Boolean(_loc8_.§ -§))));
         if(!_loc23_)
         {
            return §§pop();
         }
         addr0659:
         return true;
         §§goto(addr020a);
      }
      
      public function §2!>§(param1:Boolean) : Boolean
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(§0!R§ == null)
         {
            §§push(false);
            if(_loc4_)
            {
               return §§pop();
            }
         }
         else
         {
            §§push(param1);
         }
         if(§§pop())
         {
            §§push(§0!R§);
            §§push(§`w§.max);
            if(!_loc3_)
            {
               §§push(§§pop());
            }
            §§pop().§9m§ = §§pop();
            if(§0!R§.§;!U§ == null)
            {
               §>K§.§@!A§().§]"§.§4Z§(§0!R§);
            }
         }
         else
         {
            §0!R§.§9m§ = null;
         }
         §§push(§§findproperty(available));
         §§push(param1);
         if(_loc4_)
         {
            §§push(Boolean(§§pop()));
         }
         return §§pop().available = §§pop();
      }
      
      public function §%!;§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(§^Y§ != null)
         {
            if(!_loc1_)
            {
               § L§.low = 714317;
               §§push(!_loc1_);
            }
         }
      }
      
      public function §5!D§(param1:Level) : void
      {
         §6!a§.§@!A§().§]!M§(param1);
      }
      
      public function §31§(param1:int, param2:TunnelSection) : void
      {
         var victoryZ:Number;
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            if(param2.tunnel.§5§ == §,a§.EXPLORE)
            {
               var _loc3_:§9t§ = §^J§;
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
                           §§push(int(Save.§@!A§().get(_loc3_.§=-§,int(_loc3_.§ -§))));
                           if(_loc4_)
                           {
                              §§push(availableUntil);
                              if(_loc5_)
                              {
                                 break;
                              }
                              if(§§pop() > §§pop())
                              {
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       Save.forceVisitMap.§?F§(true);
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       param2.tunnel.dispose();
                                       if(!_loc4_)
                                       {
                                          break loop0;
                                       }
                                    }
                                    if(Main.instance.tunnel == param2.tunnel)
                                    {
                                       break;
                                    }
                                    §§goto(addr00b2);
                                 }
                                 Main.instance.§,Z§(null);
                                 addr00b2:
                                 return;
                              }
                              §§push(false);
                              if(!_loc4_)
                              {
                                 break loop1;
                              }
                              while(true)
                              {
                                 §§push(false);
                                 if(_loc4_)
                                 {
                                    §§push(param2.tunnel.victoryCondition);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop());
                                    }
                                    if(§§pop() == null)
                                    {
                                       if(_loc4_)
                                       {
                                          §§pop();
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          §§push(param1 == availableUntil);
                                          if(!_loc5_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    break loop1;
                                 }
                                 break loop2;
                              }
                              §§pop();
                              if(!_loc4_)
                              {
                                 break loop0;
                              }
                              §§push(availableUntil);
                           }
                           §§push(levelCount);
                           break;
                        }
                        §§push(§§pop() < §§pop());
                        if(!_loc5_)
                        {
                           break loop1;
                        }
                        break;
                     }
                     if(§§pop())
                     {
                        victoryZ = param2.endZ;
                        if(!_loc5_)
                        {
                           param2.tunnel.victoryCondition = function(param1:CharacterBase):Boolean
                           {
                              return param1.transform.position.z >= victoryZ;
                           };
                        }
                     }
                     break loop0;
                  }
                  §§push(Boolean(§§pop()));
                  break loop2;
               }
               return;
            }
         }
      }
      
      public function §%!U§(param1:int, param2:TunnelSection, param3:int) : void
      {
         §§push(false);
         var _loc26_:Boolean = true;
         var _loc27_:* = §§pop();
         var _loc7_:* = false;
         var _loc11_:* = false;
         var _loc12_:* = null as §]u§;
         var _loc13_:* = null as Sprite;
         var _loc14_:* = null;
         var _loc15_:* = null as String;
         var _loc16_:* = null as § !>§;
         var _loc17_:* = null as CharacterDef;
         var _loc18_:* = null;
         var _loc19_:* = null as §9'§;
         var _loc20_:* = null as §-Q§;
         var _loc21_:* = 0;
         var _loc22_:* = 0;
         var _loc23_:* = null as StringMap;
         var _loc24_:* = 0;
         var _loc25_:* = null as §+Z§;
         if(_loc26_)
         {
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  while(true)
                  {
                     if(param2.tunnel.§5§ != §,a§.EXPLORE)
                     {
                        if(_loc26_)
                        {
                           §§goto(addr0080);
                        }
                     }
                     else if(!param2.tunnel.backwards)
                     {
                        §§push(param1);
                        if(!_loc27_)
                        {
                           break;
                        }
                        break loop2;
                     }
                     §§push(param1);
                     if(!_loc26_)
                     {
                        break loop2;
                     }
                     §§push(1);
                     if(_loc27_)
                     {
                        break loop3;
                     }
                     §§push(§§pop() - §§pop());
                     if(_loc27_)
                     {
                        break;
                     }
                     §§goto(addr00b9);
                  }
                  §§push(1);
                  break;
               }
               §§push(§§pop() + §§pop());
               if(!_loc27_)
               {
                  addr00b9:
                  §§push(int(§§pop()));
               }
               break;
            }
            var _loc4_:* = §§pop();
            loop4:
            while(true)
            {
               if(_loc26_)
               {
                  while(true)
                  {
                     §§push(false);
                     if(!_loc27_)
                     {
                        if(_loc4_ < 0)
                        {
                           break;
                        }
                        if(_loc27_)
                        {
                           break;
                        }
                     }
                     §§pop();
                     if(_loc26_)
                     {
                        §§push(_loc4_);
                        if(_loc26_)
                        {
                           §§push(§§pop() < levelCount);
                           if(_loc26_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           break;
                        }
                        break loop4;
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc26_)
                     {
                        §^J§.§?F§(_loc4_);
                     }
                  }
               }
               §§push(param2.id);
               if(!_loc27_)
               {
                  break;
               }
               addr011a:
               var _loc5_:* = §§pop();
               §§push(false);
               if(_loc26_)
               {
                  §§push(Boolean(§§pop()));
               }
               var _loc6_:* = §§pop();
               var _loc8_:§-Q§ = §0!R§;
               §§push(int(Save.§@!A§().get(_loc8_.§=-§,int(_loc8_.§ -§))));
               if(_loc26_)
               {
                  §§push(int(§§pop()));
               }
               var _loc9_:* = §§pop();
               §§push(levelCount);
               if(_loc26_)
               {
                  §§push(int(§§pop()));
               }
               var _loc10_:* = §§pop();
               loop6:
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     loop13:
                     while(true)
                     {
                        §§push(param1);
                        §§push(_loc9_);
                        if(!_loc27_)
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
                                    loop20:
                                    while(true)
                                    {
                                       loop23:
                                       while(true)
                                       {
                                          loop24:
                                          while(true)
                                          {
                                             if(§§pop() < _loc10_)
                                             {
                                                §§push(_loc9_);
                                                if(_loc27_)
                                                {
                                                }
                                                loop25:
                                                while(true)
                                                {
                                                   loop26:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            if(!_loc26_)
                                                            {
                                                               break;
                                                            }
                                                            if(altEntryPoint != null)
                                                            {
                                                               §§push(!altEntryPoint.§'m§(_loc4_));
                                                               if(!_loc26_)
                                                               {
                                                                  break loop26;
                                                               }
                                                               _loc7_ = §§pop();
                                                            }
                                                            else
                                                            {
                                                               §§push(true);
                                                               if(_loc27_)
                                                               {
                                                                  break loop23;
                                                               }
                                                               _loc7_ = Boolean(§§pop());
                                                               if(_loc27_)
                                                               {
                                                                  break loop25;
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            _loc7_ = false;
                                                         }
                                                         §§push(_loc7_);
                                                         if(_loc27_)
                                                         {
                                                            break loop20;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            §§push(true);
                                                            if(_loc27_)
                                                            {
                                                               break loop20;
                                                            }
                                                            _loc6_ = §§pop();
                                                            if(altEntryPoint != null && altEntryPoint.§'m§(param1))
                                                            {
                                                               if(!_loc27_)
                                                               {
                                                                  altEntryPoint.§5,§(param1,param2.tunnel.backwards);
                                                                  if(!_loc26_)
                                                                  {
                                                                     break loop24;
                                                                  }
                                                                  if(altEntryPoint.§^l§)
                                                                  {
                                                                     altEntryPoint = null;
                                                                     if(!_loc26_)
                                                                     {
                                                                        break loop24;
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr026c:
                                                                  §§push(altEntryPoint.§#!M§());
                                                                  if(!_loc27_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     if(!_loc27_)
                                                                     {
                                                                        break loop26;
                                                                     }
                                                                     continue loop17;
                                                                  }
                                                                  §§goto(addr077e);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(§0!R§);
                                                               §§push(param1);
                                                               if(_loc26_)
                                                               {
                                                                  §§push(§§pop() + 1);
                                                               }
                                                               §§pop().§?F§(§§pop());
                                                               §§push(false);
                                                               if(altEntryPoint != null)
                                                               {
                                                                  §§pop();
                                                                  §§goto(addr026c);
                                                               }
                                                               §§goto(addr0286);
                                                            }
                                                            §§goto(addr02a2);
                                                         }
                                                         §§goto(addr065f);
                                                      }
                                                      altEntryPoint = null;
                                                      while(true)
                                                      {
                                                         if(_loc26_)
                                                         {
                                                            §§goto(addr02a2);
                                                         }
                                                         §§goto(addr0679);
                                                      }
                                                      §§goto(addr0709);
                                                   }
                                                   addr0286:
                                                   if(Boolean(§§pop()))
                                                   {
                                                      if(_loc26_)
                                                      {
                                                         break loop39;
                                                      }
                                                      break loop7;
                                                   }
                                                   addr02a2:
                                                   §0!#§.§@!A§().§,?§();
                                                   while(true)
                                                   {
                                                      if(§#l§.§1g§ != null)
                                                      {
                                                         if(_loc27_)
                                                         {
                                                            continue loop21;
                                                         }
                                                         _loc12_ = §]u§.§@!A§();
                                                         loop41:
                                                         while(true)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(false);
                                                               if(_loc12_.visible)
                                                               {
                                                                  §§pop();
                                                                  if(!_loc26_)
                                                                  {
                                                                     break loop25;
                                                                  }
                                                                  §§push(int(_loc12_.blockingOverlays.length));
                                                                  if(_loc27_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(0);
                                                                  if(!_loc26_)
                                                                  {
                                                                     break loop41;
                                                                  }
                                                                  §§push(§§pop() > §§pop());
                                                               }
                                                               §§push(!§§pop());
                                                               if(!_loc27_)
                                                               {
                                                                  _loc11_ = Boolean(§§pop());
                                                                  while(true)
                                                                  {
                                                                     if(!_loc27_)
                                                                     {
                                                                        break loop25;
                                                                     }
                                                                     §§goto(addr0652);
                                                                  }
                                                                  §§goto(addr065f);
                                                               }
                                                               §§goto(addr0322);
                                                            }
                                                            §§goto(addr0365);
                                                         }
                                                         §§goto(addr0374);
                                                      }
                                                      else
                                                      {
                                                         §§push(false);
                                                         if(_loc27_)
                                                         {
                                                            break loop15;
                                                         }
                                                         _loc11_ = §§pop();
                                                         if(!_loc27_)
                                                         {
                                                            break loop25;
                                                         }
                                                      }
                                                      §§goto(addr0679);
                                                   }
                                                   §§goto(addr0709);
                                                }
                                                addr0322:
                                                while(true)
                                                {
                                                   if(_loc11_)
                                                   {
                                                      if(!_loc26_)
                                                      {
                                                         break;
                                                      }
                                                      _loc13_ = §#l§.§1g§.§^2§(_loc5_);
                                                      if(_loc26_)
                                                      {
                                                         if(_loc13_ != null)
                                                         {
                                                            if(_loc26_)
                                                            {
                                                               §]u§.§@!A§().§5B§(_loc13_);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr0374:
                                                   addr0365:
                                                   §§push(param1);
                                                   §§push(levelCount);
                                                   if(!_loc27_)
                                                   {
                                                      §§push(§§pop() - 1);
                                                   }
                                                   if(§§pop() < §§pop())
                                                   {
                                                      if(_loc27_)
                                                      {
                                                         break;
                                                      }
                                                      _loc14_ = §>K§.§@!A§().§2! §.keys();
                                                      if(_loc26_)
                                                      {
                                                         loop1:
                                                         while(Boolean(_loc14_.hasNext()))
                                                         {
                                                            §§push(_loc14_.next());
                                                            if(!_loc27_)
                                                            {
                                                               §§push(§§pop());
                                                            }
                                                            _loc15_ = §§pop();
                                                            _loc16_ = §>K§.§@!A§().§2! §.get(_loc15_);
                                                            while(true)
                                                            {
                                                               loop29:
                                                               while(true)
                                                               {
                                                                  if(!_loc27_)
                                                                  {
                                                                     §§push(false);
                                                                     §§push(false);
                                                                     if(!_loc27_)
                                                                     {
                                                                        if(_loc16_.unlockPath == this)
                                                                        {
                                                                           if(!_loc27_)
                                                                           {
                                                                              §§pop();
                                                                              §§push(_loc16_.unlockPoint == _loc4_);
                                                                              if(_loc26_)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     if(!§§pop())
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§pop();
                                                                     if(_loc27_)
                                                                     {
                                                                        continue loop30;
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc16_.§-%§(true));
                                                                     if(_loc26_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        if(_loc26_)
                                                                        {
                                                                           break loop29;
                                                                        }
                                                                     }
                                                                     addr04fb:
                                                                     if(§§pop())
                                                                     {
                                                                        break;
                                                                     }
                                                                     _loc17_ = param2.tunnel.characters[0].§!8§;
                                                                     _loc18_ = null;
                                                                     if(!_loc26_)
                                                                     {
                                                                        break loop30;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(false);
                                                                        if(!_loc27_)
                                                                        {
                                                                           if(_loc18_ != null)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!_loc26_)
                                                                           {
                                                                              break;
                                                                           }
                                                                        }
                                                                        §§pop();
                                                                        addr05f6:
                                                                        if(!_loc27_)
                                                                        {
                                                                           §§push(StringTools.§#E§("Was that a new tunnel back there?","-"));
                                                                           if(_loc26_)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              if(_loc27_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                           }
                                                                           §§push(Boolean(§§pop()));
                                                                           break;
                                                                        }
                                                                        §§push(Number(§'!E§.§]Y§("Was that a new tunnel back there?".length)));
                                                                        if(_loc26_)
                                                                        {
                                                                           §§push(§§pop() / 2);
                                                                        }
                                                                        _loc18_ = §§pop();
                                                                        addr0610:
                                                                        §'!E§.§@!A§().§>!W§("Was that a new tunnel back there?",_loc18_,§'[§.§83§(_loc17_));
                                                                        break loop30;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc27_)
                                                                        {
                                                                           break loop30;
                                                                        }
                                                                        §§goto(addr05f6);
                                                                     }
                                                                     §§goto(addr0610);
                                                                  }
                                                                  addr04ff:
                                                                  _loc17_ = CharacterRegistry.§-P§;
                                                                  _loc18_ = null;
                                                                  if(_loc26_)
                                                                  {
                                                                     §§push(false);
                                                                     if(!_loc27_)
                                                                     {
                                                                        if(_loc18_ == null)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(_loc26_)
                                                                              {
                                                                                 §§pop();
                                                                                 if(!_loc26_)
                                                                                 {
                                                                                    break loop30;
                                                                                 }
                                                                                 §§push(StringTools.§#E§("You found a new tunnel? Great job! I\'ll add it to my map.","-"));
                                                                                 if(!_loc26_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(_loc27_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                              }
                                                                              §§push(Boolean(§§pop()));
                                                                              break;
                                                                           }
                                                                        }
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc27_)
                                                                        {
                                                                           break loop30;
                                                                        }
                                                                        §§push(Number(§'!E§.§]Y§("You found a new tunnel? Great job! I\'ll add it to my map.".length)));
                                                                        if(!_loc27_)
                                                                        {
                                                                           §§push(§§pop() / 2);
                                                                        }
                                                                        _loc18_ = §§pop();
                                                                     }
                                                                     §'!E§.§@!A§().§>!W§("You found a new tunnel? Great job! I\'ll add it to my map.",_loc18_,§'[§.§83§(_loc17_));
                                                                  }
                                                                  break loop30;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  continue loop1;
                                                               }
                                                               if(!_loc27_)
                                                               {
                                                                  if(param2.tunnel.characters[0].§!8§.§#!H§ == CharacterRegistry.§-P§.§#!H§)
                                                                  {
                                                                     if(_loc26_)
                                                                     {
                                                                        continue loop30;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr04fb);
                                                                     §§push(param2.§%f§(CharacterRegistry.§-P§));
                                                                  }
                                                               }
                                                               §§goto(addr04ff);
                                                            }
                                                            _loc17_ = param2.tunnel.characters[0].§!8§;
                                                            _loc18_ = null;
                                                            loop30:
                                                            while(true)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc26_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(false);
                                                                        if(!_loc27_)
                                                                        {
                                                                           if(_loc18_ != null)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(_loc26_)
                                                                           {
                                                                              §§pop();
                                                                              if(!_loc26_)
                                                                              {
                                                                                 break loop30;
                                                                              }
                                                                              §§push(StringTools.§#E§("A new tunnel? I\'d better add it to my map.","-"));
                                                                              if(_loc27_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(Boolean(§§pop()));
                                                                              if(_loc27_)
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
                                                                     if(_loc27_)
                                                                     {
                                                                        break loop30;
                                                                     }
                                                                  }
                                                                  §§push(Number(§'!E§.§]Y§("A new tunnel? I\'d better add it to my map.".length)));
                                                                  if(!_loc27_)
                                                                  {
                                                                     §§push(§§pop() / 2);
                                                                  }
                                                                  _loc18_ = §§pop();
                                                                  break;
                                                               }
                                                               §'!E§.§@!A§().§>!W§("A new tunnel? I\'d better add it to my map.",_loc18_,§'[§.§83§(_loc17_));
                                                               if(_loc26_)
                                                               {
                                                                  break;
                                                               }
                                                               break loop1;
                                                            }
                                                            §;!G§.§@!A§().§"!&§ = true;
                                                            break;
                                                         }
                                                      }
                                                   }
                                                   §`Q§.§7!=§(this);
                                                   addr0652:
                                                   §[!!§.§@!A§().§9K§();
                                                   break;
                                                }
                                                addr065f:
                                                §<,§.§;Q§(_loc5_);
                                                if(this == §>K§.§?t§)
                                                {
                                                   if(!_loc26_)
                                                   {
                                                      continue loop21;
                                                   }
                                                   addr0679:
                                                   _loc19_ = §9'§.§@!A§();
                                                   _loc20_ = §0!R§;
                                                   while(true)
                                                   {
                                                      if(_loc26_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(int(Save.§@!A§().get(_loc20_.§=-§,int(_loc20_.§ -§))));
                                                            if(!_loc27_)
                                                            {
                                                               §§push(int(§§pop()));
                                                               if(!_loc26_)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            _loc21_ = §§pop();
                                                            if(_loc26_)
                                                            {
                                                               §§push(levelCount);
                                                               if(!_loc27_)
                                                               {
                                                                  §§push(int(§§pop()));
                                                               }
                                                               break;
                                                            }
                                                         }
                                                         _loc22_ = §§pop();
                                                         if(!_loc26_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc19_.§?!;§);
                                                         §§push("WinterLevelsBeaten");
                                                         if(_loc26_)
                                                         {
                                                            §§push(_loc21_);
                                                            if(!_loc26_)
                                                            {
                                                               break;
                                                            }
                                                            if(§§pop() >= _loc22_)
                                                            {
                                                               §§push(_loc22_);
                                                               break;
                                                            }
                                                         }
                                                         §§push(_loc21_);
                                                         if(_loc26_)
                                                         {
                                                         }
                                                         break;
                                                      }
                                                      §§pop().submit(§§pop(),§§pop());
                                                      break;
                                                   }
                                                }
                                                addr0709:
                                                §§push(false);
                                                if(_loc27_)
                                                {
                                                   break loop20;
                                                }
                                                §§push(_loc6_);
                                                if(!_loc26_)
                                                {
                                                   break loop16;
                                                }
                                                if(!§§pop())
                                                {
                                                   break loop15;
                                                }
                                                §§pop();
                                                §§push(_loc5_);
                                                if(!_loc26_)
                                                {
                                                   break loop6;
                                                }
                                                §§push(2);
                                                if(!_loc26_)
                                                {
                                                   break loop14;
                                                }
                                             }
                                             else
                                             {
                                                §§push(_loc10_);
                                                if(!_loc27_)
                                                {
                                                   continue loop26;
                                                }
                                             }
                                             §§push(§§pop() == §§pop());
                                             if(!_loc27_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                break loop15;
                                             }
                                             break loop20;
                                          }
                                          §§goto(addr07c6);
                                       }
                                       §§goto(addr07d0);
                                    }
                                    §§goto(addr0798);
                                 }
                                 if(§§pop())
                                 {
                                    break loop20;
                                 }
                                 addr077e:
                                 §§pop();
                                 if(_loc27_)
                                 {
                                    break loop13;
                                 }
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(CharacterRegistry.§;<§ == CharacterRegistry.§-P§);
                                       if(_loc26_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          break loop20;
                                       }
                                       §§goto(addr07c5);
                                    }
                                    §§goto(addr07d8);
                                 }
                                 §§goto(addr07d9);
                              }
                              if(§§pop())
                              {
                                 if(!_loc26_)
                                 {
                                    continue loop8;
                                 }
                                 §<,§.§1!K§(true);
                              }
                              loop17:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(false);
                                    §§push(_loc5_);
                                    if(_loc26_)
                                    {
                                       §§push(11);
                                       if(_loc27_)
                                       {
                                          break loop17;
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          §§pop();
                                          if(_loc27_)
                                          {
                                             break loop7;
                                          }
                                          §§push(true);
                                          if(!_loc27_)
                                          {
                                             §§push(_loc6_);
                                             if(_loc26_)
                                             {
                                                break loop16;
                                             }
                                             §§goto(addr07bb);
                                          }
                                          §§goto(addr07d9);
                                       }
                                       if(§§pop())
                                       {
                                          Cutscenes.§@V§().display(1);
                                          break loop13;
                                       }
                                       §§push(false);
                                       §§push(_loc5_);
                                    }
                                    §§push(37);
                                    break loop17;
                                 }
                                 addr07c5:
                                 §§pop();
                                 addr07d0:
                                 addr07c6:
                                 §§push(CharacterRegistry.§;<§ == CharacterRegistry.skater);
                                 if(!_loc27_)
                                 {
                                    §§goto(addr07d8);
                                 }
                                 §§goto(addr07d9);
                              }
                              if(§§pop() == §§pop())
                              {
                                 §§pop();
                                 addr07bb:
                                 while(true)
                                 {
                                    §§push(true);
                                    if(!_loc6_)
                                    {
                                       if(!_loc27_)
                                       {
                                          break loop18;
                                       }
                                       break;
                                    }
                                    addr07d8:
                                    §§push(Boolean(§§pop()));
                                    break;
                                 }
                              }
                              addr07d9:
                              if(§§pop())
                              {
                                 if(!_loc27_)
                                 {
                                    Cutscenes.§4B§().display(1);
                                    if(_loc26_)
                                    {
                                       break loop13;
                                    }
                                 }
                                 continue loop8;
                              }
                              §§push(param1);
                              if(_loc27_)
                              {
                                 break loop6;
                              }
                              §§push(1);
                              if(!_loc27_)
                              {
                                 break;
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc27_)
                           {
                              break loop6;
                           }
                           §§push(levelCount);
                        }
                        if(§§pop() < §§pop())
                        {
                           break;
                        }
                        if(_loc26_)
                        {
                           break loop7;
                        }
                        continue loop8;
                     }
                     §§goto(addr09ac);
                  }
                  §§push(0);
                  if(!_loc27_)
                  {
                     break;
                  }
                  §§goto(addr082b);
               }
               addr082b:
               _loc21_ = int(§§pop());
               _loc23_ = §>K§.§@!A§().§2! §;
               _loc14_ = new §-m§(_loc23_.h,_loc23_.rh);
               loop8:
               while(true)
               {
                  while(true)
                  {
                     if(_loc26_)
                     {
                        loop0:
                        while(Boolean(_loc14_.hasNext()))
                        {
                           _loc16_ = _loc14_.next();
                           _loc20_ = _loc16_.§0!R§;
                           if(!_loc27_)
                           {
                              _loc22_ = int(Save.§@!A§().get(_loc20_.§=-§,int(_loc20_.§ -§)));
                              if(!_loc27_)
                              {
                                 loop11:
                                 while(true)
                                 {
                                    §§push(_loc16_.levelCount);
                                    if(_loc26_)
                                    {
                                       _loc24_ = §§pop();
                                       while(true)
                                       {
                                          if(!_loc27_)
                                          {
                                             §§push(_loc22_);
                                             §§push(_loc24_);
                                             if(_loc27_)
                                             {
                                                break loop11;
                                             }
                                             if(§§pop() >= §§pop())
                                             {
                                                §§push(_loc24_);
                                                break;
                                             }
                                             if(_loc27_)
                                             {
                                                continue loop0;
                                             }
                                          }
                                          §§push(_loc22_);
                                          break;
                                       }
                                    }
                                    §§push(_loc16_.levelCount);
                                    break;
                                 }
                                 if(§§pop() < §§pop())
                                 {
                                    continue;
                                 }
                                 if(!_loc26_)
                                 {
                                    continue;
                                 }
                              }
                              _loc21_++;
                           }
                        }
                        if(_loc26_)
                        {
                           if(_loc21_ >= 4)
                           {
                              Achievements.§3$§.§,Y§();
                           }
                           if(this == §>K§.§?t§)
                           {
                              Achievements.§`!U§.§,Y§();
                           }
                           else if(this == §>K§.§0x§)
                           {
                              Achievements.§ "§.§,Y§();
                              if(_loc27_)
                              {
                                 break loop8;
                              }
                           }
                           else if(this == §>K§.§`S§)
                           {
                              if(!_loc26_)
                              {
                                 break;
                              }
                              Achievements.§7V§.§,Y§();
                           }
                        }
                     }
                     if(endCutscene != null)
                     {
                        if(_loc26_)
                        {
                           break loop8;
                        }
                        break;
                     }
                     §§goto(addr0996);
                  }
                  addr09ac:
                  return;
               }
               _loc25_ = Cutscenes.§3'§(endCutscene);
               while(true)
               {
                  if(_loc26_)
                  {
                     if(_loc25_ == null)
                     {
                        break;
                     }
                     if(_loc27_)
                     {
                        break;
                     }
                  }
                  _loc25_.display(1);
                  break;
               }
               addr0996:
               §[!<§.§@!A§().§4X§(Map.§@!A§());
               break loop9;
            }
            §§goto(addr011a);
         }
         addr0080:
      }
      
      public function §%I§(param1:int, param2:TunnelSection) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc3_:* = null as CharacterDef;
         var _loc4_:* = false;
         var _loc5_:* = null as §-Q§;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         loop0:
         while(true)
         {
            if(_loc9_)
            {
               while(true)
               {
                  if(param2.tunnel.§5§ != §,a§.EXPLORE)
                  {
                     if(!_loc8_)
                     {
                        return;
                     }
                  }
                  else
                  {
                     §^J§.§?F§(param1);
                     Save.currentPath.§?F§(pathName);
                     Save.forceVisitMap.§3X§();
                     if(_loc9_)
                     {
                        §0!#§.§@!A§().§@^§();
                        if(_loc8_)
                        {
                           break;
                        }
                     }
                  }
                  if(param2.tunnel.characters != null)
                  {
                     if(_loc9_)
                     {
                        break;
                     }
                     break loop0;
                  }
                  addr0113:
                  §6!a§.§@!A§().§%X§(param2.tunnel,param2.id);
               }
               _loc3_ = param2.tunnel.characters[0].§!8§;
               loop2:
               while(true)
               {
                  if(_loc9_)
                  {
                     while(true)
                     {
                        if(_loc3_.§[P§ != null)
                        {
                           if(_loc8_)
                           {
                              break;
                           }
                           _loc3_ = _loc3_.§[P§.§@D§[0];
                        }
                        if(_loc3_.§>t§ != null)
                        {
                           if(!_loc8_)
                           {
                              _loc3_.§>t§.§?F§(pathName);
                              if(_loc9_)
                              {
                                 break;
                              }
                           }
                        }
                        break loop2;
                     }
                  }
                  _loc3_.§ j§.§?F§(param1);
                  break;
               }
               §§goto(addr0113);
            }
            if(this != §>K§.§0x§)
            {
               §§push(true);
               if(_loc9_)
               {
                  §§push(Boolean(§§pop()));
               }
               _loc4_ = §§pop();
               break;
            }
            _loc5_ = §0!R§;
            _loc6_ = int(Save.§@!A§().get(_loc5_.§=-§,int(_loc5_.§ -§)));
            while(true)
            {
               if(_loc9_)
               {
                  _loc7_ = levelCount;
                  while(true)
                  {
                     §§push(_loc6_);
                     if(_loc9_)
                     {
                        §§push(_loc7_);
                        if(!_loc9_)
                        {
                           break;
                        }
                        §§push(§§pop() < §§pop() ? _loc6_ : _loc7_);
                     }
                     §§push(10);
                     break;
                  }
                  §§push(§§pop() >= §§pop());
                  if(_loc9_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc9_)
                     {
                        _loc4_ = §§pop();
                        break loop0;
                     }
                  }
                  addr01b1:
                  if(!§§pop())
                  {
                     break;
                  }
                  if(!_loc9_)
                  {
                     break;
                  }
               }
               §]u§.§@!A§().options.§3!_§.§8!§(param2.tunnel);
               if(_loc9_)
               {
                  break;
               }
               §§goto(addr01e1);
            }
            §31§(param1,param2);
            addr01e1:
            return;
         }
         §§goto(addr01b1);
      }
      
      public function §#f§(param1:int) : Boolean
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = null;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc4_)
                  {
                     §§push(false);
                     if(!_loc4_)
                     {
                        break loop1;
                     }
                     if(!available)
                     {
                        break;
                     }
                     if(!_loc4_)
                     {
                        break loop1;
                     }
                     §§pop();
                     if(!_loc4_)
                     {
                        break loop0;
                     }
                  }
                  §§push(§'m§(param1));
                  if(_loc4_)
                  {
                     break loop1;
                  }
                  break;
               }
               if(§§pop())
               {
                  break loop0;
               }
               §§goto(addr00d5);
               §§push(false);
            }
            §§push(Boolean(§§pop()));
            if(!_loc3_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc3_)
               {
                  break loop4;
               }
               addr00d5:
               return §§pop();
            }
            break loop4;
         }
         _loc2_ = null;
         loop2:
         while(true)
         {
            if(!_loc3_)
            {
               while(true)
               {
                  §§push(false);
                  if(param1 > 0)
                  {
                     §§pop();
                     if(!_loc4_)
                     {
                        break;
                     }
                     §§push(§§findproperty(§'m§));
                     §§push(param1);
                     if(_loc4_)
                     {
                        §§push(§§pop() - 1);
                     }
                     §§push(§§pop().§'m§(§§pop()));
                     if(!_loc3_)
                     {
                        §§push(!Boolean(§§pop()));
                        if(!_loc4_)
                        {
                           break loop2;
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        break;
                     }
                     _loc2_ = {"backwards":true};
                  }
                  Main.instance.§#f§(param1,this,null,_loc2_);
                  break;
               }
            }
            return true;
         }
         return §§pop();
      }
      
      public function §<o§() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  §§push(§§findproperty(§-%§));
                  if(_loc2_)
                  {
                     §§push(false);
                     if(!_loc2_)
                     {
                        break;
                     }
                     §§push(unlockPath.§'m§(unlockPoint));
                     if(_loc2_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        break loop1;
                     }
                     §§pop();
                     if(!_loc1_)
                     {
                        §§push(true);
                        if(_loc1_)
                        {
                           break loop0;
                        }
                        if(unlockPoint <= 0)
                        {
                           break loop0;
                        }
                        §§pop();
                     }
                  }
                  §§push(unlockPath);
                  §§push(unlockPoint);
                  if(!_loc1_)
                  {
                     §§push(§§pop() - 1);
                  }
                  §§push(§§pop().§'m§(§§pop()));
                  if(!_loc1_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  break;
               }
               §§push(Boolean(§§pop()));
               if(_loc2_)
               {
                  break loop0;
               }
               break;
            }
            §§push(§§pop().§-%§(§§pop()));
            if(_loc2_)
            {
               return Boolean(§§pop());
            }
         }
         §§push(Boolean(§§pop()));
         break loop1;
      }
      
      public function §#u§(param1:int) : Boolean
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:§-Q§ = §0!R§;
         §§push(int(Save.§@!A§().get(_loc2_.§=-§,int(_loc2_.§ -§))));
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(levelCount);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc6_)
                  {
                     §§push(_loc3_);
                     if(!_loc6_)
                     {
                        break loop1;
                     }
                     §§push(_loc4_);
                     if(!_loc6_)
                     {
                        break;
                     }
                     if(§§pop() < §§pop())
                     {
                        if(_loc5_)
                        {
                           break loop0;
                        }
                     }
                     else
                     {
                        §§push(_loc4_);
                        if(!_loc5_)
                        {
                           break loop1;
                        }
                        §§goto(addr00a6);
                     }
                  }
                  §§push(_loc3_);
                  if(_loc6_)
                  {
                  }
                  break loop1;
               }
               §§goto(addr00b6);
            }
            §§push(param1);
            if(!_loc5_)
            {
               if(§§pop() >= §§pop())
               {
                  break;
               }
               §§goto(addr00bf);
               §§push(false);
            }
            §§goto(addr00b3);
         }
         addr00a6:
         addr00b6:
         §§push(param1);
         §§push(availableUntil);
         if(!_loc5_)
         {
            addr00b3:
            §§push(§§pop() + 1);
         }
         §§push(§§pop() == §§pop());
         if(!_loc5_)
         {
            return §§pop();
         }
         addr00bf:
         return §§pop();
      }
      
      public function §'m§(param1:int, param2:Object = undefined) : Boolean
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc3_:* = false;
         var _loc4_:* = null as §-Q§;
         var _loc5_:int = 0;
         var _loc6_:* = 0;
         if(param2 == null)
         {
            param2 = false;
         }
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
                     loop11:
                     while(true)
                     {
                        §§push(param1);
                        if(_loc8_)
                        {
                           §§push(0);
                           if(_loc7_)
                           {
                              break loop3;
                           }
                           if(§§pop() <= §§pop())
                           {
                              if(!_loc7_)
                              {
                                 return true;
                              }
                              continue loop6;
                           }
                           while(true)
                           {
                              §§push(true);
                              if(!_loc7_)
                              {
                                 §§push(available);
                                 if(_loc8_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(§§pop())
                                 {
                                    break loop2;
                                 }
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                              }
                              §§pop();
                              if(_loc8_)
                              {
                                 §§push(false);
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 break loop1;
                              }
                              break loop11;
                           }
                           if(param1 <= availableUntil)
                           {
                              break loop1;
                           }
                           if(_loc7_)
                           {
                              break loop0;
                           }
                           §§pop();
                           §§push(availableUntil);
                        }
                        §§push(levelCount);
                        if(_loc8_)
                        {
                           break loop3;
                        }
                        §§goto(addr00a8);
                     }
                     §§goto(addr00bb);
                  }
                  addr00a8:
                  §§push(§§pop() < §§pop() - 1);
                  if(!_loc7_)
                  {
                     break loop1;
                  }
                  break;
               }
               if(§§pop())
               {
                  addr00bb:
                  §§push(false);
                  break loop0;
               }
               loop4:
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     if(param2)
                     {
                        _loc4_ = §0!R§;
                        loop6:
                        while(true)
                        {
                           while(true)
                           {
                              if(!_loc7_)
                              {
                                 _loc5_ = int(Save.§@!A§().get(_loc4_.§=-§,int(_loc4_.§ -§)));
                                 §§push(levelCount);
                                 if(_loc7_)
                                 {
                                    break loop6;
                                 }
                                 _loc6_ = §§pop();
                                 if(_loc8_)
                                 {
                                    §§push(_loc5_);
                                    if(!_loc8_)
                                    {
                                       break loop6;
                                    }
                                    §§push(_loc6_);
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       §§push(_loc6_);
                                       break loop6;
                                    }
                                    if(!_loc8_)
                                    {
                                       break loop4;
                                    }
                                 }
                              }
                              §§push(_loc5_);
                              if(_loc8_)
                              {
                              }
                              break loop6;
                           }
                           §§push(§§pop() > §§pop());
                           if(_loc7_)
                           {
                              break loop5;
                           }
                           _loc3_ = Boolean(§§pop());
                           if(!_loc8_)
                           {
                              break loop4;
                           }
                        }
                        §§push(param1);
                        break loop7;
                     }
                     _loc4_ = §0!R§;
                     if(_loc8_)
                     {
                        _loc5_ = int(Save.§@!A§().get(_loc4_.§=-§,int(_loc4_.§ -§)));
                        loop8:
                        while(true)
                        {
                           loop9:
                           while(true)
                           {
                              while(true)
                              {
                                 if(!_loc7_)
                                 {
                                    §§push(levelCount);
                                    if(_loc7_)
                                    {
                                       break loop9;
                                    }
                                    §§push(int(§§pop()));
                                    if(!_loc8_)
                                    {
                                       break loop9;
                                    }
                                    _loc6_ = §§pop();
                                    if(!_loc8_)
                                    {
                                       break loop8;
                                    }
                                    §§push(_loc5_);
                                    §§push(_loc6_);
                                    if(!_loc8_)
                                    {
                                       break;
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       §§push(_loc6_);
                                       break loop9;
                                    }
                                    if(_loc7_)
                                    {
                                       break loop8;
                                    }
                                 }
                                 §§push(_loc5_);
                                 break loop9;
                              }
                              §§push(§§pop() >= §§pop());
                              if(_loc8_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              _loc3_ = §§pop();
                              break loop8;
                           }
                           §§push(param1);
                           break loop10;
                        }
                     }
                     break loop8;
                  }
                  §§push(Boolean(§§pop()));
                  if(_loc8_)
                  {
                     return §§pop();
                  }
                  §§goto(addr0219);
               }
               §§push(altEntryPoint.§2!2§());
               if(!_loc7_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(§§pop())
               {
                  §§push(altEntryPoint.§'m§(param1,param2));
                  break loop5;
               }
               addr0219:
               return false;
            }
            §§push(Boolean(§§pop()));
            if(_loc8_)
            {
               break loop2;
            }
            break;
         }
         return §§pop();
      }
      
      public function init(param1:§0!M§) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc4_:* = null as String;
         var _loc5_:* = 0;
         var _loc6_:* = null as Vector.<int>;
         var _loc7_:* = null;
         var _loc8_:* = null as String;
         var _loc2_:* = JSON.parse(param1.§5!O§);
         §§push(_loc2_.unlockPath);
         if(!_loc9_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         unlockPath = §>K§.§@!A§().§2! §.get(_loc3_);
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               if(_loc10_)
               {
                  if(unlockPath != null)
                  {
                     break;
                  }
                  _loc4_ = _loc2_.unlockPath;
                  if(!_loc10_)
                  {
                     break loop1;
                  }
               }
               unlockPath = §>K§.§@!A§().§7j§.get(_loc4_);
               if(unlockPath != null)
               {
                  break;
               }
               loop7:
               while(true)
               {
                  loop8:
                  while(true)
                  {
                     loop14:
                     while(true)
                     {
                        while(true)
                        {
                           if(_loc10_)
                           {
                              unlockPath = §>K§.§0x§;
                              if(!_loc9_)
                              {
                                 break loop2;
                              }
                              addr00db:
                              unlockPoint = _loc2_.unlockPoint;
                              if(!_loc9_)
                              {
                                 addr0115:
                                 if(_loc2_.availableUntil != null)
                                 {
                                    availableUntil = _loc2_.availableUntil;
                                    if(_loc9_)
                                    {
                                       break loop14;
                                    }
                                 }
                                 else
                                 {
                                    §§push(§§findproperty(availableUntil));
                                    §§push(levelCount);
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    §§pop().availableUntil = §§pop();
                                 }
                              }
                              addr014c:
                              §§push(_loc2_.levelData);
                              if(_loc10_)
                              {
                                 §§push(§§pop());
                              }
                              _loc4_ = §§pop();
                              if(!_loc10_)
                              {
                                 break loop8;
                              }
                              if(_loc4_ != null)
                              {
                                 §§push(0);
                                 if(!_loc9_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 _loc5_ = §§pop();
                                 if(!_loc10_)
                                 {
                                    break loop1;
                                 }
                                 _loc6_ = levels;
                                 if(_loc10_)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc5_);
                                       §§push(_loc6_.length);
                                       if(_loc10_)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       if(§§pop() >= §§pop())
                                       {
                                          break;
                                       }
                                       §§push(_loc6_[_loc5_]);
                                       if(_loc10_)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       _loc7_ = §§pop();
                                       if(!_loc9_)
                                       {
                                          _loc5_++;
                                          if(_loc10_)
                                          {
                                             while(true)
                                             {
                                                §§push(§=e§.§ '§.get(int(_loc7_)) + "|");
                                                if(!_loc9_)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc10_)
                                                   {
                                                      §§push(§§pop() + _loc4_);
                                                      if(_loc9_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop());
                                                      if(!_loc10_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                }
                                                §§push(§§pop());
                                                break;
                                             }
                                             _loc8_ = §§pop();
                                             if(_loc9_)
                                             {
                                                continue;
                                             }
                                          }
                                       }
                                       §=e§.§ '§.§1!R§(int(_loc7_),_loc8_);
                                    }
                                 }
                              }
                              if(_loc2_.continuesFrom != null)
                              {
                                 §§push(_loc2_.continuesFrom);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop());
                                 }
                                 _loc8_ = §§pop();
                                 continuesFrom = §>K§.§@!A§().§7j§.get(_loc8_);
                                 if(_loc9_)
                                 {
                                    break loop7;
                                 }
                              }
                              §,&§ = _loc2_.prefix;
                           }
                           §74§ = _loc2_.altPrefix;
                           while(true)
                           {
                              if(_loc2_.altPrefixAfter == null)
                              {
                                 §§push(§§findproperty(§6+§));
                                 §§push(levels.length);
                                 if(!_loc9_)
                                 {
                                    §§push(int(§§pop()));
                                    if(_loc10_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                 }
                                 §§pop().§6+§ = §§pop();
                              }
                              else
                              {
                                 §6+§ = _loc2_.altPrefixAfter;
                                 if(_loc9_)
                                 {
                                    break;
                                 }
                              }
                              startCutscene = _loc2_.startCutscene;
                              endCutscene = _loc2_.endCutscene;
                              break loop7;
                           }
                           §§goto(addr047f);
                        }
                        §§goto(addr031d);
                     }
                     §§goto(addr0371);
                  }
                  §§goto(addr04be);
               }
               if(continuesFrom != null)
               {
                  if(!_loc9_)
                  {
                     §3K§ = continuesFrom.§6!O§;
                  }
               }
               else if(this != §>K§.§0x§)
               {
                  if(!_loc10_)
                  {
                     break loop8;
                  }
                  §§push(§§findproperty(§3K§));
                  §§push(unlockPath.§99§(unlockPoint));
                  if(!_loc9_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§pop().§3K§ = §§pop();
               }
               addr031d:
               while(true)
               {
                  if(_loc2_.timeToReachStart != null)
                  {
                     if(_loc9_)
                     {
                        break;
                     }
                     §§push(§§findproperty(§3K§));
                     §§push(§3K§);
                     if(!_loc9_)
                     {
                        §§push(§§pop() + Number(_loc2_.timeToReachStart));
                        if(_loc10_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     §§pop().§3K§ = §§pop();
                  }
                  else
                  {
                     §§push(§§findproperty(§3K§));
                     §§push(§3K§);
                     if(_loc10_)
                     {
                        §§push(§§pop() + 0.01);
                        if(_loc10_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     §§pop().§3K§ = §§pop();
                  }
                  addr0371:
                  while(true)
                  {
                     §§push(§§findproperty(§6!O§));
                     §§push(§3K§);
                     if(_loc10_)
                     {
                        §§push(§§pop() + Number(_loc2_.timeToReachEnd));
                        if(_loc9_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
                  §§pop().§6!O§ = §§pop();
                  if(!_loc10_)
                  {
                     break loop1;
                  }
                  if(_loc2_.timeToReachMidpoint != null)
                  {
                     if(!_loc9_)
                     {
                        while(true)
                        {
                           §§push(§§findproperty(§&q§));
                           §§push(§3K§);
                           if(!_loc9_)
                           {
                              §§push(§§pop() + Number(_loc2_.timeToReachMidpoint));
                              if(!_loc10_)
                              {
                                 break;
                              }
                           }
                           §§push(Number(§§pop()));
                           break;
                        }
                        §§pop().§&q§ = §§pop();
                     }
                     while(true)
                     {
                        §§push(§§findproperty(§6!O§));
                        §§push(§6!O§);
                        if(_loc10_)
                        {
                           §§push(§§pop() + Number(_loc2_.timeToReachMidpoint));
                           if(!_loc10_)
                           {
                              break;
                           }
                        }
                        §§push(Number(§§pop()));
                        break;
                     }
                     §§pop().§6!O§ = §§pop();
                     break loop1;
                  }
                  while(true)
                  {
                     §§push(§§findproperty(§&q§));
                     §§push(§3K§);
                     if(!_loc9_)
                     {
                        §§push(§§pop() + §6!O§);
                        if(_loc9_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     if(!_loc9_)
                     {
                        break;
                     }
                     addr0415:
                     §§pop().§&q§ = §§pop();
                     if(!_loc9_)
                     {
                        break loop1;
                     }
                     §§goto(addr04b3);
                  }
                  §§goto(addr0415);
               }
               §§goto(addr049c);
            }
            while(true)
            {
               while(true)
               {
                  if(_loc2_.unlockPoint != null)
                  {
                     if(_loc9_)
                     {
                        break;
                     }
                     §§goto(addr00db);
                  }
                  else if(this != §>K§.§0x§)
                  {
                     unlockPoint = unlockPath.levelCount;
                  }
                  else
                  {
                     unlockPoint = 0;
                  }
                  §§goto(addr0115);
               }
               §§goto(addr031d);
            }
            §§goto(addr014c);
         }
         loop3:
         while(true)
         {
            §§push(false);
            if(_loc10_)
            {
               if(_loc2_.altEntryPoint == null)
               {
                  break;
               }
               if(!_loc10_)
               {
                  break;
               }
            }
            §§pop();
            while(true)
            {
               §§push(_loc2_.altEntryPoint > 0);
               if(_loc10_)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc9_)
                  {
                     break loop3;
                  }
               }
               addr0488:
               if(§§pop())
               {
                  if(!_loc9_)
                  {
                     break;
                  }
                  §§goto(addr04be);
               }
               §§goto(addr049c);
            }
            §§goto(addr0492);
         }
         while(true)
         {
            if(§§pop())
            {
               altEntryPoint = new §,%§(this,_loc2_);
               §^Y§ = altEntryPoint;
               while(true)
               {
                  if(_loc10_)
                  {
                     addr047f:
                     §§goto(addr0488);
                     §§push(altEntryPoint.§^l§);
                  }
                  addr0492:
                  altEntryPoint = null;
                  §§goto(addr049c);
               }
               addr049c:
               §§push(GlobalEventManager);
               §§push("saveFileChanged");
               §§push(§%!;§);
               if(!_loc9_)
               {
                  §§push(§§pop());
               }
               §§pop().addEventListener(§§pop(),§§pop());
               §§goto(addr04b3);
            }
            addr04b3:
            extraParams = _loc2_.params;
            §§goto(addr04be);
         }
         addr04be:
      }
      
      public function §#R§() : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:§-Q§ = §0!R§;
         §§push(int(Save.§@!A§().get(_loc1_.§=-§,int(_loc1_.§ -§))));
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(levelCount);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc5_)
               {
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     break loop0;
                  }
                  §§push(_loc3_);
                  if(_loc4_)
                  {
                     break;
                  }
                  if(§§pop() >= §§pop())
                  {
                     §§push(_loc3_);
                     break loop0;
                  }
               }
               §§push(_loc2_);
               if(_loc4_)
               {
               }
               break loop0;
            }
            return §§pop() >= §§pop();
         }
         §§push(levelCount);
         break loop1;
      }
      
      public function §`!R§(param1:int, param2:Point = undefined) : Point
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
                  if(param2 != null)
                  {
                     break;
                  }
                  if(!_loc4_)
                  {
                     break loop0;
                  }
               }
               param2 = new Point(0,0);
               break;
            }
            if(§#!@§ == null)
            {
               if(_loc3_)
               {
                  break;
               }
               §#!@§ = Map.§@!A§().§;O§(pathName);
               if(_loc3_)
               {
                  break;
               }
               if(§#!@§ == null)
               {
                  break;
               }
            }
            return §#!@§.§;3§(param1,false,param2);
         }
         return param2;
      }
      
      public function §]Z§(param1:int) : Number
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc3_)
               {
                  if(§#!@§ != null)
                  {
                     break;
                  }
                  if(!_loc2_)
                  {
                     break loop0;
                  }
               }
               §#!@§ = Map.§@!A§().§;O§(pathName);
               if(!_loc3_)
               {
                  if(§#!@§ == null)
                  {
                     break loop0;
                  }
                  break;
               }
               break loop0;
            }
            §§push(§#!@§.§7Q§(param1));
            if(!_loc3_)
            {
               return Number(§§pop());
            }
         }
         return 0;
      }
      
      public function §,q§(param1:int) : String
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               while(true)
               {
                  §§push(true);
                  if(!_loc2_)
                  {
                     if(param1 < 0)
                     {
                        break;
                     }
                     if(!_loc3_)
                     {
                        break;
                     }
                  }
                  §§pop();
                  if(!_loc2_)
                  {
                     §§push(param1 >= levelCount);
                     if(_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     break;
                  }
               }
               if(!§§pop())
               {
                  §§push(§=e§.§ '§);
                  §§push(levels[param1]);
                  if(!_loc2_)
                  {
                     §§push(int(§§pop()));
                  }
                  §§push(§§pop().get(§§pop()));
                  break;
               }
            }
            §§push(null);
            if(!_loc2_)
            {
               return §§pop();
            }
            break;
         }
         return §§pop();
      }
      
      public function §5i§(param1:int) : String
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc5_:* = null as String;
         var _loc6_:* = false;
         var _loc7_:* = null as §-Q§;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = null as § !>§;
         while(true)
         {
            §§push(§,q§(param1));
            if(_loc12_)
            {
               §§push(§§pop());
               if(_loc11_)
               {
                  break;
               }
            }
            §§push(§§pop());
            break;
         }
         var _loc2_:* = §§pop();
         if(!_loc11_)
         {
            while(true)
            {
               §§push(_loc2_);
               if(_loc12_)
               {
                  if(§§pop() == null)
                  {
                     §§goto(addr0063);
                  }
                  §§push(§59§.§`!S§(_loc2_,"suffix"));
                  if(!_loc11_)
                  {
                     §§push(§§pop());
                     if(!_loc12_)
                     {
                        break;
                     }
                  }
               }
               §§push(§§pop());
               break;
            }
            var _loc3_:* = §§pop();
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  loop18:
                  while(true)
                  {
                     if(_loc12_)
                     {
                        while(true)
                        {
                           §§push(false);
                           if(_loc12_)
                           {
                              if(_loc3_ == null)
                              {
                                 break;
                              }
                              if(!_loc12_)
                              {
                                 break;
                              }
                              §§pop();
                              if(!_loc12_)
                              {
                                 break loop3;
                              }
                              §§push(_loc3_);
                              if(_loc11_)
                              {
                                 break loop18;
                              }
                              §§push(§§pop().length > 0);
                              if(_loc11_)
                              {
                                 break;
                              }
                           }
                           §§push(Boolean(§§pop()));
                           break;
                        }
                        if(!§§pop())
                        {
                           §§push("");
                           if(_loc12_)
                           {
                              §§push(§§pop());
                           }
                           break loop4;
                        }
                        if(_loc11_)
                        {
                           break loop3;
                        }
                     }
                     §§push(":\n");
                     if(_loc12_)
                     {
                        §§push(§§pop() + _loc3_);
                        if(!_loc11_)
                        {
                           §§push(§§pop());
                           if(_loc11_)
                           {
                              break loop4;
                           }
                        }
                        §§push(§§pop());
                        if(_loc12_)
                        {
                           _loc3_ = §§pop();
                           if(_loc11_)
                           {
                           }
                           break loop3;
                        }
                     }
                     break loop4;
                  }
                  §§goto(addr010f);
               }
               _loc3_ = §§pop();
               break;
            }
            while(true)
            {
               §§push(§59§.§`!S§(_loc2_,"title"));
               if(!_loc11_)
               {
                  addr010f:
                  §§push(§§pop());
                  if(_loc11_)
                  {
                     break;
                  }
               }
               §§push(§§pop());
               break;
            }
            var _loc4_:* = §§pop();
            loop6:
            while(true)
            {
               loop7:
               while(true)
               {
                  if(!_loc11_)
                  {
                     §§push(false);
                     if(!_loc12_)
                     {
                        break;
                     }
                     if(_loc4_ == null)
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
                        break loop6;
                     }
                  }
                  §§push(_loc4_);
                  if(!_loc11_)
                  {
                     §§push(§§pop().length > 0);
                     if(!_loc12_)
                     {
                        break;
                     }
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc12_)
                        {
                           break loop7;
                        }
                        addr0217:
                        §§push(Boolean(§§pop()));
                        break;
                     }
                     _loc6_ = §§pop();
                     §§goto(addr021a);
                  }
                  §§goto(addr018d);
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(!_loc12_)
                     {
                        break loop6;
                     }
                     §§push(_loc4_);
                     if(!_loc11_)
                     {
                        §§push(_loc3_);
                        if(_loc11_)
                        {
                           break;
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc11_)
                        {
                           addr0194:
                           §§push(null);
                           break;
                        }
                     }
                     addr018d:
                     return §§pop();
                  }
                  §§push(§74§);
                  §§goto(addr0194);
               }
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     if(_loc12_)
                     {
                        break loop6;
                     }
                  }
                  else
                  {
                     §§push(false);
                     if(_loc12_)
                     {
                        §§goto(addr0217);
                     }
                     §§goto(addr0218);
                  }
                  §§goto(addr021a);
               }
               §§goto(addr021c);
            }
            _loc7_ = §0!R§;
            §§push(int(Save.§@!A§().get(_loc7_.§=-§,int(_loc7_.§ -§))));
            if(!_loc11_)
            {
               §§push(int(§§pop()));
               if(!_loc11_)
               {
                  _loc8_ = §§pop();
                  §§push(levelCount);
               }
               §§push(int(§§pop()));
            }
            _loc9_ = §§pop();
            while(true)
            {
               §§push(_loc8_);
               if(!_loc11_)
               {
                  §§push(_loc9_);
                  if(_loc11_)
                  {
                     break;
                  }
                  §§push(§§pop() < §§pop() ? _loc8_ : _loc9_);
               }
               §§push(§6+§);
               break;
            }
            while(true)
            {
               §§push(§§pop() > §§pop());
               if(_loc12_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc11_)
                  {
                     break;
                  }
               }
               _loc6_ = §§pop();
               addr021a:
               §§push(_loc6_);
               break;
            }
            addr021c:
            loop10:
            while(true)
            {
               if(§§pop())
               {
                  _loc5_ = §74§;
                  if(_loc11_)
                  {
                  }
                  addr0245:
                  if(continuesFrom == null)
                  {
                     break;
                  }
               }
               else
               {
                  _loc5_ = §,&§;
                  if(_loc12_)
                  {
                     §§goto(addr0245);
                  }
               }
               _loc10_ = continuesFrom;
               if(!_loc11_)
               {
                  while(true)
                  {
                     loop11:
                     while(true)
                     {
                        loop12:
                        while(true)
                        {
                           §§push(false);
                           if(_loc12_)
                           {
                              loop13:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(false);
                                    if(!_loc11_)
                                    {
                                       if(_loc10_ == null)
                                       {
                                          break;
                                       }
                                       if(_loc11_)
                                       {
                                          break loop13;
                                       }
                                    }
                                    §§pop();
                                    if(!_loc11_)
                                    {
                                       §§push(_loc10_.available);
                                       if(_loc12_)
                                       {
                                          break loop13;
                                       }
                                       break;
                                    }
                                 }
                                 if(!§§pop())
                                 {
                                    break loop12;
                                 }
                                 if(_loc12_)
                                 {
                                    §§pop();
                                    if(!_loc12_)
                                    {
                                       break loop10;
                                    }
                                    §§push(_loc10_.§<o§());
                                    if(!_loc12_)
                                    {
                                       break loop11;
                                    }
                                 }
                              }
                              §§push(Boolean(§§pop()));
                              break loop14;
                           }
                           §§push(Boolean(§§pop()));
                           if(!_loc11_)
                           {
                              break loop11;
                           }
                           break;
                        }
                        if(!§§pop())
                        {
                           break loop10;
                        }
                        §§push(param1);
                        if(!_loc11_)
                        {
                           §§push(§§pop() + _loc10_.levelCount);
                           if(_loc12_)
                           {
                              §§push(int(§§pop()));
                           }
                        }
                        param1 = §§pop();
                        _loc10_ = _loc10_.continuesFrom;
                     }
                     §§push(Boolean(§§pop()));
                     break loop12;
                  }
               }
               break;
            }
            break loop0;
         }
         addr0063:
         return "";
      }
      
      public function §99§(param1:Object = undefined) : Number
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = NaN;
         while(true)
         {
            if(!_loc5_)
            {
               if(param1 != null)
               {
                  break;
               }
            }
            §§push(0);
            if(_loc4_)
            {
               param1 = §§pop();
               break;
            }
            §§goto(addr003e);
         }
         §§push(levelCount);
         if(!_loc5_)
         {
            addr003e:
            while(true)
            {
               §§push(§§pop() >> 1);
               if(!_loc5_)
               {
                  §§push(int(§§pop()));
                  if(_loc5_)
                  {
                     break;
                  }
               }
               §§push(int(§§pop()));
               break;
            }
            var _loc2_:* = §§pop();
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
                        while(true)
                        {
                           if(_loc4_)
                           {
                              if(param1 == 0)
                              {
                                 if(!_loc5_)
                                 {
                                    return §3K§;
                                 }
                              }
                              else if(param1 <= _loc2_)
                              {
                                 if(_loc4_)
                                 {
                                    §§push(§3K§);
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    §§push(Number(§§pop()));
                                    if(!_loc4_)
                                    {
                                       break loop5;
                                    }
                                    _loc3_ = §§pop();
                                    if(_loc5_)
                                    {
                                       addr00ee:
                                       §§push(_loc3_);
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       break loop2;
                                    }
                                 }
                                 §§push(_loc3_);
                                 §§push(param1 / _loc2_);
                                 if(_loc5_)
                                 {
                                    break loop4;
                                 }
                                 while(true)
                                 {
                                    §§push(§&q§);
                                    if(_loc4_)
                                    {
                                       §§push(_loc3_);
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop() - §§pop());
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc4_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!_loc5_)
                                             {
                                                return §§pop();
                                             }
                                             break loop5;
                                          }
                                          break loop4;
                                       }
                                    }
                                    §§goto(addr012d);
                                 }
                                 §§goto(addr012e);
                              }
                              else
                              {
                                 §§push(§&q§);
                                 if(_loc5_)
                                 {
                                    break loop2;
                                 }
                                 §§push(Number(§§pop()));
                                 if(!_loc4_)
                                 {
                                    break loop2;
                                 }
                                 _loc3_ = §§pop();
                              }
                           }
                           §§goto(addr00ee);
                        }
                        §§push(param1 - _loc2_);
                        if(!_loc5_)
                        {
                           break loop4;
                        }
                        break loop3;
                     }
                     §§goto(addr0137);
                  }
                  §§push(levelCount);
                  if(!_loc5_)
                  {
                     §§push(§§pop() - _loc2_);
                  }
                  §§push(§§pop() / §§pop());
                  if(!_loc5_)
                  {
                     break;
                  }
                  §§goto(addr0130);
               }
               addr0130:
               §§push(§6!O§);
               if(_loc4_)
               {
                  addr012d:
                  addr012e:
                  §§push(§§pop() - _loc3_);
               }
               §§push(§§pop() + §§pop() * §§pop());
               if(!_loc5_)
               {
                  addr0137:
                  return Number(§§pop());
               }
               break;
            }
            return §§pop();
         }
         continue loop5;
      }
   }
}

