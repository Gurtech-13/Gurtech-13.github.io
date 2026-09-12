package
{
   public class StringTools
   {
      
      public function StringTools()
      {
      }
      
      public static function §#!$§(param1:String, param2:Object = undefined) : String
      {
         param1 = param1.split("&").join("&amp;").split("<").join("&lt;").split(">").join("&gt;");
         if(param2)
         {
            return param1.split("\"").join("&quot;").split("\'").join("&#039;");
         }
         return param1;
      }
      
      public static function startsWith(param1:String, param2:String) : Boolean
      {
         if(param1.length >= param2.length)
         {
            return param1.substr(0,param2.length) == param2;
         }
         return false;
      }
      
      public static function §#E§(param1:String, param2:String) : Boolean
      {
         var _loc3_:int = int(param2.length);
         var _loc4_:int = int(param1.length);
         if(_loc4_ >= _loc3_)
         {
            return param1.substr(_loc4_ - _loc3_,_loc3_) == param2;
         }
         return false;
      }
      
      public static function §@!=§(param1:String, param2:int) : Boolean
      {
         var _loc3_:* = param1.charCodeAt(param2);
         if(!(_loc3_ > 8 && _loc3_ < 14))
         {
            return _loc3_ == 32;
         }
         return true;
      }
      
      public static function §4j§(param1:String) : String
      {
         var _loc2_:int = int(param1.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_ && StringTools.§@!=§(param1,_loc3_))
         {
            _loc3_++;
         }
         if(_loc3_ > 0)
         {
            return param1.substr(_loc3_,_loc2_ - _loc3_);
         }
         return param1;
      }
      
      public static function §5!;§(param1:String) : String
      {
         var _loc2_:int = int(param1.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_ && StringTools.§@!=§(param1,_loc2_ - _loc3_ - 1))
         {
            _loc3_++;
         }
         if(_loc3_ > 0)
         {
            return param1.substr(0,_loc2_ - _loc3_);
         }
         return param1;
      }
      
      public static function §"9§(param1:String) : String
      {
         return StringTools.§4j§(StringTools.§5!;§(param1));
      }
      
      public static function lpad(param1:String, param2:String, param3:int) : String
      {
         if(param2.length <= 0)
         {
            return param1;
         }
         while(param1.length < param3)
         {
            param1 = param2 + param1;
         }
         return param1;
      }
      
      public static function replace(param1:String, param2:String, param3:String) : String
      {
         return param1.split(param2).join(param3);
      }
      
      public static function hex(param1:int, param2:Object = undefined) : String
      {
         var _loc3_:uint = uint(param1);
         var _loc4_:String = _loc3_.toString(16);
         _loc4_ = _loc4_.toUpperCase();
         if(param2 != null)
         {
            while(_loc4_.length < param2)
            {
               _loc4_ = "0" + _loc4_;
            }
         }
         return _loc4_;
      }
   }
}

