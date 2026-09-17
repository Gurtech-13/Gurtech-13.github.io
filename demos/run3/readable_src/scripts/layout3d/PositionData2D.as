package layout3d
{
   import flash.geom.Point;
   import haxeutils.math.geom.Point3D;
   
   public class PositionData2D
   {
      
      public var rotation:Number;
      
      public var position:Point;
      
      public function PositionData2D(param1:Number, param2:Number, param3:Number = 0)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         while(true)
         {
            if(_loc4_)
            {
               position = new Point(param1,param2);
               if(!_loc4_)
               {
                  break;
               }
            }
            rotation = param3;
            break;
         }
      }
   }
}

