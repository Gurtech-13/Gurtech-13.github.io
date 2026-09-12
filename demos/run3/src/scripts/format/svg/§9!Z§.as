package format.svg
{
   import §]!§.§4v§;
   import flash.geom.Matrix;
   
   public class §9!Z§ extends §4v§
   {
      
      public var y2:Number;
      
      public var y1:Number;
      
      public var x2:Number;
      
      public var x1:Number;
      
      public var §&N§:Number;
      
      public var §4x§:Matrix;
      
      public function §9!Z§(param1:String)
      {
         super();
         type = param1;
         §&N§ = 0;
         §4x§ = new Matrix();
         x1 = 0;
         y1 = 0;
         x2 = 0;
         y2 = 0;
      }
      
      public function §?!B§(param1:Matrix) : void
      {
         var _loc2_:Number = x2 - x1;
         var _loc3_:Number = y2 - y1;
         var _loc4_:Number = Number(Math.atan2(_loc3_,_loc2_));
         var _loc5_:Number = Number(Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_));
         var _loc6_:Matrix = new Matrix();
         if(type == "linear")
         {
            _loc6_.createGradientBox(1,1);
            _loc6_.scale(_loc5_,_loc5_);
         }
         else
         {
            if(§&N§ != 0)
            {
               focus = _loc5_ / §&N§;
            }
            _loc6_.createGradientBox(1,1);
            _loc6_.translate(-0.5,-0.5);
            _loc6_.scale(§&N§ * 2,§&N§ * 2);
         }
         _loc6_.rotate(_loc4_);
         _loc6_.translate(x1,y1);
         _loc6_.concat(§4x§);
         _loc6_.concat(param1);
         matrix = _loc6_;
      }
   }
}

