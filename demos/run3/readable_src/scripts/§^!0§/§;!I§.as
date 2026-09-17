package §^!0§
{
   public class §;!I§
   {
      
      public static var init__:Boolean;
      
      public static var §,-§:EReg;
      
      public function §;!I§()
      {
      }
      
      public static function §6Z§(param1:String) : Date
      {
         if(param1 == null || param1.length == 0)
         {
            return null;
         }
         var _loc2_:Boolean = §;!I§.§,-§.match(param1);
         if(!_loc2_)
         {
            return null;
         }
         var _loc3_:int = Std.parseInt(§;!I§.§,-§.matched(1));
         var _loc4_:int = Std.parseInt(§;!I§.§,-§.matched(2));
         var _loc5_:int = Std.parseInt(§;!I§.§,-§.matched(3));
         var _loc6_:int = Std.parseInt(§;!I§.§,-§.matched(4));
         var _loc7_:int = Std.parseInt(§;!I§.§,-§.matched(5));
         var _loc8_:int = Std.parseInt(§;!I§.§,-§.matched(6));
         var _loc9_:Number = Number(new Date(1970,0,1,0,0,0).getTime());
         var _loc10_:String = §;!I§.§,-§.matched(7);
         if(_loc10_ != "" && _loc10_ != "Z")
         {
            _loc9_ += Std.parseInt(_loc10_) * 60 * 60 * 1000;
            if(int(_loc10_.indexOf(":")) > 0)
            {
               _loc10_ = _loc10_.substr(int(_loc10_.indexOf(":")) + 1);
               _loc9_ += Std.parseInt(_loc10_) * 60 * 1000;
            }
         }
         var _loc11_:Date = new Date(_loc3_,_loc4_ - 1,_loc5_,_loc6_,_loc7_,_loc8_);
         return Date.fromTime(Number(_loc11_.getTime()) - _loc9_);
      }
   }
}

