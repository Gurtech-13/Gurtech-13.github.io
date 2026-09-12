package haxeutils.math
{
   public class § k§
   {
      
      public function § k§()
      {
      }
      
      public static function max(param1:Number, param2:Number) : Number
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(param1);
         if(_loc4_)
         {
            if(§§pop() > param2)
            {
               §§push(param1);
               if(_loc4_)
               {
                  return §§pop();
               }
            }
            else
            {
               return param2;
            }
         }
         return §§pop();
      }
      
      public static function min(param1:Number, param2:Number) : Number
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(param1);
         if(_loc4_)
         {
            if(§§pop() < param2)
            {
               §§push(param1);
               if(!_loc3_)
               {
                  return §§pop();
               }
            }
            else
            {
               return param2;
            }
         }
         return §§pop();
      }
   }
}

