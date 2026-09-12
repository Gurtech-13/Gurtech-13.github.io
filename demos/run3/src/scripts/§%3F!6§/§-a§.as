package §?!6§
{
   import flash.utils.Dictionary;
   
   public class §-a§
   {
      
      public var §&!V§:int;
      
      public var index:int = 0;
      
      public var h:Dictionary;
      
      public function §-a§(param1:Dictionary)
      {
         h = param1;
         var _loc2_:Dictionary = h;
         var _loc3_:int = index;
         var _loc4_:Boolean = §§hasnext(_loc2_,_loc3_);
         §&!V§ = _loc3_;
      }
      
      public function next() : int
      {
         var _loc1_:int = §§nextname(§&!V§,h);
         index = §&!V§;
         return _loc1_;
      }
      
      public function hasNext() : Boolean
      {
         var _loc1_:Dictionary = h;
         var _loc2_:int = index;
         var _loc3_:Boolean = §§hasnext(_loc1_,_loc2_);
         §&!V§ = _loc2_;
         return _loc3_;
      }
   }
}

