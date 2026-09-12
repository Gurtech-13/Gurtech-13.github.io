package haxe
{
   public class Log
   {
      
      public static function trace(param1:*, param2:Object = undefined):void
      {
         var _loc5_:int = 0;
         var _loc6_:* = null as Array;
         var _loc7_:* = null;
         var _loc3_:String = param2 == null ? "(null)" : param2.fileName + ":" + int(param2.lineNumber);
         var _loc4_:String = Boot.__string_rec(param1,"");
         if(param2 != null && param2.customParams != null)
         {
            _loc5_ = 0;
            _loc6_ = param2.customParams;
            while(_loc5_ < int(_loc6_.length))
            {
               _loc7_ = _loc6_[_loc5_];
               _loc5_++;
               _loc4_ += "," + Boot.__string_rec(_loc7_,"");
            }
         }
         trace(_loc3_ + ": " + _loc4_);
      }
      public function Log()
      {
      }
   }
}

import flash.Boot;

var _temp_2:* = global;
var _temp_1:* = §§newclass(Log,Object);

