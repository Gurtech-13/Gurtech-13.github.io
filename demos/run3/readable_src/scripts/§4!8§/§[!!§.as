package §4!8§
{
   import § 0§.§>!0§;
   import §!!$§.§ 6§;
   import §!D§.§0!M§;
   import map.Map;
   import §"!L§.§%z§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§6!a§;
   import §%!Q§.§=e§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §'!W§.§&!A§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §-!!§.§2!B§;
   import scenes.§#M§;
   import scenes.§+Z§;
   import scenes.Cutscenes;
   import §4n§.§>!,§;
   import §4n§.Achievement;
   import §4n§.Achievements;
   import §6!Q§.§'!E§;
   import §6!Q§.§'[§;
   import §>!O§.§ 3§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.Save;
   import com.player03.run3.api.GlobalEventManager;
   import com.player03.run3.api.PlayFabAPI;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.§59§;
   import com.player03.run3.level.trigger.§<!§;
   import com.player03.run3.level.trigger.BeatLevelAndSave;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§2!,§;
   import com.player03.run3.save.§]k§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.net.SharedObject;
   import format.§&b§;
   import haxe.§%!-§;
   import haxe.§=!U§;
   import haxe.ds.IntMap;
   import haxe.ds.StringMap;
   import openfl.Assets;
   
   public class §[!!§ implements §+<§
   {
      
      public static var instance:§[!!§;
      
      public var §`I§:Boolean;
      
      public var §,!X§:Array;
      
      public var §2$§:Array;
      
      public function §[!!§()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §`I§ = true;
         § L§.high = 787804;
         while(true)
         {
            if(_loc1_)
            {
               §1!3§.save = SharedObject.getLocal("CloudData");
               §2$§ = [];
               §,!X§ = [];
               §9!,§({
                  "path":"localContent.json",
                  "type":0
               },false);
               if(_loc1_)
               {
                  §9K§();
                  §2$§ = [];
                  if(_loc2_)
                  {
                     break;
                  }
               }
            }
            §,!X§ = [];
            §9!,§({
               "path":"content.json",
               "type":0
            },false);
            if(_loc1_)
            {
               break;
            }
            §§goto(addr00b4);
         }
         §9K§();
         addr00b4:
      }
      
      public static function §7!@§(param1:Array, param2:Boolean) : void
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc3_:* = null as §'!E§;
         var _loc4_:* = null as §3!I§;
         var _loc5_:* = null as §3!I§;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = null;
         var _loc9_:* = null as CharacterDef;
         var _loc10_:* = null as String;
         var _loc11_:* = null;
         if(!_loc13_)
         {
            loop3:
            while(true)
            {
               if(param2)
               {
                  if(!_loc12_)
                  {
                     break;
                  }
                  _loc3_ = §'!E§.§@!A§();
                  while(true)
                  {
                     §§push(§=B§);
                     §§push(int(_loc3_.§6a§.length));
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
                  _loc4_ = §§pop().§@W§(§§pop(),§§pop(),-1);
                  if(_loc12_)
                  {
                     loop0:
                     while(_loc4_.§#1§ != _loc4_.end)
                     {
                        _loc5_ = _loc4_;
                        if(_loc12_)
                        {
                           loop5:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(_loc5_);
                                 §§push(_loc5_.§#1§);
                                 if(!_loc13_)
                                 {
                                    §§push(_loc4_.§['§);
                                    if(!_loc12_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc13_)
                                    {
                                       break loop5;
                                    }
                                 }
                                 §§push(int(§§pop()));
                                 if(!_loc13_)
                                 {
                                    break loop5;
                                 }
                                 addr00d1:
                                 §§pop().§#1§ = §§pop();
                                 if(_loc12_)
                                 {
                                    §§push(_loc7_);
                                    if(_loc12_)
                                    {
                                       §§push(int(§§pop()));
                                    }
                                    _loc6_ = §§pop();
                                    if(_loc13_)
                                    {
                                       continue loop0;
                                    }
                                 }
                              }
                              _loc7_ = §§pop();
                              §§goto(addr00d1);
                           }
                           var _temp_1:* = §§pop();
                           §§push(_temp_1);
                           §§push(_temp_1);
                           break loop6;
                        }
                        _loc3_.§6a§[_loc6_].hide();
                     }
                  }
               }
               loop7:
               while(true)
               {
                  §§push(0);
                  if(_loc12_)
                  {
                     §§push(int(§§pop()));
                     if(_loc13_)
                     {
                        break;
                     }
                  }
                  _loc6_ = §§pop();
                  if(!_loc12_)
                  {
                     break loop3;
                  }
                  while(true)
                  {
                     §§push(_loc6_);
                     break loop7;
                  }
               }
               loop1:
               while(true)
               {
                  if(§§pop() >= int(param1.length))
                  {
                     break loop3;
                  }
                  _loc8_ = param1[_loc6_];
                  if(_loc12_)
                  {
                     _loc6_++;
                     while(true)
                     {
                        if(!_loc13_)
                        {
                           if(_loc8_.c == null)
                           {
                              §'!E§.§@!A§().§>!W§(_loc8_.m,_loc8_.s);
                              continue loop1;
                           }
                           if(!_loc12_)
                           {
                              break;
                           }
                        }
                        if(_loc8_.c is String)
                        {
                           if(!_loc13_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           _loc9_ = CharacterRegistry.§&!#§[int(_loc8_.c)];
                           if(_loc12_)
                           {
                              §§push(_loc8_.m);
                              if(_loc12_)
                              {
                                 §§push(§§pop());
                              }
                              _loc10_ = §§pop();
                           }
                           _loc11_ = _loc8_.s;
                           loop9:
                           while(true)
                           {
                              loop10:
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(!_loc13_)
                                    {
                                       §§push(false);
                                       if(_loc13_)
                                       {
                                          break;
                                       }
                                       if(_loc11_ != null)
                                       {
                                          break;
                                       }
                                       if(!_loc12_)
                                       {
                                          break loop10;
                                       }
                                       §§pop();
                                       if(!_loc12_)
                                       {
                                          break loop9;
                                       }
                                    }
                                    §§push(StringTools.§#E§(_loc10_,"-"));
                                    if(_loc12_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc12_)
                                       {
                                          break loop10;
                                       }
                                       break;
                                    }
                                    break loop10;
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc13_)
                                    {
                                       break loop9;
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr02c2);
                              }
                              §§push(Boolean(§§pop()));
                              break loop11;
                           }
                           §§push(Number(§'!E§.§]Y§(_loc10_.length)));
                           if(_loc12_)
                           {
                              §§push(§§pop() / 2);
                           }
                           _loc11_ = §§pop();
                           §'!E§.§@!A§().§>!W§(_loc10_,_loc11_,§'[§.§83§(_loc9_));
                           addr02c2:
                        }
                        continue loop1;
                     }
                  }
                  _loc9_ = CharacterRegistry.§3'§(_loc8_.c);
                  if(_loc12_)
                  {
                     §§push(_loc8_.m);
                     if(_loc12_)
                     {
                        §§push(§§pop());
                     }
                     _loc10_ = §§pop();
                  }
                  _loc11_ = _loc8_.s;
                  if(!_loc13_)
                  {
                     loop12:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(false);
                           if(!_loc13_)
                           {
                              if(_loc11_ != null)
                              {
                                 break;
                              }
                              if(!_loc12_)
                              {
                                 break loop12;
                              }
                           }
                           §§pop();
                           if(_loc12_)
                           {
                              §§push(StringTools.§#E§(_loc10_,"-"));
                              if(_loc12_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc12_)
                                 {
                                    break loop12;
                                 }
                                 break;
                              }
                              break loop12;
                           }
                           addr01ef:
                           §§push(Number(§'!E§.§]Y§(_loc10_.length)));
                           if(_loc12_)
                           {
                              §§push(§§pop() / 2);
                           }
                           _loc11_ = §§pop();
                           addr0207:
                           §'!E§.§@!A§().§>!W§(_loc10_,_loc11_,§'[§.§83§(_loc9_));
                           continue loop1;
                        }
                        if(§§pop())
                        {
                           if(!_loc12_)
                           {
                              continue loop1;
                           }
                           §§goto(addr01ef);
                        }
                        §§goto(addr0207);
                     }
                     §§push(Boolean(§§pop()));
                     break loop13;
                  }
                  §§push(_loc6_);
               }
               break;
            }
         }
      }
      
      public static function §@!A§() : §[!!§
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = null as §[!!§;
         if(!_loc2_)
         {
            if(§[!!§.instance != null)
            {
               return §[!!§.instance;
            }
         }
         return §[!!§.instance = new §[!!§();
      }
      
      public function §9!,§(param1:Object, param2:Object = undefined) : §1!3§
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc3_:* = 0;
         var _loc5_:* = 0;
         var _loc7_:* = null as Array;
         var _loc8_:* = null as §1!3§;
         loop3:
         while(true)
         {
            while(true)
            {
               if(_loc9_)
               {
                  if(param2 != null)
                  {
                     break;
                  }
                  if(!_loc9_)
                  {
                     break loop3;
                  }
               }
               param2 = true;
               break;
            }
            § L§.low = 369491;
            while(true)
            {
               if(!_loc10_)
               {
                  break loop3;
               }
               §§goto(addr005e);
            }
            §§goto(addr006e);
         }
         while(true)
         {
            §§push(0);
            if(!_loc10_)
            {
               §§push(int(§§pop()));
               if(!_loc9_)
               {
                  break;
               }
               _loc3_ = §§pop();
               §§push(int(§,!X§.length));
               if(_loc10_)
               {
                  break;
               }
            }
            §§push(int(§§pop()));
            break;
         }
         addr006e:
         var _loc4_:* = §§pop();
         if(!_loc10_)
         {
            loop0:
            while(_loc3_ < _loc4_)
            {
               §§push(_loc3_);
               if(!_loc10_)
               {
                  _loc3_++;
                  if(_loc9_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc5_ = §§pop();
               loop6:
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc10_)
                        {
                           §§push(§,!X§);
                           if(!_loc9_)
                           {
                              break;
                           }
                           §§push(_loc5_);
                           if(!_loc9_)
                           {
                              break loop7;
                           }
                           if(§§pop()[§§pop()].path != param1.path)
                           {
                              continue loop0;
                           }
                           if(!_loc9_)
                           {
                              break loop6;
                           }
                        }
                        §§push(§,!X§);
                        if(!_loc10_)
                        {
                           §§push(_loc5_);
                           if(_loc10_)
                           {
                              break loop7;
                           }
                           if(§§pop()[§§pop()].version < param1.version)
                           {
                              if(!_loc10_)
                              {
                                 break loop6;
                              }
                           }
                           §§goto(addr0113);
                        }
                        §§goto(addr0108);
                     }
                     §§goto(addr0119);
                  }
                  return §§pop()[§§pop()];
               }
               §§push(§,!X§);
               if(!_loc10_)
               {
                  addr0108:
                  §§push(_loc5_);
                  if(!_loc9_)
                  {
                     break loop7;
                  }
                  §§pop()[§§pop()] = param1;
                  addr0113:
                  §§push(§2$§);
               }
               addr0119:
               §§push(_loc5_);
               break loop7;
            }
            if(_loc9_)
            {
               §,!X§.push(param1);
            }
         }
         var _loc6_:§1!3§ = new §1!3§(param1.path,param2);
         loop9:
         while(true)
         {
            if(!_loc10_)
            {
               _loc6_.addEventListener(Event.COMPLETE,onLoaded);
               if(!_loc9_)
               {
                  break;
               }
            }
            loop10:
            while(true)
            {
               §§push(§2$§);
               if(!_loc10_)
               {
                  §§pop().push(_loc6_);
                  if(param1.waitFor == null)
                  {
                     break loop9;
                  }
                  §§push(0);
                  if(!_loc10_)
                  {
                     §§push(int(§§pop()));
                     if(_loc10_)
                     {
                        break;
                     }
                  }
                  _loc3_ = §§pop();
                  if(_loc10_)
                  {
                     break loop9;
                  }
                  §§push(§2$§);
                  if(_loc9_)
                  {
                     §§push(§§pop());
                  }
               }
               _loc7_ = §§pop();
               if(_loc10_)
               {
                  break loop9;
               }
               while(true)
               {
                  §§push(_loc3_);
                  break loop10;
               }
            }
            while(true)
            {
               if(§§pop() >= int(_loc7_.length))
               {
                  break loop9;
               }
               _loc8_ = _loc7_[_loc3_];
               if(!_loc10_)
               {
                  _loc3_++;
                  if(!_loc9_)
                  {
                     break loop9;
                  }
               }
               if(_loc8_.path == param1.waitFor)
               {
                  if(_loc9_)
                  {
                     _loc6_.§%!@§ = _loc8_;
                  }
                  break loop9;
               }
               §§push(_loc3_);
            }
            break;
         }
         return _loc6_;
      }
      
      public function §-!+§(param1:Object, param2:§<!§) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = null as §>!,§;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(_loc5_)
               {
                  while(true)
                  {
                     §§push(false);
                     if(!_loc4_)
                     {
                        if(param1.infinite != null)
                        {
                           if(!_loc4_)
                           {
                              §§pop();
                              if(_loc4_)
                              {
                                 break;
                              }
                              §§push(Boolean(param1.infinite));
                           }
                        }
                     }
                     if(§§pop())
                     {
                        break;
                     }
                     _loc3_ = §6!a§.§@!A§();
                     break loop1;
                  }
               }
               _loc3_ = §>!0§.§@!A§();
               if(!_loc4_)
               {
                  break;
               }
               break loop0;
            }
            _loc3_.§!c§(param1.levelID,param1.conditions,param2,param1.flags,param1.ordered,param1.name);
            break;
         }
      }
      
      public function §;-§(param1:Object) : void
      {
         var a2:Boolean;
         var a1:Array;
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = null as Achievement;
         loop0:
         while(true)
         {
            if(param1.ordered == null)
            {
               if(!_loc4_)
               {
                  break;
               }
               param1.ordered = true;
               if(_loc3_)
               {
                  break;
               }
            }
            loop1:
            while(true)
            {
               if(param1.achievementID != null)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
                  _loc2_ = Achievements.§&!#§.h[int(param1.achievementID)];
                  if(_loc4_)
                  {
                     §-!+§(param1,new §<!§(_loc2_.§,Y§,_loc2_));
                  }
               }
               if(param1.cutsceneName != null)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc4_)
                        {
                           break loop1;
                        }
                        addr00da:
                        if(param1.dismissOld == null)
                        {
                           if(_loc4_)
                           {
                              break loop2;
                           }
                           break loop0;
                        }
                        §§goto(addr00fc);
                     }
                     §§goto(addr012e);
                  }
                  param1.dismissOld = true;
                  addr00fc:
                  a1 = param1.messages;
                  if(_loc4_)
                  {
                     a2 = param1.dismissOld;
                     if(_loc4_)
                     {
                        break loop0;
                     }
                  }
                  break loop3;
               }
               §§goto(addr00c7);
            }
            §-!+§(param1,new §<!§(null,null,null,param1.cutsceneName));
            if(!_loc4_)
            {
               break;
            }
            addr00c7:
            if(param1.messages != null)
            {
               if(!_loc4_)
               {
                  break loop2;
               }
               §§goto(addr00da);
            }
            §§goto(addr012e);
         }
         §-!+§(param1,new §<!§(function():void
         {
            §[!!§.§7!@§(a1,a2);
         }));
         addr012e:
      }
      
      public function onLoaded(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §§push(param1.currentTarget is §1!3§);
            if(_loc3_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc3_)
               {
                  §§goto(addr0040);
               }
            }
            else
            {
               §4G§(param1.currentTarget);
            }
            return;
         }
         addr0040:
      }
      
      public function §&<§(param1:Object) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:* = null as §&b§;
         var _loc5_:* = null as Shape;
         var _loc6_:* = null as String;
         var _loc2_:BitmapData = null;
         while(true)
         {
            §§push(§2!B§.§&!'§(§&d§.§;`§().scale));
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
               if(!_loc7_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc3_:* = §§pop();
         if(_loc7_)
         {
            loop1:
            while(true)
            {
               §§push(param1.copy);
               if(_loc7_)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(null);
                           if(_loc7_)
                           {
                              §§push(§§pop());
                              if(_loc8_)
                              {
                                 break;
                              }
                              if(§§pop() != §§pop())
                              {
                                 if(!_loc7_)
                                 {
                                    break loop3;
                                 }
                                 _loc2_ = §2!B§.getBitmapData(param1.copy).clone();
                              }
                              §§push(param1.svg);
                              if(_loc8_)
                              {
                                 break loop2;
                              }
                              §§push(null);
                           }
                           §§push(§§pop());
                           break;
                        }
                        if(§§pop() != §§pop())
                        {
                           if(_loc8_)
                           {
                              break;
                           }
                           _loc4_ = new §&b§(param1.svg);
                           while(true)
                           {
                              if(_loc7_)
                              {
                                 if(_loc2_ != null)
                                 {
                                    break;
                                 }
                              }
                              _loc2_ = new BitmapData(int(Math.round(_loc4_.data.width / _loc3_)),int(Math.round(_loc4_.data.height / _loc3_)),true,0);
                              break;
                           }
                           _loc5_ = new Shape();
                           while(true)
                           {
                              if(!_loc8_)
                              {
                                 _loc4_.§%!B§(_loc5_.graphics,0,0,_loc2_.width,_loc2_.height);
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                                 _loc2_.draw(_loc5_);
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                              }
                              _loc5_.graphics.clear();
                              break;
                           }
                        }
                        if(_loc2_ != null)
                        {
                           if(!_loc8_)
                           {
                              break;
                           }
                        }
                        break loop1;
                     }
                     §§push("img/");
                     if(_loc7_)
                     {
                        break;
                     }
                  }
               }
               _loc6_ = §§pop();
               if(_loc7_)
               {
                  §§push(Assets.cache);
                  §§push(_loc6_ + param1.out);
                  if(!_loc8_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().§&!G§(§§pop(),_loc2_);
               }
               break;
            }
         }
      }
      
      public function §5!$§(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc2_:* = 0;
         var _loc3_:* = null as Array;
         var _loc4_:* = null as String;
         var _loc5_:* = null as § !>§;
         var _loc6_:* = null as Array;
         var _loc7_:* = 0;
         var _loc8_:* = null;
         loop14:
         while(true)
         {
            loop15:
            while(true)
            {
               while(true)
               {
                  while(true)
                  {
                     loop33:
                     while(true)
                     {
                        while(true)
                        {
                           while(true)
                           {
                              loop36:
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(param1.paths != null)
                                    {
                                       _loc2_ = 0;
                                       §§push(Reflect.fields(param1.paths));
                                       if(_loc10_)
                                       {
                                          §§push(§§pop());
                                          if(!_loc10_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop());
                                          if(!_loc10_)
                                          {
                                             break loop36;
                                          }
                                       }
                                       _loc3_ = §§pop();
                                       loop6:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          §§push(_loc3_);
                                          if(!_loc9_)
                                          {
                                             §§push(int(§§pop().length));
                                             if(!_loc10_)
                                             {
                                                break loop15;
                                             }
                                             if(§§pop() < §§pop())
                                             {
                                                §§push(_loc3_[_loc2_]);
                                                if(_loc10_)
                                                {
                                                   §§push(§§pop());
                                                }
                                                _loc4_ = §§pop();
                                                if(!_loc9_)
                                                {
                                                   _loc2_++;
                                                }
                                                _loc5_ = §>K§.§@!A§().§7j§.get(_loc4_);
                                                while(true)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      if(_loc5_ == null)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            break;
                                                         }
                                                         _loc5_ = new § !>§(_loc4_,null,Reflect.field(param1.paths,_loc4_),true);
                                                         continue loop6;
                                                      }
                                                      _loc6_ = Reflect.field(param1.paths,_loc4_);
                                                      if(_loc9_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   _loc5_.levels = Vector.<int>(_loc6_);
                                                   if(!_loc9_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop6;
                                                }
                                                §§push(_loc5_);
                                                §§push(_loc5_.levels.length);
                                                if(_loc10_)
                                                {
                                                   §§push(int(§§pop()));
                                                }
                                                §§pop().levelCount = §§pop();
                                                continue;
                                             }
                                             Map.§@!A§().§9G§ = true;
                                             if(_loc9_)
                                             {
                                                break loop14;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr0214);
                                          }
                                       }
                                    }
                                    §§push(param1.levels);
                                    §§push(null);
                                    if(_loc10_)
                                    {
                                       §§push(§§pop());
                                       if(_loc10_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             break loop33;
                                          }
                                          §§push(0);
                                          if(!_loc9_)
                                          {
                                             §§push(int(§§pop()));
                                             if(_loc10_)
                                             {
                                                _loc2_ = §§pop();
                                                if(!_loc9_)
                                                {
                                                   _loc3_ = param1.levels;
                                                   break loop14;
                                                }
                                                break loop21;
                                             }
                                             §§goto(addr0377);
                                          }
                                          else
                                          {
                                             §§goto(addr0236);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr02c1);
                                    }
                                    §§goto(addr02c9);
                                 }
                                 §§goto(addr0253);
                              }
                              §§goto(addr0255);
                           }
                           §§goto(addr0378);
                        }
                        §§goto(addr037b);
                     }
                     §§goto(addr0229);
                  }
                  §§goto(addr030c);
               }
               §§goto(addr0376);
            }
            while(true)
            {
               if(§§pop() >= §§pop())
               {
                  continue loop23;
               }
               §§push(_loc3_[_loc2_]);
               if(!_loc9_)
               {
                  §§push(§§pop());
               }
               _loc4_ = §§pop();
               while(true)
               {
                  if(!_loc9_)
                  {
                     _loc2_++;
                     if(!_loc10_)
                     {
                        break;
                     }
                  }
                  Map.§@!A§().§4O§(_loc4_,Reflect.field(param1.mapPaths,_loc4_));
                  break;
               }
               §§goto(addr0298);
            }
            §§goto(addr037b);
         }
         loop8:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc10_)
            {
               break;
            }
            loop16:
            while(true)
            {
               while(true)
               {
                  loop21:
                  while(true)
                  {
                     loop25:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!_loc9_)
                        {
                           while(true)
                           {
                              §§push(int(§§pop().length));
                              if(_loc9_)
                              {
                                 break loop25;
                              }
                              if(§§pop() >= §§pop())
                              {
                                 if(_loc9_)
                                 {
                                    break loop21;
                                 }
                                 if(param1.mapPaths != null)
                                 {
                                    addr0236:
                                    _loc2_ = 0;
                                    while(true)
                                    {
                                       §§push(Reflect.fields(param1.mapPaths));
                                       if(_loc10_)
                                       {
                                          §§push(§§pop());
                                          if(!_loc10_)
                                          {
                                             break;
                                          }
                                       }
                                       addr0253:
                                       §§push(§§pop());
                                       break;
                                    }
                                    addr0255:
                                    _loc3_ = §§pop();
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       §§push(_loc3_);
                                       if(_loc9_)
                                       {
                                          break loop16;
                                       }
                                    }
                                    break loop16;
                                    addr0298:
                                 }
                                 continue loop23;
                              }
                              §§push(_loc3_[_loc2_]);
                              if(_loc10_)
                              {
                                 §§push(§§pop());
                              }
                              _loc4_ = §§pop();
                              while(true)
                              {
                                 if(!_loc9_)
                                 {
                                    _loc2_++;
                                    if(_loc9_)
                                    {
                                       break;
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(§59§.§,<§(_loc4_));
                                    if(_loc10_)
                                    {
                                       §§push(int(§§pop()));
                                       if(!_loc10_)
                                       {
                                          break;
                                       }
                                    }
                                    §§push(int(§§pop()));
                                    break;
                                 }
                                 _loc7_ = §§pop();
                                 if(_loc10_)
                                 {
                                    while(true)
                                    {
                                       §§push(§59§.§>!^§(_loc4_));
                                       if(!_loc9_)
                                       {
                                          §§push(§§pop());
                                          if(_loc9_)
                                          {
                                             break;
                                          }
                                       }
                                       §§push(§§pop());
                                       break;
                                    }
                                    _loc4_ = §§pop();
                                    if(_loc10_)
                                    {
                                       break;
                                    }
                                 }
                                 continue loop8;
                              }
                              §=e§.§ '§.§1!R§(_loc7_,_loc4_);
                              continue loop8;
                           }
                           break;
                           addr0214:
                        }
                        while(true)
                        {
                           §§push(int(§§pop().length));
                           if(_loc10_)
                           {
                              break loop15;
                           }
                           break;
                        }
                        §§goto(addr037b);
                     }
                     §§goto(addr031e);
                  }
                  §§goto(addr0322);
               }
               loop22:
               while(true)
               {
                  loop23:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(param1.cutscenes);
                        if(!_loc9_)
                        {
                           §§push(null);
                           if(_loc9_)
                           {
                              break;
                           }
                           §§push(§§pop());
                           if(_loc9_)
                           {
                              break loop23;
                           }
                           if(§§pop() == §§pop())
                           {
                              break loop21;
                           }
                           §§push(0);
                           if(!_loc10_)
                           {
                              break loop22;
                           }
                           _loc2_ = int(§§pop());
                           §§push(param1.cutscenes);
                        }
                        _loc3_ = §§pop();
                        if(!_loc9_)
                        {
                           §§goto(addr030c);
                        }
                        §§goto(addr0376);
                     }
                     §§goto(addr032f);
                  }
                  §§goto(addr0331);
               }
               §§goto(addr0338);
            }
            loop5:
            while(true)
            {
               §§push(int(§§pop().length));
               if(!_loc10_)
               {
                  break;
               }
               loop9:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     addr0322:
                     while(true)
                     {
                        §§push(param1.cutsceneConditions);
                        if(!_loc9_)
                        {
                           addr0331:
                           addr032f:
                           if(§§pop() == null)
                           {
                              break;
                           }
                           _loc2_ = 0;
                           §§push(param1.cutsceneConditions);
                        }
                        _loc3_ = §§pop();
                        while(true)
                        {
                           §§push(_loc2_);
                           addr0377:
                           while(true)
                           {
                              §§push(_loc3_);
                              break loop9;
                           }
                        }
                        break;
                        addr0376:
                     }
                     §§goto(addr037f);
                  }
                  else
                  {
                     addr030c:
                  }
                  addr030c:
                  _loc8_ = _loc3_[_loc2_];
                  while(true)
                  {
                     if(!_loc9_)
                     {
                        _loc2_++;
                        if(_loc9_)
                        {
                           break;
                        }
                     }
                     §&!+§(_loc8_);
                     break;
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                     break loop8;
                  }
                  break;
               }
               while(true)
               {
                  §§push(int(§§pop().length));
                  break loop5;
               }
            }
            while(§§pop() < §§pop())
            {
               _loc8_ = _loc3_[_loc2_];
               while(true)
               {
                  if(_loc10_)
                  {
                     _loc2_++;
                     if(!_loc10_)
                     {
                        break;
                     }
                  }
                  §,!M§(_loc8_);
                  break;
               }
               §§goto(addr0376);
            }
            addr037f:
            return;
            addr037b:
         }
         while(true)
         {
            §§push(_loc3_);
            if(!_loc9_)
            {
               break loop16;
            }
            break;
         }
         §§goto(addr0378);
      }
      
      public function §1c§(param1:*) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:* = null as String;
         §§push(0);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(Reflect.fields(param1));
         if(_loc5_)
         {
            §§push(§§pop());
            if(!_loc6_)
            {
               §§push(§§pop());
            }
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
                     §>K§.§3!9§(_loc4_,int(Reflect.field(param1,_loc4_)));
                  }
               }
            }
            if(!_loc6_)
            {
               Map.§@!A§().§9G§ = true;
            }
         }
      }
      
      public function §&!+§(param1:Object) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:§=!U§ = Cutscenes.§5Q§;
         §§push(param1.name);
         if(!_loc7_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:§#M§ = new §#M§(param1);
         var _loc5_:StringMap = _loc2_;
         if(!_loc7_)
         {
            if(_loc3_ in StringMap.§+!#§)
            {
               if(!_loc7_)
               {
                  _loc5_.setReserved(_loc3_,_loc4_);
                  if(_loc6_)
                  {
                  }
               }
            }
            else
            {
               _loc5_.h[_loc3_] = _loc4_;
            }
         }
      }
      
      public function §,!M§(param1:Object) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:* = null as String;
         var _loc3_:* = null as § !>§;
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
                     while(true)
                     {
                        §§push(param1.path);
                        if(_loc4_)
                        {
                           §§push(null);
                           if(_loc5_)
                           {
                              break;
                           }
                           §§push(§§pop());
                           if(!_loc4_)
                           {
                              break loop3;
                           }
                           if(§§pop() == §§pop())
                           {
                              break loop2;
                           }
                           if(!_loc4_)
                           {
                              break loop1;
                           }
                           §§push(param1.path);
                           if(!_loc4_)
                           {
                              break loop0;
                           }
                        }
                        §§push(§§pop());
                        if(!_loc5_)
                        {
                           _loc2_ = §§pop();
                           while(true)
                           {
                              if(!_loc5_)
                              {
                                 break loop1;
                              }
                              §§goto(addr00b9);
                           }
                           §§goto(addr013b);
                        }
                        §§goto(addr00ac);
                     }
                     §§goto(addr00ad);
                  }
                  if(§§pop() != §§pop())
                  {
                     if(_loc4_)
                     {
                        addr00b9:
                        §§push(param1.pathStart);
                        if(_loc5_)
                        {
                           break loop0;
                        }
                        §§goto(addr00c5);
                     }
                     §§goto(addr013b);
                  }
                  §§goto(addr00f9);
               }
               while(true)
               {
                  addr00c5:
                  §§push(param1.pathStart);
                  if(!_loc5_)
                  {
                     addr00ac:
                     addr00ad:
                     §§push(null);
                     break loop3;
                  }
                  §§push(§§pop());
                  break loop0;
               }
               §§goto(addr013b);
            }
            _loc3_ = §>K§.§@!A§().§7j§.get(_loc2_);
            if(_loc4_)
            {
               if(_loc3_ == null)
               {
                  break loop2;
               }
               if(!_loc4_)
               {
                  break loop2;
               }
            }
            _loc3_.endCutscene = param1.name;
            break loop2;
         }
         _loc2_ = §§pop();
         _loc3_ = §>K§.§@!A§().§7j§.get(_loc2_);
         if(!_loc5_)
         {
            if(_loc3_ != null)
            {
               if(_loc4_)
               {
                  _loc3_.startCutscene = param1.name;
               }
            }
         }
         addr00f9:
         if(param1.level != null)
         {
            §6!a§.§@!A§().§=! §(param1.level,function(param1:§<!§, param2:Level, param3:int):BeatLevelAndSave
            {
               return new BeatLevelAndSave(param1,param2,param3);
            },new §<!§(null,null,null,param1.name));
         }
         addr013b:
      }
      
      public function §4G§(param1:§1!3§) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:* = 0;
         var _loc5_:* = null as Array;
         var _loc6_:* = null;
         if(!_loc8_)
         {
            § L§.high = 464143;
         }
         var _loc2_:* = JSON.parse(§2!,§.§-e§(param1.data,param1.path));
         §§push(int(§2$§.indexOf(param1)));
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               loop5:
               while(true)
               {
                  §§push(_loc3_);
                  if(!_loc8_)
                  {
                     loop6:
                     while(true)
                     {
                        loop7:
                        while(true)
                        {
                           §§push(0);
                           if(_loc7_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 return;
                              }
                              if(_loc2_ is Array)
                              {
                                 loop8:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(!_loc8_)
                                       {
                                          §§push(0);
                                          if(!_loc8_)
                                          {
                                             §§push(int(§§pop()));
                                             if(!_loc7_)
                                             {
                                                break;
                                             }
                                          }
                                          _loc4_ = §§pop();
                                          if(_loc8_)
                                          {
                                             break loop8;
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(!_loc8_)
                                          {
                                             §§push(§§pop());
                                             if(_loc8_)
                                             {
                                                break;
                                             }
                                          }
                                          _loc5_ = §§pop();
                                          if(_loc7_)
                                          {
                                             break loop8;
                                          }
                                          break loop7;
                                       }
                                       addr014b:
                                       §§push(int(§§pop()[_loc3_].type));
                                       break loop6;
                                    }
                                    while(true)
                                    {
                                       §§push(int(_loc5_.length));
                                       if(!_loc7_)
                                       {
                                          break loop5;
                                       }
                                    }
                                    break loop5;
                                 }
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    if(_loc7_)
                                    {
                                       break loop9;
                                    }
                                    break loop6;
                                 }
                                 break loop6;
                              }
                              §8T§(int(§,!X§[_loc3_].type),_loc2_);
                              if(_loc7_)
                              {
                                 break;
                              }
                              break loop3;
                           }
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(!_loc8_)
                                 {
                                    break loop7;
                                 }
                                 break loop4;
                              }
                              _loc6_ = _loc5_[_loc4_];
                              if(_loc7_)
                              {
                                 _loc4_++;
                                 if(_loc7_)
                                 {
                                    §8T§(int(§,!X§[_loc3_].type),_loc6_);
                                 }
                              }
                              break loop8;
                           }
                        }
                        §§goto(addr014b);
                     }
                  }
                  break loop6;
               }
               if(§§pop() == §§pop())
               {
                  if(!_loc8_)
                  {
                     break loop3;
                  }
               }
               break;
            }
            return;
         }
         §9K§();
         break loop4;
      }
      
      public function §#,§(param1:Object) : void
      {
         var a2:Achievement;
         var a1:§ !N§;
         var f:Function;
         §§push(false);
         var _loc13_:Boolean = true;
         var _loc14_:* = §§pop();
         var _loc6_:* = null as String;
         var _loc7_:* = null as Array;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               while(true)
               {
                  if(!_loc14_)
                  {
                     §§push(false);
                     if(_loc13_)
                     {
                        if(param1.character == null)
                        {
                           break;
                        }
                        if(_loc14_)
                        {
                           break loop3;
                        }
                     }
                     §§pop();
                     if(_loc14_)
                     {
                        break loop2;
                     }
                  }
                  §§push(param1.character < int(CharacterRegistry.§&!#§.length));
                  if(_loc13_)
                  {
                     break loop3;
                  }
                  break;
               }
               if(§§pop())
               {
                  break loop2;
               }
               §§goto(addr0087);
               §§push(null);
            }
            §§push(Boolean(§§pop()));
            break loop25;
         }
         addr0087:
         var _loc2_:CharacterDef = CharacterRegistry.§&!#§[int(param1.character)];
         if(!_loc14_)
         {
            if(param1.id != null)
            {
               if(_loc13_)
               {
                  param1.achievementID = param1.id;
               }
            }
         }
         var _loc3_:§ !N§ = null;
         while(true)
         {
            if(!_loc14_)
            {
               if(param1.requiredLevel == null)
               {
                  break;
               }
            }
            _loc3_ = §>K§.§&i§(param1.requiredLevel);
            break;
         }
         var _loc4_:Achievement = null;
         while(true)
         {
            if(_loc13_)
            {
               if(param1.requiredAchievement == null)
               {
                  break;
               }
            }
            _loc4_ = Achievements.§&!#§.h[int(param1.requiredAchievement)];
            break;
         }
         §§push(param1.image);
         if(!_loc14_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         loop6:
         while(true)
         {
            while(true)
            {
               if(!_loc14_)
               {
                  §§push(_loc5_);
                  if(_loc14_)
                  {
                     break;
                  }
                  if(§§pop() != null)
                  {
                     break loop6;
                  }
               }
               §§push(StringTools.replace(param1.name,"\'",""));
               if(!_loc14_)
               {
                  break;
               }
               _loc6_ = §§pop();
               loop19:
               while(true)
               {
                  loop20:
                  while(true)
                  {
                     loop21:
                     while(true)
                     {
                        §§push(new EReg("[^a-zA-Z0-9]","g").split(_loc6_));
                        if(_loc13_)
                        {
                           while(true)
                           {
                              §§push(§§pop());
                              if(!_loc14_)
                              {
                                 §§push(§§pop());
                                 if(!_loc13_)
                                 {
                                    break;
                                 }
                              }
                              _loc7_ = §§pop();
                              if(!_loc14_)
                              {
                                 §§push(0);
                                 if(!_loc14_)
                                 {
                                    §§push(int(§§pop()));
                                    if(!_loc14_)
                                    {
                                       _loc8_ = §§pop();
                                       §§push(_loc7_);
                                       break;
                                    }
                                    break loop19;
                                 }
                                 break loop20;
                              }
                              break loop21;
                           }
                        }
                        §§push(int(§§pop().length));
                        if(_loc13_)
                        {
                           break loop19;
                        }
                        §§goto(addr01a9);
                     }
                     §§goto(addr023c);
                  }
                  while(§§pop() < _loc9_)
                  {
                     §§push(_loc8_);
                     if(_loc13_)
                     {
                        _loc8_++;
                        if(_loc13_)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     _loc10_ = §§pop();
                     if(_loc13_)
                     {
                        while(true)
                        {
                           §§push(_loc7_);
                           if(!_loc14_)
                           {
                              §§push(_loc10_);
                              if(_loc14_)
                              {
                                 break;
                              }
                              if(§§pop()[§§pop()].length <= 0)
                              {
                                 break loop21;
                              }
                              if(!_loc13_)
                              {
                                 break loop21;
                              }
                              §§push(_loc7_);
                           }
                           §§push(_loc10_);
                           break;
                        }
                        §§push(_loc7_[_loc10_].charAt(0));
                        if(_loc13_)
                        {
                           §§push(§§pop().toUpperCase());
                           if(!_loc14_)
                           {
                              §§push(§§pop() + _loc7_[_loc10_].substr(1));
                           }
                        }
                        §§pop()[§§pop()] = §§pop();
                     }
                     break loop21;
                  }
                  while(true)
                  {
                     §§push("achievement/");
                     if(!_loc14_)
                     {
                        §§push(§§pop() + _loc7_.join(""));
                        if(!_loc14_)
                        {
                           §§push(§§pop());
                           if(_loc13_)
                           {
                              §§push(§§pop() + ".png");
                              if(_loc14_)
                              {
                                 break;
                              }
                           }
                        }
                     }
                     §§push(§§pop());
                     if(_loc13_)
                     {
                        break;
                     }
                     addr027e:
                     _loc5_ = §§pop();
                     break loop6;
                  }
                  §§goto(addr027e);
               }
               §§push(int(§§pop()));
               if(_loc14_)
               {
                  break loop20;
               }
               addr01a9:
               _loc9_ = §§pop();
               if(!_loc13_)
               {
                  break loop6;
               }
               while(true)
               {
                  §§push(_loc8_);
                  break loop20;
               }
               addr023c:
            }
            §§push(§§pop());
            if(!_loc14_)
            {
               §§push(§§pop());
            }
            continue loop20;
         }
         §§push(null);
         if(!_loc14_)
         {
            §§push(§§pop());
         }
         var _loc11_:* = §§pop();
         loop8:
         while(true)
         {
            while(true)
            {
               §§push(true);
               if(_loc13_)
               {
                  if(_loc4_ != null)
                  {
                     break;
                  }
                  if(!_loc14_)
                  {
                     §§pop();
                     §§push(_loc3_ == null);
                     if(!_loc13_)
                     {
                        break loop8;
                     }
                  }
               }
               §§push(!§§pop());
               if(!_loc14_)
               {
                  break loop8;
               }
               break;
            }
            if(§§pop())
            {
               §§push(§§newactivation());
               §§push(§?! §);
               if(!_loc14_)
               {
                  §§push(§§pop());
               }
               §§pop().§§slot[1] = §§pop();
               a1 = _loc3_;
               if(_loc13_)
               {
                  a2 = _loc4_;
               }
               if(_loc13_)
               {
                  §§push(§§pop());
               }
               _loc11_ = §§pop();
            }
            var _loc12_:Achievement = new Achievement(param1.achievementID,param1.name,param1.description,int(param1.payout),_loc5_,_loc2_,_loc11_,param1.infinite != null && Boolean(param1.infinite) && param1.levelID != null ? 1 : 0);
            loop10:
            while(true)
            {
               while(true)
               {
                  if(!_loc14_)
                  {
                     Achievements.§=! §(_loc12_);
                     loop12:
                     while(true)
                     {
                        loop13:
                        while(true)
                        {
                           §§push(param1.conditions);
                           if(!_loc14_)
                           {
                              while(true)
                              {
                                 §§push(int(§§pop().length));
                                 if(_loc13_)
                                 {
                                    §§push(1);
                                    if(_loc14_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() & §§pop());
                                 }
                                 §§push(0);
                                 break;
                              }
                              if(§§pop() == §§pop())
                              {
                                 break;
                              }
                              §§push(param1.conditions);
                              if(_loc14_)
                              {
                                 break loop12;
                              }
                           }
                           loop15:
                           while(true)
                           {
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(0);
                                    if(!_loc14_)
                                    {
                                       §§pop().push(§§pop());
                                       break loop13;
                                    }
                                    addr03c4:
                                    §§pop().push(§§pop());
                                    if(!_loc14_)
                                    {
                                       §§push(param1.conditions);
                                       if(_loc13_)
                                       {
                                          §§push(_loc2_.id);
                                          if(_loc13_)
                                          {
                                             §§pop().push(§§pop());
                                             break;
                                          }
                                          break loop15;
                                       }
                                       break loop12;
                                    }
                                 }
                                 addr03e7:
                                 if(_loc11_ != null)
                                 {
                                    §§push(param1.conditions);
                                    if(_loc13_)
                                    {
                                       break loop12;
                                    }
                                    break;
                                 }
                                 §§goto(addr0416);
                              }
                              §§goto(addr040e);
                           }
                           §§goto(addr0413);
                        }
                        §§push(false);
                        if(!_loc14_)
                        {
                           if(_loc2_ != null)
                           {
                              §§pop();
                              §§push(!param1.characterOptional);
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              §§push(param1.conditions);
                              if(!_loc13_)
                              {
                                 break loop16;
                              }
                              §§push(1);
                              if(!_loc13_)
                              {
                                 break loop15;
                              }
                              §§goto(addr03c4);
                           }
                           §§goto(addr03e7);
                        }
                     }
                     addr0413:
                     §§push(21);
                     if(_loc13_)
                     {
                        §§pop().push(§§pop());
                        addr040e:
                        §§push(param1.conditions);
                        §§push(_loc12_.id);
                     }
                     §§pop().push(§§pop());
                     addr0416:
                     §;-§(param1);
                     if(!_loc13_)
                     {
                        break;
                     }
                     §§push(false);
                  }
                  §§push(!param1.clickable);
                  break loop10;
               }
               _loc12_.§`p§ = null;
               §§goto(addr0457);
            }
            if(§§pop())
            {
               if(_loc13_)
               {
                  break loop11;
               }
            }
            addr0457:
            return;
         }
         §§push(Boolean(§§pop()));
         break loop9;
      }
      
      public function §8T§(param1:int, param2:*) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc4_:* = null as §1!3§;
         var _loc5_:* = false;
         var _loc6_:* = null;
         try
         {
            loop0:
            switch(param1)
            {
               case 0:
                  § L§.mid = 968825;
                  if(_loc8_)
                  {
                     _loc4_ = §9!,§(param2,int(param2.type) != 2);
                     loop1:
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           if(!_loc7_)
                           {
                              while(true)
                              {
                                 §§push(§`I§);
                                 if(!_loc7_)
                                 {
                                    §§push(!§§pop());
                                    if(!_loc8_)
                                    {
                                       break;
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       _loc6_ = param2.version;
                                       loop4:
                                       while(true)
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                if(!_loc7_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(false);
                                                      §§push(false);
                                                      if(!_loc7_)
                                                      {
                                                         if(_loc4_.data == null)
                                                         {
                                                            break;
                                                         }
                                                         if(!_loc7_)
                                                         {
                                                            §§pop();
                                                            §§push(_loc6_ == null);
                                                            if(!_loc7_)
                                                            {
                                                               §§push(!§§pop());
                                                               if(!_loc8_)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      §§pop();
                                                      if(!_loc8_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(_loc4_.§1!Z§ >= _loc6_);
                                                      if(_loc7_)
                                                      {
                                                         break loop2;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                      if(!_loc8_)
                                                      {
                                                         break loop5;
                                                      }
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      §§push(false);
                                                      if(!_loc7_)
                                                      {
                                                         _loc5_ = §§pop();
                                                         if(_loc8_)
                                                         {
                                                            break loop4;
                                                         }
                                                         break loop1;
                                                      }
                                                      break loop2;
                                                   }
                                                   if(_loc7_)
                                                   {
                                                      break loop4;
                                                   }
                                                }
                                                if(_loc4_.§%!@§ != null)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      break;
                                                   }
                                                   break loop4;
                                                }
                                                §§push(true);
                                                if(_loc8_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                                break loop5;
                                             }
                                             _loc5_ = _loc4_.§%!@§.§72§;
                                             if(_loc8_)
                                             {
                                             }
                                             break loop4;
                                          }
                                          _loc5_ = §§pop();
                                          break;
                                       }
                                    }
                                    break loop4;
                                 }
                                 addr016c:
                                 §§push(false);
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 _loc5_ = §§pop();
                                 break loop4;
                              }
                              §§goto(addr016c);
                           }
                           break loop4;
                        }
                        if(§§pop())
                        {
                           if(!_loc7_)
                           {
                              break;
                           }
                        }
                        break loop0;
                     }
                     _loc4_.§@!&§();
                  }
                  break;
               case 1:
                  § L§.mid = 292465;
                  if(_loc8_)
                  {
                     §5!$§(param2);
                     break;
                  }
                  addr01b9:
                  §#,§(param2);
                  if(_loc8_)
                  {
                  }
                  break;
               case 2:
                  § L§.mid = 133533;
                  §1c§(param2);
                  break;
               case 3:
                  § L§.mid = 276890;
                  §§goto(addr01b9);
               case 4:
                  § L§.mid = 307675;
                  §&!+§(param2);
                  if(_loc8_)
                  {
                  }
                  break;
               case 5:
                  § L§.mid = 822599;
                  §,!M§(param2);
                  break;
               case 6:
                  § L§.mid = 655249;
                  if(_loc8_)
                  {
                     §&<§(param2);
                     if(_loc7_)
                     {
                     }
                     break;
                  }
                  addr022c:
                  §;-§(param2);
                  break;
               case 7:
                  § L§.mid = 747701;
                  §§goto(addr022c);
            }
         }
         catch(_loc_e_:*)
         {
            return;
         }
      }
      
      public function §9K§() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:* = 0;
         var _loc4_:* = null as §1!3§;
         while(true)
         {
            if(!_loc6_)
            {
               § L§.mid = 294884;
               if(!_loc5_)
               {
                  break;
               }
               if(PlayFabAPI.§@!A§().§0U§ == null)
               {
                  break;
               }
               if(!_loc5_)
               {
                  break;
               }
            }
            §§push(GlobalEventManager);
            §§push("PLAYFAB_LOGIN");
            §§push(§9K§);
            if(_loc5_)
            {
               §§push(§§pop());
            }
            §§pop().removeEventListener(§§pop(),§§pop());
            break;
         }
         §§push(0);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(int(§,!X§.length));
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc5_)
         {
            loop0:
            while(_loc1_ < _loc2_)
            {
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc5_)
                  {
                     _loc1_++;
                     if(_loc6_)
                     {
                        break;
                     }
                  }
                  §§push(int(§§pop()));
                  break;
               }
               _loc3_ = §§pop();
               _loc4_ = §2$§[_loc3_];
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        §§push(true);
                        if(!_loc6_)
                        {
                           loop6:
                           while(true)
                           {
                              loop7:
                              while(true)
                              {
                                 if(!_loc4_.§8m§)
                                 {
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    §§pop();
                                    §§push(_loc4_.http != null);
                                    if(_loc6_)
                                    {
                                       break loop6;
                                    }
                                    §§push(Boolean(§§pop()));
                                 }
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    if(!_loc6_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc6_)
                                          {
                                             §§push(§`I§);
                                             break loop7;
                                          }
                                          break loop3;
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr01a1);
                                 }
                                 §§goto(addr01a3);
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(§2$§);
                                    if(_loc6_)
                                    {
                                       break loop5;
                                    }
                                    §§push(_loc3_);
                                    if(_loc6_)
                                    {
                                       break loop4;
                                    }
                                    §§pop()[§§pop()].§^v§(§,!X§[_loc3_].version);
                                    if(!_loc6_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr0178);
                                 }
                                 else
                                 {
                                    §§push(false);
                                    if(!_loc6_)
                                    {
                                       if(PlayFabAPI.§@!A§().§0U§ != null)
                                       {
                                          break loop6;
                                       }
                                       addr01a4:
                                       if(§§pop())
                                       {
                                          break loop3;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 §§goto(addr01a2);
                              }
                              §§goto(addr01a3);
                           }
                           §§pop();
                           while(true)
                           {
                              §§push(true);
                              if(_loc5_)
                              {
                                 if(§,!X§[_loc3_].condition == null)
                                 {
                                    break;
                                 }
                                 §§pop();
                                 §§push(§5!0§(§,!X§[_loc3_].condition));
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                              addr01a2:
                              §§push(Boolean(§§pop()));
                              break;
                           }
                           addr01a3:
                        }
                        §§goto(addr01a4);
                     }
                     §§goto(addr01ae);
                  }
                  §§pop()[§§pop()].§!!!§(§,!X§[_loc3_].version);
                  continue loop0;
               }
               addr01ae:
               §§push(§2$§);
               §§push(_loc3_);
               break loop4;
            }
         }
      }
      
      public function §5!0§(param1:Object) : Boolean
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc2_:* = null as String;
         var _loc3_:* = null as § !>§;
         var _loc4_:* = false;
         var _loc5_:* = null as §-Q§;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = null as Achievement;
         var _loc9_:* = null as §]k§;
         var _loc10_:* = null as Array;
         var _loc11_:* = null;
         loop5:
         while(true)
         {
            loop6:
            while(true)
            {
               loop8:
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
                           loop12:
                           while(true)
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
                                       if(_loc12_)
                                       {
                                          loop16:
                                          while(true)
                                          {
                                             §§push(false);
                                             if(param1.build != null)
                                             {
                                                §§pop();
                                                §§push(Save.§@!A§().buildNumber >= param1.build);
                                                if(!_loc12_)
                                                {
                                                   break;
                                                }
                                             }
                                             if(§§pop())
                                             {
                                                §§push(false);
                                                if(!_loc13_)
                                                {
                                                   return §§pop();
                                                }
                                                break loop8;
                                             }
                                             loop17:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   §§push(false);
                                                   if(param1.minBuild != null)
                                                   {
                                                      if(!_loc13_)
                                                      {
                                                         §§pop();
                                                         if(_loc13_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(Save.§@!A§().buildNumber);
                                                         if(_loc13_)
                                                         {
                                                            break loop17;
                                                         }
                                                         §§push(§§pop() < param1.minBuild);
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   if(§§pop())
                                                   {
                                                      break;
                                                   }
                                                   loop21:
                                                   while(true)
                                                   {
                                                      §§push(param1.path);
                                                      if(!_loc13_)
                                                      {
                                                         if(§§pop() == null)
                                                         {
                                                            break;
                                                         }
                                                         §§push(param1.path);
                                                         if(_loc12_)
                                                         {
                                                            §§push(§§pop());
                                                         }
                                                      }
                                                      _loc2_ = §§pop();
                                                      _loc3_ = §>K§.§@!A§().§2! §.get(_loc2_);
                                                      loop22:
                                                      while(true)
                                                      {
                                                         loop23:
                                                         while(true)
                                                         {
                                                            loop24:
                                                            while(true)
                                                            {
                                                               if(_loc12_)
                                                               {
                                                                  if(param1.pathProgress == null)
                                                                  {
                                                                     _loc5_ = _loc3_.§0!R§;
                                                                     loop29:
                                                                     while(true)
                                                                     {
                                                                        loop30:
                                                                        while(true)
                                                                        {
                                                                           loop31:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc13_)
                                                                              {
                                                                                 _loc6_ = int(Save.§@!A§().get(_loc5_.§=-§,int(_loc5_.§ -§)));
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       §§push(_loc3_.levelCount);
                                                                                       if(_loc12_)
                                                                                       {
                                                                                          §§push(int(§§pop()));
                                                                                          if(!_loc12_)
                                                                                          {
                                                                                             break loop30;
                                                                                          }
                                                                                       }
                                                                                       _loc7_ = §§pop();
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                    }
                                                                                    §§push(_loc6_);
                                                                                    §§push(_loc7_);
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       if(§§pop() < §§pop())
                                                                                       {
                                                                                          if(!_loc13_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          break loop29;
                                                                                       }
                                                                                       §§push(_loc7_);
                                                                                       break loop30;
                                                                                    }
                                                                                    break loop31;
                                                                                 }
                                                                              }
                                                                              §§push(_loc6_);
                                                                              break loop30;
                                                                           }
                                                                           if(§§pop() < §§pop())
                                                                           {
                                                                              break loop29;
                                                                           }
                                                                           break loop21;
                                                                        }
                                                                        §§push(_loc3_.levelCount);
                                                                        break loop31;
                                                                     }
                                                                     return false;
                                                                  }
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     if(_loc12_)
                                                                     {
                                                                        loop26:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_.§<o§());
                                                                           if(!_loc13_)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              if(!_loc13_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          addr012e:
                                                                                          _loc5_ = _loc3_.§0!R§;
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                §§push(int(Save.§@!A§().get(_loc5_.§=-§,int(_loc5_.§ -§))));
                                                                                                if(_loc12_)
                                                                                                {
                                                                                                   _loc6_ = §§pop();
                                                                                                   if(!_loc12_)
                                                                                                   {
                                                                                                      break loop25;
                                                                                                   }
                                                                                                   §§push(_loc3_.levelCount);
                                                                                                }
                                                                                                §§push(int(§§pop()));
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   _loc7_ = §§pop();
                                                                                                   if(_loc13_)
                                                                                                   {
                                                                                                      break loop22;
                                                                                                   }
                                                                                                   §§push(_loc6_);
                                                                                                   if(_loc13_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                }
                                                                                                if(§§pop() >= _loc7_)
                                                                                                {
                                                                                                   §§push(_loc7_);
                                                                                                   break;
                                                                                                }
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   break loop25;
                                                                                                }
                                                                                             }
                                                                                             §§push(_loc6_);
                                                                                             if(_loc12_)
                                                                                             {
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§push(§§pop() < param1.pathProgress);
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                _loc4_ = §§pop();
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   break loop25;
                                                                                                }
                                                                                                break loop22;
                                                                                             }
                                                                                             break loop23;
                                                                                          }
                                                                                          break loop24;
                                                                                       }
                                                                                       break loop25;
                                                                                    }
                                                                                    §§push(true);
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    break loop26;
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§push(Boolean(§§pop()));
                                                                           break;
                                                                        }
                                                                        _loc4_ = §§pop();
                                                                        break;
                                                                     }
                                                                     §§goto(addr012e);
                                                                  }
                                                               }
                                                               §§push(_loc4_);
                                                               if(_loc12_)
                                                               {
                                                                  break loop23;
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr01d0);
                                                         }
                                                         if(§§pop())
                                                         {
                                                            break;
                                                         }
                                                         break loop21;
                                                      }
                                                      addr01d0:
                                                      return false;
                                                   }
                                                   if(param1.achievement != null)
                                                   {
                                                      _loc8_ = Achievements.§&!#§.h[int(param1.achievement)];
                                                      loop33:
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            if(!_loc13_)
                                                            {
                                                               if(_loc8_ != null)
                                                               {
                                                                  if(!_loc13_)
                                                                  {
                                                                     _loc9_ = _loc8_.§3!X§;
                                                                     if(_loc12_)
                                                                     {
                                                                        §§push(Boolean(Save.§@!A§().get(_loc9_.§=-§,Boolean(_loc9_.§ -§))));
                                                                        if(!_loc12_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(!§§pop());
                                                                        if(_loc12_)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(_loc13_)
                                                                           {
                                                                              break;
                                                                           }
                                                                        }
                                                                        _loc4_ = §§pop();
                                                                        if(!_loc12_)
                                                                        {
                                                                           break loop33;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(true);
                                                                  if(_loc12_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  _loc4_ = §§pop();
                                                               }
                                                            }
                                                            §§push(_loc4_);
                                                            if(_loc12_)
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr02e6);
                                                         }
                                                         if(§§pop())
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      addr02e6:
                                                      return false;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(param1.and);
                                                      if(_loc12_)
                                                      {
                                                         §§push(null);
                                                         if(!_loc13_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc12_)
                                                            {
                                                               if(§§pop() != §§pop())
                                                               {
                                                                  if(!_loc13_)
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc12_)
                                                                     {
                                                                        break loop17;
                                                                     }
                                                                     break loop12;
                                                                  }
                                                                  break loop13;
                                                               }
                                                               addr03a4:
                                                               §§push(param1.or);
                                                               if(_loc12_)
                                                               {
                                                                  §§push(null);
                                                                  break loop6;
                                                               }
                                                               break loop14;
                                                            }
                                                            break loop5;
                                                         }
                                                         break loop6;
                                                      }
                                                      §§goto(addr033b);
                                                   }
                                                   §§goto(addr0385);
                                                }
                                                §§push(false);
                                                break loop16;
                                             }
                                             §§push(int(§§pop()));
                                             if(!_loc12_)
                                             {
                                                break loop11;
                                             }
                                             _loc6_ = §§pop();
                                             loop19:
                                             while(true)
                                             {
                                                if(!_loc13_)
                                                {
                                                   §§push(param1.and);
                                                   if(!_loc12_)
                                                   {
                                                      break loop15;
                                                   }
                                                   §§push(§§pop());
                                                   if(!_loc12_)
                                                   {
                                                      break loop14;
                                                   }
                                                   _loc10_ = §§pop();
                                                   if(!_loc12_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                loop1:
                                                while(true)
                                                {
                                                   §§push(_loc6_);
                                                   if(!_loc13_)
                                                   {
                                                      §§push(_loc10_);
                                                      if(!_loc13_)
                                                      {
                                                         §§push(int(§§pop().length));
                                                         if(!_loc13_)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               break loop19;
                                                            }
                                                            _loc11_ = _loc10_[_loc6_];
                                                            while(true)
                                                            {
                                                               if(_loc12_)
                                                               {
                                                                  _loc6_++;
                                                                  if(_loc12_)
                                                                  {
                                                                     §§push(§5!0§(_loc11_));
                                                                     if(_loc12_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        if(!_loc12_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(!§§pop());
                                                                        if(_loc13_)
                                                                        {
                                                                           break;
                                                                        }
                                                                     }
                                                                     if(!§§pop())
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                  }
                                                               }
                                                               return false;
                                                            }
                                                            return §§pop();
                                                         }
                                                         break loop9;
                                                      }
                                                      break loop10;
                                                   }
                                                   break loop11;
                                                }
                                                break loop11;
                                                addr0385:
                                             }
                                          }
                                          return §§pop();
                                       }
                                       §§goto(addr03a4);
                                    }
                                    §§goto(addr03d3);
                                 }
                                 §§goto(addr03d1);
                              }
                              §§goto(addr03c4);
                           }
                           §§goto(addr0424);
                        }
                        §§goto(addr03c2);
                     }
                     §§goto(addr0426);
                  }
                  §§goto(addr0429);
               }
               §§goto(addr042e);
            }
            §§push(§§pop());
            break;
         }
         if(§§pop() != §§pop())
         {
            if(!_loc13_)
            {
               addr03c2:
               _loc6_ = 0;
            }
            addr03c4:
            addr03d3:
            §§push(param1.or);
            if(_loc12_)
            {
               addr03d1:
               §§push(§§pop());
            }
            _loc10_ = §§pop();
            if(!_loc13_)
            {
               loop0:
               while(true)
               {
                  §§push(_loc6_);
                  addr0424:
                  loop4:
                  while(true)
                  {
                     §§push(_loc10_);
                     addr0426:
                     while(true)
                     {
                        §§push(int(§§pop().length));
                        addr0429:
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              break loop0;
                           }
                           §§goto(addr0421);
                        }
                        break;
                     }
                     addr0421:
                     _loc11_ = _loc10_[_loc6_];
                     if(_loc12_)
                     {
                        _loc6_++;
                        if(_loc13_)
                        {
                           break loop3;
                        }
                     }
                     while(true)
                     {
                        §§push(§5!0§(_loc11_));
                        if(_loc12_)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc13_)
                           {
                              break;
                           }
                        }
                        if(§§pop())
                        {
                           break loop3;
                        }
                        break loop4;
                     }
                     return §§pop();
                  }
               }
            }
            addr042e:
            return false;
         }
         return true;
      }
      
      public function §?! §(param1:§ !N§, param2:Achievement) : Boolean
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc3_:* = false;
         var _loc4_:* = null as § !>§;
         var _loc5_:* = null as §-Q§;
         var _loc6_:int = 0;
         var _loc7_:* = 0;
         var _loc8_:* = null as §]k§;
         loop0:
         while(true)
         {
            if(!_loc9_)
            {
               if(param1 == null)
               {
                  §§push(true);
                  if(_loc10_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  _loc3_ = §§pop();
                  break;
               }
               if(_loc9_)
               {
                  break;
               }
            }
            _loc4_ = param1.§1!R§;
            _loc5_ = _loc4_.§0!R§;
            _loc6_ = int(Save.§@!A§().get(_loc5_.§=-§,int(_loc5_.§ -§)));
            while(true)
            {
               if(!_loc9_)
               {
                  §§push(_loc4_.levelCount);
                  if(_loc10_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc7_ = §§pop();
                  §§push(_loc6_);
                  §§push(_loc7_);
                  if(_loc10_)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(_loc9_)
                        {
                           break loop0;
                        }
                        §§push(_loc6_);
                     }
                     else
                     {
                        §§push(_loc7_);
                     }
                     §§push(param1.§+!=§);
                  }
                  §§push(§§pop() > §§pop());
                  if(_loc10_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc10_)
                     {
                        _loc3_ = §§pop();
                        break loop0;
                     }
                     break;
                  }
                  addr00d6:
                  §§push(!§§pop());
                  if(!_loc10_)
                  {
                     break;
                  }
                  if(!§§pop())
                  {
                     §§push(true);
                     break;
                  }
               }
               if(param2 != null)
               {
                  _loc8_ = param2.§3!X§;
                  return Boolean(Save.§@!A§().get(_loc8_.§=-§,Boolean(_loc8_.§ -§)));
               }
               §§push(true);
               if(!_loc9_)
               {
                  §§goto(addr0120);
               }
               break;
            }
            return §§pop();
         }
         §§push(_loc3_);
         if(_loc10_)
         {
            §§goto(addr00d6);
         }
         addr0120:
         return §§pop();
      }
   }
}

