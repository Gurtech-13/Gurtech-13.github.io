package
{
   public class Lambda
   {
      
      public function Lambda()
      {
      }
      
      public static function map(param1:Object, param2:Function) : §%!F§
      {
         var _loc5_:* = null as Object;
         var _loc3_:§%!F§ = new §%!F§();
         var _loc4_:* = param1.iterator();
         while(Boolean(_loc4_.hasNext()))
         {
            _loc5_ = _loc4_.next();
            _loc3_.add(param2(_loc5_));
         }
         return _loc3_;
      }
      
      public static function fold(param1:Object, param2:Function, param3:Object) : Object
      {
         var _loc5_:* = null as Object;
         var _loc4_:* = param1.iterator();
         while(Boolean(_loc4_.hasNext()))
         {
            _loc5_ = _loc4_.next();
            param3 = param2(_loc5_,param3);
         }
         return param3;
      }
   }
}

