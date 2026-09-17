package §1!a§
{
   public class §&0§
   {
      
      public var StatisticNames:Array;
      
      public var StatisticNameVersions:Array;
      
      public function §&0§(param1:* = undefined)
      {
         var _loc2_:* = null as Array;
         var _loc3_:int = 0;
         var _loc4_:* = null as Array;
         var _loc5_:* = null;
         if(param1 == null)
         {
            return;
         }
         StatisticNames = param1.StatisticNames;
         if(param1.StatisticNameVersions != null)
         {
            _loc2_ = [];
            _loc3_ = 0;
            _loc4_ = param1.StatisticNameVersions;
            while(_loc3_ < int(_loc4_.length))
            {
               _loc5_ = _loc4_[_loc3_];
               _loc3_++;
               _loc2_.push(new §0O§(_loc5_));
            }
            StatisticNameVersions = _loc2_;
         }
      }
   }
}

