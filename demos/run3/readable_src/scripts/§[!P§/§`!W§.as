package §[!P§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §>!O§.§;R§;
   import com.player03.layout.§ 7§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   
   public class §`!W§ extends §;R§
   {
      
      public var size:Number;
      
      public function §`!W§(param1:Boolean, param2:Number)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(_loc4_)
            {
               super(param1);
               if(_loc3_)
               {
                  break;
               }
            }
            size = param2;
            break;
         }
      }
      
      override public function § P§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §§push(size);
         if(!_loc4_)
         {
            return §§pop() * param3;
         }
      }
   }
}

