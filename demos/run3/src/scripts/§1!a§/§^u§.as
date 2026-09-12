package §1!a§
{
   public class §^u§
   {
      
      public var News:Array;
      
      public function §^u§(param1:* = undefined)
      {
         var _loc2_:* = null as Array;
         var _loc3_:int = 0;
         var _loc4_:* = null as Array;
         var _loc5_:* = null;
         if(param1 == null)
         {
            return;
         }
         if(param1.News != null)
         {
            _loc2_ = [];
            _loc3_ = 0;
            _loc4_ = param1.News;
            while(_loc3_ < int(_loc4_.length))
            {
               _loc5_ = _loc4_[_loc3_];
               _loc3_++;
               _loc2_.push(new §75§(_loc5_));
            }
            News = _loc2_;
         }
      }
   }
}

