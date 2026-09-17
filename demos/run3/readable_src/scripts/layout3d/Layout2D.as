package layout3d
{
   import flash.Boot;
   
   public class Layout2D
   {
      
      public function Layout2D()
      {
      }
      
      public function getPosition(param1:int) : PositionData2D
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         Boot.lastError = new Error();
         throw new TypeError("getPosition() must be overridden by a subclass.");
      }
   }
}

