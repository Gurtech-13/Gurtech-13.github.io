package §1!a§
{
   public class §"!4§
   {
      
      public var DataVersion:uint;
      
      public var Data:*;
      
      public function §"!4§(param1:* = undefined)
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:* = null as Array;
         var _loc5_:* = null as String;
         var _loc6_:* = null;
         var _loc7_:* = null as §0!0§;
         if(param1 == null)
         {
            return;
         }
         if(param1.Data != null)
         {
            _loc2_ = {};
            Data = _loc2_;
            _loc3_ = 0;
            _loc4_ = Reflect.fields(param1.Data);
            while(_loc3_ < int(_loc4_.length))
            {
               _loc5_ = _loc4_[_loc3_];
               _loc3_++;
               _loc6_ = Data;
               _loc7_ = new §0!0§(Reflect.field(param1.Data,_loc5_));
               _loc6_[_loc5_] = _loc7_;
            }
         }
         DataVersion = param1.DataVersion;
      }
   }
}

