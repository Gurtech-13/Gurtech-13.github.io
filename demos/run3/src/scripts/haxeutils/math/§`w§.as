package haxeutils.math
{
   public class §`w§
   {
      
      public function §`w§()
      {
      }
      
      public static function max(param1:int, param2:int) : int
      {
         var _temp_1:* = false;
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = _temp_1;
         §§push(param1);
         if(!_loc4_)
         {
            if(§§pop() >= param2)
            {
               §§push(param1);
               if(_loc3_)
               {
                  §§goto(addr0018);
               }
            }
            else
            {
               return param2;
            }
            return §§pop();
         }
         addr0018:
         return §§pop();
      }
   }
}

