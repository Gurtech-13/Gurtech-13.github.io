package §1!a§
{
   public class §7§
   {
      
      public var Inventory:Array;
      
      public var CharacterId:String;
      
      public function §7§(param1:* = undefined)
      {
         var _loc2_:* = null as Array;
         var _loc3_:int = 0;
         var _loc4_:* = null as Array;
         var _loc5_:* = null;
         if(param1 == null)
         {
            return;
         }
         CharacterId = param1.CharacterId;
         if(param1.Inventory != null)
         {
            _loc2_ = [];
            _loc3_ = 0;
            _loc4_ = param1.Inventory;
            while(_loc3_ < int(_loc4_.length))
            {
               _loc5_ = _loc4_[_loc3_];
               _loc3_++;
               _loc2_.push(new §,d§(_loc5_));
            }
            Inventory = _loc2_;
         }
      }
   }
}

