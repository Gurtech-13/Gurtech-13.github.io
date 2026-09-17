package format.svg
{
   import §]!§.§;h§;
   import §]!§.§<]§;
   import §]!§.§=!#§;
   import flash.Boot;
   import flash.display.Graphics;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   
   public class §3!?§
   {
      
      public static var init__:Boolean;
      
      public static var §"O§:Number;
      
      public var width:Number;
      
      public var §'! §:SVGData;
      
      public var §4!K§:Object;
      
      public var § 2§:Rectangle;
      
      public var §@@§:Object;
      
      public var §[u§:§[!I§ = §'! §;
      
      public var §;y§:Matrix;
      
      public var §#g§:Array;
      
      public var §-M§:§<]§;
      
      public var §`v§:Function;
      
      public var height:Number = §'! §.height;
      
      public function §3!?§(param1:SVGData, param2:String = undefined)
      {
         §'! § = param1;
         width = §'! §.width;
         if(param2 != null)
         {
            §[u§ = §'! §.§1!C§(param2);
            if(§[u§ == null)
            {
               Boot.lastError = new Error();
               throw "Could not find SVG group: " + param2;
            }
         }
      }
      
      public function §%!B§(param1:Graphics, param2:Matrix = undefined, param3:Object = undefined, param4:Rectangle = undefined, param5:Object = undefined, param6:Object = undefined) : void
      {
         §-M§ = new §=!#§(param1);
         if(param2 == null)
         {
            §;y§ = new Matrix();
         }
         else
         {
            §;y§ = param2.clone();
         }
         § 2§ = param4;
         §4!K§ = param5;
         §@@§ = param6;
         §`v§ = param3;
         §#g§ = [];
         §<6§(§[u§,param3 == null);
      }
      
      public function §#4§(param1:§&!S§) : void
      {
         if(§`v§ != null && !Boolean(§`v§(param1.name,§#g§)))
         {
            return;
         }
         §-M§.§[!,§(param1);
      }
      
      public function §9!0§(param1:Path) : void
      {
         var _loc7_:* = null as §'#§;
         var _loc8_:* = null as §9!Z§;
         var _loc9_:int = 0;
         var _loc10_:* = null as §;h§;
         var _loc11_:Number = NaN;
         var _loc13_:* = null as §4!7§;
         if(§`v§ != null && !Boolean(§`v§(param1.name,§#g§)))
         {
            return;
         }
         if(int(param1.§+K§.length) == 0 || §-M§ == null)
         {
            return;
         }
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Matrix = param1.matrix.clone();
         _loc4_.concat(§;y§);
         var _loc5_:RenderContext = new RenderContext(_loc4_,§ 2§,§4!K§,§@@§);
         var _loc6_:Boolean = §-M§.§1x§();
         if(!_loc6_)
         {
            param1.§+K§[0].§7!G§(§-M§,_loc5_);
            _loc7_ = param1.fill;
            switch(_loc7_.index)
            {
               case 0:
                  _loc8_ = _loc7_.params[0];
                  _loc8_.§?!B§(_loc4_);
                  §-M§.beginGradientFill(_loc8_);
                  break;
               case 1:
                  _loc9_ = int(_loc7_.params[0]);
                  §-M§.beginFill(_loc9_,param1.§8!D§ * param1.alpha);
            }
            if(param1.§0!$§ != null)
            {
               _loc10_ = new §;h§();
               _loc11_ = Number(Math.sqrt(_loc4_.a * _loc4_.a + _loc4_.d * _loc4_.d)) / §3!?§.§"O§;
               _loc10_.§[g§ = param1.§]&§ * _loc11_;
               _loc10_.alpha = param1.§,$§ * param1.alpha;
               _loc10_.color = param1.§0!$§;
               _loc10_.§"!6§ = param1.§^?§;
               _loc10_.§@v§ = param1.§?f§;
               _loc10_.§[!J§ = param1.§^!_§;
               §-M§.lineStyle(_loc10_);
            }
         }
         _loc9_ = 0;
         var _loc12_:Array = param1.§+K§;
         while(_loc9_ < int(_loc12_.length))
         {
            _loc13_ = _loc12_[_loc9_];
            _loc9_++;
            _loc13_.§7!G§(§-M§,_loc5_);
         }
         §-M§.§7$§();
         §-M§.endFill();
      }
      
      public function §<6§(param1:§[!I§, param2:Boolean) : void
      {
         var _loc5_:* = null as §&!N§;
         var _loc6_:* = null as Path;
         var _loc7_:* = null as §[!I§;
         var _loc8_:* = null as §&!S§;
         if(param2 && param1.name != null && param1.name.substr(0,1) == ".")
         {
            return;
         }
         §#g§.push(param1.name);
         var _loc3_:int = 0;
         var _loc4_:Array = param1.§@!`§;
         while(_loc3_ < int(_loc4_.length))
         {
            _loc5_ = _loc4_[_loc3_];
            _loc3_++;
            switch(_loc5_.index)
            {
               case 0:
                  _loc6_ = _loc5_.params[0];
                  §9!0§(_loc6_);
                  break;
               case 1:
                  _loc7_ = _loc5_.params[0];
                  §<6§(_loc7_,param2);
                  break;
               case 2:
                  _loc8_ = _loc5_.params[0];
                  §#4§(_loc8_);
            }
         }
         §#g§.pop();
      }
   }
}

