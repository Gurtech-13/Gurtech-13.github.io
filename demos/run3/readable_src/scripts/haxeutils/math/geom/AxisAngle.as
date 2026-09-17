package haxeutils.math.geom
{
   public class AxisAngle extends Point3D
   {
      
      public var angle:Number;
      
      public function AxisAngle()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super(0,0,0);
            if(_loc2_)
            {
               angle = 0;
            }
         }
      }
   }
}

