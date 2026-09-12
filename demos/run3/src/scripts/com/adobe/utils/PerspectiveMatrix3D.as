package com.adobe.utils
{
   import flash.geom.Matrix3D;
   import flash.geom.Vector3D;
   
   public class PerspectiveMatrix3D extends Matrix3D
   {
      
      public var _z:Vector3D;
      
      public var _y:Vector3D;
      
      public var _x:Vector3D;
      
      public var _w:Vector3D;
      
      public function PerspectiveMatrix3D(param1:Vector.<Number> = undefined)
      {
         super(param1);
         _x = new Vector3D();
         _y = new Vector3D();
         _z = new Vector3D();
         _w = new Vector3D();
      }
      
      public function perspectiveFieldOfViewRH(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Number = 1 / Number(Math.tan(param1 / 2));
         var _loc6_:Number = _loc5_ / param2;
         var _loc7_:Vector.<Number> = new Vector.<Number>(0,false);
         var _loc8_:Vector.<Number> = _loc7_;
         _loc8_[0] = _loc6_;
         _loc8_[1] = 0;
         _loc8_[2] = 0;
         _loc8_[3] = 0;
         _loc8_[4] = 0;
         _loc8_[5] = _loc5_;
         _loc8_[6] = 0;
         _loc8_[7] = 0;
         _loc8_[8] = 0;
         _loc8_[9] = 0;
         _loc8_[10] = param4 / (param3 - param4);
         _loc8_[11] = -1;
         _loc8_[12] = 0;
         _loc8_[13] = 0;
         _loc8_[14] = param3 * param4 / (param3 - param4);
         _loc8_[15] = 0;
         copyRawDataFrom(_loc8_);
      }
      
      public function perspectiveFieldOfViewLH(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Number = 1 / Number(Math.tan(param1 / 2));
         var _loc6_:Number = _loc5_ / param2;
         var _loc7_:Vector.<Number> = new Vector.<Number>(0,false);
         var _loc8_:Vector.<Number> = _loc7_;
         _loc8_[0] = _loc6_;
         _loc8_[1] = 0;
         _loc8_[2] = 0;
         _loc8_[3] = 0;
         _loc8_[4] = 0;
         _loc8_[5] = _loc5_;
         _loc8_[6] = 0;
         _loc8_[7] = 0;
         _loc8_[8] = 0;
         _loc8_[9] = 0;
         _loc8_[10] = param4 / (param4 - param3);
         _loc8_[11] = 1;
         _loc8_[12] = 0;
         _loc8_[13] = 0;
         _loc8_[14] = param3 * param4 / (param3 - param4);
         _loc8_[15] = 0;
         copyRawDataFrom(_loc8_);
      }
   }
}

