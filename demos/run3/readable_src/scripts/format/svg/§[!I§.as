package format.svg
{
   public class §[!I§
   {
      
      public var name:String = "";
      
      public var §@!`§:Array = [];
      
      public function §[!I§()
      {
      }
      
      public function §1!C§(param1:String) : §[!I§
      {
         var _loc4_:* = null as §&!N§;
         var _loc5_:* = null as §[!I§;
         var _loc2_:int = 0;
         var _loc3_:Array = §@!`§;
         while(_loc2_ < int(_loc3_.length))
         {
            _loc4_ = _loc3_[_loc2_];
            _loc2_++;
            if(_loc4_.index == 1)
            {
               _loc5_ = _loc4_.params[0];
               if(_loc5_.name == param1)
               {
                  return _loc5_;
               }
            }
         }
         return null;
      }
   }
}

