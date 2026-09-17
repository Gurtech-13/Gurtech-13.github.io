package geom3d
{
   import haxeutils.math.geom.Point3D;
   
   public class §]!Q§
   {
      
      public var min:Point3D = new Point3D(Number(Math.POSITIVE_INFINITY),Number(Math.POSITIVE_INFINITY),Number(Math.POSITIVE_INFINITY));
      
      public var max:Point3D = new Point3D(Number(Math.NEGATIVE_INFINITY),Number(Math.NEGATIVE_INFINITY),Number(Math.NEGATIVE_INFINITY));
      
      public function §]!Q§()
      {
      }
      
      public function translate(param1:Number, param2:Number, param3:Number) : void
      {
         _temp_1.x += param1;
         _temp_2.y += param2;
         _temp_3.z += param3;
         _temp_4.x += param1;
         _temp_5.y += param2;
         _temp_6.z += param3;
      }
      
      public function §?j§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Number = NaN;
         if(min.x == Number(Math.POSITIVE_INFINITY))
         {
            max.x = min.x = param1;
            max.y = min.y = param2;
            max.z = min.z = param3;
            return;
         }
         if(param1 < min.x)
         {
            min.x = param1;
         }
         else if(param1 > max.x)
         {
            max.x = param1;
         }
         if(param2 < min.y)
         {
            min.y = param2;
         }
         else if(param2 > max.y)
         {
            max.y = param2;
         }
         if(param3 < min.z)
         {
            min.z = param3;
         }
         else if(param3 > max.z)
         {
            max.z = param3;
         }
      }
      
      public function §%Y§(param1:Point3D) : void
      {
         var _loc2_:* = null as Point3D;
         if(min.x == Number(Math.POSITIVE_INFINITY))
         {
            _loc2_ = min;
            _loc2_.x = param1.x;
            _loc2_.y = param1.y;
            _loc2_.z = param1.z;
            _loc2_ = max;
            _loc2_.x = param1.x;
            _loc2_.y = param1.y;
            _loc2_.z = param1.z;
            return;
         }
         if(param1.x < min.x)
         {
            min.x = param1.x;
         }
         else if(param1.x > max.x)
         {
            max.x = param1.x;
         }
         if(param1.y < min.y)
         {
            min.y = param1.y;
         }
         else if(param1.y > max.y)
         {
            max.y = param1.y;
         }
         if(param1.z < min.z)
         {
            min.z = param1.z;
         }
         else if(param1.z > max.z)
         {
            max.z = param1.z;
         }
      }
      
      public function §]§(param1:§]!Q§) : void
      {
         var _loc2_:* = null as Point3D;
         var _loc3_:* = null as Point3D;
         if(min.x == Number(Math.POSITIVE_INFINITY))
         {
            _loc2_ = min;
            _loc3_ = param1.min;
            _loc2_.x = _loc3_.x;
            _loc2_.y = _loc3_.y;
            _loc2_.z = _loc3_.z;
            _loc2_ = max;
            _loc3_ = param1.max;
            _loc2_.x = _loc3_.x;
            _loc2_.y = _loc3_.y;
            _loc2_.z = _loc3_.z;
            return;
         }
         if(param1.min.x < min.x)
         {
            min.x = param1.min.x;
         }
         else if(param1.max.x > max.x)
         {
            max.x = param1.max.x;
         }
         if(param1.min.y < min.y)
         {
            min.y = param1.min.y;
         }
         else if(param1.max.y > max.y)
         {
            max.y = param1.max.y;
         }
         if(param1.min.z < min.z)
         {
            min.z = param1.min.z;
         }
         else if(param1.max.z > max.z)
         {
            max.z = param1.max.z;
         }
      }
      
      public function § !H§(param1:Number) : void
      {
         _temp_1.x -= param1;
         _temp_2.y -= param1;
         _temp_3.z -= param1;
         _temp_4.x += param1;
         _temp_5.y += param1;
         _temp_6.z += param1;
      }
      
      public function clear() : void
      {
         min.x = Number(Math.POSITIVE_INFINITY);
         min.y = Number(Math.POSITIVE_INFINITY);
         min.z = Number(Math.POSITIVE_INFINITY);
         max.x = Number(Math.NEGATIVE_INFINITY);
         max.y = Number(Math.NEGATIVE_INFINITY);
         max.z = Number(Math.NEGATIVE_INFINITY);
      }
   }
}

