package format.svg
{
   import §]!§.§<]§;
   import flash.geom.Matrix;
   
   public class § 8§ extends §4!7§
   {
      
      public var y1:Number;
      
      public var x1:Number;
      
      public var ry:Number;
      
      public var rx:Number;
      
      public var §9v§:Number;
      
      public var §5l§:Boolean;
      
      public var §`!F§:Boolean;
      
      public function § 8§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Number)
      {
         x1 = param1;
         y1 = param2;
         super(param8,param9);
         rx = param3;
         ry = param4;
         §9v§ = param5;
         §`!F§ = param6;
         §5l§ = param7;
      }
      
      override public function §7!G§(param1:§<]§, param2:RenderContext) : void
      {
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc32_:int = 0;
         var _loc33_:int = 0;
         var _loc34_:int = 0;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         if(x1 == x && y1 == y)
         {
            return;
         }
         param2.§]M§(x,y);
         if(rx == 0 || ry == 0)
         {
            param1.lineTo(param2.§@Z§,param2.§8N§);
            return;
         }
         if(rx < 0)
         {
            rx = -rx;
         }
         if(ry < 0)
         {
            ry = -ry;
         }
         var _loc3_:Number = §9v§ * Math.PI / 180;
         var _loc4_:Number = Number(Math.cos(_loc3_));
         var _loc5_:Number = Number(Math.sin(_loc3_));
         var _loc6_:Number = (x1 - x) * 0.5;
         var _loc7_:Number = (y1 - y) * 0.5;
         var _loc8_:Number = _loc4_ * _loc6_ + _loc5_ * _loc7_;
         var _loc9_:Number = -_loc5_ * _loc6_ + _loc4_ * _loc7_;
         var _loc10_:Number = rx * rx;
         var _loc11_:Number = ry * ry;
         var _loc12_:Number = _loc8_ * _loc8_;
         var _loc13_:Number = _loc9_ * _loc9_;
         var _loc14_:Number = (_loc10_ * _loc11_ - _loc10_ * _loc13_ - _loc11_ * _loc12_) / (_loc10_ * _loc13_ + _loc11_ * _loc12_);
         if(_loc14_ < 0)
         {
            _loc14_ = 0;
         }
         else if(§`!F§ == §5l§)
         {
            _loc14_ = -Number(Math.sqrt(_loc14_));
         }
         else
         {
            _loc14_ = Number(Math.sqrt(_loc14_));
         }
         var _loc15_:Number = _loc14_ * rx * _loc9_ / ry;
         var _loc16_:Number = -_loc14_ * ry * _loc8_ / rx;
         var _loc17_:Number = (x1 + x) * 0.5;
         var _loc18_:Number = (y1 + y) * 0.5;
         var _loc19_:Number = _loc4_ * _loc15_ - _loc5_ * _loc16_ + _loc17_;
         var _loc20_:Number = _loc5_ * _loc15_ + _loc4_ * _loc16_ + _loc18_;
         var _loc21_:Number = Number(Math.atan2((_loc9_ - _loc16_) / ry,(_loc8_ - _loc15_) / rx));
         var _loc22_:Number = Number(Math.atan2((-_loc9_ - _loc16_) / ry,(-_loc8_ - _loc15_) / rx)) - _loc21_;
         if(§5l§ && _loc22_ < 0)
         {
            _loc22_ += 2 * Math.PI;
         }
         else if(!§5l§ && _loc22_ > 0)
         {
            _loc22_ -= 2 * Math.PI;
         }
         var _loc23_:Matrix = param2.matrix;
         if(_loc23_ != null)
         {
            _loc24_ = _loc23_.a * rx;
            _loc25_ = _loc23_.c * ry;
            _loc26_ = _loc23_.a * _loc19_ + _loc23_.c * _loc20_ + _loc23_.tx;
            _loc27_ = _loc23_.b * rx;
            _loc28_ = _loc23_.d * ry;
            _loc29_ = _loc23_.b * _loc19_ + _loc23_.d * _loc20_ + _loc23_.ty;
         }
         else
         {
            _loc24_ = rx;
            _loc25_ = 0;
            _loc26_ = _loc19_ + _loc23_.tx;
            _loc27_ = 0;
            _loc28_ = ry;
            _loc29_ = _loc20_ + _loc23_.ty;
         }
         var _loc30_:Number = Number(Math.abs(_loc22_)) * Number(Math.sqrt(_loc24_ * _loc24_ + _loc25_ * _loc25_ + _loc27_ * _loc27_ + _loc28_ * _loc28_));
         _loc30_ *= 5;
         var _loc31_:int = int(Math.round(_loc30_));
         if(_loc31_ > 1)
         {
            _loc22_ /= _loc31_;
            _loc32_ = 1;
            _loc33_ = _loc31_ - 1;
            while(_loc32_ < _loc33_)
            {
               _loc34_ = _loc32_++;
               _loc35_ = Number(Math.cos(_loc21_));
               _loc36_ = Number(Math.sin(_loc21_));
               _loc21_ += _loc22_;
               param1.lineTo(_loc24_ * _loc35_ + _loc25_ * _loc36_ + _loc26_,_loc27_ * _loc35_ + _loc28_ * _loc36_ + _loc29_);
            }
         }
         param1.lineTo(param2.§@Z§,param2.§8N§);
      }
      
      override public function §?!X§() : int
      {
         return 5;
      }
   }
}

