package layout3d
{
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   
   public class PositionData3D
   {
      
      public var rotation:Quaternion;
      
      public var position:Point3D;
      
      public function PositionData3D(param1:Number, param2:Number, param3:Number, param4:Quaternion = undefined)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(_loc6_)
         {
            position = new Point3D(param1,param2,param3);
            if(_loc6_)
            {
               rotation = param4;
            }
         }
      }
   }
}

