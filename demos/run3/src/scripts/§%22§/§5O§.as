package §"§
{
   public class §5O§
   {
      
      public var §1!8§:Object;
      
      public var index:int = 0;
      
      public function §5O§(param1:Object)
      {
         §1!8§ = param1;
      }
      
      public function next() : Object
      {
         var _temp_2:* = §1!8§;
         var _loc1_:int;
         index = (_loc1_ = index) + 1;
         return _temp_2[_loc1_];
      }
      
      public function hasNext() : Boolean
      {
         return index < int(§1!8§.length);
      }
   }
}

