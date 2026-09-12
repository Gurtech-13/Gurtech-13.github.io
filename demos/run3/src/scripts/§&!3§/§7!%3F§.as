package §&!3§
{
   public class §7!?§
   {
      
      public var vector:Object;
      
      public var length:int;
      
      public var index:int;
      
      public function §7!?§(param1:Object)
      {
         var _temp_1:* = false;
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = _temp_1;
         if(!_loc3_)
         {
            vector = param1;
            if(_loc2_)
            {
               index = 0;
               if(!_loc3_)
               {
                  length = int(vector.length);
               }
            }
         }
      }
      
      public function next() : Object
      {
         var _temp_2:* = vector;
         var _loc1_:int;
         index = (_loc1_ = index) + 1;
         return _temp_2[_loc1_];
      }
      
      public function hasNext() : Boolean
      {
         return index < length;
      }
   }
}

