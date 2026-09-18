package com.player03.run3.menu
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import map.§&! §;
   import map.§&x§;
   import map.§+U§;
   import map.Map;
   import map.§6!X§;
   import map.§7f§;
   import map.§@2§;
   import map.Path;
   import §"!L§.§%z§;
   import §"!L§.§@C§;
   import §"!M§.§!!P§;
   import §%!Q§.§ !>§;
   import §%!Q§.§&r§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §+Y§.§#d§;
   import §+Y§.§4!U§;
   import §-!!§.§ B§;
   import §-!!§.§&!;§;
   import §-!!§.§&l§;
   import §-!!§.§+"§;
   import §-!!§.§,C§;
   import §-!!§.§-;§;
   import §-!!§.§2!B§;
   import §-!!§.§6!4§;
   import §-!!§.§8!8§;
   import §-!!§.§@"§;
   import §-!!§.§^!8§;
   import §-v§.§%!3§;
   import §-v§.§+'§;
   import §-v§.§?P§;
   import §-v§.§]!G§;
   import layout3d.§>N§;
   import scenes.Cutscenes;
   import scenes.PlanetMissing;
   import scenes.Protip;
   import §3F§.§4!V§;
   import §4n§.§3!G§;
   import §6!Q§.§"q§;
   import §6!Q§.§'!E§;
   import §6!Q§.§+;§;
   import §6!Q§.§<!T§;
   import §6!Q§.§]u§;
   import §6!Q§.§^F§;
   import game.§5v§;
   import game.§8A§;
   import game.Game;
   import §<?§.§#!7§;
   import §<B§.§9a§;
   import §=u§.§<e§;
   import §=w§.§@[§;
   import §>!O§.§ 3§;
   import §>!O§.§#!6§;
   import §>!O§.§0S§;
   import §>!O§.§;R§;
   import §>!O§.§^`§;
   import §>T§.§!=§;
   import §>T§.§"=§;
   import §>T§.§-n§;
   import §>T§.§0!E§;
   import §>T§.§8R§;
   import §>T§.§[C§;
   import §>d§.§#l§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import §[!P§.§@$§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§"!9§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.layout.§[k§;
   import com.player03.run3.Currency;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.api.GlobalEventManager;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.§2N§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§2!;§;
   import com.player03.run3.save.§2o§;
   import com.player03.run3.save.§]k§;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import haxe.Timer;
   import haxe.ds.StringMap;
   import haxeutils.math.GrowthFunctions;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   import nme3D.Context3DUtils;
   import nme3D.model.§'h§;
   import nme3D.model.Model;
   import nme3D.model.VertexBuffer;
   import nme3D.shader.§!-§;
   import nme3D.shader.§'H§;
   import openfl.Assets;
   import openfl.Lib;
   import unitsystem.§7o§;
   
   public class §;!G§ extends §[k§ implements §3!!§, §@[§
   {
      
      public static var instance:§;!G§;
      
      public static var §8!?§:int = 100;
      
      public var §5Y§:§+"§;
      
      public var title:Bitmap;
      
      public var § T§:§,C§;
      
      public var §1!4§:§]!G§;
      
      public var §=1§:§+"§;
      
      public var §'!4§:§,C§;
      
      public var §>!B§:Sprite;
      
      public var §4D§:§,C§;
      
      public var §"!&§:Boolean = false;
      
      public var §1#§:§9a§;
      
      public var §2!J§:§]!G§;
      
      public var §-!"§:§+"§;
      
      public var §##§:§'>§;
      
      public var §'!J§:§+"§;
      
      public var §]O§:§+"§;
      
      public var §[!§:§,C§;
      
      public var §2!@§:§,C§;
      
      public var §<^§:§+'§;
      
      public var §6!K§:CharacterDef;
      
      public var §7+§:§+;§;
      
      public var §1!P§:§@"§;
      
      public var §2-§:§,C§;
      
      public function §;!G§()
      {
         super();
         var _loc1_:Currency = Currency.§@!A§();
         var _loc2_:§2!;§ = Currency.softEarned;
         var _loc3_:int = int(Save.§@!A§().get(_loc2_.§=-§,int(_loc2_.§ -§)));
         var _loc4_:§2!;§ = Currency.softBought;
         var _loc5_:int = _loc3_ + int(Save.§@!A§().get(_loc4_.§=-§,int(_loc4_.§ -§)));
         var _loc6_:§2!;§ = Currency.softSpent;
         var _loc7_:int = _loc5_ - int(Save.§@!A§().get(_loc6_.§=-§,int(_loc6_.§ -§)));
         var _loc8_:§2!;§ = Currency.softFromOffers;
         §;!G§.§8!?§ = _loc7_ + int(Save.§@!A§().get(_loc8_.§=-§,int(_loc8_.§ -§))) + 1;
         mouseEnabled = false;
         GlobalEventManager.addEventListener("KONG_API_EVENT_USER_CHANGED",reset);
         GlobalEventManager.addEventListener("KONG_API_EVENT_USER_INVENTORY",reset);
         GlobalEventManager.addEventListener("PLAYFAB_CLOUD_LOAD_SUCCESS",reset);
      }
      
      public static function §@!A§() : §;!G§
      {
         var _loc1_:* = null as §;!G§;
         if(§;!G§.instance == null)
         {
            return §;!G§.instance = new §;!G§();
         }
         return §;!G§.instance;
      }
      
      public function update(param1:Number) : void
      {
         if(!§1!P§.visible)
         {
            §5Y§.visible = false;
         }
         §1#§.update(param1);
      }
      
      public function §<8§(param1:Event) : void
      {
         §[!<§.§@!A§().§4X§(§1!?§.§@!A§());
         var _loc2_:Currency = Currency.§@!A§();
         var _loc3_:§2!;§ = Currency.softEarned;
         var _loc4_:int = int(Save.§@!A§().get(_loc3_.§=-§,int(_loc3_.§ -§)));
         var _loc5_:§2!;§ = Currency.softBought;
         var _loc6_:int = _loc4_ + int(Save.§@!A§().get(_loc5_.§=-§,int(_loc5_.§ -§)));
         var _loc7_:§2!;§ = Currency.softSpent;
         var _loc8_:int = _loc6_ - int(Save.§@!A§().get(_loc7_.§=-§,int(_loc7_.§ -§)));
         var _loc9_:§2!;§ = Currency.softFromOffers;
         §;!G§.§8!?§ = _loc8_ + int(Save.§@!A§().get(_loc9_.§=-§,int(_loc9_.§ -§))) + 1;
      }
      
      public function §%!8§(param1:Event) : void
      {
         §[!<§.§@!A§().§4X§(§3?§.§@!A§());
      }
      
      public function §#!L§(param1:Event) : void
      {
         §[!<§.§@!A§().§4X§(§+w§.§@!A§());
      }
      
      public function §`d§(param1:Event = undefined) : void
      {
         §@C§.§4g§(§@C§.§'!M§);
      }
      
      public function §=!<§(param1:Event) : void
      {
         §@C§.§4g§(§@C§.§0<§);
      }
      
      public function §%!#§(param1:Event = undefined) : void
      {
         var _loc3_:* = null as String;
         §5v§.init();
         var _loc2_:String = §8A§.§@!A§().§8!%§(null);
         §8A§.§@!A§().§`!4§();
         if(_loc2_ != null)
         {
            _loc3_ = §8A§.§@!A§().§`e§(_loc2_);
         }
         else
         {
            _loc2_ = "Level 1";
            _loc3_ = §8A§.§@!A§().§`e§(_loc2_);
         }
         Main.instance.§,Z§(new Game(_loc2_,_loc3_));
      }
      
      public function §`!@§(param1:CharacterDef, param2:String) : void
      {
         var _loc8_:* = null as Rectangle;
         var _loc9_:* = null as String;
         if(param1 == null || param2 == null)
         {
            §1!P§.visible = false;
            return;
         }
         var _loc3_:§,C§ = §7+§.§`W§[param1.id];
         var _loc4_:Number = §7+§.§'!8§(_loc3_.x);
         var _loc5_:Number = §7+§.§<d§(_loc3_.y);
         var _loc6_:Number = 16 * layout.scale.y;
         §1!P§.§<%§(param2);
         §1!P§.§6F§(_loc4_ + _loc3_.width / 2);
         var _loc7_:Number = _loc5_ + _loc3_.height;
         §1!P§.§+![§(_loc5_ == null ? _loc7_ : _loc5_,_loc7_,_loc6_,false);
         if(!param1.§<!,§() && param1.§4H§() > 0)
         {
            §5Y§.x = _loc4_ + _loc3_.width / 2 - §5Y§.width / 2;
            _loc8_ = §5Y§.getBounds(this);
            if(_loc8_.left < 0)
            {
               _temp_1.x -= _loc8_.left;
            }
            else if(_loc8_.right > stage.stageWidth)
            {
               _temp_2.x += stage.stageWidth - _loc8_.right;
            }
            §5Y§.y = §1!P§.y + §1!P§.height + 14 * layout.scale.y;
            _loc9_ = "Unlock now for\n" + param1.§4H§();
            §5Y§.§-7§.text = _loc9_ + " power cells!";
            §5Y§.visible = true;
            §6!K§ = param1;
         }
         else
         {
            §5Y§.visible = false;
            §6!K§ = null;
         }
      }
      
      public function reset() : void
      {
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc7_:* = null as §2o§;
         var _loc8_:Boolean = false;
         var _loc9_:* = null as §'!E§;
         var _loc13_:Boolean = false;
         var _loc14_:* = null as §]k§;
         var _loc16_:Boolean = false;
         var _loc1_:Stage = Lib.get_current().stage;
         if(§7+§ == null)
         {
            return;
         }
         if(§[!<§.§@!A§().§1!Y§ != this)
         {
            return;
         }
         §7+§.reset();
         §7+§.visible = false;
         _loc2_ = 1;
         var _loc3_:int = int(CharacterRegistry.available.length);
         while(_loc2_ < _loc3_)
         {
            _loc4_ = _loc2_++;
            if(CharacterRegistry.available[_loc4_].§<!,§())
            {
               §7+§.visible = true;
               break;
            }
         }
         §>!B§.addChild(§1!P§);
         if(_loc1_ != null)
         {
            _loc7_ = Save.hasLoggedIn;
            _loc6_ = !Boolean(Save.§@!A§().get(_loc7_.§=-§,Boolean(_loc7_.§ -§)));
         }
         else
         {
            _loc6_ = false;
         }
         if(_loc6_)
         {
            _loc5_ = !§9'§.§@!A§().§?!;§.isGuest();
         }
         else
         {
            _loc5_ = false;
         }
         if(_loc5_)
         {
            Save.hasLoggedIn.§?F§(true);
            _loc2_ = 1000;
            _loc8_ = §'>§.§0!,§();
            if(_loc8_)
            {
               _loc2_ = 5000;
            }
            Currency.§@!A§().recordSoftEarned(_loc2_,"Login");
            §'!E§.§@!A§().§>!W§("Hi, " + §9'§.§@!A§().§?!;§.getUsername() + "! As thanks for " + (_loc8_ ? "being awesome" : "logging in") + ", you get " + _loc2_ + " free power cells!");
         }
         if(VertexBuffer.§3U§)
         {
            _loc9_ = §'!E§.§@!A§();
            VertexBuffer.§3U§ = false;
            _loc9_.§>!W§("You are currently using Flash Player " + VertexBuffer.version + ". " + ("Please upgrade to at least version " + 12 + " for better performance."));
         }
         if(§"!&§)
         {
            §2!J§.§ X§();
         }
         else
         {
            §2!J§.visible = false;
         }
         if(§;!G§.§8!?§ < 100)
         {
            §;!G§.§8!?§ = 100;
         }
         if(§1!?§.§@!A§().§8e§(§;!G§.§8!?§) > 0)
         {
            §1!4§.§ X§();
         }
         else
         {
            §1!4§.visible = false;
         }
         §1#§.reset();
         §7+§.§"!E§ = true;
         var _loc10_:Main = Main.instance;
         var _loc11_:§ !>§ = §>K§.§0x§;
         var _loc12_:§-Q§ = _loc11_.§0!R§;
         _loc2_ = int(Save.§@!A§().get(_loc12_.§=-§,int(_loc12_.§ -§)));
         _loc3_ = _loc11_.levelCount;
         _loc8_ = (_loc2_ < _loc3_ ? _loc2_ : _loc3_) >= 3;
         §'!4§.visible = !_loc8_;
         §]O§.visible = _loc8_;
         §'!J§.visible = _loc8_;
         §-!"§.visible = _loc8_;
         §2!J§.visible = !!§2!J§.visible && _loc8_;
         §=1§.visible = _loc8_;
         §1!4§.visible = !!§1!4§.visible && _loc8_;
         §2-§.visible = _loc8_;
         § T§.visible = _loc8_;
         if(_loc8_)
         {
            _loc14_ = Game.§-%§;
            _loc13_ = Boolean(Save.§@!A§().get(_loc14_.§=-§,Boolean(_loc14_.§ -§)));
         }
         else
         {
            _loc13_ = false;
         }
         §[!§.visible = _loc13_;
         var _loc15_:PlanetMissing = Cutscenes.§5!H§();
         if(_loc15_.§?^§ != null)
         {
            _loc14_ = _loc15_.§?^§;
            _loc16_ = Boolean(Save.§@!A§().get(_loc14_.§=-§,Boolean(_loc14_.§ -§)));
         }
         else
         {
            _loc16_ = false;
         }
         §2!@§.visible = _loc16_;
         layout.§%X§(new §?y§(§2!@§));
      }
      
      public function §,+§() : Boolean
      {
         var _loc3_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = int(§>!B§.numChildren);
         while(_loc1_ < _loc2_)
         {
            _loc3_ = _loc1_++;
            if(§>!B§.getChildAt(_loc3_).visible)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §;!M§() : void
      {
         var _loc3_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = int(§>!B§.numChildren);
         while(_loc1_ < _loc2_)
         {
            _loc3_ = _loc1_++;
            §>!B§.getChildAt(_loc3_).visible = false;
         }
      }
      
      public function §]J§(param1:Event) : void
      {
         §1!P§.visible = false;
         §5Y§.visible = false;
      }
      
      override public function §^g§() : void
      {
         var _e2:§%z§;
         var _e1:§%z§;
         var _e:§%z§;
         §>!B§ = new Sprite();
         var _loc1_:Number = 8;
         title = §2!B§.§83§("menu/Run3.png");
         var _loc2_:§ 7§ = new §?y§(title);
         §&d§.§1$§().add(_loc2_,new §4$§(true,0.5));
         _loc2_ = new §?y§(title);
         §&d§.§1$§().add(_loc2_,new §;!!§(30,§2u§.TOP));
         addChild(title);
         §1#§ = new §9a§();
         addChild(§1#§);
         var _loc3_:TextFormat = new TextFormat();
         _loc3_.font = Main.§81§;
         _loc3_.size = 36;
         _loc3_.color = 0;
         §1!P§ = new §@"§(_loc3_,14540240,stage.stageWidth * 0.55 + 100,5,40,null,null,true);
         §1!P§.addEventListener(MouseEvent.CLICK,§]J§);
         §>!B§.addChild(§1!P§);
         §5Y§ = new §+"§(§=>§,0,36,"Unlock now for\n000000 power cells!");
         var _loc4_:§8!8§ = §5Y§;
         §&d§.§1$§().add(new §?y§(_loc4_),new §"q§(11184810,6710886,5.4));
         §5Y§.visible = false;
         §>!B§.addChild(§5Y§);
         §7+§ = new §+;§(0.65,80);
         _loc2_ = new §?y§(§7+§);
         var _loc5_:§ 7§ = new §?y§(title);
         §&d§.§1$§().add(_loc2_,new §+X§(30,§2u§.BOTTOM),_loc5_);
         addChild(§7+§);
         GlobalEventManager.addEventListener("costumeChanged",§7+§.§7!A§);
         var _loc6_:Array = [0,0,0];
         var _loc7_:Array = [0,127,255];
         var _loc8_:Matrix = new Matrix();
         var _loc9_:Number = stage.stageWidth * 0.1;
         _loc8_.createGradientBox(_loc9_,§7+§.height);
         var _loc10_:Sprite = new Sprite();
         _loc10_.graphics.beginGradientFill("linear",_loc6_,[1,0.4,0],_loc7_,_loc8_);
         _loc10_.graphics.drawRect(0,0,_loc9_,§7+§.height);
         _loc2_ = new §?y§(_loc10_);
         _loc5_ = new §?y§(§7+§);
         §&d§.§1$§().add(_loc2_,new §@$§(false,0),_loc5_);
         §"!9§.§]!A§(new §?y§(_loc10_));
         _loc2_ = new §?y§(_loc10_);
         _loc5_ = new §?y§(§7+§);
         §&d§.§1$§().add(_loc2_,§^`§.§ !P§(§2u§.LEFT),_loc5_);
         _loc2_ = new §?y§(_loc10_);
         _loc5_ = new §?y§(§7+§);
         §&d§.§1$§().add(_loc2_,§^`§.§ !P§(§2u§.TOP),_loc5_);
         _loc10_.mouseEnabled = false;
         addChild(_loc10_);
         var _loc11_:Sprite = new Sprite();
         _loc11_.graphics.beginGradientFill("linear",_loc6_,[0,0.4,1],_loc7_,_loc8_);
         _loc11_.graphics.drawRect(0,0,_loc9_,§7+§.height);
         _loc2_ = new §?y§(_loc11_);
         _loc5_ = new §?y§(§7+§);
         §&d§.§1$§().add(_loc2_,new §@$§(false,0),_loc5_);
         §"!9§.§]!A§(new §?y§(_loc11_));
         _loc2_ = new §?y§(_loc11_);
         _loc5_ = new §?y§(§7+§);
         §&d§.§1$§().add(_loc2_,§^`§.§ !P§(§2u§.RIGHT),_loc5_);
         _loc2_ = new §?y§(_loc11_);
         _loc5_ = new §?y§(§7+§);
         §&d§.§1$§().add(_loc2_,§^`§.§ !P§(§2u§.TOP),_loc5_);
         _loc11_.mouseEnabled = false;
         addChild(_loc11_);
         §##§ = new §'>§();
         _loc2_ = new §?y§(§##§);
         §&d§.§1$§().add(_loc2_,_loc1_ == null ? §^`§.§ !P§(§2u§.TOP) : new §;!!§(_loc1_,§2u§.TOP));
         §"!9§.§#m§(new §?y§(§##§),new §?y§(title));
         addChild(§##§);
         §4D§ = new §,C§("menu/GearIcon.png",§%!8§);
         _loc2_ = new §?y§(§4D§);
         §&d§.§1$§().add(_loc2_,_loc1_ == null ? §^`§.§ !P§(§2u§.RIGHT) : new §;!!§(_loc1_,§2u§.RIGHT));
         §&d§.§1$§().add(_loc2_,_loc1_ == null ? §^`§.§ !P§(§2u§.TOP) : new §;!!§(_loc1_,§2u§.TOP));
         addChild(§4D§);
         §<^§ = new §+'§();
         _loc2_ = new §?y§(§<^§);
         _loc5_ = new §?y§(§4D§);
         §&d§.§1$§().add(_loc2_,new §+X§(16,§2u§.BOTTOM),_loc5_);
         §<^§.§&-§(true);
         addChild(§<^§);
         var _loc12_:Rectangle = new Rectangle();
         _loc2_ = new § 6§(_loc12_);
         §&d§.§1$§().add(_loc2_,new §4$§(true,0.5));
         _loc2_ = new § 6§(_loc12_);
         _loc5_ = new §?y§(§7+§);
         §&d§.§1$§().add(_loc2_,new §+X§(36,§2u§.BOTTOM),_loc5_);
         §'!4§ = new §,C§("menu/PlayGame.png",§=!<§);
         _loc4_ = §'!4§;
         §&d§.§1$§().add(new §?y§(_loc4_),new §"q§(11184810,6710886,10));
         _loc2_ = new §?y§(§'!4§);
         §&d§.§1$§().add(_loc2_,new §4$§(true,0.5));
         _loc2_ = new §?y§(§'!4§);
         _loc5_ = new § 6§(_loc12_);
         §&d§.§1$§().add(_loc2_,new §+X§(40,§2u§.BOTTOM),_loc5_);
         addChild(§'!4§);
         var _loc13_:int = 24;
         §]O§ = new §+"§(§=!<§,0,40,"Explore Mode");
         _loc4_ = §]O§;
         §&d§.§1$§().add(new §?y§(_loc4_),new §"q§(11184810,6710886,3.6));
         _loc2_ = new §?y§(§]O§);
         _loc5_ = new § 6§(_loc12_);
         §&d§.§1$§().add(_loc2_,new §+X§(_loc13_ / 2,§2u§.LEFT),_loc5_);
         _loc2_ = new §?y§(§]O§);
         _loc5_ = new § 6§(_loc12_);
         §&d§.§1$§().add(_loc2_,new §+X§(0,§2u§.BOTTOM),_loc5_);
         addChild(§]O§);
         §'!J§ = new §+"§(§`d§,0,40,"Infinite Mode",§#l§.§1g§ != null ? §#l§.§1g§.§?c§() : null);
         _loc4_ = §'!J§;
         §&d§.§1$§().add(new §?y§(_loc4_),new §"q§(11184810,6710886,3.6));
         _loc2_ = new §?y§(§'!J§);
         _loc5_ = new § 6§(_loc12_);
         §&d§.§1$§().add(_loc2_,new §+X§(_loc13_ / 2,§2u§.RIGHT),_loc5_);
         _loc2_ = new §?y§(§'!J§);
         _loc5_ = new §?y§(§]O§);
         §&d§.§1$§().add(_loc2_,§^`§.§ !P§(§2u§.TOP),_loc5_);
         addChild(§'!J§);
         _e = Map.§%`§();
         §-!"§ = new §+"§(function(param1:* = undefined):void
         {
            §@C§.§4g§(_e,param1);
         },0,40,"Galaxy Map","map/MapIcon.png");
         _loc4_ = §-!"§;
         §&d§.§1$§().add(new §?y§(_loc4_),new §"q§(11184810,6710886,3.6));
         _loc2_ = new §?y§(§-!"§);
         §&d§.§1$§().add(_loc2_,new §4$§(true,0.5));
         _loc2_ = new §?y§(§-!"§);
         _loc5_ = new §?y§(§'!J§);
         §&d§.§1$§().add(_loc2_,new §+X§(_loc13_,§2u§.BOTTOM),_loc5_);
         addChild(§-!"§);
         §2!J§ = new §]!G§(16777215,16711680,28);
         _loc2_ = new §?y§(§2!J§);
         _loc5_ = new §?y§(§-!"§);
         §&d§.§1$§().add(_loc2_,new §+X§(0,§2u§.RIGHT),_loc5_);
         _loc2_ = new §?y§(§2!J§);
         _loc5_ = new §?y§(§-!"§);
         §&d§.§1$§().add(_loc2_,§^`§.§ !P§(§2u§.TOP),_loc5_);
         addChild(§2!J§);
         §=1§ = new §+"§(§<8§,0,40,"Shop","menu/Shop.png",§-!"§);
         _loc4_ = §=1§;
         §&d§.§1$§().add(new §?y§(_loc4_),new §"q§(11184810,6710886,3.6));
         _loc2_ = new §?y§(§=1§);
         §&d§.§1$§().add(_loc2_,new §4$§(true,0.5));
         _loc2_ = new §?y§(§=1§);
         _loc5_ = new §?y§(§-!"§);
         §&d§.§1$§().add(_loc2_,new §+X§(_loc13_,§2u§.BOTTOM),_loc5_);
         addChild(§=1§);
         §1!4§ = new §]!G§(16777215,16711680,28);
         _loc2_ = new §?y§(§1!4§);
         _loc5_ = new §?y§(§=1§);
         §&d§.§1$§().add(_loc2_,new §+X§(0,§2u§.RIGHT),_loc5_);
         _loc2_ = new §?y§(§1!4§);
         _loc5_ = new §?y§(§=1§);
         §&d§.§1$§().add(_loc2_,§^`§.§ !P§(§2u§.TOP),_loc5_);
         addChild(§1!4§);
         _e1 = §=!>§.§%`§();
         § T§ = new §,C§("menu/Leaderboards.png",function(param1:* = undefined):void
         {
            §@C§.§4g§(_e1,param1);
         });
         _loc2_ = new §?y§(§ T§);
         §&d§.§1$§().add(_loc2_,new §;!!§(10,§2u§.LEFT));
         _loc2_ = new §?y§(§ T§);
         §&d§.§1$§().add(_loc2_,new §;!!§(10,§2u§.BOTTOM));
         addChild(§ T§);
         _e2 = §3!G§.§%`§();
         §2-§ = new §,C§("menu/Achievements.png",function(param1:* = undefined):void
         {
            §@C§.§4g§(_e2,param1);
         });
         _loc2_ = new §?y§(§2-§);
         _loc5_ = new §?y§(§ T§);
         var _loc14_:§&d§ = null;
         if(_loc14_ == null)
         {
            _loc14_ = §&d§.§1$§();
         }
         else
         {
            _loc14_ = _loc14_;
         }
         _loc14_.add(_loc2_,new §+X§(10,§2u§.RIGHT),_loc5_);
         _loc14_.add(_loc2_,new §4$§(false,0.5),_loc5_);
         addChild(§2-§);
         §[!§ = new §,C§("menu/EditIcon.png",§%!#§);
         _loc2_ = new §?y§(§[!§);
         _loc5_ = new §?y§(§2-§);
         _loc14_ = null;
         if(_loc14_ == null)
         {
            _loc14_ = §&d§.§1$§();
         }
         else
         {
            _loc14_ = _loc14_;
         }
         _loc14_.add(_loc2_,new §+X§(10,§2u§.RIGHT),_loc5_);
         _loc14_.add(_loc2_,new §4$§(false,0.5),_loc5_);
         addChild(§[!§);
         §2!@§ = new §,C§("menu/CutsceneIcon.png",§#!L§);
         _loc2_ = new §?y§(§2!@§);
         _loc5_ = new §?y§(§2-§);
         §&d§.§1$§().add(_loc2_,new §4$§(false,0.5),_loc5_);
         _loc2_ = new §?y§(§2!@§);
         _loc5_ = new §?y§(§[!§);
         §&d§.§1$§().add(_loc2_,new §<e§(true,10),_loc5_);
         addChild(§2!@§);
         var _loc15_:Shape = new Shape();
         §<!T§.fillRect(_loc15_,§^F§.INVISIBLE);
         addChildAt(_loc15_,0);
         addChild(§>!B§);
         reset();
      }
      
      public function §=>§(param1:MouseEvent) : void
      {
         if(§6!K§ != null)
         {
            §6!K§.§2!Z§();
            if(§6!K§.§<!,§())
            {
               CharacterRegistry.§3§(CharacterRegistry.§&!#§[0]);
               §7+§.§8t§(§6!K§);
               §7+§.reset();
            }
            else
            {
               §]u§.§@!A§().§5B§(§#C§.§@!A§());
            }
            §6!K§ = null;
         }
         §1!P§.visible = false;
         §5Y§.visible = false;
      }
   }
}

