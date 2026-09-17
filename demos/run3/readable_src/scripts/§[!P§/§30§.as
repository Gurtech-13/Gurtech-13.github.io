package §[!P§
{
   import §>!O§.§;R§;
   
   public class §30§ extends §;R§
   {
      
      public var percent:Number;
      
      public function §30§(param1:Boolean, param2:Number)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super(param1);
            if(_loc4_)
            {
               percent = param2;
            }
         }
      }
      
      override public function § P§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §§push(param2);
         if(_loc5_)
         {
            return §§pop() * percent;
         }
      }
   }
}

