package haxeutils.math.geom
{
   public class Quaternion
   {
      
      public var z:Number;
      
      public var y:Number;
      
      public var x:Number;
      
      public var w:Number;
      
      public function Quaternion()
      {
         var _temp_1:* = false;
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               x = 0;
               if(!_loc1_)
               {
                  break;
               }
            }
            y = 0;
            if(!_loc2_)
            {
               break;
            }
            §§goto(addr002f);
         }
         z = 0;
         if(_loc1_)
         {
            addr002f:
            w = 1;
            §§goto(addr0035);
         }
         addr0035:
      }
   }
}

