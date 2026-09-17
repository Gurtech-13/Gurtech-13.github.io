package layout3d
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §0!"§.§,!Z§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.run3.menu.§ L§;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   
   public class LineLayout3D extends Layout3D
   {
      
      public function LineLayout3D()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function getRelativeIndex(param1:int, param2:int = 0, param3:int = 0, param4:int = 0) : int
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         §§push(param1);
         if(_loc6_)
         {
            return §§pop() + param4;
         }
      }
      
      override public function getPosition(param1:int, param2:PositionData3D = undefined) : PositionData3D
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(param2 == null)
         {
            if(!_loc3_)
            {
               return new PositionData3D(0,0,param1);
            }
            addr005a:
            param2.position.y = 0;
            while(true)
            {
               if(_loc4_)
               {
                  param2.position.z = param1;
                  if(_loc3_)
                  {
                     break;
                  }
               }
               param2.rotation = null;
               break;
            }
         }
         else
         {
            param2.position.x = 0;
            if(_loc4_)
            {
               §§goto(addr005a);
            }
         }
         return param2;
      }
      
      override public function getIndexNearest(param1:Point3D) : int
      {
         return int(Math.round(param1.z));
      }
      
      override public function getAreaBounds() : §,!Z§
      {
         return super.getAreaBounds();
      }
   }
}

