package §0!P§
{
   public class §`!I§
   {
      
      public var l:§;n§;
      
      public function §`!I§(param1:§;n§)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            l = param1;
         }
      }
      
      public function next() : §;n§
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:§;n§ = l;
         if(_loc3_)
         {
            l = l.next;
         }
         return _loc1_;
      }
      
      public function hasNext() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(l == null);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
   }
}

