package §=[§
{
   public class §-!R§
   {
      
      public var §+C§:§%R§;
      
      public function §-!R§(param1:§%R§)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §+C§ = param1;
         }
      }
      
      public function next() : Object
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Object = §+C§.§"3§;
         if(_loc3_)
         {
            §+C§ = §+C§.next;
         }
         return _loc1_;
      }
      
      public function hasNext() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(§+C§ == null);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
   }
}

