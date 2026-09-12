package com.player03.run3.menu
{
   import §!!"§.§-m§;
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §%!Q§.§ !>§;
   import §%!Q§.§&r§;
   import §%!Q§.§+#§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §-!!§.§&!;§;
   import §-!!§.§+"§;
   import §-v§.§%!3§;
   import §-v§.§<=§;
   import §3!b§.Protip;
   import §4!6§.§'P§;
   import §6!Q§.§"q§;
   import §6!Q§.§'!E§;
   import §=w§.§,D§;
   import §=w§.§@[§;
   import §>!O§.§0S§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import §[!P§.§30§;
   import §[!P§.§@$§;
   import §`_§.§3!J§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.layout.§[k§;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.save.§-Q§;
   import flash.Lib;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.§"B§;
   import nme3D.shader.PositionUVDepthVertex;
   import unitsystem.§7o§;
   
   public class CreditsScreen extends §[k§ implements §@[§, §3!!§
   {
      
      public static var instance:CreditsScreen;
      
      public var §]i§:Rectangle;
      
      public var §1y§:Number;
      
      public var §"!^§:TextField;
      
      public function CreditsScreen()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_)
            {
               super();
               if(!_loc1_)
               {
                  break;
               }
            }
            addEventListener(Event.ADDED_TO_STAGE,§;#§);
            break;
         }
      }
      
      public static function §`!§(param1:MouseEvent) : void
      {
         Lib.getURL(new URLRequest("http://jessevalentinemusic.bandcamp.com/album/run-3-ost"));
      }
      
      public static function §&!%§() : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc1_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = null as StringMap;
         var _loc4_:* = null;
         var _loc5_:* = null as § !>§;
         var _loc6_:* = null as §&r§;
         var _loc7_:* = null as Vector.<§+#§>;
         var _loc8_:* = null as §+#§;
         loop2:
         while(true)
         {
            while(true)
            {
               loop5:
               while(true)
               {
                  loop10:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc9_)
                        {
                           §§push(§9'§.§@!A§().§?!;§.isGuest());
                           if(_loc10_)
                           {
                              break;
                           }
                           §§push(Boolean(§§pop()));
                           if(!_loc9_)
                           {
                              break loop10;
                           }
                           if(§§pop())
                           {
                              §§push(false);
                              break loop5;
                           }
                           §§push(§'>§.§89§);
                           §§push(§9'§.§@!A§().§?!;§.getUsername());
                           if(!_loc10_)
                           {
                              §§push(§§pop());
                           }
                           §§push(int(§§pop().indexOf(§§pop(),0)));
                           if(_loc10_)
                           {
                              break loop2;
                           }
                           §§push(int(§§pop()));
                           if(_loc10_)
                           {
                              break loop2;
                           }
                           _loc2_ = §§pop();
                        }
                        §§push(true);
                        if(!_loc10_)
                        {
                           if(_loc2_ >= 0)
                           {
                              §§pop();
                              §§push(_loc2_);
                              if(_loc9_)
                              {
                                 break loop2;
                              }
                              §§goto(addr00d4);
                           }
                           §§goto(addr00c8);
                        }
                        §§goto(addr00ce);
                     }
                     §§goto(addr00f3);
                  }
                  §§goto(addr00c7);
               }
               §§goto(addr00f2);
            }
            if(_loc1_)
            {
               _loc3_ = §>K§.§@!A§().§2! §;
               _loc4_ = new §-m§(_loc3_.h,_loc3_.rh);
               if(!_loc10_)
               {
                  while(Boolean(_loc4_.hasNext()))
                  {
                     _loc5_ = _loc4_.next();
                     if(!_loc10_)
                     {
                        _loc5_.§0!R§.§?F§(_loc5_.levelCount);
                     }
                  }
               }
               _loc6_ = §&r§.§@!A§();
               loop6:
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc9_)
                        {
                           §§push(int(§&r§.§@!A§().§;I§.length));
                           if(_loc10_)
                           {
                              break;
                           }
                           §§push(int(§§pop()));
                           if(_loc10_)
                           {
                              break loop7;
                           }
                           _loc2_ = §§pop();
                           if(_loc9_)
                           {
                              §&r§.§,U§.§?F§(_loc2_);
                              if(!_loc9_)
                              {
                                 break loop6;
                              }
                           }
                        }
                        §§push(0);
                        if(_loc9_)
                        {
                           break loop7;
                        }
                        break;
                     }
                     _loc2_ = §§pop();
                     break loop6;
                  }
                  §§push(int(§§pop()));
                  break loop9;
               }
               _loc7_ = §+#§.§,!B§();
               while(true)
               {
                  if(!_loc10_)
                  {
                     while(_loc2_ < int(_loc7_.length))
                     {
                        _loc8_ = _loc7_[_loc2_];
                        if(_loc9_)
                        {
                           _loc2_++;
                           if(!_loc10_)
                           {
                              §§push(_loc8_.§&J§);
                              if(!_loc10_)
                              {
                                 §§push(!§§pop());
                              }
                              if(§§pop())
                              {
                                 if(!_loc10_)
                                 {
                                    §§push(_loc8_.§,U§);
                                    §§push(int(_loc8_.§ b§.length));
                                    if(!_loc10_)
                                    {
                                       §§push(§§pop() + int(_loc8_.§-!>§.length));
                                    }
                                    §§pop().§?F§(§§pop());
                                 }
                              }
                           }
                        }
                     }
                     if(!_loc9_)
                     {
                        break;
                     }
                     Protip.§3S§.§?F§(true);
                     if(!_loc9_)
                     {
                        break;
                     }
                  }
                  §'O§.student.§3>§ = true;
                  break;
               }
            }
            return;
         }
         §§push(2);
         if(!_loc10_)
         {
            while(true)
            {
               §§push(int(§§pop() % §§pop()));
               if(!_loc10_)
               {
                  §§push(0);
                  if(_loc10_)
                  {
                     break;
                  }
                  if(§§pop() != §§pop())
                  {
                     addr00ce:
                     _loc1_ = false;
                     break loop3;
                  }
                  §§push(_loc2_);
               }
               addr00d4:
               §§push(int(§'>§.§89§.indexOf("player_03",0)));
               break;
            }
         }
         §§push(§§pop() <= §§pop());
         if(!_loc10_)
         {
            _loc1_ = §§pop();
            break loop3;
         }
         addr00f3:
         _loc1_ = Boolean(§§pop());
         addr00f2:
         break loop3;
      }
      
      public static function §@!A§() : CreditsScreen
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = null as CreditsScreen;
         if(_loc2_)
         {
            if(CreditsScreen.instance != null)
            {
               return CreditsScreen.instance;
            }
         }
         return CreditsScreen.instance = new CreditsScreen();
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function segfault() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §7o§.§3t§("Manually triggering segfault...",{
            "fileName":"CreditsScreen.hx",
            "lineNumber":159,
            "className":"com.player03.run3.menu.CreditsScreen",
            "methodName":"segfault"
         });
         var _loc1_:Sprite = new Sprite();
         if(_loc2_)
         {
            _loc1_.parent.removeChild(_loc1_);
         }
      }
      
      public function reset() : void
      {
         §7o§.§]!<§();
      }
      
      public function §>!#§() : void
      {
      }
      
      public function §;#§(param1:Event) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc2_:Main = Main.instance;
         var _loc3_:§ !>§ = §>K§.§0x§;
         var _loc4_:§-Q§ = _loc3_.§0!R§;
         §§push(int(Save.§@!A§().get(_loc4_.§=-§,int(_loc4_.§ -§))));
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(_loc3_.levelCount);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc7_)
            {
               while(true)
               {
                  §§push(_loc5_);
                  if(_loc7_)
                  {
                     §§push(_loc6_);
                     if(_loc8_)
                     {
                        break;
                     }
                     if(§§pop() < §§pop())
                     {
                        if(_loc8_)
                        {
                           break loop0;
                        }
                        §§push(_loc5_);
                        if(_loc8_)
                        {
                        }
                     }
                     else
                     {
                        §§push(_loc6_);
                     }
                  }
                  §§push(3);
                  break;
               }
               if(§§pop() >= §§pop())
               {
                  break;
               }
               if(!_loc8_)
               {
                  §'!E§.§@!A§().§>!W§("Thanks for viewing the credits! You can skip the tutorial if you like. (Select level 4 on the map.)");
                  if(!_loc7_)
                  {
                     break;
                  }
               }
            }
            §>K§.§0x§.§0!R§.§?F§(3);
            break;
         }
      }
      
      override public function §^g§() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         if(!_loc8_)
         {
            §1y§ = 6;
         }
         var _loc1_:§%!3§ = new §%!3§();
         var _loc2_:§ 7§ = new §?y§(_loc1_);
         var _loc3_:* = §1y§;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc8_)
               {
                  while(true)
                  {
                     §§push(§&d§.§1$§());
                     §§push(_loc2_);
                     if(_loc9_)
                     {
                        if(_loc3_ != null)
                        {
                           §§push(new §;!!§(Number(_loc3_),§2u§.LEFT));
                           break;
                        }
                     }
                     §§push(§^`§.§ !P§(§2u§.LEFT));
                     break;
                  }
                  §§pop().add(§§pop(),§§pop());
                  if(_loc8_)
                  {
                     break;
                  }
                  while(true)
                  {
                     §§push(§&d§.§1$§());
                     §§push(_loc2_);
                     if(_loc9_)
                     {
                        if(_loc3_ != null)
                        {
                           §§push(new §;!!§(Number(_loc3_),§2u§.TOP));
                           break;
                        }
                     }
                     §§push(§^`§.§ !P§(§2u§.TOP));
                     break;
                  }
                  §§pop().add(§§pop(),§§pop());
                  if(!_loc9_)
                  {
                     break loop0;
                  }
               }
               addChild(_loc1_);
               if(_loc9_)
               {
                  break;
               }
               §§goto(addr00f9);
            }
            §1y§ = 18;
            if(!_loc8_)
            {
               break;
            }
            §§goto(addr00f9);
         }
         §]i§ = new Rectangle();
         addr00f9:
         _loc2_ = new § 6§(§]i§);
         var _loc4_:§ 7§ = new §?y§(_loc1_);
         _loc3_ = §1y§;
         while(true)
         {
            if(!_loc8_)
            {
               §&d§.§1$§().add(_loc2_,new §+X§(Number(_loc3_),§2u§.RIGHT),_loc4_);
               if(!_loc9_)
               {
                  break;
               }
            }
            layout.add(new § 6§(§]i§),new §4$§(false,0.15));
            break;
         }
         _loc2_ = new § 6§(§]i§);
         if(!_loc8_)
         {
            §&d§.§1$§().add(_loc2_,new §30§(true,0.7));
         }
         _loc2_ = new § 6§(§]i§);
         while(true)
         {
            if(!_loc8_)
            {
               §&d§.§1$§().add(_loc2_,new §@$§(false,0));
               if(_loc9_)
               {
                  §"!^§ = null;
                  if(_loc9_)
                  {
                     §0@§("Design and programming by Joseph Cloutier.");
                     if(_loc8_)
                     {
                        break;
                     }
                  }
               }
            }
            §0@§("Art and animation by Alex Ostroff and Joseph Cloutier.");
            if(!_loc8_)
            {
               break;
            }
            §§goto(addr0211);
         }
         §0@§("Music by Jesse Valentine.",true);
         addr0211:
         §§push(§§findproperty(§+"§));
         §§push(CreditsScreen.§`!§);
         if(_loc9_)
         {
            §§push(§§pop());
         }
         var _loc5_:§+"§ = new §§pop().§+"§(§§pop(),0,32,"Get the soundtrack");
         if(!_loc8_)
         {
            §&d§.§1$§().add(new §?y§(_loc5_),new §"q§(11184810,6710886,3.6));
         }
         _loc2_ = new §?y§(_loc5_);
         _loc4_ = new §?y§(§"!^§);
         _loc3_ = §1y§;
         var _loc6_:§&d§ = null;
         loop4:
         while(true)
         {
            while(true)
            {
               if(!_loc8_)
               {
                  if(_loc6_ != null)
                  {
                     _loc6_ = _loc6_;
                     break;
                  }
               }
               _loc6_ = §&d§.§1$§();
               if(!_loc8_)
               {
                  break;
               }
               break loop4;
            }
            _loc6_.add(_loc2_,new §+X§(Number(_loc3_),§2u§.RIGHT),_loc4_);
            if(!_loc8_)
            {
               _loc6_.add(_loc2_,new §4$§(false,0.5),_loc4_);
               if(_loc9_)
               {
                  addChild(_loc5_);
                  if(!_loc9_)
                  {
                     break;
                  }
               }
            }
            §0@§("Additional levels by: mathwiz100, portugal2000, Farkss, Karsh777, max_blue_01, Precarious, and Gecco.");
            if(_loc9_)
            {
               §0@§("Special thanks to Kongregate for being awesome!");
            }
            break;
         }
         var _loc7_:Vector.<Object> = Vector.<Object>([{
            "code":[1,1,1,1,1,1],
            "onCodeEntered":CreditsScreen.§&!%§
         },{
            "code":[0.75,0.5,0.75,0,0,1],
            "onCodeEntered":segfault
         },{
            "code":[0.5,0.5,0.5,1,0,1],
            "onCodeEntered":§>!#§
         }]);
         while(true)
         {
            if(!_loc8_)
            {
               §§push(_loc7_);
               §§push("code");
               §§push([0,0,1,0,1,1]);
               §§push("onCodeEntered");
               §§push(§9'§.§@!A§().§?!;§.§!!K§);
               if(_loc9_)
               {
                  §§push(§§pop());
               }
               §§pop().push(null);
               if(!_loc9_)
               {
                  break;
               }
            }
            §§push(_loc7_);
            §§push("code");
            §§push([0,0,0,1,1,1]);
            §§push("onCodeEntered");
            §§push(§9'§.§@!A§().§?!;§.§+!2§);
            if(!_loc8_)
            {
               §§push(§§pop());
            }
            §§pop().push(null);
            if(_loc9_)
            {
               addChild(new §<=§(_loc7_));
            }
            break;
         }
      }
      
      public function §0@§(param1:String, param2:Object = undefined) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc4_:* = null;
         var _loc5_:* = null as § 7§;
         var _loc6_:* = null as § 7§;
         while(true)
         {
            if(!_loc7_)
            {
               if(param2 != null)
               {
                  break;
               }
            }
            param2 = false;
            break;
         }
         while(true)
         {
            §§push(§&!;§);
            §§push(16777215);
            §§push(40);
            §§push(null);
            §§push(param1);
            if(_loc8_)
            {
               if(!param2)
               {
                  §§push(300);
                  break;
               }
            }
            §§push(null);
            break;
         }
         var _loc3_:TextField = §§pop().§9Q§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
         _loc4_ = null;
         while(true)
         {
            while(true)
            {
               if(!_loc7_)
               {
                  if(_loc4_ != null)
                  {
                     break;
                  }
                  if(!_loc8_)
                  {
                     continue loop5;
                  }
               }
               _loc4_ = int(Number(_loc3_.defaultTextFormat.size));
               break;
            }
            §&d§.§1$§().add(new §?y§(_loc3_),new §=!]§(int(_loc4_)));
            continue loop5;
         }
         _loc5_ = new §?y§(_loc3_);
         _loc6_ = new § 6§(§]i§);
         loop4:
         while(true)
         {
            while(true)
            {
               loop6:
               while(true)
               {
                  if(_loc8_)
                  {
                     §&d§.§1$§().add(_loc5_,§^`§.§ !P§(§2u§.LEFT),_loc6_);
                     loop7:
                     while(true)
                     {
                        while(true)
                        {
                           if(_loc8_)
                           {
                              if(param2)
                              {
                                 break;
                              }
                              if(!_loc8_)
                              {
                                 break loop7;
                              }
                           }
                           _loc5_ = new §?y§(_loc3_);
                           _loc6_ = new § 6§(§]i§);
                           if(_loc8_)
                           {
                              §&d§.§1$§().add(_loc5_,new §@$§(true,0),_loc6_);
                           }
                           break;
                        }
                        if(§"!^§ != null)
                        {
                           break;
                        }
                        _loc5_ = new §?y§(_loc3_);
                        _loc6_ = new § 6§(§]i§);
                        if(!_loc7_)
                        {
                           §&d§.§1$§().add(_loc5_,§^`§.§ !P§(§2u§.TOP),_loc6_);
                        }
                        break loop6;
                     }
                  }
                  break loop7;
               }
               addChild(_loc3_);
               if(!_loc7_)
               {
                  break;
               }
               break loop4;
            }
            §"!^§ = _loc3_;
            break;
         }
      }
   }
}

