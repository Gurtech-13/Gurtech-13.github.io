package
{
   public class Reflect
   {
      
      public function Reflect()
      {
      }
      
      public static function hasField(param1:*, param2:String) : Boolean
      {
         return param1.hasOwnProperty(param2);
      }
      
      public static function field(param1:*, param2:String) : *
      {
         var _loc4_:* = null;
         try
         {
            return param1[param2];
         }
         catch(_loc_e_:*)
         {
         }
      }
      
      public static function getProperty(param1:*, param2:String) : *
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         try
         {
            return param1["get_" + param2]();
         }
         catch(_loc_e_:*)
         {
            try
            {
               return param1[param2];
            }
            catch(_loc_e_:*)
            {
            }
         }
      }
      
      public static function setProperty(param1:*, param2:String, param3:*) : void
      {
         var _loc5_:* = null;
         try
         {
            param1["set_" + param2](param3);
         }
         catch(_loc_e_:*)
         {
            return;
         }
      }
      
      public static function fields(param1:*) : Array
      {
         var _loc4_:* = null as String;
         if(param1 == null)
         {
            return [];
         }
         var _loc3_:Array = [];
         for(_loc4_ in param1)
         {
            if(param1.hasOwnProperty(_loc4_))
            {
               _loc3_.push(_loc4_);
            }
         }
         return _loc3_;
      }
      
      public static function §?!2§(param1:Object, param2:Object) : int
      {
         var _loc3_:* = param1;
         var _loc4_:* = param2;
         if(_loc3_ == _loc4_)
         {
            return 0;
         }
         if(_loc3_ > _loc4_)
         {
            return 1;
         }
         return -1;
      }
      
      public static function §<!Q§(param1:*, param2:*) : Boolean
      {
         return param1 == param2;
      }
      
      public static function deleteField(param1:*, param2:String) : Boolean
      {
         if(param1.hasOwnProperty(param2) != true)
         {
            return false;
         }
         delete param1[param2];
         return true;
      }
   }
}

