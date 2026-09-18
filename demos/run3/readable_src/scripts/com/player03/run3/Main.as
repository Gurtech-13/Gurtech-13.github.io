package com.player03.run3
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §!!=§.§"C§;
   import §!!X§.§!_§;
   import §!!X§.§`Q§;
   import §!D§.§1!&§;
   import map.Map;
   import §"!M§.§9!5§;
   import §#!a§.§4!Y§;
   import §%!Q§.§+#§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §%G§.§ m§;
   import §+!1§.§'!b§;
   import §+!1§.§[!9§;
   import §+!4§.§8!_§;
   import §-!!§.§&!;§;
   import §-!!§.ScrollIndicator;
   import layout3d.§>N§;
   import layout3d.TunnelLayout3D;
   import layout3d.Layout3D;
   import scenes.Cutscenes;
   import scenes.LeaveItHere;
   import §4!6§.§!!V§;
   import §4!6§.§'!Y§;
   import §4!6§.§=s§;
   import §4!8§.§[!!§;
   import §4n§.§3!G§;
   import §4n§.Achievement;
   import §4n§.Achievements;
   import §6!Q§.§#W§;
   import §6!Q§.§'!E§;
   import §6!Q§.§]u§;
   import game.§5v§;
   import game.Game;
   import §8!0§.§2_§;
   import §<&§.§6!>§;
   import §>!O§.§ 3§;
   import §>!O§.§;R§;
   import §>!O§.§^`§;
   import §>T§.§"=§;
   import §>d§.§#l§;
   import §@]§.§4$§;
   import §[!P§.§@$§;
   import §[^§.§5p§;
   import §[^§.§6!-§;
   import §[^§.§>!3§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.api.§<,§;
   import com.player03.run3.api.DevMessage;
   import com.player03.run3.api.GlobalEventManager;
   import com.player03.run3.api.PlayFabAPI;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.level.§[p§;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.menu.§#C§;
   import com.player03.run3.menu.§'Q§;
   import com.player03.run3.menu.§;!G§;
   import com.player03.run3.menu.§[!<§;
   import com.player03.run3.save.§0!#§;
   import com.player03.run3.save.§2!;§;
   import com.player03.run3.save.§2o§;
   import com.player03.run3.save.§4!^§;
   import com.player03.run3.save.§>!6§;
   import flash.Boot;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.UncaughtErrorEvent;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.ui.Mouse;
   import haxe.Timer;
   import haxeutils.sound.§5! §;
   import haxeutils.sound.AdvancedSound;
   import nme3D.Scene3D;
   import nme3D.Context3DUtils;
   import nme3D.model.§'h§;
   import nme3D.model.§7v§;
   import nme3D.model.Model;
   import nme3D.shader.§<!9§;
   import openfl.Assets;
   import openfl.Lib;
   import unitsystem.§7o§;
   
   public class Main extends §7o§
   {
      
      public static var §81§:String;
      
      public static var §6i§:String;
      
      public static var instance:Main;
      
      public static var §%p§:String = "Permanent Marker";
      
      public var tunnel:Level;
      
      public var §9,§:Sprite;
      
      public var §9G§:Boolean;
      
      public var §1U§:Number;
      
      public var initDone:Boolean;
      
      public var §[W§:Game;
      
      public function Main()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         initDone = false;
         §9G§ = false;
         loop0:
         while(true)
         {
            if(Main.instance != null)
            {
               if(!_loc2_)
               {
                  break;
               }
               Boot.lastError = new Error();
               if(!_loc1_)
               {
                  throw new Error("Main is a singleton!");
               }
            }
            else
            {
               Main.instance = this;
            }
            § L§.high = 910672;
            §&d§.§8x§(1200,800);
            while(true)
            {
               if(_loc2_)
               {
                  § L§.high = 259804;
                  §§push(this);
                  §§push([new §"=§(),new §5p§(),new §[p§(),new §6!-§(),new §>!3§()]);
                  §§push(null);
                  §§push(§1J§);
                  if(!_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().super(§§pop(),§§pop(),§§pop());
                  § L§.high = 451198;
                  break loop0;
               }
               addr0150:
               §'!b§.§;!]§ = "img/singledpi/texture/";
               §7o§.§@n§(16777215,Main.§81§);
               §7o§.§3t§("Starting Run 3",{
                  "fileName":"Main.hx",
                  "lineNumber":251,
                  "className":"com.player03.run3.Main",
                  "methodName":"new"
               });
               Lib.get_current().loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,§#Q§);
               § L§.high = 426699;
               §§push(Context3DUtils);
               §§push(init);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§pop().init(§§pop(),1.2566370614359172,15,3000,true,true);
               break;
            }
            §§goto(addr01dc);
         }
         §§push(super.§+D§(true));
         if(_loc2_)
         {
            §§push(Boolean(§§pop()));
         }
         §§pop();
         §§push(§§findproperty(§1U§));
         §§push(Number(Date.now().getTime()));
         if(_loc2_)
         {
            §§push(Timer.stamp());
            if(_loc2_)
            {
               §§push(Number(§§pop()));
            }
            §§push(§§pop() - §§pop());
         }
         §§pop().§1U§ = §§pop();
         Main.§81§ = Assets.getFont("font/Comfortaa.otf").fontName;
         if(!_loc1_)
         {
            Main.§6i§ = Assets.getFont("font/COMFORTAA-BOLD.TTF").fontName;
            Main.§%p§ = Assets.getFont("font/PERMANENTMARKER.TTF").fontName;
            §&!;§.§=T§ = Main.§81§;
            if(!_loc1_)
            {
               §§goto(addr0150);
            }
         }
         addr01dc:
      }
      
      override public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:* = null as DisplayObject;
         var _loc3_:* = false;
         var _loc4_:* = null as Level;
         loop1:
         while(true)
         {
            if(_loc6_)
            {
               § L§.mid = 656850;
               if(!_loc5_)
               {
                  loop2:
                  while(true)
                  {
                     if(stage.focus != stage)
                     {
                        if(!_loc6_)
                        {
                           break;
                        }
                        _loc2_ = stage.focus;
                        if(!_loc5_)
                        {
                           loop0:
                           while(_loc2_ != stage)
                           {
                              while(true)
                              {
                                 §§push(true);
                                 if(_loc6_)
                                 {
                                    if(_loc2_ == null)
                                    {
                                       break;
                                    }
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                 }
                                 §§pop();
                                 if(!_loc5_)
                                 {
                                    §§push(!_loc2_.visible);
                                    if(_loc6_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    break;
                                 }
                                 break loop0;
                              }
                              if(§§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    stage.focus = stage;
                                 }
                                 break;
                              }
                              _loc2_ = _loc2_.parent;
                           }
                        }
                     }
                     loop4:
                     while(true)
                     {
                        if(§]u§.§@!A§().visible)
                        {
                           if(!_loc6_)
                           {
                              break;
                           }
                           §]u§.§@!A§().update(param1);
                        }
                        loop5:
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              §§push(true);
                              if(_loc6_)
                              {
                                 if(!§9G§)
                                 {
                                    if(!_loc5_)
                                    {
                                       §§pop();
                                       §§push(Context3DUtils.§7?§);
                                    }
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(§§pop())
                                 {
                                    if(level != null)
                                    {
                                       level.display(0);
                                       break loop2;
                                    }
                                    addr012b:
                                    Context3DUtils.§7?§ = false;
                                    §9G§ = Context3DUtils.§7?§;
                                    §9,§.visible = §9G§;
                                    if(_loc5_)
                                    {
                                       break loop1;
                                    }
                                 }
                                 §9G§ = false;
                                 if(!_loc5_)
                                 {
                                    §§push(Context3DUtils.§7?§);
                                    if(_loc6_)
                                    {
                                       if(!§§pop())
                                       {
                                          § L§.mid = 740607;
                                          while(true)
                                          {
                                             if(level == null)
                                             {
                                                if(§[W§ != null)
                                                {
                                                   §,Z§(§[W§);
                                                   if(_loc6_)
                                                   {
                                                      §[W§.§&O§();
                                                      if(_loc6_)
                                                      {
                                                         §[W§ = null;
                                                         if(!_loc5_)
                                                         {
                                                            return;
                                                         }
                                                         break loop5;
                                                      }
                                                   }
                                                   break;
                                                }
                                                §[!<§.§@!A§().update(param1);
                                                if(_loc6_)
                                                {
                                                   §§goto(addr01ef);
                                                }
                                             }
                                             else if(§5v§.instance != null && Boolean(§5v§.instance.visible))
                                             {
                                                §5v§.instance.update(param1);
                                             }
                                             §§push(paused);
                                             if(!_loc5_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   break loop5;
                                                }
                                                addr0255:
                                                if(§79§.§+l§("reset"))
                                                {
                                                   break loop4;
                                                }
                                                §§push(false);
                                             }
                                             break loop6;
                                          }
                                          addr023a:
                                          §0!#§.§@!A§().§1!,§(param1);
                                          break loop1;
                                       }
                                       §+D§(true);
                                       if(_loc6_)
                                       {
                                          return;
                                       }
                                       §§goto(addr01ef);
                                    }
                                    §§goto(addr0255);
                                 }
                                 §§goto(addr023a);
                              }
                              §§goto(addr0255);
                           }
                           _loc3_ = Boolean(§§pop());
                           break;
                        }
                        §§push(_loc3_);
                        if(!_loc5_)
                        {
                           if(§§pop())
                           {
                              _loc4_ = tunnel;
                              if(!_loc5_)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§push(false);
                                    if(!_loc5_)
                                    {
                                       if(_loc4_.extraParams.onlyResetCharacter != null)
                                       {
                                          while(true)
                                          {
                                             if(_loc6_)
                                             {
                                                §§pop();
                                                if(!_loc6_)
                                                {
                                                   break loop7;
                                                }
                                                §§push(Boolean(_loc4_.extraParams.onlyResetCharacter(_loc4_)));
                                                if(!_loc6_)
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
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       _loc4_.reset();
                                    }
                                 }
                                 _loc4_.§>j§();
                                 if(_loc6_)
                                 {
                                 }
                              }
                           }
                           addr0318:
                           §§push(!paused);
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              tunnel.update(param1);
                              if(!_loc5_)
                              {
                                 if(tunnel != null)
                                 {
                                    addr0344:
                                    tunnel.display(param1);
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                 }
                              }
                           }
                           addr0352:
                           §§push(§0!#§.§@!A§());
                           §§push(param1);
                           if(_loc6_)
                           {
                              §§push(§§pop() * 0.8);
                           }
                           §§pop().§1!,§(§§pop());
                           break;
                        }
                        return;
                     }
                     _loc4_ = tunnel;
                     while(true)
                     {
                        if(_loc6_)
                        {
                           §§push(false);
                           if(_loc4_.fadeOut != null)
                           {
                              §§pop();
                              §§push(!_loc4_.fadeOut.§?!K§());
                              if(!_loc5_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                           §§push(!§§pop());
                           if(!_loc5_)
                           {
                              _loc3_ = §§pop();
                              if(!_loc5_)
                              {
                                 break loop5;
                              }
                              break;
                           }
                           §§goto(addr0318);
                        }
                        §§goto(addr0344);
                     }
                     §§goto(addr0352);
                  }
                  Scene3D.§@z§();
                  §§goto(addr012b);
               }
               addr01ef:
               §0!#§.§@!A§().§1!,§(param1);
               return;
            }
            §§goto(addr023a);
         }
      }
      
      override public function §+D§(param1:Boolean) : Boolean
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
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        §§push(false);
                        §§push(paused);
                        if(_loc2_)
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 §§push(!param1);
                              }
                              if(§§pop())
                              {
                                 § L§.mid = 972160;
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 break loop5;
                              }
                              §§push(false);
                              if(!_loc2_)
                              {
                                 break loop0;
                              }
                              §§push(param1);
                           }
                           Context3DUtils.§7?§ = false;
                           if(level == null)
                           {
                              if(!_loc3_)
                              {
                                 §§push(true);
                                 if(_loc2_)
                                 {
                                    return §§pop();
                                 }
                                 break loop1;
                              }
                              break loop4;
                           }
                           Timer.delay(Mouse.hide,200);
                           if(!_loc3_)
                           {
                              break loop3;
                           }
                           §§goto(addr00da);
                        }
                        if(§§pop())
                        {
                           break loop1;
                        }
                        §§goto(addr00b0);
                     }
                     §§goto(addr00ce);
                  }
                  §§goto(addr00ea);
               }
               §§goto(addr00f2);
            }
            §§pop();
            if(!_loc2_)
            {
               break loop3;
            }
            §§push(paused);
            if(!_loc3_)
            {
               §§push(!§§pop());
               if(!_loc3_)
               {
                  break;
               }
            }
            §§goto(addr00fb);
         }
         addr00b0:
         if(Boolean(§§pop()))
         {
            while(true)
            {
               if(!_loc3_)
               {
                  § L§.mid = 241735;
                  addr00ce:
                  Mouse.show();
                  if(_loc3_)
                  {
                     break;
                  }
                  if(tunnel == null)
                  {
                     break;
                  }
                  if(_loc3_)
                  {
                     break;
                  }
               }
               addr00ea:
               tunnel.§=X§();
               break;
            }
         }
         addr00fb:
         return Boolean(super.§+D§(param1));
         addr00f2:
      }
      
      public function §9!^§(param1:String) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            § L§.mid = 143904;
         }
         §§push(param1);
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc3_)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!_loc4_)
                     {
                        §§push("L");
                        if(_loc4_)
                        {
                           break;
                        }
                        if(§§pop() == §§pop())
                        {
                           if(!_loc4_)
                           {
                              §21§(null);
                              if(_loc3_)
                              {
                                 break loop0;
                              }
                              break loop1;
                           }
                           break loop0;
                        }
                        §§push(_loc2_);
                     }
                     §§push("M");
                     break;
                  }
                  if(§§pop() == §§pop())
                  {
                     if(!_loc4_)
                     {
                        break;
                     }
                     break loop0;
                  }
                  §"K§(null);
                  break loop0;
               }
            }
            break loop1;
         }
      }
      
      public function §9!D§(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc2_)
               {
                  stage.quality = "medium";
                  if(!_loc2_)
                  {
                     break;
                  }
                  Save.§@!A§().§1!R§("quality","M");
                  if(_loc2_)
                  {
                     Context3DUtils.§"e§(0);
                     if(!_loc2_)
                     {
                        break loop0;
                     }
                  }
               }
               stage.frameRate = 48;
               if(_loc2_)
               {
                  break;
               }
               break loop0;
            }
            §9!5§.§1h§(stage.quality);
            break;
         }
      }
      
      public function §21§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               stage.quality = "low";
               if(_loc2_)
               {
                  break;
               }
            }
            Save.§@!A§().§1!R§("quality","L");
            if(_loc3_)
            {
               Context3DUtils.§"e§(0);
               if(_loc3_)
               {
                  break;
               }
               §§goto(addr0085);
            }
            break;
         }
         stage.frameRate = 30;
         if(_loc3_)
         {
            §9!5§.§1h§(stage.quality);
         }
         addr0085:
      }
      
      override public function §,Z§(param1:§>N§, param2:Boolean = false) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc4_:* = null as §5! §;
         var _loc3_:Level = tunnel;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  §§push(false);
                  if(!_loc7_)
                  {
                     if(param1 != null)
                     {
                        §§pop();
                        if(_loc7_)
                        {
                           break loop0;
                        }
                        §§push(param1.§"[§ == null);
                     }
                     if(§§pop())
                     {
                        param1 = null;
                     }
                     if(param1 == _loc3_)
                     {
                        return;
                     }
                     § L§.mid = 283103;
                     loop8:
                     while(true)
                     {
                        loop9:
                        while(true)
                        {
                           loop10:
                           while(true)
                           {
                              §§push(false);
                              if(_loc6_)
                              {
                                 loop11:
                                 while(true)
                                 {
                                    if(param1 == null)
                                    {
                                       if(!_loc7_)
                                       {
                                          §§pop();
                                          §§push(_loc3_ == null);
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          §§push(!§§pop());
                                       }
                                       §§push(Boolean(§§pop()));
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          _loc3_.§+!E§();
                                          if(tunnel != _loc3_)
                                          {
                                             if(_loc6_)
                                             {
                                                return;
                                             }
                                             break;
                                          }
                                       }
                                       super.§,Z§(param1,param2);
                                       if(_loc6_)
                                       {
                                          tunnel = level;
                                       }
                                       §§push(false);
                                       if(!_loc6_)
                                       {
                                          break loop8;
                                       }
                                       if(param1 == null)
                                       {
                                          if(!_loc6_)
                                          {
                                             break loop11;
                                          }
                                          §§pop();
                                          §§push(_loc3_ != null);
                                          if(!_loc6_)
                                          {
                                             break loop10;
                                          }
                                       }
                                       if(!§§pop())
                                       {
                                          §§push(false);
                                          break loop11;
                                       }
                                       if(_loc7_)
                                       {
                                          break;
                                       }
                                       § L§.mid = 169592;
                                       if(!_loc7_)
                                       {
                                          §+D§(true);
                                          if(!_loc7_)
                                          {
                                             Currency.§@!A§().§`L§();
                                             if(!_loc7_)
                                             {
                                                break;
                                             }
                                             break loop1;
                                          }
                                          addr0141:
                                          §]u§.§@!A§().§]]§.reset();
                                          if(_loc7_)
                                          {
                                             break loop2;
                                          }
                                          §<!9§.§^!<§();
                                       }
                                       §]u§.§@!A§().§,!@§();
                                       if(_loc7_)
                                       {
                                          addr01ef:
                                          §]u§.§@!A§().§,!@§();
                                          break loop0;
                                       }
                                       _loc4_ = §5! §.§@!A§();
                                       _loc4_.§#v§(null);
                                       if(!_loc7_)
                                       {
                                          _loc4_.§6C§(null);
                                          if(_loc6_)
                                          {
                                             §0!#§.§@!A§().§]U§();
                                          }
                                          break loop1;
                                       }
                                       continue loop4;
                                    }
                                    §[!<§.§@!A§().reset();
                                    if(_loc6_)
                                    {
                                       §3!G§.§07§ = null;
                                       if(_loc7_)
                                       {
                                          break loop9;
                                       }
                                       §§goto(addr0141);
                                    }
                                    §§goto(addr015e);
                                 }
                                 if(param1 == null)
                                 {
                                    break loop8;
                                 }
                              }
                              §§pop();
                              break loop9;
                           }
                           §§push(Boolean(§§pop()));
                           break loop8;
                        }
                        §§push(_loc3_ == null);
                        if(_loc6_)
                        {
                           break loop10;
                        }
                        break;
                     }
                  }
                  break loop8;
               }
               §]u§.§@!A§().§5!@§ = false;
               §§goto(addr01ef);
            }
            loop3:
            while(true)
            {
               §§push(false);
               if(tunnel != null)
               {
                  if(_loc7_)
                  {
                     break;
                  }
                  §§pop();
                  §§push(tunnel.§"[§ != null);
               }
               if(§§pop())
               {
                  tunnel.init();
               }
               loop4:
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     §§push(false);
                     if(_loc6_)
                     {
                        if(tunnel != null)
                        {
                           if(!_loc7_)
                           {
                              §§pop();
                              while(true)
                              {
                                 if(!_loc7_)
                                 {
                                    §§push(tunnel.§"[§ == null);
                                    if(!_loc7_)
                                    {
                                       break loop3;
                                    }
                                    addr02c9:
                                    §§pop();
                                    break;
                                 }
                                 addr0271:
                                 §,Z§(null);
                                 if(_loc6_)
                                 {
                                    return;
                                 }
                                 break;
                              }
                              addr02ca:
                              §§push(true);
                              if(§5v§.instance != null)
                              {
                                 §§goto(addr02d8);
                              }
                           }
                           break loop4;
                        }
                        addr026d:
                        if(§§pop())
                        {
                           §§goto(addr0271);
                        }
                        else
                        {
                           §[!<§.§@!A§().visible = param1 == null;
                           while(true)
                           {
                              if(§5v§.instance != null)
                              {
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                                 §5v§.instance.§6&§(param1);
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                              }
                              §§push(false);
                              if(param1 == null)
                              {
                                 break loop5;
                              }
                              if(_loc7_)
                              {
                                 break loop5;
                              }
                              §§goto(addr02c9);
                           }
                        }
                        §§goto(addr02ca);
                     }
                     addr02d8:
                     §§pop();
                     §§push(!§5v§.instance.visible);
                     if(!_loc7_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc7_)
                        {
                           break loop4;
                        }
                     }
                     §§goto(addr02fe);
                  }
                  addr02fe:
                  var _loc5_:* = §§pop();
                  if(_loc6_)
                  {
                     §]u§.§@!A§().visible = _loc5_;
                     if(!_loc7_)
                     {
                        §]u§.§@!A§().reset();
                     }
                  }
                  return;
               }
               §§push(Boolean(§§pop()));
               break loop5;
            }
            §§goto(addr026d);
         }
         §+D§(false);
         §+&§();
         break loop1;
      }
      
      public function §"K§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               stage.quality = "high";
               if(_loc3_)
               {
                  Save.§@!A§().§1!R§("quality",null);
                  if(!_loc3_)
                  {
                     break;
                  }
               }
            }
            Context3DUtils.§"e§(2);
            if(_loc3_)
            {
               stage.frameRate = 60;
               if(_loc3_)
               {
                  break;
               }
               §§goto(addr0080);
            }
            break;
         }
         §9!5§.§1h§(stage.quality);
         addr0080:
      }
      
      public function §#!B§() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push("http://ad-x.co.uk/API/click/Kon285mf20DP/web3537fc2a77d850");
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc3_)
         {
            Lib.getURL(new URLRequest(_loc1_),"_blank");
         }
      }
      
      public function §=!6§() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push("https://itunes.apple.com/app/run!!!/id907239855");
         if(!_loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!_loc2_)
         {
            Lib.getURL(new URLRequest(_loc1_),"_blank");
         }
      }
      
      public function §#Q§(param1:UncaughtErrorEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               §§push(§ L§.display(param1.error));
               if(_loc2_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(!§§pop())
               {
                  break;
               }
               if(_loc2_)
               {
                  param1.stopImmediatePropagation();
                  if(!_loc2_)
                  {
                     break;
                  }
               }
            }
            §+D§(true);
            break;
         }
      }
      
      public function §%!;§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_)
            {
               § L§.low = 490627;
               if(_loc1_)
               {
                  §>!6§.§>!X§();
                  if(!_loc1_)
                  {
                     break;
                  }
               }
            }
            §,Z§(null);
            break;
         }
      }
      
      public function §7J§(param1:MouseEvent) : void
      {
      }
      
      public function §6J§(param1:MouseEvent) : void
      {
         Mouse.show();
      }
      
      public function §#f§(param1:int, param2:§1!&§, param3:§,a§ = undefined, param4:Object = undefined) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         while(true)
         {
            while(true)
            {
               §§push(§4!Y§.§#7§);
               if(!_loc7_)
               {
                  §§push(0);
                  if(!_loc6_)
                  {
                     break;
                  }
                  if(§§pop() != §§pop())
                  {
                     continue loop4;
                  }
                  §§push(param1);
               }
               §§push(param2.levelCount - 2);
               if(!_loc7_)
               {
                  break;
               }
               §§goto(addr0089);
            }
            if(§§pop() >= §§pop())
            {
               return;
            }
            while(true)
            {
               if(param4 == null)
               {
                  §§push({});
                  if(!_loc6_)
                  {
                     break;
                  }
                  param4 = §§pop();
               }
               param4.stopLoadingAfter = param2.levelCount - 3;
               if(_loc6_)
               {
                  param4.noCrumblingTiles = true;
                  param4.character = CharacterRegistry.§-P§;
                  continue loop4;
               }
               §§goto(addr008d);
            }
            §§goto(addr0131);
         }
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
                     §§push(param1);
                     if(!_loc7_)
                     {
                        addr0089:
                        if(§§pop() < 0)
                        {
                           addr008d:
                           §§push(param1 + param2.levelCount);
                           if(!_loc6_)
                           {
                              break;
                           }
                           param1 = int(§§pop());
                        }
                        §§push(true);
                        if(param1 >= 0)
                        {
                           §§pop();
                           §§push(param1 >= param2.levelCount);
                           if(!_loc6_)
                           {
                              break loop4;
                           }
                        }
                        if(!§§pop())
                        {
                           break loop3;
                        }
                        if(_loc7_)
                        {
                           break loop2;
                        }
                        §§push(0);
                     }
                     param1 = int(§§pop());
                     break loop3;
                  }
                  §§goto(addr010f);
               }
               §§goto(addr0101);
            }
            loop5:
            while(true)
            {
               §§push(param2.§'m§(param1));
               if(!_loc7_)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc6_)
                  {
                     break;
                  }
               }
               while(true)
               {
                  §§push(!§§pop());
                  if(_loc6_)
                  {
                     break loop5;
                  }
                  §§goto(addr0101);
               }
               addr0115:
               if(tunnel == null)
               {
                  if(!_loc7_)
                  {
                     break loop2;
                  }
                  §§goto(addr012f);
               }
               §§goto(addr013a);
            }
            if(§§pop())
            {
               if(!_loc7_)
               {
                  §§push(param2.§'m§(0));
                  if(_loc6_)
                  {
                     break loop4;
                  }
                  addr0101:
                  if(§§pop())
                  {
                     addr010f:
                     §§push(0);
                     if(!_loc7_)
                     {
                        §§push(int(§§pop()));
                     }
                     param1 = §§pop();
                     break loop6;
                  }
                  return;
               }
            }
            §§goto(addr0115);
         }
         if(param4 == null)
         {
            addr0131:
            param4 = {};
            addr012f:
         }
         param4.randomizeOnStart = true;
         var _loc5_:Level = new Level(param1,param2,param3,param4);
         addr013a:
         if(!_loc7_)
         {
            if(_loc5_.§"[§ != null)
            {
               if(_loc6_)
               {
                  §,Z§(_loc5_);
                  if(_loc7_)
                  {
                  }
               }
            }
            else
            {
               §,Z§(null);
            }
         }
      }
      
      override public function §8Z§(param1:int = 0) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.§8Z§(param1);
         }
      }
      
      public function init() : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         if(_loc9_)
         {
            § L§.high = 134153;
            if(_loc9_)
            {
               Context3DUtils.§#!%§(0);
               if(_loc9_)
               {
                  §5! §.§@!A§().§`!?§ = 2;
               }
            }
         }
         var _loc1_:§5! § = §5! §.§@!A§();
         var _loc2_:§2o§ = Save.musicMuted;
         if(!_loc10_)
         {
            _loc1_.§32§(Boolean(Save.§@!A§().get(_loc2_.§=-§,Boolean(_loc2_.§ -§))));
         }
         var _loc3_:§5! § = §5! §.§@!A§();
         var _loc4_:§2o§ = Save.soundMuted;
         while(true)
         {
            while(true)
            {
               if(_loc9_)
               {
                  _loc3_.§6e§(Boolean(Save.§@!A§().get(_loc4_.§=-§,Boolean(_loc4_.§ -§))));
                  if(_loc9_)
                  {
                     §!!b§.addChild(§]u§.§@!A§());
                     if(_loc10_)
                     {
                        break;
                     }
                  }
                  §!!b§.addChild(§'!E§.§@!A§());
                  if(!_loc9_)
                  {
                     continue loop3;
                  }
               }
               Layout3D.§0!X§ = new TunnelLayout3D(4,4);
               if(_loc9_)
               {
                  break;
               }
               continue loop3;
            }
            §"C§.init(§]u§.§@!A§());
            continue loop3;
         }
         var _loc5_:§8!_§ = new §8!_§(["pause"]);
         _loc5_.§&M§("pause",27);
         _loc5_.§'S§("unpause",§"C§.§?!&§.§;!'§("jump"));
         _loc5_.§<!E§("reset",82);
         §79§ = _loc5_;
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               while(true)
               {
                  if(!_loc10_)
                  {
                     § L§.high = 376308;
                     if(!_loc9_)
                     {
                        break;
                     }
                     §!_§.init();
                     §>K§.§@!A§();
                     CharacterRegistry.init();
                     if(_loc10_)
                     {
                        break loop3;
                     }
                     §>!6§.§>!X§();
                     if(_loc10_)
                     {
                        break loop2;
                     }
                  }
                  §#l§.§>]§();
                  §`Q§.init();
                  if(!_loc10_)
                  {
                     Achievements.init();
                     ScrollIndicator.§>!Z§ = "menu/ScrollIndicator.png";
                     break;
                  }
                  addr01c6:
                  addChildAt(§[!<§.§@!A§(),int(getChildIndex(§!!b§)));
                  if(!_loc10_)
                  {
                     break loop3;
                  }
                  §§goto(addr020c);
               }
               §[!<§.§@!A§().reset();
               if(!_loc10_)
               {
                  §§goto(addr01c6);
               }
               §§goto(addr022d);
            }
            §<,§.§9&§();
            §<,§.§;Q§();
            if(_loc9_)
            {
               §<,§.§3l§();
               if(_loc9_)
               {
                  addr020c:
                  §9'§.§@!A§().§?!;§.submit("Initialized",1);
               }
               break;
            }
            §§goto(addr0227);
         }
         DevMessage.§@!A§();
         addr0227:
         §#C§.§@!A§();
         addr022d:
         §[!!§.§@!A§();
         §;!G§.§@!A§().§7+§.reset();
         var _loc6_:§4!^§ = new §4!^§("infinite");
         _loc6_.§4Z§(Save.§,>§);
         if(!_loc10_)
         {
            _loc6_.§4Z§(Save.mostBatteries);
            PlayFabAPI.§@!A§();
         }
         §'Q§.§0!2§();
         while(true)
         {
            if(_loc9_)
            {
               § L§.init();
               if(!_loc9_)
               {
                  break;
               }
            }
            § L§.high = 13718;
            §9,§ = new Sprite();
            §9,§.graphics.beginFill(0);
            §9,§.graphics.drawRect(0,0,100,100);
            break;
         }
         var _loc7_:§ 7§ = new §?y§(§9,§);
         if(_loc9_)
         {
            §&d§.§1$§().add(_loc7_,new §@$§(true,0));
         }
         _loc7_ = new §?y§(§9,§);
         if(_loc9_)
         {
            §&d§.§1$§().add(_loc7_,new §@$§(false,0));
         }
         var _loc8_:TextField = §&!;§.§9Q§(16777215,400,null,"Loading...");
         _loc7_ = new §?y§(_loc8_);
         if(!_loc10_)
         {
            §&d§.§1$§().add(_loc7_,new §4$§(true,0.5));
         }
         _loc7_ = new §?y§(_loc8_);
         while(true)
         {
            if(_loc9_)
            {
               §&d§.§1$§().add(_loc7_,new §4$§(false,0.5));
               if(_loc10_)
               {
                  break;
               }
               §9,§.addChild(_loc8_);
               §9,§.visible = false;
               while(true)
               {
                  if(_loc9_)
                  {
                     addChild(§9,§);
                     stage.addEventListener(MouseEvent.MOUSE_MOVE,§6J§);
                     if(_loc10_)
                     {
                        break;
                     }
                  }
                  §§push(GlobalEventManager);
                  §§push("saveFileChanged");
                  §§push(§%!;§);
                  if(_loc9_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().addEventListener(§§pop(),§§pop());
                  stage.addEventListener(MouseEvent.RIGHT_CLICK,§7J§);
                  break;
               }
               §+D§(true);
               § L§.high = 770873;
               §6!>§.§63§(Save.§@!A§().§'!;§);
               §4!Y§.§@!#§();
               while(true)
               {
                  if(§4!Y§.§#7§ == 0)
                  {
                     if(Number(Math.random()) < 0.0413)
                     {
                        if(!_loc9_)
                        {
                           break;
                        }
                        Save.§@!A§().§#!?§();
                        if(_loc10_)
                        {
                           break;
                        }
                     }
                  }
                  Save.§@!A§().§2]§();
                  break;
               }
            }
            initDone = true;
            break;
         }
      }
      
      public function §4C§() : String
      {
         return "up or space";
      }
      
      public function §1J§(param1:KeyboardEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = null as §]u§;
         if(_loc3_)
         {
            § L§.high = 899054;
            if(!_loc4_)
            {
               loop0:
               while(true)
               {
                  if(§9G§)
                  {
                     if(!_loc4_)
                     {
                        §§goto(addr0041);
                     }
                     addr0077:
                     _loc2_ = §]u§.§@!A§();
                     loop1:
                     while(true)
                     {
                        §§push(false);
                        if(!_loc4_)
                        {
                           while(true)
                           {
                              if(_loc2_.visible)
                              {
                                 if(!_loc3_)
                                 {
                                    break loop1;
                                 }
                                 §§pop();
                                 §§push(int(_loc2_.blockingOverlays.length) > 0);
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 §§push(Boolean(§§pop()));
                                 if(_loc4_)
                                 {
                                    break loop1;
                                 }
                              }
                              if(§§pop())
                              {
                                 §[!<§.§@!A§().§4X§(§;!G§.§@!A§());
                                 §,Z§(null);
                                 addr01fc:
                                 param1.stopImmediatePropagation();
                                 break loop0;
                              }
                              §§push(paused);
                              if(!_loc4_)
                              {
                                 break;
                              }
                              break loop1;
                           }
                        }
                        §§push(!§§pop());
                        break;
                     }
                     if(§§pop())
                     {
                        §+D§(true);
                     }
                     else
                     {
                        §[!<§.§@!A§().§4X§(§;!G§.§@!A§());
                        if(!_loc4_)
                        {
                           §,Z§(null);
                        }
                     }
                  }
                  else
                  {
                     if(§[!<§.§@!A§() == null)
                     {
                        if(_loc3_)
                        {
                           return;
                        }
                     }
                     else
                     {
                        if(level == null)
                        {
                           _loc2_ = §]u§.§@!A§();
                           loop3:
                           while(true)
                           {
                              §§push(false);
                              if(!_loc4_)
                              {
                                 while(true)
                                 {
                                    if(_loc2_.visible)
                                    {
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       §§pop();
                                       §§push(int(_loc2_.blockingOverlays.length) > 0);
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       §§push(Boolean(§§pop()));
                                       if(_loc4_)
                                       {
                                          break loop3;
                                       }
                                    }
                                    if(§§pop())
                                    {
                                       §]u§.§@!A§().§4P§();
                                    }
                                    else
                                    {
                                       if(§[!<§.§@!A§().§1!Y§ == §;!G§.§@!A§())
                                       {
                                          §§push(§;!G§.§@!A§().§,+§());
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          break loop3;
                                       }
                                       §[!<§.§@!A§().§4X§(§;!G§.§@!A§());
                                    }
                                    §§goto(addr01fc);
                                 }
                              }
                              §§push(Boolean(§§pop()));
                              break;
                           }
                           if(§§pop())
                           {
                              §;!G§.§@!A§().§;!M§();
                              if(!_loc4_)
                              {
                                 §§goto(addr01fc);
                              }
                           }
                           else
                           {
                              §[!<§.§@!A§().visible = true;
                           }
                           return;
                        }
                        if(_loc4_)
                        {
                           break;
                        }
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr01fc);
               }
            }
            return;
         }
         addr0041:
      }
      
      public function §+&§() : void
      {
      }
   }
}

