package §6!Q§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §-!!§.§+"§;
   import §-v§.§%!3§;
   import §-v§.§<=§;
   import §4!6§.§'P§;
   import §>!O§.§0S§;
   import §>!O§.§;R§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import §[!P§.§30§;
   import §[!P§.§@$§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.layout.§38§;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.menu.CreditsScreen;
   import flash.Boot;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import nme3D.shader.PositionUVDepthVertex;
   
   public class §<!T§ implements §0S§
   {
      
      public var §4!5§:Boolean = true;
      
      public var § !R§:Object;
      
      public var points:Vector.<Point>;
      
      public var mask:int = 512;
      
      public var §4#§:Number = 0;
      
      public var §=M§:int = 0;
      
      public var fill:§^F§;
      
      public function §<!T§(param1:Vector.<Point> = undefined, param2:Object = undefined)
      {
         points = param1;
         § !R§ = param2;
      }
      
      public static function fillRect(param1:Shape, param2:§^F§, param3:Object = undefined, param4:Object = undefined, param5:Object = undefined, param6:§ 7§ = undefined, param7:§&d§ = undefined) : void
      {
         if(param3 == null)
         {
            param3 = 0;
         }
         if(param4 == null)
         {
            param4 = 0;
         }
         if(param5 == null)
         {
            param5 = 0;
         }
         var _loc8_:§<!T§ = new §<!T§(null,param3);
         _loc8_.fill = param2;
         if(param4 > 0)
         {
            _loc8_.§4#§ = param4;
            _loc8_.§=M§ = param5;
         }
         (param7 == null ? §&d§.§1$§() : param7).add(new §?y§(param1),_loc8_,param6);
      }
      
      public function apply(param1:§ 7§, param2:§ 7§, param3:§38§) : void
      {
         var _loc4_:* = null as Graphics;
         var _loc5_:* = null as Class;
         var _loc6_:* = null as Shape;
         var _loc7_:* = null as §?y§;
         var _loc8_:* = null as Sprite;
         var _loc10_:int = 0;
         var _loc11_:Number = NaN;
         var _loc12_:* = null as BitmapData;
         var _loc13_:* = null as Matrix;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:* = null as Point;
         var _loc17_:* = null as Point;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:* = null as Point;
         var _loc21_:* = null as Point;
         if(§4!5§)
         {
            _loc5_ = Shape;
            if(!(param1 is §?y§))
            {
               Boot.lastError = new Error();
               throw Std.string(_loc5_) + " required!";
            }
            _loc7_ = param1;
            if(!Std.§is§(_loc7_.§ v§,_loc5_))
            {
               Boot.lastError = new Error();
               throw Std.string(_loc5_) + " required!";
            }
            _loc6_ = _loc7_.§ v§;
            _loc4_ = _loc6_.graphics;
         }
         else
         {
            _loc5_ = Sprite;
            if(!(param1 is §?y§))
            {
               Boot.lastError = new Error();
               throw Std.string(_loc5_) + " required!";
            }
            _loc7_ = param1;
            if(!Std.§is§(_loc7_.§ v§,_loc5_))
            {
               Boot.lastError = new Error();
               throw Std.string(_loc5_) + " required!";
            }
            _loc8_ = _loc7_.§ v§;
            _loc4_ = _loc8_.graphics;
         }
         _loc4_.clear();
         var _loc9_:§^F§ = fill;
         if(_loc9_ != null)
         {
            switch(_loc9_.index)
            {
               case 0:
                  _loc10_ = int(_loc9_.params[0]);
                  _loc4_.beginFill(_loc10_);
                  break;
               case 1:
                  _loc11_ = Number(_loc9_.params[1]);
                  _loc10_ = int(_loc9_.params[0]);
                  _loc4_.beginFill(_loc10_,_loc11_);
                  break;
               case 2:
                  _loc4_.beginFill(0,0);
                  break;
               case 3:
                  _loc12_ = _loc9_.params[0];
                  _loc13_ = new Matrix();
                  _loc13_.scale(param2.§;c§() / _loc12_.width,param2.§5`§() / _loc12_.height);
                  _loc13_.translate(param2.§[![§(),param2.§1C§());
                  _loc4_.beginBitmapFill(_loc12_,_loc13_);
                  break;
               case 4:
                  _loc11_ = Number(_loc9_.params[1]);
                  _loc12_ = _loc9_.params[0];
                  _loc13_ = new Matrix();
                  _loc13_.translate(-_loc12_.width / 2,-_loc12_.height / 2);
                  _loc13_.rotate(_loc11_);
                  _loc14_ = _loc12_.width * Number(Math.abs(Number(Math.cos(_loc11_)))) + _loc12_.height * Number(Math.abs(Number(Math.sin(_loc11_))));
                  _loc15_ = _loc12_.width * Number(Math.abs(Number(Math.sin(_loc11_)))) + _loc12_.height * Number(Math.abs(Number(Math.cos(_loc11_))));
                  _loc13_.translate(param2.§[![§() + _loc14_ / 2,param2.§1C§() + _loc15_ / 2);
                  _loc13_.scale(param2.§;c§() / _loc14_,param2.§5`§() / _loc15_);
                  _loc4_.beginBitmapFill(_loc12_,_loc13_);
            }
         }
         if(§4#§ > 0)
         {
            _loc4_.lineStyle(§4#§ * (param3.x + param3.y) / 2,§=M§);
         }
         if(§ !R§ != null)
         {
            if(§ !R§ == 0)
            {
               _loc4_.drawRect(param2.§[![§(),param2.§1C§(),param2.§;c§(),param2.§5`§());
            }
            else
            {
               _loc4_.drawRoundRect(param2.§[![§(),param2.§1C§(),param2.§;c§(),param2.§5`§(),§ !R§ * param3.x,§ !R§ * param3.y);
            }
         }
         if(points != null && int(points.length) > 1)
         {
            _loc16_ = points[0];
            _loc11_ = param2.§[![§() + _loc16_.x * param2.§;c§();
            _loc17_ = points[0];
            _loc4_.moveTo(_loc11_,param2.§1C§() + _loc17_.y * param2.§5`§());
            _loc10_ = 1;
            _loc18_ = int(points.length);
            while(_loc10_ < _loc18_)
            {
               _loc19_ = _loc10_++;
               _loc20_ = points[_loc19_];
               _loc14_ = param2.§[![§() + _loc20_.x * param2.§;c§();
               _loc21_ = points[_loc19_];
               _loc4_.lineTo(_loc14_,param2.§1C§() + _loc21_.y * param2.§5`§());
            }
         }
         if(fill != null)
         {
            _loc4_.endFill();
         }
      }
   }
}

