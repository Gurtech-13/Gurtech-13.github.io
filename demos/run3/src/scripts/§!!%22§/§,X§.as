package §!!"§
{
   public class §,X§
   {
      
      public var rh:*;
      
      public var §&!V§:int;
      
      public var §7k§:Boolean;
      
      public var index:int;
      
      public var h:*;
      
      public function §,X§(param1:*, param2:*)
      {
         var _loc6_:* = null;
         var _loc7_:int = 0;
         h = param1;
         rh = param2;
         index = 0;
         §7k§ = false;
         var _loc3_:* = h;
         var _loc4_:int = index;
         var _loc5_:Boolean = §§hasnext(_loc3_,_loc4_);
         if(!_loc5_ && rh != null)
         {
            _loc3_ = h = rh;
            _loc4_ = index = 0;
            rh = null;
            §7k§ = true;
            _loc5_ = §§hasnext(_loc3_,_loc4_);
         }
         §&!V§ = _loc4_;
      }
      
      public function next() : String
      {
         var _loc1_:String = §§nextname(§&!V§,h);
         index = §&!V§;
         if(§7k§)
         {
            _loc1_ = _loc1_.substr(1);
         }
         return _loc1_;
      }
      
      public function hasNext() : Boolean
      {
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc1_:* = h;
         var _loc2_:int = index;
         var _loc3_:Boolean = §§hasnext(_loc1_,_loc2_);
         if(!_loc3_ && rh != null)
         {
            _loc1_ = h = rh;
            _loc2_ = index = 0;
            rh = null;
            §7k§ = true;
            _loc3_ = §§hasnext(_loc1_,_loc2_);
         }
         §&!V§ = _loc2_;
         return _loc3_;
      }
   }
}

