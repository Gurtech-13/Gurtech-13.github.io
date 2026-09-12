package §1!a§
{
   public class §^S§
   {
      
      public var Statistics:Array;
      
      public function §^S§(param1:* = undefined)
      {
         var _loc2_:* = null as Array;
         var _loc3_:int = 0;
         var _loc4_:* = null as Array;
         var _loc5_:* = null;
         if(param1 == null)
         {
            return;
         }
         if(param1.Statistics != null)
         {
            _loc2_ = [];
            _loc3_ = 0;
            _loc4_ = param1.Statistics;
            while(_loc3_ < int(_loc4_.length))
            {
               _loc5_ = _loc4_[_loc3_];
               _loc3_++;
               _loc2_.push(new §[x§(_loc5_));
            }
            Statistics = _loc2_;
         }
      }
   }
}

