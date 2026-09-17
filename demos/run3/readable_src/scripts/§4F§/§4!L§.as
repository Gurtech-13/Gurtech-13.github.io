package §4F§
{
   public class §4!L§
   {
      
      public var index:int = 0;
      
      public var §5V§:*;
      
      public function §4!L§()
      {
      }
      
      public function next() : *
      {
         var _loc1_:int = index;
         var _loc2_:* = §§nextname(_loc1_,§5V§);
         index = _loc1_;
         return _loc2_;
      }
      
      public function hasNext() : Boolean
      {
         var _loc1_:* = §5V§;
         var _loc2_:int = index;
         var _loc3_:Boolean = §§hasnext(_loc1_,_loc2_);
         §5V§ = _loc1_;
         index = _loc2_;
         return _loc3_;
      }
   }
}

