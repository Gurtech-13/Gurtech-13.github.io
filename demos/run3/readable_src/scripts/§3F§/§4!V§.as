package §3F§
{
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.geom.Matrix3D;
   import haxeutils.math.geom.Matrix3D;
   
   public class §4!V§ extends haxeutils.math.geom.Matrix3D
   {
      
      public var matrix:flash.geom.Matrix3D;
      
      public function §4!V§(param1:Vector.<Number> = undefined)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super(param1);
            if(_loc2_)
            {
               matrix = new flash.geom.Matrix3D();
            }
         }
      }
      
      public function §>!?§(param1:Context3D, param2:int, param3:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         while(true)
         {
            if(_loc5_)
            {
               matrix.rawData = rawData;
               if(_loc4_)
               {
                  break;
               }
            }
            param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,param2,matrix,param3);
            break;
         }
      }
   }
}

